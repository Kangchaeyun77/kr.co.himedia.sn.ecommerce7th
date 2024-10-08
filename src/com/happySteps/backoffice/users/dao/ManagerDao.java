/**
 * YOU ARE STRICTLY PROHIBITED TO COPY, DISCLOSE, DISTRIBUTE, MODIFY OR USE THIS PROGRAM
 * IN PART OR AS A WHOLE WITHOUT THE PRIOR WRITTEN CONSENT OF HIMEDIA.CO.KR.
 * HIMEDIA.CO.KR OWNS THE INTELLECTUAL PROPERTY RIGHTS IN AND TO THIS PROGRAM.
 * COPYRIGHT (C) 2024 HIMEDIA.CO.KR ALL RIGHTS RESERVED.
 *
 * 하기 프로그램에 대한 저작권을 포함한 지적재산권은 himedia.co.kr에 있으며,
 * himedia.co.kr이 명시적으로 허용하지 않는 사용, 복사, 변경 및 제 3자에 의한 공개, 배포는 엄격히 금지되며
 * himedia.co.kr의 지적재산권 침해에 해당된다.
 * Copyright (C) 2024 himedia.co.kr All Rights Reserved.
 *
 *
 * Program		: com.happySteps
 * Description	:
 * Environment	: JRE 1.7 or more
 * File			: ManagerDao.java
 * Notes		:
 * History		: [NO][Programmer][Description]
 *				: [20240726164645][pluto@himedia.co.kr][CREATE: Initial Release]
 */
package com.happySteps.backoffice.users.dao;

import org.springframework.stereotype.Repository;

import com.happySteps.backoffice.common.dao.BaseDao;
import com.happySteps.backoffice.users.dto.ManagerDto;

/**
 * @version 1.0.0
 * @author pluto@himedia.co.kr
 * 
 * @since 2024-07-26
 * <p>DESCRIPTION:</p>
 * <p>IMPORTANT:</p>
 */
@Repository("com.happySteps.backoffice.users.dao.ManagerDao")
public class ManagerDao extends BaseDao {
	
	public int sequence() {
		return sqlSessionBackoffice.selectOne("com.happySteps.backoffice.mybatis.users.Manager.sequence");
	}
	
	public int insert(ManagerDto managerDto) {
		return sqlSessionBackoffice.insert("com.happySteps.backoffice.mybatis.users.Manager.insert", managerDto);
	}
}