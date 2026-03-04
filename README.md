# ERC Calc

- **Author**: Md Mahady Hasan Mufty  
- **Type**: Static site (`index.html` + CSS + JS)

This folder is ready to deploy on **Vercel** as-is.

## Files

- `index.html` – main ERC calculator UI
- `css/style.css` – styles
- `js/erc.js` – AES implementation + ERC logic
- `vercel.json` – Vercel config (static build)
- `build.ps1` – optional helper to create a `dist/` folder for other hosts

## Deploy to GitHub (`muftypro`) and Vercel

From PowerShell in this folder:

```powershell
git init
git add .
git commit -m "Initial ERC Calc"
git branch -M main
git remote add origin https://github.com/muftypro/erc-calc.git
git push -u origin main
```

Then in **Vercel**:

1. Go to the Vercel dashboard → **New Project**
2. Import the repo `muftypro/erc-calc`
3. Vercel will detect `index.html` and `vercel.json`
   - **Framework Preset**: “Other” / “Static Site”
   - **Build Command**: leave empty
   - **Output Directory**: leave empty (root)
4. Click **Deploy**

You’ll get a URL like `https://erc-calc.vercel.app` which you can also embed into Google Sites via **Insert → Embed → By URL**.


