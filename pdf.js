const puppeteer = require('puppeteer-core');
const path = require('path');

(async () => {
  console.log('Launching local Chrome browser...');
  const browser = await puppeteer.launch({
    executablePath: 'C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe',
    args: ['--no-sandbox', '--disable-setuid-sandbox', '--disable-gpu']
  });

  console.log('Opening local server page...');
  const page = await browser.newPage();
  await page.goto('http://localhost:3000', { waitUntil: 'networkidle0' });

  console.log('Waiting 3 seconds for Mermaid diagrams and KaTeX formulas to render...');
  await new Promise(resolve => setTimeout(resolve, 3000));

  console.log('Generating PDF...');
  const pdfPath = path.join(__dirname, 'Mantle_Project_Report.pdf');
  await page.pdf({
    path: pdfPath,
    format: 'A4',
    printBackground: true,
    displayHeaderFooter: false,
    margin: {
      top: '15mm',
      right: '15mm',
      bottom: '15mm',
      left: '15mm'
    }
  });

  console.log(`PDF generated successfully at: ${pdfPath}`);
  await browser.close();
  process.exit(0);
})().catch(err => {
  console.error('Failed to generate PDF:', err);
  process.exit(1);
});
