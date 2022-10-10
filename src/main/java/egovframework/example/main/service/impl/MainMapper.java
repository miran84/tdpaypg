/*
 * Copyright 2011 MOPAS(Ministry of Public Administration and Security).
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
package egovframework.example.main.service.impl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import egovframework.example.main.service.MainDefaultVO;
import egovframework.example.main.service.MainVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

/**
 * sample에 관한 데이터처리 매퍼 클래스
 *
 * @author  표준프레임워크센터
 * @since 2014.01.24
 * @version 1.0
 * @see <pre>
 *  == 개정이력(Modification Information) ==
 *
 *          수정일          수정자           수정내용
 *  ----------------    ------------    ---------------------------
 *   2014.01.24        표준프레임워크센터          최초 생성
 *
 * </pre>
 */
@Mapper("mainMapper")
public interface MainMapper {

	MainVO selectMainSettlementAllListCnt(MainDefaultVO searchMainVO) throws IOException, SQLException;
	
	List<MainVO> selectMainCalendarList(MainDefaultVO searchMainVO) throws IOException, SQLException;
	MainVO selectMainCalendarData(MainDefaultVO searchMainVO) throws IOException, SQLException;

	MainVO selectMainSettlementHisListCnt(MainDefaultVO searchMainVO) throws IOException, SQLException;
	MainVO selectMainHistoryFailListCnt(MainDefaultVO searchMainVO) throws IOException, SQLException;
	
	List<MainVO> selectMainNotice01List(MainDefaultVO searchMainVO) throws IOException, SQLException;
	List<MainVO> selectMainNotice02List(MainDefaultVO searchMainVO) throws IOException, SQLException;
	List<MainVO> selectMainNotice03List(MainDefaultVO searchMainVO) throws IOException, SQLException;
	
}
