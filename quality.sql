/*
MySQL Data Transfer
Source Host: 192.168.1.200
Source Database: query_test
Target Host: 192.168.1.200
Target Database: query_test
Date: 14-Sep-16 2:11:41 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for file
-- ----------------------------
CREATE TABLE `file` (
  `id` int(11) NOT NULL auto_increment,
  `program_id` int(11) NOT NULL,
  `file_name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for file_to_query
-- ----------------------------
CREATE TABLE `file_to_query` (
  `id` int(11) NOT NULL auto_increment,
  `file_id` int(11) NOT NULL,
  `query_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `program_id` (`file_id`,`query_id`),
  KEY `query_id` (`query_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for ftp
-- ----------------------------
CREATE TABLE `ftp` (
  `ftp_id` int(11) NOT NULL auto_increment,
  `ftp_name` varchar(200) default NULL,
  `ip_address` varchar(200) default NULL,
  `username` varchar(200) default NULL,
  `password` varchar(200) default NULL,
  `pathname` varchar(200) default NULL,
  `webserver` varchar(200) default NULL,
  `status` tinyint(1) default '1',
  `site_id` int(11) default NULL,
  `type` varchar(200) default NULL,
  PRIMARY KEY  (`ftp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for program
-- ----------------------------
CREATE TABLE `program` (
  `id` int(11) NOT NULL auto_increment,
  `server_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `eid` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `server_id` (`server_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for query
-- ----------------------------
CREATE TABLE `query` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `query_string` mediumtext NOT NULL,
  `info` varchar(255) default NULL,
  `created` datetime default NULL,
  `type` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `file` VALUES ('1', '1', '/Controller/order_main.php');
INSERT INTO `file` VALUES ('2', '1', '/Controller/order_form.php');
INSERT INTO `file` VALUES ('3', '1', '/Model/order_form.php');
INSERT INTO `file` VALUES ('7', '4', 'test');
INSERT INTO `file` VALUES ('8', '4', 'e');
INSERT INTO `file` VALUES ('9', '2', 'Controller/quotes/event.php');
INSERT INTO `file` VALUES ('10', '2', null);
INSERT INTO `file` VALUES ('11', '7', '/controller/paymentrun.php');
INSERT INTO `file` VALUES ('12', '7', '/controller/paidback.php');
INSERT INTO `file` VALUES ('13', '7', '/controller/purchase.php');
INSERT INTO `file` VALUES ('14', '7', '/controller/topayback.php');
INSERT INTO `file_to_query` VALUES ('5', '0', '0');
INSERT INTO `file_to_query` VALUES ('1', '1', '1');
INSERT INTO `file_to_query` VALUES ('2', '1', '2');
INSERT INTO `file_to_query` VALUES ('3', '1', '3');
INSERT INTO `file_to_query` VALUES ('26', '1', '14');
INSERT INTO `file_to_query` VALUES ('23', '1', '19');
INSERT INTO `file_to_query` VALUES ('22', '1', '20');
INSERT INTO `file_to_query` VALUES ('21', '1', '21');
INSERT INTO `file_to_query` VALUES ('24', '1', '22');
INSERT INTO `file_to_query` VALUES ('25', '9', '27');
INSERT INTO `file_to_query` VALUES ('27', '11', '28');
INSERT INTO `file_to_query` VALUES ('30', '12', '12');
INSERT INTO `file_to_query` VALUES ('28', '12', '13');
INSERT INTO `file_to_query` VALUES ('29', '12', '26');
INSERT INTO `file_to_query` VALUES ('38', '13', '20');
INSERT INTO `file_to_query` VALUES ('37', '13', '22');
INSERT INTO `file_to_query` VALUES ('36', '13', '33');
INSERT INTO `file_to_query` VALUES ('31', '14', '29');
INSERT INTO `file_to_query` VALUES ('32', '14', '30');
INSERT INTO `file_to_query` VALUES ('33', '14', '31');
INSERT INTO `file_to_query` VALUES ('34', '14', '32');
INSERT INTO `file_to_query` VALUES ('35', '14', '33');
INSERT INTO `ftp` VALUES ('1', 'NTS', '188.203.224.134', 'Kenya', 'kenya123', '/', 'http://mailing.nts.nl/', '0', null, '');
INSERT INTO `ftp` VALUES ('3', 'Salland', '77.61.38.205', 'scresources', '8AmdEjb123eBKV0nvyfm', '/images/mailing/', 'http://static.salland.eu/newfiles/mailing/', '0', '14', '');
INSERT INTO `ftp` VALUES ('6', 'Salland website', '77.61.38.205', 'scftp-website', 'IaOvJljQ7t8sFhwCJ58l', null, null, '1', null, 'query');
INSERT INTO `ftp` VALUES ('7', 'Salland backoffice', '77.61.38.206', 'scftp-website', 'IaOvJljQ7t8sFhwCJ58l', null, null, '1', null, 'query');
INSERT INTO `ftp` VALUES ('8', 'Salland development', '77.61.38.203', 'scftp-dev', 'o2LEzP0ZveWqzJ4DOurU', null, null, '1', null, 'query');
INSERT INTO `ftp` VALUES ('9', 'NTS', '213.201.143.93', 'nts', 'nnaeLAIPITgtEQ0dIuKx', null, null, '1', null, 'query');
INSERT INTO `program` VALUES ('1', '1', 'Orders', '', null);
INSERT INTO `program` VALUES ('2', '7', 'Customer account', 'controller/data_controller.php', null);
INSERT INTO `program` VALUES ('6', '6', 'TEST1', '', null);
INSERT INTO `program` VALUES ('7', '8', 'SEPA', '/private/Sepa/', null);
INSERT INTO `program` VALUES ('8', '0', 'Receiving', 'new', null);
INSERT INTO `query` VALUES ('12', 'nts customer query', 'select * from customer', 'this is used toadd', '2016-06-21 11:52:49', 'query');
INSERT INTO `query` VALUES ('14', 'query name', 'SELECT \n    event.event_id,\n    event.reference_id,\n    event.reference,\n    event.event_date,\n    event.relation_id,\n    event.order_status,\n    CUSTOMER.NAME,\n    CUSTOMER.SURNAME,\n    CUSTOMER.COMPANY_NAME,\n    event.total_value,\n    purchase_status.name as purchase_status_name,\n    lookuptable.Item_name AS export_status_name,\n    IFNULL(l2.Item_name,&#39;Open&#39;) AS order_status_name,\n    ORDER_PART.ORDER_ID,\n    ORDER_PART.INDEX_NUMBER\n    \nFROM \n    `event`', 'sdfsdfdsfdf', '2016-06-21 12:02:23', 'query');
INSERT INTO `query` VALUES ('20', 'my salland', 'SELECT \n    event.event_id,\n    event.reference_id,\n    event.reference,\n    event.event_date,\n    event.relation_id,\n    event.order_status,\n    CUSTOMER.NAME,\n    CUSTOMER.SURNAME,\n    CUSTOMER.COMPANY_NAME,\n    event.total_value,\n    purchase_status.name as purchase_status_name,\n    lookuptable.Item_name AS export_status_name,\n    IFNULL(l2.Item_name,&#39;Open&#39;) AS order_status_name,\n    ORDER_PART.ORDER_ID,\n    ORDER_PART.INDEX_NUMBER\n    \nFROM \n    `event`', 'Query for my salland', '2016-06-21 13:03:07', 'query');
INSERT INTO `query` VALUES ('22', 'qf', 'sfsfasfd', 'fasdfa', '2016-06-21 18:58:51', 'query');
INSERT INTO `query` VALUES ('27', 'default quotes', 'SELECT\n                e.EventId,\n                e.ReferenceId,\n                e.Reference,\n                e.Event_Date,\n                e.Event_Time,\n                e.RelationId,\n                e.ContactId,\n                COALESCE(relation.relation_company, &#39;&#39;) RelationName,\n                CONCAT(relation_contact.contact_firstname, &#39; &#39;, relation_contact.contact_lastname) ContactName,\n                e.EmployeeId,\n                IF(e.EmployeeId = 548,\n                    &#39;Systeem&#39;,\n                    CONCAT(t.FirstName,&#39; &#39;,COALESCE(t.SecondName, t.LastName, &#39;&#39;))\n                ) EmployeeName,\n                lookuptable.Item_name ItemName,\n                Reference,\n                e.Total_Value,\n                COALESCE(e.EvtCurrency, &#39;Select Curr.&#39;) Currency,\n                e.StatusId2\n            FROM\n                EVENT e\n                    LEFT JOIN relation ON e.RelationId=relation.relation_id\n                    LEFT JOIN `relation_contact` ON e.RelationId=relation_contact.relation_id\n                        AND e.ContactId = relation_contact.contact_id\n                    LEFT JOIN relation_contact rc ON rc.contact_id = e.EmployeeId AND rc.relation_id\n  0\n                    LEFT JOIN trainees t ON t.id = e.EmployeeId\n                    LEFT JOIN lookuptable ON e.StatusId1 = lookuptable.Item_Value\n                        AND lookuptable.Sort_ID = 1631\n                        AND lookuptable.Language_ID= e.LanguageID\n            WHERE\n                e.EventId > 0\n            AND \n                e.ProcessId = 5 \n/* AND  e.ContactId=&#39;&#34;. $_SESSION[&#39;nts_user&#39;].&#34;&#39; AND  YEAR(e.Event_Date)=&#34;.$year.&#34;*/\n        ', 'loads quotes for customers', '2016-06-22 11:23:21', 'query');
INSERT INTO `query` VALUES ('28', 'payment run main grid salland', 'SELECT \n    *\nFROM\n    `payment_run`', 'Loads the main grid for payment runs from Salland', '2016-07-05 15:09:51', null);
INSERT INTO `query` VALUES ('29', 'main grid salland', 'SELECT\n	ORDER_PART.ORDER_PART_ID order_part_id,\n	CONCAT(ORDER_PART.ORDER_ID, &#39;/&#39;, ORDER_PART.INDEX_NUMBER) order_number,\n	ORDERS.CUSTOMER_ID customer_id,\n	CONCAT(\n		IF(	CUSTOMER.IS_COMPANY, \n			CONCAT(&#39;(&#39;, CUSTOMER.COMPANY_NAME, &#39;) &#39;), \n			&#39;&#39;\n		), CUSTOMER.NAME, &#39; &#39;, CUSTOMER.SURNAME\n	) customer_name,\n	CUSTOMER.TELEPHONE telephone,\n	CUSTOMER.MOBILE mobile,\n	CUSTOMER.EMAIL email,\n	IF(	LENGTH(CUSTOMER.bank_account_name)=0 OR CUSTOMER.bank_account_name IS NULL,\n		IF(	CUSTOMER.IS_COMPANY AND LENGTH(CUSTOMER.COMPANY_NAME)>0,\n			CUSTOMER.COMPANY_NAME,\n			CONCAT(CUSTOMER.NAME, &#39; &#39;, CUSTOMER.SURNAME)\n		),\n		CUSTOMER.bank_account_name\n	) bank_account_name,\n	CUSTOMER.bank_account_iban,\n	CUSTOMER.bank_account_swift,\n	ORDER_PART.CACHE_TOTAL_INC_VAT-round(ORDER_PART.PAID_AMOUNT/100,2) to_pay_back,\n	ORDER_PART.PAID_BACK_AMOUNT paid_back_amount,\n    ORDER_PART.PAYMENT_STATUS as payment_status,\n	IF(	ORDER_PART.NEW_RMA_ID>0,\n		&#39;RMA&#39;,\n		CASE\n			WHEN ORDER_PART.ORDER_STATUS_ID = 99 THEN &#39;Geannuleerd&#39;\n			WHEN ORDER_PART.ORDER_STATUS_ID IN (4,5,6,7,10,11,20) AND ORDER_PART_HISTORY.ORDER_PART_ID IS NOT NULL THEN &#39;Producten geannuleerd&#39;\n			WHEN ORDER_PART.ORDER_STATUS_ID = 290 THEN &#39;Reden niet bekend, controleer!&#39;\n			ELSE &#39;Teveel betaald&#39;\n		END\n	) reason,\n	IF(PAID_BACK_PROCESSED=0,DATE_FORMAT(ORDER_PART.PAID_BACK_DATE, &#39;%d-%m-%Y&#39;),&#39;&#39;) paid_back_date,\n	ORDER_PART.PAID_BACK_COMMENT paid_back_comment,\n	TR_COUNTRY.DESCRIPTION country,\n	DATE_FORMAT(\n		IF(	ORDER_PART.NEW_RMA_ID>0,\n			ORDER_PART.DATE_ORDER_PART,\n			CASE\n				WHEN ORDER_PART.ORDER_STATUS_ID=99 THEN MAX(STATUS_CANCELLED.CHANGE_DATE)\n				WHEN ORDER_PART.ORDER_STATUS_ID IN (4,5,6,7,10,11,20) AND ORDER_PART_HISTORY.ORDER_PART_ID IS NOT NULL THEN MAX(ORDER_PART_HISTORY.CHANGE_DATE)\n				WHEN ORDER_PART.ORDER_STATUS_ID = 290 THEN MAX(STATUS_CREDIT.CHANGE_DATE)\n				ELSE MAX(ORDER_PART_PAYMENT_HISTORY.CHANGE_DATE)\n			END\n		),\n		&#39;%d-%m-%Y&#39;) event_date\nFROM\n	ORDER_PART\n		JOIN ORDERS ON ORDER_PART.ORDER_ID=ORDERS.ORDER_ID\n		JOIN CUSTOMER ON ORDERS.CUSTOMER_ID=CUSTOMER.CUSTOMER_ID\n		JOIN TR_COUNTRY ON CUSTOMER.COUNTRY_ID=TR_COUNTRY.COUNTRY_ID\n			AND TR_COUNTRY.LANGUAGE_ID=1\n		LEFT JOIN ORDER_PART_HISTORY ON ORDER_PART.ORDER_PART_ID=ORDER_PART_HISTORY.ORDER_PART_ID\n			AND ORDER_PART_HISTORY.DESCRIPTION=&#39;cancelled&#39;\n		LEFT JOIN ORDER_PART_PAYMENT_HISTORY ON ORDER_PART.ORDER_PART_ID=ORDER_PART_PAYMENT_HISTORY.ORDER_PART_ID\n			AND ORDER_PART_PAYMENT_HISTORY.AMOUNT>0\n		LEFT JOIN ORDER_PART_STATUS STATUS_CREDIT ON ORDER_PART.ORDER_PART_ID=STATUS_CREDIT.ORDER_PART_ID\n			AND STATUS_CREDIT.ORDER_STATUS_ID=290\n		LEFT JOIN ORDER_PART_STATUS STATUS_CANCELLED ON ORDER_PART.ORDER_PART_ID=STATUS_CANCELLED.ORDER_PART_ID\n			AND STATUS_CANCELLED.ORDER_STATUS_ID=99\nWHERE\n	ORDER_PART.CACHE_TOTAL_INC_VAT  500000\nAND\n	ORDER_PART.ORDER_STATUS_ID NOT IN (400,410)\nGROUP BY\n	ORDER_PART.ORDER_PART_ID', 'Fetch to pay pack grid', '2016-07-05 18:39:32', null);
INSERT INTO `query` VALUES ('30', 'main grid nts', 'SELECT \n	pl.id,pl.order_no,pl.relation_id,r.relation_company,r.Telephone,rc.contact_mobile,\n        rc.email,rc.contact_attendent,pl.contact_id,pl.iban,pl.bic,xc.countries_name,pl.pdate,pl.amount,pl.reason,pl.remark,\n        pl.event,pl.status \nFROM \n	relation r, payment_lines pl\n		LEFT JOIN relation_contact rc ON rc.contact_id = pl.contact_id\n		LEFT JOIN xoops_shop_countries xc ON xc.countries_id = pl.country_id \nWHERE \n	r.relation_id = pl.relation_id\nAND \n	pl.branch_id = ?', 'Fetch main grid data for NTS', '2016-07-05 18:41:22', null);
INSERT INTO `query` VALUES ('31', 'sepa salland', 'SELECT\n	ORDER_PART.ORDER_PART_ID order_part_id,\n	CONCAT(ORDER_PART.ORDER_ID, &#39;/&#39;, ORDER_PART.INDEX_NUMBER) order_number,\n	IF(	LENGTH(CUSTOMER.bank_account_name)=0 OR CUSTOMER.bank_account_name IS NULL,\n		IF(	CUSTOMER.IS_COMPANY AND LENGTH(CUSTOMER.COMPANY_NAME)>0,\n			CUSTOMER.COMPANY_NAME,\n			CONCAT(CUSTOMER.NAME, &#39; &#39;, CUSTOMER.SURNAME)\n		),\n		CUSTOMER.bank_account_name\n	) bank_account_name,\n	CUSTOMER.bank_account_iban,\n	CUSTOMER.bank_account_swift,\n	ORDER_PART.CACHE_TOTAL_INC_VAT-round(ORDER_PART.PAID_AMOUNT/100,2) to_pay_back\nFROM\n	ORDER_PART\n		JOIN ORDERS ON ORDER_PART.ORDER_ID=ORDERS.ORDER_ID\n		JOIN CUSTOMER ON ORDERS.CUSTOMER_ID=CUSTOMER.CUSTOMER_ID\nWHERE\n	\n	ORDER_PART.ORDER_PART_ID > 500000\nAND\n	ORDER_PART.ORDER_STATUS_ID NOT IN (400,410)\nAND\n	ORDER_PART.ORDER_PART_ID IN (?)', 'Fetch sepa data for PAIN creation for branch Salland', '2016-07-05 18:42:36', null);
INSERT INTO `query` VALUES ('32', 'update account name salland', 'UPDATE \n    CUSTOMER \nSET \n    bank_account_name=?\nWHERE\n    CUSTOMER_ID=?', 'Update the bank account name in the customer table', '2016-07-05 18:50:32', null);
INSERT INTO `query` VALUES ('33', 'update iban salland', 'UPDATE \n    CUSTOMER \nSET \n    bank_account_iban=? \nWHERE \n    CUSTOMER_ID=?', 'Update iban for a customer', '2016-07-05 18:54:25', null);
