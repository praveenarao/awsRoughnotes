from http.server import HTTPServer, BaseHTTPRequestHandler
import os

class SimpleHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header('Content-type', 'text/plain')
        self.end_headers()
        self.wfile.write(b'Hello this is my python container!\n')

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 8888))
    server = HTTPServer(('0.0.0.0', port), SimpleHandler)
    print(f'Server running on port {port}')
    server.serve_forever()