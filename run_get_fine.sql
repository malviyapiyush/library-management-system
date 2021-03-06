conn lib_manager/05031992@xe;
CREATE OR REPLACE PROCEDURE run_get_fine
-- http://127.0.0.1:8080/apex/lib_manager.run_get_fine
AS

BEGIN
page_formatting('BEFORE');
	HTP.HTMLOPEN;
		HTP.HEADOPEN;
			HTP.TITLE('LIBRARY MANAGER');
		HTP.HEADCLOSE;
		HTP.BODYOPEN;
			HTP.FORMOPEN ('http://127.0.0.1:8080/apex/lib_manager.lib_mgmt.get_fine', 'POST');
					HTP.TABLEOPEN;
					HTP.TABLEROWOPEN; 
						HTP.TABLEDATA ('BOOK ID'); 
						HTP.TABLEDATA (HTF.FORMTEXT('p_book_id',NULL,NULL,NULL)); 
					HTP.TABLEROWCLOSE;
					HTP.TABLEROWOPEN; 
						HTP.TABLEDATA ('MEMBER ID'); 
						HTP.TABLEDATA (HTF.FORMTEXT('p_member_id',NULL,NULL,NULL)); 
					HTP.TABLEROWCLOSE;
					HTP.TABLEROWOPEN; 
						HTP.TABLEDATA (HTF.FORMSUBMIT(CVALUE=>'Save')); 
						HTP.TABLEDATA (HTF.FORMRESET); 
					HTP.TABLEROWCLOSE; 
					HTP.TABLECLOSE; 
			HTP.FORMCLOSE; 
		HTP.BODYCLOSE;
	HTP.HTMLCLOSE;	
page_formatting('AFTER');
END run_get_fine;
/
GRANT EXECUTE ON lib_manager.run_get_fine TO ANONYMOUS;
SHOW ERROR;
