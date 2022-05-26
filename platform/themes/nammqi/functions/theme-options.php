<?php

app()->booted(function () {
    theme_option()
        ->setSection([
            'title'      => __('Style'),
            'desc'       => __('Style of page'),
            'id'         => 'opt-text-subsection-style',
            'subsection' => true,
            'icon'       => 'fa fa-bars',
        ])
        ->setField([
            'id'         => 'font_heading',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'googleFonts',
            'label'      => __('Font heading'),
            'attributes' => [
                'name'  => 'font_heading',
                'value' => 'Poppins',
            ],
        ])
        ->setField([
            'id'         => 'font_body',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'googleFonts',
            'label'      => __('Font body'),
            'attributes' => [
                'name'  => 'font_body',
                'value' => 'Source Sans Pro',
            ],
        ])
        ->setField([
            'id'         => 'color_primary',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Primary color'),
            'attributes' => [
                'name'  => 'color_primary',
                'value' => '#87c6e3',
            ],
        ])
        ->setField([
            'id'         => 'color_secondary',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Secondary color'),
            'attributes' => [
                'name'  => 'color_secondary',
                'value' => '#455265',
            ],
        ])
        ->setField([
            'id'         => 'color_success',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Success color'),
            'attributes' => [
                'name'  => 'color_success',
                'value' => '#76e1c6',
            ],
        ])
        ->setField([
            'id'         => 'color_danger',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Danger color'),
            'attributes' => [
                'name'  => 'color_danger',
                'value' => '#f0a9a9',
            ],
        ])
        ->setField([
            'id'         => 'color_warning',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Warning color'),
            'attributes' => [
                'name'  => 'color_warning',
                'value' => '#e6bf7e',
            ],
        ])
        ->setField([
            'id'         => 'color_info',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Info color'),
            'attributes' => [
                'name'  => 'color_info',
                'value' => '#58c1c8',
            ],
        ])
        ->setField([
            'id'         => 'color_light',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Light color'),
            'attributes' => [
                'name'  => 'color_light',
                'value' => '#F3F3F3',
            ],
        ])
        ->setField([
            'id'         => 'color_dark',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Dark color'),
            'attributes' => [
                'name'  => 'color_dark',
                'value' => '#111111',
            ],
        ])
        ->setField([
            'id'         => 'color_link',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Link color'),
            'attributes' => [
                'name'  => 'color_link',
                'value' => '#222831',
            ],
        ])
        ->setField([
            'id'         => 'color_white',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('White color'),
            'attributes' => [
                'name'  => 'color_white',
                'value' => '#FFFFFF',
            ],
        ])
        ->setField([
            'id'         => 'copyright',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'text',
            'label'      => __('Copyright'),
            'attributes' => [
                'name'    => 'copyright',
                'value'   => __('© :year Your Company. All right reserved.', ['year' => now()->format('Y')]),
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Change copyright'),
                    'data-counter' => 250,
                ],
            ],
            'helper'     => __('Copyright on footer of site'),
        ])
        ->setField([
            'id'         => 'primary_font',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'googleFonts',
            'label'      => __('Primary font'),
            'attributes' => [
                'name'  => 'primary_font',
                'value' => 'Roboto',
            ],
        ])
        ->setField([
            'id'         => 'primary_color',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'customColor',
            'label'      => __('Primary color'),
            'attributes' => [
                'name'  => 'primary_color',
                'value' => '#ff2b4a',
            ],
        ]);
});
