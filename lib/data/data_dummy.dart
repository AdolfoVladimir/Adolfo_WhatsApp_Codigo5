import 'package:flutter_codigo5_whatsapp/models/chat_message.dart';
import 'package:flutter_codigo5_whatsapp/models/chat_model.dart';
import 'package:flutter_codigo5_whatsapp/models/status_model.dart';

List<ChatModel> chatList = [
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/1845534/pexels-photo-1845534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    username: "Ximena Lopez",
    message: "Ya he enviando el encargo por el courier",
    time: "10:20",
    countMessage: 1,
    isTyping: false,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/4922971/pexels-photo-4922971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    username: "Juan Carlos Lopez",
    message: "Acabo de llegar a la reunión, por favor envia eso",
    time: "12:40",
    countMessage: 3,
    isTyping: true,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    username: "Karla Gonzales",
    message: "Flutter es genial!",
    time: "15:22",
    countMessage: 0,
    isTyping: false,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/8422403/pexels-photo-8422403.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    username: "Daniel Montes Arias",
    message: "Hola, cómo estas?",
    time: "11:22",
    countMessage: 1,
    isTyping: false,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/1845534/pexels-photo-1845534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    username: "Ximena Lopez",
    message: "Ya he enviando el encargo por el courier",
    time: "10:20",
    countMessage: 1,
    isTyping: false,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/4922971/pexels-photo-4922971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    username: "Juan Carlos Lopez",
    message: "Acabo de llegar a la reunión, por favor envia eso",
    time: "12:40",
    countMessage: 3,
    isTyping: true,
  ),
];

List<ChatMessage> chatMessageList = [
  ChatMessage(
    messageContent: "Hola, Juan, cómo estas?",
    messageType: "other",
  ),
  ChatMessage(
    messageContent: "Holaa, estoy muy bien, ando aprendiendo Flutter?",
    messageType: "me",
  ),
  ChatMessage(
    messageContent: "Y tú qué haces?",
    messageType: "me",
  ),
  ChatMessage(
    messageContent: "Estoy revisando unas cosas",
    messageType: "other",
  ),
];
List<StatusModel> statusList = [
  StatusModel(
    avatarURL:
        "https://images.pexels.com/photos/1845534/pexels-photo-1845534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    username: "Ximena Lopez",
    time: "hace 24 minutos",
  ),
  StatusModel(
    avatarURL:
        "https://images.pexels.com/photos/4922971/pexels-photo-4922971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    username: "Juan Carlos Lopez",
    time: "Hoy 12:40 p. m.",
  ),
  StatusModel(
    avatarURL:
        "https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    username: "Karla Gonzales",
    time: "Ayer 5:22 p. m.",
  ),
  StatusModel(
    avatarURL:
        "https://images.pexels.com/photos/8422403/pexels-photo-8422403.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    username: "Daniel Montes Arias",
    time: "Ayer 3:34 p. m.",
  ),
  StatusModel(
    avatarURL:
        "https://images.pexels.com/photos/1845534/pexels-photo-1845534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    username: "Ximena Lopez",
    time: "Ayer 10:20 a. m.",
  ),
  StatusModel(
    avatarURL:
        "https://images.pexels.com/photos/4922971/pexels-photo-4922971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    username: "Juan Carlos Lopez",
    time: "Ayer 12:40 p. m.",
  ),
];
