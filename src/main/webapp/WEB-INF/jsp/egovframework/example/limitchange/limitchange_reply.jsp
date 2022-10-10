<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="/js/jquery.number.js"></script>
<script src="/js/manage_all.js"></script>
<script src="/js/table.js"></script>
<script src="/js/limitchange_reply.js"></script>

<!-- container -->
<div class="inner">
    <div class="ttl_box">
        <h2>월한도 지급변경</h2>
    </div>
    <div class="layout_wrap">
        <div class="form_info">
            <ul>
                <li># 지엠지페이먼트의 월지급한도 정산방식은 매월 고객님의 지급한도 내에서 고객님의 매출액을 정산해드리는 방식입니다.</li>
                <li>- 예) : 2,000만원의 지급한도인 고객의 이번 달 매출이 2,500만원이라도 지급한도인 2,000만원만 정산이 됩니다.</li>
                <li>- 잔여 500만원은 지급한도를 증액하거나, 차월 지급한도가 복권되면 지급받으실 수 있습니다.</li>
                <li>- 최초 계약하신 지급한도를 넘는 매출액을 정산 받으시려면 한도증액 신청을 해주시기 바랍니다. (보증보험금액 필수)</li>
            </ul>
        </div>
    </div>
    <div class="layout_wrap">
        <form name="frm" id="frm" method="post" action="" target="" >
        <input type="hidden" name="no" id="no" value="${selectLimitchangeVO.no}">
            <table class="table_layout01">
                <colgroup>
                    <col style="width:160px;">
                    <col style="width:auto;">
                </colgroup>
                <tbody>
                    <tr>
                        <th>사업자 번호</th>
                        <td>
                            <input class="w140" type="text" value="${selectLimitchangeVO.corp_regist_num}" disabled>
                        </td>
                    </tr>
                    <tr>
                        <th>상점ID</th>
                        <td>
                            <input class="w140" type="text" value="${selectLimitchangeVO.store_id}" disabled>
                        </td>
                    </tr>
                    <tr>
                        <th>변경정산한도</th>
                        <td>
                            <input class="w180" type="text" value="${selectLimitchangeVO.limit_amt}" disabled>
                        </td>
                    </tr>
                    <tr>
                        <th>이름</th>
                        <td>
                            <input class="w180" type="text" value="${selectLimitchangeVO.name}" disabled>
                        </td>
                    </tr>
                    <tr>
                        <th>Email주소</th>
                        <td>
                            <input class="w180" type="email" value="${selectLimitchangeVO.email}" disabled>
                        </td>
                    </tr>
                    <tr>
                        <th>연락처</th>
                        <td>
                            <input class="w140" type="email" value="${selectLimitchangeVO.phone_num}" disabled>
                        </td>
                    </tr>
                    <tr>
                        <th>변경사유</th>
                        <td>
                            <input class="w370" type="email" value="${selectLimitchangeVO.reason}" disabled>
                        </td>
                    </tr>
                    <tr>
                        <th>답변</th> 
                        <td>
                            <input class="w_all" type="text" id="reply" name="reply" value="${selectLimitchangeVO.reply}" >
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="btn_box"> 
                <a href="javascript:frmMod();" class="dark_full_btn">작성</a> 
                <a href="/limitchange/limitchange_list.do" class="gray_line_btn">목록</a>
            </div>
        </form>
    </div>
</div>
<!-- //container -->