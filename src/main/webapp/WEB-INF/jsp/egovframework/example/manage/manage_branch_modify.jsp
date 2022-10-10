<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>   
	<script src="/js/manage_branch_modify.js"></script>
    <script>
	    getOption('#bank_code', 'bank', 'N', '${manageVo.bank_code }');
	    getOption('#high_store_id', 'high_store_id', 'N', '${manageVo.high_store_id }');
    </script>

    <!-- container -->
    <div class="inner">
        <div class="ttl_box">
            <h2>대리점정보</h2>
        </div>
        <div class="layout_wrap">
            <form name="frm" id="frm" method="post" action="" enctype="multipart/form-data">
                <input type="hidden" name="created_id" id="created_id" value="${sessionScope.login_id}" />
                <input type="hidden" name="updated_id" id="updated_id" value="${sessionScope.login_id}" />
                <input type="hidden" name="store_id" id="store_id" value="${manageVo.store_id }" />			
                <input type="hidden" name="role_id" id="role_id" value="1003" />	
                <input type="hidden" name="no" id="no" value=${manageVo.no } />
                <input type="hidden" name="arrChk" id="arrChk"/>
                <!-- <input type="hidden" name="period" id="period" value="30" /> -->	
                <table class="table_layout01">
                    <colgroup>
                        <col style="width:160px;">
                        <col style="width:auto;">
                        <col style="width:160px;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>상점ID</th>
                            <td>
                                <input class="w180" type="text" name="" placeholder="uwal" id="" value="${manageVo.store_id }" disabled>
                            </td>
                            <th>상호명</th>
                            <td>
                                <input class="w180" type="text" name="business_nm" placeholder="유월커뮤니케이션" id="business_nm" value="${manageVo.business_nm }" disabled>
                            </td>
                        </tr>
                        <tr>
                            <th>대표자</th>
                            <td>
                                <input class="w180" type="text" name="ceo" placeholder="김평진" id="ceo" value="${manageVo.ceo }">
                            </td>
                            <th>사업자등록번호</th>
                            <td>
                                <input class="w180" type="text" name="corp_regist_num" placeholder="107-87-86839" id="corp_regist_num" value="${manageVo.corp_regist_num }" disabled maxlength="12">
                            </td>
                        </tr>
                        <tr>
                            <th>대표자생년월일</th>
                            <td>
                                <input class="w180" type="text" name="ceo_birth" placeholder="1981.12.09" id="ceo_birth" value="${manageVo.ceo_birth }" maxlength="10">
                            </td>
                            <th>사업자구분</th>
                            <td>
                                <select class="w110" name="corp_type" placeholder="" id="corp_type" disabled>
                                    <option value="A" ${manageVo.corp_type eq 'A' ?'selected':''}>개인</option>
                                    <option value="B" ${manageVo.corp_type eq 'B' ?'selected':''}>법인</option>
                                    <option value="C" ${manageVo.corp_type eq 'C' ?'selected':''}>비영리 법인</option>
                                </select>				
                                <c:if test="${!empty manageVo.corp_regist_num2}">
                                <input class="w180" type="text" name="corp_regist_num2" placeholder="법인등록번호" id="corp_regist_num2" value="${manageVo.corp_regist_num2 }" disabled>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <th>업태</th>
                            <td>
                                <input class="w180" type="text" name="business_cond" placeholder="서비스" id="business_cond" value="${manageVo.business_cond }">
                            </td>
                            <th>업종</th>
                            <td>
                                <input class="w180" type="text" name="industry_type" placeholder="온라인정보제공업" id="industry_type" value="${manageVo.industry_type }">
                            </td>
                        </tr>
                        <tr>
                            <th>전화번호</th>
                            <td>
                                <input class="w180" type="tel" name="tel" placeholder="02-0000-0000" id="tel" value="${manageVo.tel }" maxlength="20">
                            </td>
                            <th>FAX</th>
                            <td>
                                <input class="w180" type="tel" name="fax" placeholder="02-0000-0000" id="fax" value="${manageVo.fax }" maxlength="20">
                            </td>
                        </tr>
                        <tr>
                            <th>휴대폰번호</th>
                            <td>
                                <input class="w180" type="text" name="phone_num" placeholder="010-0000-0000" id="phone_num" value="${manageVo.phone_num }" maxlength="13">
                            </td>
                            <th>정산계좌번호</th>
                            <td>
                                <select class="w180" name="bank_code" placeholder="" id="bank_code" ${sessionScope.role_id eq '1001'?'':'disabled' }>
                                </select>									
                                <input class="w180" type="text" name="account_num" placeholder="000-000-000000" id="account_num" value="${manageVo.account_num }" ${sessionScope.role_id eq '1001'?'':'disabled' }>
                                <input class="w180" type="text" name="accounter" placeholder="예금주" id="accounter" value="${manageVo.accounter }" ${sessionScope.role_id eq '1001'?'':'disabled' }>
                            </td>
                        </tr>
                        <tr>
                            <th>Email 주소</th>
                            <td>
                                <input class="w180" type="email" name="email" placeholder="text@test.com" id="email" value="${manageVo.email }" maxlength="50"></td>
                            <th>계약담당자</th>
                            <td>
                                <input class="w110" type="text" name="person_nm1" placeholder="홍길동" id="person_nm1" value="${manageVo.person_nm1 }"> 
                                <input class="w180" type="tel" name="person_phone1" placeholder="010-0000-0000" id="person_phone1" value="${manageVo.person_phone1 }" maxlength="13"> 
                                <input class="w180" type="text" name="person_email1" placeholder="test@test.com" id="person_email1" value="${manageVo.person_email1 }" maxlength="50">
                            </td>
                        </tr>
                        <tr>
                            <th>홈페이지 주소</th>
                            <td>
                                <input class="w380" type="text" name="hompage" placeholder="" id="hompage" value="${manageVo.hompage }" maxlength="100">
                            </td>
                            <th>정산담당자</th>
                            <td>
                                <input class="w110" type="text" name="person_nm2" placeholder="홍길동" id="person_nm2" value="${manageVo.person_nm2 }"> 
                                <input class="w180" type="tel" name="person_phone2" placeholder="010-0000-0000" id="person_phone2" value="${manageVo.person_phone2 }" maxlength="13"> 
                                <input class="w180" type="text" name="person_email2" placeholder="test@test.com" id="person_email2" value="${manageVo.person_email2 }" maxlength="50">
                            </td>
                        </tr>
                        <tr>
                            <th>계약일자</th>
                            <td>
                                <input class="w180" type="text" name="contract_date" placeholder="2020.10.05" id="contract_date" value="${manageVo.contract_date }" disabled maxlength="10">
                            </td>
                            <th>기술담당자</th>
                            <td>
                                <input class="w110" type="text" name="person_nm3" placeholder="홍길동" id="person_nm3" value="${manageVo.person_nm3 }"> 
                                <input class="w180" type="tel" name="person_phone3" placeholder="010-0000-0000" id="person_phone3" value="${manageVo.person_phone3 }" maxlength="13"> 
                                <input class="w180" type="text" name="person_email3" placeholder="test@test.com" id="person_email3" value="${manageVo.person_email3 }" maxlength="50">
                            </td>
                        </tr>
                        <tr>
                            <th>사업장 주소</th>
                            <td>
                                <div class="input_address">
                                    <input class="w80" type="text" name="zip_code" placeholder="" id="zip_code" value="${manageVo.zip_code }" readonly="readonly">
                                    <button class="search_btn" type="button" onclick="jsDaumPostcode();">
                                        <img src="../img/btn/btn_search.png"  alt="찾기">
                                    </button> 
                                    <input class="w240" type="text" name="address" placeholder="" id="address" value="${manageVo.address }" >
                                </div>
                            </td>
                            <th>사업장 세부주소</th>
                            <td>
                                <input class="w380" type="text" name="detail_address" placeholder="" id="detail_address" value="${manageVo.detail_address }">
                            </td>
                        </tr>
                        <tr>
                            <!-- <th>터미널ID</th>
                            <td>
                                <input class="w180" type="text" name="terminal_id" placeholder="" id="terminal_id" value="${manageVo.terminal_id }">
                            </td> -->
                            <th>영업대행</th>
                            <td colspan="3">
                                <select class="w180" name="high_store_id" placeholder="" id="high_store_id" disabled>
                                </select>									
                            </td>										
                            <!-- <th>수수료</th>
                            <td>
                                <input class="w180" type="number" name="commission"  id="commission" value="${manageVo.commission }" ${sessionScope.role_id eq '1001'?'':'disabled' }>
                                <span class="unit">%</span>
                            </td> -->
                        </tr>
                        <tr>
                            <th>신용카드K 수수료</th>
                            <td class="fees_input">
                                <div class="fees_text fees01">
                                    <input class="w80" type="number" name="credit_card_k"  id="credit_card_k" value="${manageVo.credit_card_k }">
                                    <span class="unit">%</span>
                                </div>
                            </td>
                            <th>단말기 수수료</th>
                            <td class="fees_input">
                                <div class="fees_text fees01">
                                    <input class="w80" type="number" name="terminal" id="terminal" value="${manageVo.terminal }">
                                    <span class="unit">%</span>
                                </div>
                            </td>
                        </tr>
                        <!-- <tr>
                            <th>터미널ID</th>
                            <td><input class="w180" type="text" name="terminal_id" placeholder="" id="terminal_id" value="${manageVo.terminal_id }" maxlength="30">
                            </td> 
                            <th>신용카드 수수료</th>
                            <td colspan="3">
                                <!-- <select name="" id="feesType" class="w180">
                                    <option value="">선택</option>
                                    <option value="fees01">신용카드K</option>
                                    <option value="fees02">신용카드</option>
                                    <option value="fees03">단말기</option>
                                </select> 
                                <div class="fees_input">
                                    <div class="fees_text fees02">
                                        신용카드 <input class="w80" type="number" name="credit_card" id="credit_card" value="${manageVo.credit_card }"><span class="unit">%</span> <span>/</span>
                                        계좌이체 <input class="w80" type="number" name="account_transfer" id="account_transfer" value="${manageVo.account_transfer }"><span class="unit">%</span> <span>/</span>   
                                        가상계좌 <input class="w80" type="number" name="virtual_account" id="virtual_account" value="${manageVo.virtual_account }"><span class="unit">%</span> <span>/</span>                                                                             
                                        문화상품권 <input class="w80" type="number" name="gift_voucher" id="gift_voucher" value="${manageVo.gift_voucher }"><span class="unit">%</span> <span>/</span>
                                        스마트문상 <input class="w80" type="number" name="smart_gift_voucher" id="smart_gift_voucher" value="${manageVo.smart_gift_voucher }"><span class="unit">%</span> <span>/</span>
                                        도서문화상품권 <input class="w80" type="number" name="book_gift_voucher" id="book_gift_voucher" value="${manageVo.book_gift_voucher }"><span class="unit">%</span>
                                    </div>
                                </div>
                                
                            </td>									
                        </tr> -->
                        <tr>
                            <th>지급상태</th>
                            <td>
                                <select class="w180" name="tax"  id="tax" ${sessionScope.role_id eq '1001'?'':'disabled' }>
                                    <!-- <option value="Y" ${manageVo.tax eq 'Y'?'selected':''}>세금계산서</option> -->
                                    <option value="">매출세금계산서</option>
                                    <option value="">매입세금계산서</option>
                                    <option value="N" ${manageVo.tax eq 'N'?'selected':''}>원천징수</option>
                                </select>
                            </td>									
                            <th>상태구분</th>
                            <td>
                                <select class="w110" name="state" placeholder="" id="state" ${sessionScope.role_id eq '1001'?'':'disabled' }>
                                    <option value="Y" ${manageVo.state eq 'Y'?'selected':''}>사용</option>
                                    <option value="N" ${manageVo.state eq 'N'?'selected':''}>중지</option>
                                </select>									
                            </td>
                        </tr>
                        <tr>
                            <th><label for="">정산방식</th>
                            <td>
                                <select name="settlement_type" id="settlement_type" class="w180">
                                    <option value="G" ${manageVo.settlement_type eq 'G'?'selected':''}>일반정산</option>
                                    <option value="D" ${manageVo.settlement_type eq 'D'?'selected':''}>직접정산</option>
                                </select>
                            </td>										
                            <th>정산주기</th>
                            <td>
                                <select class="w180"	name="period" placeholder="" id="">
                                    <option value="">선택</option>
                                    <c:forEach var="i" begin="0" end="30">
                                        <option value="<c:out value="${i}" />" ${manageVo.period == i?'selected':''}>D+<c:out value="${i}" /></option>
                                    </c:forEach>
                                </select>
                            </td>
                        </tr>	
                        <tr>		
                            <th>보증금(보증보험)</th>
                            <td>
                                <input type="number" class="w140" name="deposit" placeholder="" id="deposit" value="${manageVo.deposit }" >
                            </td>
                            <th>통합한도설정</th>
                            <td>
                                <input type="number" class="w140" name="itg_limitset" placeholder="" id="itg_limitset" value="${manageVo.itg_limitset }" >
                            </td>								
                        </tr>	
                        <tr>
                            <th>첨부파일</th>
                            <td class="file_add" colspan="3">
                                <div class="file_add_wrap_box">
                                    <div class="file_add_wrap file_add_default">
                                        <div class="file_add_btn">
                                            <input type="text" class="w180" name="file_nm" id="file_nm" value="" readonly>
                                            <input type="file" id="file_add_1" name="file" >
                                            <label for="file_add_1"><span class="file_select">파일선택</span></label>
                                            <!-- <button type="button" class="file_plus_btn">파일추가</button>
                                            <button type="button" class="file_minus_btn">파일삭제</button> -->
                                        </div>
                                    </div>                             
                                    <div class="file_add_wrap file_add_default">
                                        <div class="file_add_btn">
                                            <input type="text" class="w180" name="file_nm" id="file_nm" value="" readonly>
                                            <input type="file" id="file_add_2" name="file" >
                                            <label for="file_add_2"><span class="file_select">파일선택</span></label>
                                            <!-- <button type="button" class="file_plus_btn">파일추가</button>
                                            <button type="button" class="file_minus_btn">파일삭제</button> -->
                                        </div>
                                    </div>                             
                                    <div class="file_add_wrap file_add_default">
                                        <div class="file_add_btn">
                                            <input type="text" class="w180" name="file_nm" id="file_nm" value="" readonly>
                                            <input type="file" id="file_add_3" name="file" >
                                            <label for="file_add_3"><span class="file_select">파일선택</span></label>
                                            <!-- <button type="button" class="file_plus_btn">파일추가</button>
                                            <button type="button" class="file_minus_btn">파일삭제</button> -->
                                        </div>
                                    </div>                             
                                </div>
                                <div class="file_add_wrap_box">
                                    <div class="file_add_wrap file_add_default">
                                        <div class="file_add_btn">
                                            <input type="text" class="w180" name="file_nm" id="file_nm" value="" readonly>
                                            <input type="file" id="file_add_4" name="file" >
                                            <label for="file_add_4"><span class="file_select">파일선택</span></label>
                                            <!-- <button type="button" class="file_plus_btn">파일추가</button>
                                            <button type="button" class="file_minus_btn">파일삭제</button> -->
                                        </div>
                                    </div>                             
                                    <div class="file_add_wrap file_add_default">
                                        <div class="file_add_btn">
                                            <input type="text" class="w180" name="file_nm" id="file_nm" value="" readonly>
                                            <input type="file" id="file_add_5" name="file" >
                                            <label for="file_add_5"><span class="file_select">파일선택</span></label>
                                            <!-- <button type="button" class="file_plus_btn">파일추가</button>
                                            <button type="button" class="file_minus_btn">파일삭제</button> -->
                                        </div>
                                    </div>                             
                                    <div class="file_add_wrap file_add_default">
                                        <div class="file_add_btn">
                                            <input type="text" class="w180" name="file_nm" id="file_nm" value="" readonly>
                                            <input type="file" id="file_add_6" name="file" >
                                            <label for="file_add_6"><span class="file_select">파일선택</span></label>
                                            <!-- <button type="button" class="file_plus_btn">파일추가</button>
                                            <button type="button" class="file_minus_btn">파일삭제</button> -->
                                        </div>
                                    </div>                             
                                </div>
                            </td>	
                        </tr>
                        <tr>
                            <th>첨부파일 내용 </th>
                            <td colspan="3">
                                <div>
                                	<c:forEach var="result" items="${fileList}" varStatus="status">
                                    <div class="file_delete">
                                        <!-- <input id="delete_check_${result.file_num }" class="check_new" type="checkbox" name="chk" key="${result.file_num }"> -->
                                        <a href="/fileDownload.do?no=${result.file_num }"><label for="delete_check_${result.file_num }">${result.file_nm }</a>
                                        <button type="button" class="file_del" data-fileno="${result.file_num }">파일삭제</button>
                                    </div>
                                    </c:forEach>
                                </div>
                            </td>	
                        </tr>
                        <tr>                            
                            <th>패스워드 수정</th>
                            <td colspan="3">
                                <!-- <a href="/user/pwReset.do?store_id=${manageVo.store_id }&email=${manageVo.email }'; " class="point_btn">패스워드 재발송</a> --> 
                                <!-- <button onclick="location.href='/user/pwReset.do?store_id=${manageVo.store_id }&email=${manageVo.email }'; "    class="point_btn" type="button">패스워드 재발송</button>
                                <span class="info_txt">버튼을 누르시면 임시패스워드가 계약 담당자에게 발송됩니다.</span> -->
                                <span>패스워드</span>
                                <input class="w150" type="password" name="passwd" placeholder="" id="passwd" value="">
                                <span>/</span>
                                <span>패스워드 확인</span>
                                <input class="w150" type="password" name="repasswd" placeholder="" id="repasswd" value="">
                            </td>
                        </tr>
                    </tbody>
                </table>

                <div class="btn_box">
                    <a href="/manage/manage_branch.do?view_type=L" class="dark_line_btn">이전</a>
                    <a href="javascript:fnSubmit();" id="frmMod" class="dark_full_btn">수정하기</a> 
                    <a href="/manage/manage_branch.do" class="gray_line_btn">목록</a>
                </div>
            </form>
        </div>
    </div>
	<!-- //wrap -->
    
    <script>

        $(function(){
            
            $.fn.outerHTML = function() {
                var el = $(this);
                if( !el[0] ) return "";
            
                if (el[0].outerHTML) {
                    return el[0].outerHTML;
                } else {
                    var content = el.wrap('<p/>').parent().html();
                    el.unwrap();
                    return content;
                }
            }
            
    
            var fileHtml = $('.file_add_default').outerHTML();
            var fileCont = 0;
            
            $(document).on('click','.file_add .file_plus_btn',function(){
                if(fileCont < 9){
                    $('td.file_add').append(fileHtml);
                    fileCont++;
                } else {
                    alert('첨부파일은 10개까지만 추가 가능합니다.');
                }
            });
            $(document).on('click','.file_add .file_minus_btn',function(){
                $(this).parents('.file_add_default').remove();
                fileCont--;
            });

        	// 파일선택 버튼 클릭
        	$('input[name="file"]').change(function(){
        		var file_add = $(this).val();
        		$(this).prev("#file_nm").val(file_add);
        	});
        	
        	$('.file_del').on('click', function(){
        		var no = $(this).attr('data-fileno');
				var obj = $(this).parent();
        		var data = {
        			"fileChks":	no
        		};

        		$.ajax({
        		    url:  '/manage/manageFileDel.do',
        		    type: 'POST',
        		    data: data,
        		    success: function(data){
        		    	if(data == "success") {
        		    		alert("첨부파일이 삭제 되었습니다.");
        		    		$(obj).remove();
        		    		return;
        		    	}
        		    },
        		    error: function(e){
        		        alert(e.reponseText);
        		    },
        			complete: function() {
        			}
        		});
        	});
        });
    
    </script>






