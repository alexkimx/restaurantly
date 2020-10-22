/* �� */
DROP TABLE customer 
	CASCADE CONSTRAINTS;

/* �Ǹ��� */
DROP TABLE owner 
	CASCADE CONSTRAINTS;

/* �Ĵ� */
DROP TABLE restaurant 
	CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE booking 
	CASCADE CONSTRAINTS;

/* �Ĵ�޴� */
DROP TABLE menu 
	CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE review 
	CASCADE CONSTRAINTS;

/* �� */
CREATE TABLE customer (
	customer_id VARCHAR2(20) NOT NULL, /* ��ID */
	customer_pw VARCHAR2(100) NOT NULL, /* ��й�ȣ */
	customer_name VARCHAR2(50) NOT NULL, /* �̸� */
	customer_email VARCHAR2(40), /* �̸��� */
	customer_phone VARCHAR2(30), /* ��ȭ��ȣ */
	customer_birthdate DATE, /* ������� */
	customer_joindate DATE, /* ������ */
	customer_image_path VARCHAR2(200), /* ������� */
	customer_state VARCHAR2(20) /* Ż������ */
);

ALTER TABLE customer
	ADD
		CONSTRAINT PK_customer
		PRIMARY KEY (
			customer_id
		);

/* �Ǹ��� */
CREATE TABLE owner (
	owner_id VARCHAR2(20) NOT NULL, /* �Ǹ���ID */
	owner_pw VARCHAR2(100) NOT NULL, /* ��й�ȣ */
	owner_name VARCHAR2(50) NOT NULL, /* �̸� */
	owner_phone VARCHAR2(30), /* ��ȭ��ȣ */
	owner_email VARCHAR2(40), /* �̸��� */
	owner_joindate DATE /* ������ */
);

ALTER TABLE owner
	ADD
		CONSTRAINT PK_owner
		PRIMARY KEY (
			owner_id
		);

/* �Ĵ� */
CREATE TABLE restaurant (
	restaurant_license VARCHAR2(50) NOT NULL, /* ����ڵ�Ϲ�ȣ */
	owner_id VARCHAR2(20) NOT NULL, /* �Ǹ���ID */
	restaurant_name VARCHAR2(50), /* ��ȣ�� */
	restaurant_phone VARCHAR2(30), /* ��ȭ��ȣ */
	restaurant_representative VARCHAR2(50), /* ��ǥ�ڸ� */
	restaurant_detail VARCHAR2(50), /* ���ּ� */
	restaurant_item VARCHAR2(10), /* ���� */
	restaurant_introduction VARCHAR2(1000), /* �Ұ��� */
	restaurant_image_path VARCHAR2(200) /* ������� */
);

ALTER TABLE restaurant
	ADD
		CONSTRAINT PK_restaurant
		PRIMARY KEY (
			restaurant_license
		);

/* ���� */
CREATE TABLE booking (
	booking_id VARCHAR2(13) NOT NULL, /* �����ȣ */
	customer_id VARCHAR2(20), /* ��ID */
	restaurant_license VARCHAR2(50), /* ����ڵ�Ϲ�ȣ */
	booking_datetime DATE, /* ����ð� */
	booking_count INTEGER /* �����ο� */
);

ALTER TABLE booking
	ADD
		CONSTRAINT PK_booking
		PRIMARY KEY (
			booking_id
		);

/* �Ĵ�޴� */
CREATE TABLE menu (
	menu_id VARCHAR2(20) NOT NULL, /* �޴�ID */
	restaurant_license VARCHAR2(50) NOT NULL, /* ����ڵ�Ϲ�ȣ */
	menu_name VARCHAR2(50), /* �޴��� */
	menu_category VARCHAR2(50) NOT NULL, /* �޴��з� */
	menu_price INTEGER, /* ���� */
	menu_image_path VARCHAR2(200) /* ������� */
);

ALTER TABLE menu
	ADD
		CONSTRAINT PK_menu
		PRIMARY KEY (
			menu_id
		);

/* ���� */
CREATE TABLE review (
	review_id VARCHAR2(20) NOT NULL, /* ����ID */
	restaurant_license VARCHAR2(50), /* ����ڵ�Ϲ�ȣ */
	customer_id VARCHAR2(20), /* ��ID */
	review_score INTEGER, /* ���� */
	review_content VARCHAR2(1000), /* ���� */
	review_writedate DATE, /* �ۼ����� */
	review_image_path VARCHAR2(200) /* ������� */
);

ALTER TABLE review
	ADD
		CONSTRAINT PK_review
		PRIMARY KEY (
			review_id
		);

ALTER TABLE restaurant
	ADD
		CONSTRAINT FK_owner_TO_restaurant
		FOREIGN KEY (
			owner_id
		)
		REFERENCES owner (
			owner_id
		);

ALTER TABLE booking
	ADD
		CONSTRAINT FK_customer_TO_booking
		FOREIGN KEY (
			customer_id
		)
		REFERENCES customer (
			customer_id
		);

ALTER TABLE booking
	ADD
		CONSTRAINT FK_restaurant_TO_booking
		FOREIGN KEY (
			restaurant_license
		)
		REFERENCES restaurant (
			restaurant_license
		);

ALTER TABLE menu
	ADD
		CONSTRAINT FK_restaurant_TO_menu
		FOREIGN KEY (
			restaurant_license
		)
		REFERENCES restaurant (
			restaurant_license
		);

ALTER TABLE review
	ADD
		CONSTRAINT FK_restaurant_TO_review
		FOREIGN KEY (
			restaurant_license
		)
		REFERENCES restaurant (
			restaurant_license
		);

ALTER TABLE review
	ADD
		CONSTRAINT FK_customer_TO_review
		FOREIGN KEY (
			customer_id
		)
		REFERENCES customer (
			customer_id
		);