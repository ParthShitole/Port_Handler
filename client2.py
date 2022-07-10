
import websocket

ws = websocket.WebSocket()
ws.connect("wss://b1db5161af91de54ed911f59540af61e.challenge.hackazon.org/ws', ['soap', 'xmpp)")
ws.send('{"type": "START_GAME", "level": 3, "password": "CTF{capt41n-h00k!}"}')
print(ws.recv())
ws.close()
