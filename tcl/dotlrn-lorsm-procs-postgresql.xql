<?xml version="1.0"?>

<queryset>
<rdbms><type>postgresql</type><version>7.1</version></rdbms>

<fullquery name="dotlrn_lorsm::clone.call_lorsm_clone">
    <querytext>
        select lorsm__clone (
        :old_package_id,
        :new_package_id);
    </querytext>
</fullquery>

</queryset>
