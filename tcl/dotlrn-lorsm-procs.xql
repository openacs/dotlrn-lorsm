<?xml version="1.0"?>

<queryset>

    <fullquery name="dotlrn_lorsm::clone.call_lorsm_clone">
        <querytext>
            select lorsm__clone (:old_package_id, :new_package_id);
        </querytext>
    </fullquery>

    <fullquery name="dotlrn_lorsm::clone.course_clone">
        <querytext>
            select man_id, lorsm_instance_id, community_id, class_key, isenabled, istrackable
            from ims_cp_manifest_class
            where community_id = :old_community_id
        </querytext>
    </fullquery>

    <fullquery name="dotlrn_lorsm::clone.add_course">
        <querytext>
            insert into ims_cp_manifest_class
                (man_id, lorsm_instance_id, community_id, class_key, isenabled, istrackable)
            values
                (:man_id, :new_package_id, :new_community_id, :class_key, :isenabled, :istrackable)
        </querytext>
    </fullquery>

</queryset>
