package com.its.board.dto;

import lombok.*;
import java.time.LocalDateTime;
@AllArgsConstructor
@Getter
@Setter
@ToString
@NoArgsConstructor

public class BoardDTO {
    private String boardWriter="";
    private String boardPass="";
    private String boardTitle="";
    private String boardContents ="";


}
