package com.kh.portfolio.chat;

import java.util.ArrayList;
import java.util.List;

import javax.websocket.server.ServerEndpoint;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.websocket.RemoteEndpoint.Basic;

@Controller
@ServerEndpoint(value = "/echo")
public class WebSocketChat {

	private static final Logger logger = LoggerFactory.getLogger(WebSocketChat.class);
	private static final List<Session> sessionList = new ArrayList<Session>();

	public WebSocketChat() {
		System.out.println("웹소켓(서버) 객체생성");
	}

	@RequestMapping(value = "/chat")
	public String getChatViewPage() {
		return "chat/clientChat";
	}

	@OnOpen
	public void onOpen(Session session) {
		logger.info("접속 세션 아이디:" + session.getId());
		try {
			final Basic basic = session.getBasicRemote();
			basic.sendText("접속되었습니다!");
		} catch (Exception e) {
			logger.info(e.getMessage());
		}
		sessionList.add(session);
	}

	@OnMessage
	public void onMessage(String message, Session session) {
		logger.info(message.split(",")[1] + ": " + message.split(",")[0]);
		try {
			final Basic basic = session.getBasicRemote();
			basic.sendText("to : " + message);
		} catch (Exception e) {
			logger.info(e.getMessage());
		}
		//모든 접속된 사용자에게 메시지를 전달한다.
		sendAllSessionToMessage(session, message);
	}
	
	private void sendAllSessionToMessage(Session self, String message) {
		try {
			for (Session session : WebSocketChat.sessionList) {
				if (!self.getId().equals(session.getId())) {
					session.getBasicRemote().sendText(message.split(",")[1] + " : " + message);
				}
			}
		} catch (Exception e) {
			logger.info(e.getMessage());
		}
	}

	@OnError
	public void onError(Throwable e, Session session) {

	}

	@OnClose
	public void onClose(Session session) {
		logger.info("세션 " + session.getId() + " 종료!!");
		sessionList.remove(session);
	}
}
