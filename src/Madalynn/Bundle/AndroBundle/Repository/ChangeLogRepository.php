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

namespace Madalynn\Bundle\AndroBundle\Repository;

use Doctrine\ORM\EntityRepository;

use Madalynn\Bundle\AndroBundle\Entity\AndroircVersion;

class ChangeLogRepository extends EntityRepository
{
    public function findByVersion(AndroircVersion $version)
    {
        return $this->createQueryBuilder('c')
                    ->leftJoin('c.version', 'v')
                    ->where('v.code <= :version')
                    ->orderBy('v.code', 'desc')
                    ->setParameter('version', $version->getCode())
                    ->orderBy('v.code', 'desc')
                    ->setMaxResults(1)
                    ->getQuery()
                    ->getOneOrNullResult();
    }
}