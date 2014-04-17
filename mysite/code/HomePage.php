<?php
class HomePage extends Page {

    private static $db = array(
        'ExtraContent' => 'HTMLText'
    );

    private static $has_many = array(
        'CarouselSlides' => "CarouselSlide"
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();



        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('ExtraContent'), 'Metadata');

        $fields->addFieldToTab( 'Root.Carousel',
            GridField::create(
                'Slides',
                'Carousel Slides',
                $this->CarouselSlides(),
                GridFieldConfig_RecordEditor::create()
                    ->addComponent(new GridFieldSortableRows('SortOrder'))
            )
        );

        return $fields;
    }

}

class HomePage_Controller extends Page_Controller {

}