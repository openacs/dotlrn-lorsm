ad_library {
    Procedures for registering implementations for the
    dotlrn lorsm package. 
    
    @creation-date 2005-09-25
    @author eperez@it.uc3m.es
    @cvs-id $Id$
}

namespace eval dotlrn_lorsm {}

ad_proc -public dotlrn_lorsm::install {} {
    dotLRN Assessment package install proc
} {
    register_portal_datasource_impl
}

ad_proc -public dotlrn_lorsm::uninstall {} {
    dotLRN Assessment package uninstall proc
} {
    unregister_portal_datasource_impl
}

ad_proc -public dotlrn_lorsm::register_portal_datasource_impl {} {
    Register the service contract implementation for the dotlrn_applet service contract
} {
    set spec {
        name "dotlrn_lorsm"
	contract_name "dotlrn_applet"
	owner "dotlrn_lorsm"
        aliases {
	    GetPrettyName dotlrn_lorsm::get_pretty_name
	    AddApplet dotlrn_lorsm::add_applet
	    RemoveApplet dotlrn_lorsm::remove_applet
	    AddAppletToCommunity dotlrn_lorsm::add_applet_to_community
	    RemoveAppletFromCommunity dotlrn_lorsm::remove_applet_from_community
	    AddUser dotlrn_lorsm::add_user
	    RemoveUser dotlrn_lorsm::remove_user
	    AddUserToCommunity dotlrn_lorsm::add_user_to_community
	    RemoveUserFromCommunity dotlrn_lorsm::remove_user_from_community
	    AddPortlet dotlrn_lorsm::add_portlet
	    RemovePortlet dotlrn_lorsm::remove_portlet
	    Clone dotlrn_lorsm::clone
	    ChangeEventHandler dotlrn_lorsm::change_event_handler
        }
    }
    
    acs_sc::impl::new_from_spec -spec $spec
}

ad_proc -public dotlrn_lorsm::unregister_portal_datasource_impl {} {
    Unregister service contract implementations
} {
    acs_sc::impl::delete \
        -contract_name "dotlrn_applet" \
        -impl_name "dotlrn_lorsm"
}

