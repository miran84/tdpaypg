/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package egovframework.example.cmmn.service;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;




/**
 * @Class Name : EnvSetService.java
 * @Description : EnvSetService Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2009.03.16           최초생성
 *
 * @author 개발프레임웍크 실행환경 개발팀
 * @since 2009. 03.16
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public interface CommonService {


	List<Map<String, String>> commonList(Map<String, String> params) throws IOException, SQLException;
	
	Map<String, String> fileInfo(Map<String, String> params) throws IOException, SQLException;
		
	int checkId(Map<String, String> params) throws IOException, SQLException;
	
	int store_id(Map<String, String> params) throws IOException, SQLException;
	
	String cp_id(String store_id) throws IOException, SQLException;
	
	String commonUpload(Map<String, String> params, MultipartHttpServletRequest multiRequest) throws IOException;
}
