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

use Pagerfanta\Pagerfanta;
use Pagerfanta\Adapter\DoctrineORMAdapter;

/**
 * Article Controller
 *
 * @author Julien Brochet <mewt@androirc.com>
 */
class ArticleController extends AbstractController
{
    public function showAction($id)
    {
        $em   = $this->getDoctrine()->getEntityManager();
        $repo = $em->getRepository('MainBundle:Article');

        $article = $repo->find($id);

        if (null === $article || (false === $this->isAdmin() && false === $article->isVisible())) {
            throw $this->createNotFoundException('This article does not exist');
        }

        return $this->renderWithMobile('MainBundle:Article:show.html.twig', array(
            'article' => $article
        ));
    }

    public function atomAction()
    {
        $em   = $this->getDoctrine()->getEntityManager();
        $repo = $em->getRepository('MainBundle:Article');

        $articles = $repo->getLastArticles(false, 20);

        return $this->render('MainBundle:Article:atom.html.twig', array(
            'articles' => $articles
        ));
    }

    public function archivesAction($page)
    {
        $em   = $this->getDoctrine()->getEntityManager();
        $repo = $em->getRepository('MainBundle:Article');

        $adapter = new DoctrineORMAdapter($repo->getQueryBuilder($this->isAdmin())->getQuery(), true);
        $pager   = new Pagerfanta($adapter);

        $pager->setMaxPerPage(10);
        $pager->setCurrentPage($page, true, true);

        return $this->render('MainBundle:Article:archives.html.twig', array(
            'pager' => $pager
        ));
    }
}