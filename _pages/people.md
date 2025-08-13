---
layout: page
permalink: /People/
title: People
description:
nav: true
person_types: ["Principal Investigator","Collaborators","PhD","PhD Students","Medical Students","Master's","Undergraduates","High School Summer"]
lab_types: ["Current","Previous"]
---

<!-- Tailwind CSS -->
<script src="https://cdn.tailwindcss.com/3.0.0"></script>


<!-- Year Selection Dropdown -->
<div class="text-center my-6">
  <label for="year-select" class="text-lg font-semibold">Select Year: </label>
  <select id="year-select" class="p-2 border border-gray-300 rounded">
    <option value="">All Years</option>
    {% for year in (2020..2024) reversed %}
      <option value="{{ year }}">{{ year }}</option>
    {% endfor %}
  </select>
</div>


<!-- Announcement -->
<div class="section-alt">
  <h2>(2025 profile pictures will be updated shortly)</h2>
  </div>

<!-- Profiles Container -->
<div class="profiles-container bg-white">
  {% assign members = site.people | where:"type","High School Summer" %}
  {% assign sorted_people = members | sort: "description" %}
  {% assign sorted_people_by_year = sorted_people | reverse %}
  {% assign people_by_year = sorted_people_by_year | group_by: "description" %}

  {% for group in people_by_year %}
    {% assign year = group.name | split: " " | last %}

    <!-- Profile Section for each Year -->
    <div class="year-section mb-12" data-year="{{ year }}" style="display: none;">
      <h2 class="text-2xl font-bold text-center my-8">Summer Interns {{ year }}</h2>
      
      <!-- Profiles Grid -->
      <ul role="list" class="h-auto mx-auto grid grid-cols-2 gap-x-4 gap-y-8 sm:grid-cols-4 md:gap-x-6 lg:max-w-5xl lg:gap-x-8 lg:gap-y-12 xl:grid-cols-6">
        {% for person in group.items %}
          <li>
            <a class="text-indigo-600 hover:no-underline" href="{{ person.url | prepend: site.baseurl | prepend: site.url }}">
              <div class="p-2 space-y-4 rounded transition ease-in-out delay-150 hover:-translate-y-1 hover:scale-110 hover:bg-indigo-100 duration-300">   
                {% if person.img %}
                  {% if person.img == "placeholder" %}
                    <img class="mx-auto h-20 w-20 rounded-full lg:w-24 lg:h-24" src="/editai_internship/assets/img/blank_profile.png" alt="">
                  {% else %}
                    <img class="mx-auto h-20 w-20 rounded-full lg:w-24 lg:h-24" src="{{ person.img | prepend: site.baseurl | prepend: site.url }}" alt="">
                  {% endif %}
                {% endif %}

                <div class="space-y-2">
                  <div class="text-xs font-medium lg:text-sm">
                  <h3>{{ person.title }}</h3>
                  <p class="text-indigo-600">{{ person.description }}</p>
                  </div>
                </div>
              </div>
            </a>
          </li>
        {% endfor %}
      </ul>
    </div>
  {% endfor %}
</div>

<!-- JavaScript for Year Filtering -->
<script>
  document.addEventListener('DOMContentLoaded', function () {
    const yearSelect = document.getElementById('year-select');
    const yearSections = document.querySelectorAll('.year-section');

    function filterByYear(year) {
      yearSections.forEach(section => {
        if (year === "" || section.getAttribute('data-year') === year) {
          section.style.display = 'block';
        } else {
          section.style.display = 'none';
        }
      });
    }

    // Initial display of all years
    filterByYear("");

    // Update display based on dropdown selection
    yearSelect.addEventListener('change', function () {
      filterByYear(this.value);
    });
  });
</script>
