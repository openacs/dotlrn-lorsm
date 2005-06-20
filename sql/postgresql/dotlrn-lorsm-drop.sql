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
-- @author Nima Mazloumi (mazloumi@uni-mannheim.de)
-- @creation-date 2005-06-17
--

-- drop the implementation
select acs_sc_impl__delete (
	'dotlrn_applet',	-- impl_contract_name
	'dotlrn_lorsm'		-- impl_name
);

-- remove all the hooks

-- GetPrettyName
select acs_sc_impl_alias__delete (
              'dotlrn_applet',		-- impl_contract_name	
              'dotlrn_lorsm',		-- impl_name
              'GetPrettyName'		-- impl_operation_name
);

-- AddApplet
select acs_sc_impl_alias__delete (
              'dotlrn_applet',		-- impl_contract_name	
              'dotlrn_lorsm',		-- impl_name
              'AddApplet'		-- impl_operation_name
);

-- RemoveApplet
select acs_sc_impl_alias__delete (
              'dotlrn_applet',		-- impl_contract_name	
              'dotlrn_lorsm',		-- impl_name
              'RemoveApplet'		-- impl_operation_name
);

-- AddAppletToCommunity
select acs_sc_impl_alias__delete (
              'dotlrn_applet',		 -- impl_contract_name	
              'dotlrn_lorsm',		 -- impl_name
              'AddAppletToCommunity' 	-- impl_operation_name
);


-- RemoveAppletFromCommunity
select acs_sc_impl_alias__delete (
              'dotlrn_applet',		 -- impl_contract_name	
              'dotlrn_lorsm',		 -- impl_name
              'RemoveAppletFromCommunity' -- impl_operation_name
);

-- AddUser
select acs_sc_impl_alias__delete (
              'dotlrn_applet',		 -- impl_contract_name	
              'dotlrn_lorsm',		 -- impl_name
              'AddUser' -- impl_operation_name
);

-- RemoveUser
select acs_sc_impl_alias__delete (
              'dotlrn_applet',		 -- impl_contract_name	
              'dotlrn_lorsm',		 -- impl_name
              'RemoveUser' 		 -- impl_operation_name
);

-- AddUserToCommunity
select acs_sc_impl_alias__delete (
              'dotlrn_applet',		 -- impl_contract_name	
              'dotlrn_lorsm',		 -- impl_name
              'AddUserToCommunity' 		 -- impl_operation_name
);

-- RemoveUserFromCommunity
select acs_sc_impl_alias__delete (
              'dotlrn_applet',		 -- impl_contract_name	
              'dotlrn_lorsm',		 -- impl_name
              'RemoveUserFromCommunity' 		 -- impl_operation_name
);

-- AddPortlet
select acs_sc_impl_alias__delete (
              'dotlrn_applet',		 -- impl_contract_name	
              'dotlrn_lorsm',		 -- impl_name
              'AddPortlet' 		 -- impl_operation_name
);    

-- RemovePortlet
select acs_sc_impl_alias__delete (
              'dotlrn_applet',		 -- impl_contract_name	
              'dotlrn_lorsm',		 -- impl_name
              'RemovePortlet' 		 -- impl_operation_name
); 

-- Clone
select acs_sc_impl_alias__delete (
              'dotlrn_applet',		 -- impl_contract_name	
              'dotlrn_lorsm',		 -- impl_name
              'Clone' 		 -- impl_operation_name
);

select acs_sc_impl_alias__delete (
              'dotlrn_applet',		 -- impl_contract_name	
              'dotlrn_lorsm',		 -- impl_name
              'ChangeEventHandler' 		 -- impl_operation_name
);

-- Remove the binding
select acs_sc_binding__delete (
                    'dotlrn_applet',
                    'dotlrn_lorsm'
);

delete from dotlrn_applets where package_key = 'dotlrn-lorsm';