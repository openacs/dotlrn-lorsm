--  This file is part of dotLRN.
--
--  dotLRN is free software; you can redistribute it and/or modify it under the
--  terms of the GNU General Public License as published by the Free Software
--  Foundation; either version 2 of the License, or (at your option) any later
--  version.
--
--  dotLRN is distributed in the hope that it will be useful, but WITHOUT ANY
--  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
--  FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
--  details.
--
-- The LORSm applet for dotLRN
--
-- @author Ernie Ghiglione (ErnieG@mm.st)
-- @creation-date 2004-04-10
-- @cvs-id $Id$
--

-- create the implementation
select acs_sc_impl__new (
		'dotlrn_applet',
		'dotlrn_lorsm',
		'dotlrn_lorsm'
);

-- add all the hooks

-- GetPrettyName
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_lorsm',
	       'GetPrettyName',
	       'dotlrn_lorsm::get_pretty_name',
	       'TCL'
);

-- AddApplet
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_lorsm',
	       'AddApplet',
	       'dotlrn_lorsm::add_applet',
	       'TCL'
);

-- RemoveApplet
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_lorsm',
	       'RemoveApplet',
	       'dotlrn_lorsm::remove_applet',
	       'TCL'
);

-- AddAppletToCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_lorsm',
	       'AddAppletToCommunity',
	       'dotlrn_lorsm::add_applet_to_community',
	       'TCL'
);

-- RemoveAppletFromCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_lorsm',
	       'RemoveAppletFromCommunity',
	       'dotlrn_lorsm::remove_applet_from_community',
	       'TCL'
);

-- AddUser
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_lorsm',
	       'AddUser',
	       'dotlrn_lorsm::add_user',
	       'TCL'
);

-- RemoveUser
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_lorsm',
	       'RemoveUser',
	       'dotlrn_lorsm::remove_user',
	       'TCL'
);

-- AddUserToCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_lorsm',
	       'AddUserToCommunity',
	       'dotlrn_lorsm::add_user_to_community',
	       'TCL'
);

-- RemoveUserFromCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_lorsm',
	       'RemoveUserFromCommunity',
	       'dotlrn_lorsm::remove_user_from_community',
	       'TCL'
);

-- AddPortlet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_lorsm',
        'AddPortlet',
        'dotlrn_lorsm::add_portlet',
        'TCL'
    );

-- RemovePortlet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_lorsm',
        'RemovePortlet',
        'dotlrn_lorsm::remove_portlet',
        'TCL'
);

-- Clone
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_lorsm',
        'Clone',
        'dotlrn_lorsm::clone',
        'TCL'
);

select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_lorsm',
        'ChangeEventHandler',
        'dotlrn_lorsm::change_event_handler',
        'TCL'
);

-- Add the binding
select acs_sc_binding__new (
	    'dotlrn_applet',
	    'dotlrn_lorsm'
);
