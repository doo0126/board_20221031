package com.its.board.service;

import com.its.board.dto.BoardDTO;
import com.its.board.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.List;

@Service
public class BoardService {
    @Autowired
    private BoardRepository boardRepository;
    public boolean save(BoardDTO boardDTO) {
        int result=boardRepository.save(boardDTO);
        if(result >0){
            return true;
        }
        else{
            return false;
        }
    }

    public List<BoardDTO> boardList() {
        return boardRepository.boardList();
    }

    public BoardDTO findId(Long boardId) {
       BoardDTO resultDTO= boardRepository.findId(boardId);
      int boardHits = resultDTO.getBoardHits();
      ++boardHits;
      BoardDTO boardDTO =new BoardDTO();
      boardDTO.setBoardId(boardId);
      boardDTO.setBoardHits(boardHits);
      boardRepository.update(boardDTO);

       return boardRepository.findId(boardId);
    }

    public BoardDTO check(Long boardId) {
      return  boardRepository.findId(boardId);
    }

    public void delete(Long boardId) {
        boardRepository.delete(boardId);
    }
}
