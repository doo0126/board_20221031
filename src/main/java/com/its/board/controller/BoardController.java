package com.its.board.controller;

import com.its.board.dto.BoardDTO;
import com.its.board.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class BoardController {
    @Autowired
    private BoardService boardService;

    @PostMapping("/board/save")
    public String save(@ModelAttribute BoardDTO boardDTO) {
        System.out.printf("컨트롤러:\n", boardDTO);
       boardService.save(boardDTO);

        return "redirect:/board/";
    }


    @GetMapping("/board/")
    public String boardList(Model model) {
       model.addAttribute("boardList", boardService.boardList()) ;

        return "boardList";
    }
    @GetMapping("/board")
    public String findId(@RequestParam("boardId") Long boardId,Model model){
        System.out.printf("id:%s\n",boardId);
         BoardDTO result =boardService.findId(boardId);
           model.addAttribute("result",result);
        return "boardDetail";
    }
}
