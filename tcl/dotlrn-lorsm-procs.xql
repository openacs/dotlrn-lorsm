<?xml version="1.0"?>

<queryset>

<fullquery name="dotlrn_lorsm::close.course_clone">
  <querytext>
	select man_id, lorsm_instance_id, community_id, class_key, isenabled, istrackable 
	from ims_cp_manifest_class
	where community_id = :old_community_id
  </querytext>
</fullquery>

<fullquery name="dotlrn_lorsm::close.add-course">
  <querytext>
      insert into ims_cp_manifest_class 
      (man_id, lorsm_instance_id, community_id, class_key, isenabled, istrackable) 
      values 
      (:man_id, :new_package_id, :new_community_id, :class_key, :isenabled, :istrackable)
  </querytext>
</fullquery>

</queryset>
