package com.its.board.service;

import com.its.board.dto.BoardDTO;
import com.its.board.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.util.List;

@Service
public class BoardService {
    @Autowired
    private BoardRepository boardRepository;

    public void save(BoardDTO boardDTO) throws IOException {
        /*
        1.boardDTO 객체 담긴 파일을 꺼냄
        2.파일의 원본 이름을 가져옴(originalFilName) 알아내는거
        3.서버 관리용 이름 만듬(storedFileName) 만드는거
        4.originalFileName , storedFileName 들을 DTO에 담음
        5.파일 실제 저장 위치 지정
        6.파일 저장 처리
        7.repository 로 dto 객체 전달

         */
        if (!boardDTO.getBoardFile().isEmpty()) { //isEmpty()는 문자열 길이가 0이면 ture 이게 not인 경우(파일이 있다 , 길이가 있다)
            System.out.println("파일 있음");
            MultipartFile boardFile = boardDTO.getBoardFile(); //1  받아온 dto의 파일을 담는다
            String originalFilename = boardFile.getOriginalFilename(); //2 그 원본 이름을 스트링 에 담음
            System.out.println("original" + originalFilename);
            System.out.println(System.currentTimeMillis());
            String storedFileName = System.currentTimeMillis() + "-" + originalFilename; //3 그 원본 이름과 초 단위 합쳐서 복사 파일 가짐
            System.out.println("storedFileName" + storedFileName);
            boardDTO.setOriginalFileName(originalFilename); //boardDTO 파일 테이블 갈거에 오리날 세팅 해주고
            boardDTO.setStoredFileName(storedFileName);//4 복사본도 세팅해줌(시간초 더한거)
            String savePath = "D:\\Spring_img\\" + storedFileName; // 5 (d드라이브 절대 경로 지정)
            boardFile.transferTo(new File(savePath)); // 6 파일 저장관리
            boardDTO.setFileAttached(1);  //파일이 있으면 1 저장
            BoardDTO saveBoard = boardRepository.save(boardDTO); //7 파일 저장 테이블 전달 후 참조키 받아옴
            boardRepository.saveFileName(saveBoard); // 받아온걸 조인 함
        }
        else {
            System.out.println("파일 없음");
            boardDTO.setFileAttached(0);
            boardRepository.save(boardDTO);

        }

/*
        int result = boardRepository.save(boardDTO);
        if (result > 0) {
            return true;
        } else {
*/
    }


    public List<BoardDTO> findAll() {
        List<BoardDTO> boardDTOList = boardRepository.findAll();
        return boardDTOList;
    }

    public void updateHits(Long id) {
        boardRepository.updateHits(id);
    }

    public BoardDTO findById(Long id) {
        // 조회수 증가
//        boardRepository.updateHits(id);
        // 상세내용 가져와서 리턴
        return boardRepository.findById(id);
    }

    public void update(BoardDTO boardDTO) {
        boardRepository.update(boardDTO);
    }

    public void delete(Long id) {
        boardRepository.delete(id);
    }
}