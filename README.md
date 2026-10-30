# Sales & Revenue Analysis Dashboard

An interactive, responsive sales analytics dashboard built with HTML, CSS, JavaScript and Chart.js.

## Features
- Import CSV, XLSX or XLS data (first worksheet is used for Excel files).
- KPI cards: total revenue, total profit, profit margin, unique orders, units sold and average order value.
- Monthly revenue trend, revenue by category, top products and regional revenue charts.
- Interactive date, category, region and sales-channel filters.
- Business insight summaries and top-products detail table.
- Export the currently filtered rows to CSV.

## Run locally
1. Download and extract this project ZIP.
2. Keep `index.html` and `sample_sales_data.csv` in the same folder.
3. Start a local server in this folder, for example:
   - Python: `python -m http.server 8000`
4. Open `http://localhost:8000` in your browser.

You can also open `index.html` directly in a browser, but some browsers block loading the sample CSV from a local file. The import control will still allow you to select a CSV/Excel file.

## Data format
Recommended columns: `Order_ID`, `Order_Date`, `Product`, `Category`, `Region`, `Sales_Channel`, `Quantity`, `Revenue`, `Cost`, `Profit`.
The importer accepts common alternatives such as `Order ID`, `Date`, `Sales`, and `Units`. For best results, use the sample column names. Dates should be `YYYY-MM-DD` and numeric fields should contain numbers.

## Sample data
`sample_sales_data.csv` and `sample_sales_data.xlsx` contain 600 fictional retail transactions dated in 2025. They are illustrative, not real company data. Replace them with your own data for a real analysis.

## Deploy / get a submission URL
### GitHub Pages
1. Sign in to GitHub and create a **public** repository named `sales-revenue-dashboard`.
2. Upload `index.html`, `sample_sales_data.csv`, `sample_sales_data.xlsx`, and `README.md` to the repository root.
3. Open **Settings → Pages**.
4. Under Build and deployment, choose **Deploy from a branch**, select `main` and `/ (root)`, then Save.
5. After GitHub Pages finishes deploying, the live URL will look like `https://YOUR-USERNAME.github.io/sales-revenue-dashboard/`.
6. Submit that live URL. You can also submit the repository URL if your assignment accepts GitHub repository links.

## Limitations
- Charts and Excel parsing use CDN-hosted libraries, so an internet connection is required.
- The dashboard runs in the browser and does not send uploaded data to a server.
- The supplied dataset is synthetic sample data. Do not present its metrics as actual business results.

## Project objective
Turn transaction-level sales data into actionable insights by monitoring revenue, profit, order volume, product/category performance and regional contribution.
