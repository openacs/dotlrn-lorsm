
ad_library {
    
    Callback implementations.
    
    @author Don Baccus (dhogaza@pacifier.com)

}

ad_proc -public -callback lorsm::permissions_kludge -impl dotlrn-lorsm {
} {
    @author Don Baccus

    Kludge permissions of a course uploaded by lorsm.
} {
ns_log Notice "Huh? in callback: parent_id $parent_id items_parent_id $items_parent_id man_id $man_id community_id $community_id"

        set party_id_admin [db_string party_id_admin {}]
        set party_id_member [db_string party_id_member {}]
        set party_id_admin [db_string party_id_admin {}]
        set party_id_professor [db_string party_id_professor {}]
        set party_id_admins [db_string party_id_admins {}]

        # Before we go about anything else, lets just set permissions straight.
        # Disable folder permissions inheritance
        permission::toggle_inherit -object_id $parent_id
        permission::toggle_inherit -object_id $items_parent_id

        # Set read permissions for community/class dotlrn_member_rel

        permission::grant \
            -party_id $party_id_member \
            -object_id $parent_id \
            -privilege read

        permission::grant \
            -party_id $party_id_member \
            -object_id $items_parent_id \
            -privilege read

        # Set read permissions for community/class dotlrn_admin_rel

        permission::grant \
            -party_id $party_id_admin \
            -object_id $parent_id \
            -privilege read

        permission::grant \
            -party_id $party_id_admin \
            -object_id $items_parent_id \
            -privilege read

        # Set read permissions for *all* other professors  within .LRN
        # (so they can see the content)


        permission::grant \
            -party_id $party_id_professor \
            -object_id $parent_id \
            -privilege read

        permission::grant \
            -party_id $party_id_professor \
            -object_id $items_parent_id \
            -privilege read

        # Set read permissions for *all* other admins within .LRN
        # (so they can see the content)


        permission::grant \
            -party_id $party_id_admins \
            -object_id $parent_id \
            -privilege read

        permission::grant \
            -party_id $party_id_admins \
            -object_id $items_parent_id \
            -privilege read

        # PERMISSIONS FOR MANIFEST and learning objects

        # set up in the same way as permissions for the file storage
        # objects. As we want to maintain consistency btw the
        # learnining objects and their content

        # Disable folder permissions inheritance
        permission::toggle_inherit -object_id $man_id

        # Set read permissions for community/class dotlrn_member_rel

        permission::grant \
            -party_id $party_id_member \
            -object_id $man_id \
            -privilege read

        # Set read permissions for community/class dotlrn_admin_rel

        permission::grant \
            -party_id $party_id_admin \
            -object_id $man_id \
            -privilege read

        # Set read permissions for *all* other professors  within .LRN
        # (so they can see the content)

        permission::grant \
            -party_id $party_id_professor \
            -object_id $man_id \
            -privilege read

        # Set read permissions for *all* other admins within .LRN
        # (so they can see the content)

        permission::grant \
            -party_id $party_id_admins \
            -object_id $man_id \
            -privilege read

        # Done with Manifest and learning object Permissions
}

