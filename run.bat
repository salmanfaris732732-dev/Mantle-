@echo off
echo ========================================================
echo   PROJECT MANTLE - INTERACTIVE REPORT PREVIEWER
echo ========================================================
echo.
echo Launching your web browser to view the report...
start "" "http://localhost:3000"
echo.
echo Starting local node server on port 3000...
echo (To stop the server, close this command window)
echo.
node -e "const http = require('http'), fs = require('fs'), path = require('path'); http.createServer((req, res) => { let filePath = '.' + (req.url === '/' ? '/index.html' : req.url); filePath = decodeURIComponent(filePath); const ext = path.extname(filePath); const contentType = { '.html': 'text/html', '.css': 'text/css', '.js': 'text/javascript', '.png': 'image/png' }[ext] || 'text/plain'; fs.readFile(filePath, (err, content) => { if (err) { res.writeHead(404); res.end('Not Found'); } else { res.writeHead(200, { 'Content-Type': contentType }); res.end(content, 'utf-8'); } }); }).listen(3000, () => console.log('Server running at http://localhost:3000'));"
