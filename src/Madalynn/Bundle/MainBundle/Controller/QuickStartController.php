<?php

/*
 * This file is part of the AndroIRC website.
 *
 * (c) 2010-2012 Julien Brochet <mewt@androirc.com>
 * (c) 2010-2012 Sébastien Brochet <blinkseb@androirc.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace Madalynn\Bundle\MainBundle\Controller;

use Madalynn\Bundle\MainBundle\Entity\AndroircVersion;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Cache;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

/**
 * Quickstart controller
 *
 * @author Julien Brochet <mewt@androirc.com>
 */
class QuickStartController extends Controller
{
    /**
     * @Cache(public=true, smaxage="604800", maxage="604800")
     * @Route("/quickstart/{version}/{lang}/{theme}",
     *     name="_quickstart",
     *     defaults={"theme" = "light", "lang" = "en"},
     *     requirements={"theme" = "light|dark"}
     * )
     */
    public function showAction($version, $lang, $theme)
    {
        $em   = $this->getDoctrine()->getManager();
        $repo = $em->getRepository('MainBundle:QuickStart');

        // Check for dev version
        $dev = strpos($version, '-dev') !== false;
        if ($dev)
        {
            // Remove '-dev' suffix
            $version = str_replace('-dev', '', $version);
        }

        $request_version = AndroircVersion::create($version);
        $version = $em->getRepository('MainBundle:AndroircVersion')
                      ->populate($request_version);

        if (null === $version) {
            if (! $dev)
            {
                throw $this->createNotFoundException('The version does not exist.');
            }
            else
            {
                // Pick a random version
                $version = $em->getRepository('MainBundle:AndroircVersion')
                              ->getRandom();

            }
        }

        $quickstart = $repo->findByVersion($version, $lang);

        if ($quickstart === null)
        {
            if ($dev)
            {
                // Get a random quickstart
                $quickstart = $repo->getRandom();
                if ($quickstart === null)
                {
                    throw $this->createNotFoundException('No quickstart available.');
                }
            }
            else
            {
                throw $this->createNotFoundException('No quickstart found for this version.');
            }
        }

        if (count($quickstart) > 1) {
            $this->get('logger')->warn(sprintf('More than one quickstart found for the version "%s"', $version));
        }

        // Just get the first item
        if ($quickstart) {
            $quickstart = $quickstart[0];
        }

        return $this->render('MainBundle:QuickStart:show.html.twig', array(
            'quickstart' => $quickstart,
            'theme'      => $theme,
            'version'    => $request_version
        ));
    }
}
