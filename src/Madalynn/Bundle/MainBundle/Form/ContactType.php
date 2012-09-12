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

namespace Madalynn\Bundle\MainBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;
use Doctrine\ORM\EntityRepository;

class ContactType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('name', null, array('label' => 'contact.name'))
                ->add('email', 'email', array('label' => 'contact.email'))
                ->add('androidVersion', 'entity', array(
                    'class'    => 'Madalynn\\Bundle\\MainBundle\\Entity\\AndroidVersion',
                    'label'    => 'contact.android_version',
                    'required' => false,
                    'query_builder' => function(EntityRepository $er) {
                        return $er->createQueryBuilder('e')
                                  ->orderBy('e.apiLevel', 'desc');
                    }
                ))
                ->add('androircVersion', 'entity', array(
                    'class'    => 'Madalynn\\Bundle\\MainBundle\\Entity\\AndroircVersion',
                    'label'    => 'contact.androirc_version',
                    'required' => false,
                    'query_builder' => function(EntityRepository $er) {
                        return $er->createQueryBuilder('e')
                                  ->setMaxResults(5)
                                  ->orderBy('e.code', 'desc');
                    }
                ))
                ->add('content', 'textarea', array('label' => 'contact.content'));
    }

    /**
     * {@inheritdoc}
     */
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Madalynn\\Bundle\\MainBundle\\Entity\\Contact'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getName()
    {
        return 'contact';
    }
}
