<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dr. Olugbenga Asaolu | Academic ePortfolio</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet" />

    <style>
      /* ===========================================================
         GLOBAL DESIGN TOKENS
         ---------------------------------------------------------*/
      :root {
        --clr-primary: #0d47a1; /* Navy */
        --clr-secondary: #1976d2; /* Lighter blue accents */
        --clr-bg: #ffffff;
        --clr-text: #333333;
        --clr-muted: #6b7280;

        --radius-sm: .5rem;
        --radius-md: 1rem;
        --radius-lg: 1.5rem;

        --shadow-sm: 0 1px 3px rgba(0, 0, 0, 0.1);
        --shadow-md: 0 4px 6px rgba(0, 0, 0, 0.1);

        --font-base: "Inter", sans-serif;
      }

      *,
      *::before,
      *::after {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
      }

      body {
        font-family: var(--font-base);
        line-height: 1.6;
        background-color: var(--clr-bg);
        color: var(--clr-text);
        -webkit-font-smoothing: antialiased;
      }

      a {
        color: var(--clr-primary);
        text-decoration: none;
        transition: color 0.2s ease-in-out;
      }
      a:hover {
        color: var(--clr-secondary);
      }

      img {
        max-width: 100%;
        display: block;
      }

      /* Utility */
      .container {
        width: min(90%, 1200px);
        margin-inline: auto;
      }
      .flex {
        display: flex;
        align-items: center;
        gap: 2rem;
      }
      .btn {
        display: inline-block;
        padding: 0.75rem 1.5rem;
        background: var(--clr-primary);
        color: #ffffff;
        border: none;
        border-radius: var(--radius-sm);
        cursor: pointer;
        font-weight: 600;
        transition: background 0.2s ease-in-out;
      }
      .btn:hover {
        background: var(--clr-secondary);
      }

      /* -----------------------------------------------------------
         HEADER / HERO SECTION
         ---------------------------------------------------------*/
      header.hero {
        background: linear-gradient(135deg, var(--clr-primary) 0%, var(--clr-secondary) 100%);
        color: #ffffff;
        padding: 3rem 0 4rem;
        clip-path: polygon(0 0, 100% 0, 100% 85%, 0 100%);
      }

      .hero .avatar {
        width: 160px;
        height: 160px;
        border-radius: 50%;
        object-fit: cover;
        box-shadow: var(--shadow-md);
        border: 4px solid #ffffff;
      }

      .intro h1 {
        font-size: 2rem;
        font-weight: 700;
        margin-bottom: 0.5rem;
      }
      .intro p {
        font-size: 1rem;
        opacity: 0.9;
        margin-bottom: 1rem;
      }

      .badge {
        display: inline-block;
        background: #34d399; /* emerald */
        color: #ffffff;
        font-size: .75rem;
        font-weight: 700;
        padding: 0.25rem 0.5rem;
        border-radius: var(--radius-sm);
        margin-left: 0.5rem;
      }

      .logos {
        display: flex;
        gap: 1rem;
        margin-bottom: 1rem;
        flex-wrap: wrap;
      }
      .logos img {
        height: 40px;
        filter: brightness(0) invert(1);
        opacity: 0.9;
      }

      /* Skills (Chips) */
      .skills {
        display: flex;
        flex-wrap: wrap;
        gap: .5rem;
      }
      .chip {
        background: rgba(255, 255, 255, 0.15);
        border: 1px solid rgba(255, 255, 255, 0.35);
        color: #ffffff;
        padding: 0.25rem 0.75rem;
        border-radius: var(--radius-lg);
        font-size: 0.8rem;
      }

      /* -----------------------------------------------------------
         PROJECTS SECTION
         ---------------------------------------------------------*/
      #projects {
        padding: 4rem 0;
      }
      #projects h2 {
        text-align: center;
        font-size: 1.75rem;
        margin-bottom: 2rem;
        color: var(--clr-primary);
      }

      .projects-grid {
        display: grid;
        gap: 2rem;
        grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
      }

      .project-card {
        background: #ffffff;
        border-radius: var(--radius-md);
        box-shadow: var(--shadow-sm);
        padding: 1.5rem;
        transition: transform 0.2s ease, box-shadow 0.2s ease;
      }
      .project-card:hover {
        transform: translateY(-6px);
        box-shadow: var(--shadow-md);
      }
      .project-card h3 {
        font-size: 1.25rem;
        margin-bottom: 0.5rem;
        line-height: 1.3;
      }
      .project-card p {
        font-size: 0.925rem;
        color: var(--clr-muted);
        margin-bottom: 0.75rem;
      }
      .project-card .chip-group {
        display: flex;
        flex-wrap: wrap;
        gap: 0.35rem;
      }
      .project-card .chip {
        background: var(--clr-secondary);
        border: none;
        color: #ffffff;
        padding: 0.25rem 0.65rem;
        font-size: 0.75rem;
      }

      /* -----------------------------------------------------------
         FOOTER
         ---------------------------------------------------------*/
      footer {
        text-align: center;
        padding: 2rem 0 3rem;
        font-size: 0.875rem;
        color: var(--clr-muted);
      }

      /* -----------------------------------------------------------
         RESPONSIVE HELPERS
         ---------------------------------------------------------*/
      @media (max-width: 640px) {
        .flex {
          flex-direction: column;
          text-align: center;
        }
        header.hero {
          clip-path: none;
          padding-bottom: 2.5rem;
        }
        .hero .avatar {
          width: 120px;
          height: 120px;
        }
        .intro h1 {
          font-size: 1.5rem;
        }
      }
    </style>
  </head>

  <body>
    <!-- ========================= HEADER ========================= -->
    <header class="hero">
      <div class="container flex">
        <img src="https://via.placeholder.com/160" alt="Profile photo of Dr. Olugbenga Asaolu" class="avatar" />

        <div class="intro">
          <h1>
            Dr. Olugbenga Asaolu
            <span class="badge">Verified</span>
          </h1>
          <p>Data Science &amp; Generative AI (2025)</p>

          <!-- Logos -->
          <div class="logos">
            <!-- Replace with actual logos -->
            <img src="https://via.placeholder.com/140x40?text=GRAPH" alt="GRAPH Logo" />
            <img src="https://via.placeholder.com/120x40?text=Logo2" alt="Partner Logo" />
            <img src="https://via.placeholder.com/120x40?text=Logo3" alt="Partner Logo" />
          </div>

          <a href="https://thegraphcourses.org/" target="_blank" rel="noopener" class="btn">About Program</a>

          <!-- Skills -->
          <div class="skills" style="margin-top: 1.25rem;">
            <!-- Core languages/tools -->
            <span class="chip">Python</span>
            <span class="chip">R</span>
            <span class="chip">SQL</span>
            <span class="chip">Power BI</span>

            <!-- Libraries & frameworks -->
            <span class="chip">scikit‑learn</span>
            <span class="chip">pandas</span>
            <span class="chip">NumPy</span>
            <span class="chip">Matplotlib</span>
            <span class="chip">Seaborn</span>
            <span class="chip">Tableau</span>
            <span class="chip">PowerApps</span>
            <span class="chip">SharePoint</span>

            <!-- Methods / Domains -->
            <span class="chip">Hypothesis Testing</span>
            <span class="chip">Regression</span>
            <span class="chip">Clustering</span>
            <span class="chip">Time‑Series</span>
            <span class="chip">Deep Learning</span>
            <span class="chip">NLP</span>
            <span class="chip">Transformers</span>
          </div>
        </div>
      </div>
    </header>

    <!-- ========================= PROJECTS ========================= -->
    <main>
      <section id="projects" class="container">
        <h2>Highlighted Projects</h2>

        <div class="projects-grid">
          <!-- ================== SAMPLE PROJECT CARD ================== -->
          <article class="project-card">
            <h3>
              <a href="https://example.com/customer‑segmentation" target="_blank" rel="noopener">
                Customer Segmentation using K‑Means
              </a>
            </h3>
            <p>
              Applied clustering techniques to identify distinct customer segments from a retail dataset
              using K‑Means. Evaluated optimal clusters via the Elbow Method and silhouette scores.
            </p>
            <div class="chip-group">
              <span class="chip">Python</span>
              <span class="chip">scikit‑learn</span>
              <span class="chip">Matplotlib</span>
              <span class="chip">pandas</span>
            </div>
          </article>

          <!-- To add more projects, duplicate the card below and update fields -->
          <article class="project-card">
            <h3>
              <a href="https://example.com/time‑series‑forecasting" target="_blank" rel="noopener">
                Sales Forecasting with LSTM
              </a>
            </h3>
            <p>
              Implemented deep learning (LSTM) models to forecast monthly sales for a multinational company,
              achieving a MAPE of 6.8% on unseen data.
            </p>
            <div class="chip-group">
              <span class="chip">Python</span>
              <span class="chip">TensorFlow</span>
              <span class="chip">Keras</span>
              <span class="chip">Time‑Series</span>
            </div>
          </article>

          <article class="project-card">
            <h3>
              <a href="https://example.com/nlp‑chatbot" target="_blank" rel="noopener">
                Transformer‑based Health Chatbot
              </a>
            </h3>
            <p>
              Built and fine‑tuned a BERT‑derived model to power a conversational agent providing evidence‑based
              sexual &amp; reproductive health advice to adolescents.
            </p>
            <div class="chip-group">
              <span class="chip">Python</span>
              <span class="chip">Transformers</span>
              <span class="chip">NLP</span>
              <span class="chip">Deep Learning</span>
            </div>
          </article>
        </div>
      </section>
    </main>

    <!-- ========================= FOOTER ========================= -->
    <footer>
      &copy; 2025 Dr. Olugbenga Asaolu · Have a project in mind? Reach me at
      <a href="mailto:gbengasaolu@example.com">gbengasaolu@example.com</a>
    </footer>

    <!--
      =============================================================
      ADDITIONAL NOTES:

      1. To include more projects, copy the <article class="project-card"> element
         and modify: link, title, description, and tool chips.
      2. Replace placeholder images/logos with actual assets.
      3. Optional: Embed a contact form service (e.g., Google Forms) above the footer.
      4. For badges/certifications, create a new section or add a badge row below skills.
      5. Keep code modular—styles are grouped logically for easy updates.
    -->
  </body>
</html>
