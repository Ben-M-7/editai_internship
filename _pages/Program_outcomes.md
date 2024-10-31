---
layout: about
title: Program Outcomes
permalink: /outcomes/
nav: true 
---
<div class="bg-white">
  <main>
      <!-- New Section for Virtual Conference -->
      <div class="bg-gray-100 py-8">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
          <h2 class="text-2xl font-default text-black-900">
            The goal of the EDIT AI program is to provide a learning experience for students to explore the intersections between AI and medicine. We have recently submitted a proposal for the NIH R25 Science Educational Partnership Award (SEPA), which will allow us to expand the scope and reach of this current opportunity. If funded, we will interface with external program evaluators to better understand how this program can be improved. In the meanwhile, we are conducting several internal assessments of the program offering through surveys sent to students at the beginning and end of summer. We aim to publish these findings and have included a summary of some of our initial observations below (click images to learn more via popups). Currently we are supported with funding through Dartmouth Cancer Center. We are updating this page with outcomes from this year's cohort (these are outcomes for 2022), stay tuned...!:
          </h2>
        </div>
      </div>

      <!-- Chart Images and their headers -->
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 mt-8">
        
        <h1 class="text-4xl font-extrabold text-gray-900 text-center tracking-tight sm:text-4xl">Surveys taken at start of summer support program track placement</h1>

        <!-- Chart Image 1 -->
        <div class="relative mb-8">

          <img src="/assets/img/outcome_fig1.png" alt="Chart 1" class="w-full cursor-pointer" onclick="toggleOverlay('overlay1')">
        </div>

        <!-- Chart Image 2 -->
        <div class="relative">

          <img src="/assets/img/outcome_fig2.png" alt="Chart 2" class="w-full cursor-pointer" onclick="toggleOverlay('overlay2')">

        </div>
      </div>
  </main>
</div>

<!-- Bottom Screen Overlay -->
<div id="overlay1" class="overlay-content hidden fixed bottom-0 left-0 w-full bg-black bg-opacity-80 text-white p-6 z-50">
  <button onclick="closeOverlay('overlay1')" class="absolute top-2 right-2 text-white hover:text-gray-300">&times;</button>

  <h3 class="text-lg text-white font-semibold mb-2">Differences between program tracks at beginning of summer</h3> 
  <p class="text-white"> Using several multivariate ordinal regression models to understand how the program tracks differed in development, adjusting for age and gender, results indicate that students placed onto the Advanced Track are more familiar/comfortable with EDIT AI concepts (e.g., programming, medical applications of AI, bioinformatics) than students on the Skills Track. Mentor Track students were more familiar with machine learning, medical applications of AI, and high performance computing resources than students on the Advanced Research Track. Four of eleven core competencies are visualized here.</p>
</div>

<div id="overlay2" class="overlay-content hidden fixed bottom-0 left-0 w-full bg-black bg-opacity-80 text-white p-6 z-50">
  <button onclick="closeOverlay('overlay2')" class="absolute top-2 right-2 text-white hover:text-gray-300">&times;</button>

  <h3 class="text-lg text-white font-semibold mb-2">Preliminary findings– Improvements in material familiarity from start to end of summer by track</h3>
  <p class= "text-white">Fitting additional ordinal regression models with covariate adjustment and accounting for repeat measurements by individual (i.e., before/after paired measures across time), we identified longitudinal improvements in familiarity with the core concepts. Most notably, skills track students improved significantly in their underestanding and familiarity of machine learning, medical applications of AI and bioinformatics. In these cases, skills track familiarity with these concepts by the end of summer was similar to advanced track students at the beginning of summer, suggesting the students may have adequately progressed from one track to another. However, significant gaps still exist between skills and advanced track students with regards to confidence in programming skills, which presents future room for improving the program as well as following up with these students to ensure they are adequately prepared for the advanced track. Advanced track students gain a deeper appreciation for AI applications in medicine by the end of the summer program.</p>
</div>

<!-- CSS Styling -->
<style>
  .overlay-content {
    max-height: 40vh; /* Limits the overlay height to 40% of the viewport */
    overflow-y: auto;
    transition: opacity 0.3s ease;
  }
</style>

<!-- JavaScript for Single Active Overlay with Close Functionality -->
<script>
  let currentOverlay = null; // To keep track of the currently active overlay

  function toggleOverlay(overlayId) {
    const overlays = document.querySelectorAll('.overlay-content');

    // Close the current overlay if it exists and is not the one clicked
    if (currentOverlay && currentOverlay !== overlayId) {
      const activeOverlay = document.getElementById(currentOverlay);
      activeOverlay.classList.add("hidden");
    }

    // Get the selected overlay
    const overlay = document.getElementById(overlayId);

    // Toggle the selected overlay
    if (overlay.classList.contains("hidden")) {
      overlay.classList.remove("hidden");
      currentOverlay = overlayId; // Update current overlay to the one just opened
    } else {
      overlay.classList.add("hidden");
      currentOverlay = null; // Reset current overlay when closed
    }
  }

  function closeOverlay(overlayId) {
    const overlay = document.getElementById(overlayId);
    overlay.classList.add("hidden");
    currentOverlay = null; // Reset current overlay when closed
  }
</script>
