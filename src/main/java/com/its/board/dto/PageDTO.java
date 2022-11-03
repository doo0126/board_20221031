package com.its.board.dto;

import lombok.Getter;
import lombok.Setter;


@Setter
@Getter
public class PageDTO {
    //페이징 밑에 번호를 쓰기 위한 DTO
    private int page; //현재 패이지
    private int maxPage; //전체 페이지
    private int startPage;
    private int endPage;
}

