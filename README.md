# R Beats Python

<https://oppkey.github.io/r-beats-python/>

A Quarto website mockup to explore how content written by Midori AI can be used in content marketing.

The concept is to create an interactive community site that highlights areas where R excels over Python in data science and statistics. Community content from webinars or events is mixed in with AI-generated, human edited, technical content.

## Campaign Concept

The concept site provides detailed comparisons and analysis of specific areas where R programming language provides superior capabilities compared to Python. While both languages are excellent tools, R has distinct advantages in statistical computing, research, and specialized domains.

## Site Structure

### Main Pages

- **Home** (`index.qmd`) - Overview of R's strengths and advantages
- **About** (`about.qmd`) - Information about the site's purpose and approach

### Starter AI-Generated Blog Posts

The site features 10 comprehensive blog posts covering different areas where R excels:

1. **Statistical Modeling** - R's superior statistical modeling capabilities
2. **Data Visualization** - ggplot2 vs matplotlib comparison
3. **Reproducible Research** - R Markdown/Quarto vs Jupyter notebooks
4. **Academic Research** - R's dominance in statistics and research
5. **Data Manipulation** - dplyr vs pandas comparison
6. **Time Series Analysis** - R's comprehensive time series tools
7. **Bioinformatics** - R's Bioconductor ecosystem
8. **Finance and Economics** - R's quantitative finance tools
9. **Social Sciences** - R's research tools for social sciences
10. **Machine Learning** - R's statistical approach to ML

### Community Real-World Event Content

10 blog posts are AI-generated from real-world R/Medicine sessions. The transcipts are AI-generated and combined with
session descriptions submitted by the human speaker.

## Features

### Content Highlights

- **Detailed Comparisons** - Side-by-side analysis of R vs Python approaches
- **Code Examples** - Working code examples demonstrating R's advantages
- **Performance Comparisons** - Tables comparing capabilities across domains
- **Real-world Applications** - Practical examples from research and industry
- **Best Practices** - Tips for leveraging R's strengths effectively

### Technical Features

- **Quarto Site** - Modern, responsive website built with Quarto
- **Custom Styling** - Professional CSS design with R-themed colors
- **Code Highlighting** - Syntax highlighting for R and Python code
- **Responsive Design** - Mobile-friendly layout
- **Search and Navigation** - Easy content discovery

## Getting Started

### Prerequisites

- [Quarto](https://quarto.org/) installed on your system
- R and RStudio (for development)

### Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/your-username/r-beats-python.git
   cd r-beats-python
   ```

2. Install R dependencies using renv:

   ```r
   # Restore the project environment
   renv::restore()
   ```

3. Install Quarto dependencies:

   ```bash
   quarto install
   ```

4. Render the site:
   ```bash
   quarto render
   ```

5. Preview the site:

   ```bash
   quarto preview
   ```

### Development

To add new content or modify existing posts:

1. Create new `.qmd` files in the `blog/` directory
2. Follow the existing front matter format
3. Use the established structure and styling
4. Test locally before committing

#### Managing R Dependencies

This project uses `renv` for reproducible R package management:

- **Restore environment**: `renv::restore()` - Installs all packages from `renv.lock`
- **Add new packages**: `renv::install("package_name")` - Installs and records new packages
- **Snapshot changes**: `renv::snapshot()` - Updates `renv.lock` with current environment
- **Check status**: `renv::status()` - Shows differences between lock file and current environment

The `.Rprofile` file automatically activates the renv environment when you open the project in RStudio.

## Site Configuration

### Quarto Settings

The site uses the following key Quarto configuration:

- **Theme**: Cosmo with custom CSS
- **Navigation**: Left sidebar with table of contents
- **Code Execution**: Enabled with echo and eval options
- **Output Formats**: HTML with PDF and Word options

### Custom Styling

The site includes custom CSS (`styles.css`) with:

- R-themed color scheme
- Professional typography
- Responsive design
- Custom components for comparisons
- Print-friendly styles

## Content Guidelines

### Writing Style

- **Objective Analysis** - Present facts and practical comparisons
- **Evidence-based** - Support claims with examples and data
- **Balanced Approach** - Acknowledge both languages' strengths
- **Educational Focus** - Aim to inform, not advocate

### Code Examples

- Include working R and Python code
- Provide clear explanations
- Use realistic datasets
- Show practical applications
- Include performance comparisons

### Structure

Each blog post follows a consistent structure:

1. **Introduction** - Overview of the topic
2. **R's Approach** - Detailed R examples and capabilities
3. **Python's Limitations** - Areas where Python falls short
4. **Performance Comparison** - Side-by-side comparison table
5. **Key Advantages** - Summary of R's strengths
6. **Conclusion** - Wrap-up and next steps
 changes locally before submitting

## Deployment

### GitHub Pages

The site can be deployed to GitHub Pages:

1. Push to GitHub repository
2. Enable GitHub Pages in repository settings
3. Set source to GitHub Actions
4. Site will build and deploy automatically

### Netlify

For Netlify deployment:

1. Connect repository to Netlify
2. Set build command: `quarto render`
3. Set publish directory: `_site`
4. Deploy automatically on commits

### Other Platforms

The site can be deployed to any static hosting platform:

- Vercel
- AWS S3
- Azure Static Web Apps
- Any web server

---

*This site is created by data scientists who appreciate both R and Python but recognize R's unique strengths in statistical computing and research applications.* 
