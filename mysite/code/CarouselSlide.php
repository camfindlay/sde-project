<?php
class CarouselSlide extends DataObject {

    private static $db = array(
        'Title' => 'Varchar(255)',
        'SortOrder' => 'Int'
    );

    private static $has_one = array(
        'Photo'=>'Image',
        'Parent'=>'HomePage'
    );

    private static $default_sort='SortOrder';

    private static $summary_fields = array (
        'Photo.CMSThumbnail'=>'Photo',
        'Title'=>'Title'
    );

    public function getCMSFields(){

        $fields = parent::getCMSFields();
        $fields->removeByName('SortOrder');
        return $fields;

    }

}