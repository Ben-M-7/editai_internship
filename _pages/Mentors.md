---
layout: default
permalink: /mentors/
title: Mentors
description:
nav: true
person_types: ["Principal Investigator","Collaborators","PhD","PhD Students","Medical Students","Master's","Undergraduates"]
lab_types: ["Current","Previous"]
---

<!-- Tailwind CSS -->
<script src="https://cdn.tailwindcss.com/3.0.0"></script>

<div class="min-h-screen flex flex-col">
  <main class="flex-grow">

    <div class="bg-white">
      <div class="max-w-7xl mx-auto py-12 px-4 text-center sm:px-6 lg:px-8 lg:py-24">
        <h3 class="mt-2 text-3xl leading-8 font-extrabold tracking-tight text-gray-900 sm:text-4xl">Meet our EDIT AI Mentor Team</h3>
        <h2 class="text-base text-lime-800 font-semibold tracking-wide">Mentors provide crucial feedback for the students'</h2>
        <h2 class="text-base text-lime-800 font-semibold tracking-wide">development and promote a safe learning environment.</h2>
        <br>
        <div class="space-y-8 sm:space-y-12">
          <div class="space-y-5 sm:mx-auto sm:max-w-xl sm:space-y-4 lg:max-w-5xl">
            <h2 class="text-3xl font-extrabold tracking-tight sm:text-4xl">Faculty Mentors</h2>
            <p class="text-xl text-gray-500">Team building activities</p>
          </div>

          <ul role="list" class="h-auto mx-auto grid grid-cols-2 gap-x-4 gap-y-8 sm:grid-cols-4 md:gap-x-6 lg:max-w-5xl lg:gap-x-8 lg:gap-y-12 xl:grid-cols-6">
            {% assign members = site.edit_mentors | where:"type","Faculty" %}
            {% assign sorted_people = members | sort:"title" %}

            {% for person in sorted_people %}
              <li>
                {% if person.img %}
                  {% if person.img=="placeholder" %}
                    <div class="flex justify-center aspect-w-3 aspect-h-2">
                      <img class="object-cover shadow-lg rounded-lg" src="/assets/img/blank_profile-800.webp" alt="">
                    </div>
                  {% else %}
                    <div class="flex justify-center aspect-w-3 aspect-h-2">
                      <img class="object-cover shadow-lg rounded-lg" src="{{ person.img }}" alt="">
                    </div>
                  {% endif %}
                {% endif %}
                <div class="space-y-2">
                  <div class="text-lg leading-6 font-medium space-y-1">
                    <h3>{{ person.title }}</h3>
                    <p class="text-indigo-600">{{ person.description }}</p>
                    <a href="{{ person.redirect_url }}" class="text-gray-400 hover:text-gray-500">
                      Profile
                    </a>
                  </div>
                </div>
              </li>
            {% endfor %}
          </ul>
        </div>
      </div>
    </div>

    <div class="bg-white">
      <div class="max-w-7xl mx-auto py-12 px-4 text-center sm:px-6 lg:px-8 lg:py-24">
        <div class="space-y-8 sm:space-y-12">
          <div class="space-y-5 sm:mx-auto sm:max-w-xl sm:space-y-4 lg:max-w-5xl">
            <h2 class="text-3xl font-extrabold tracking-tight sm:text-4xl">Undergraduate/Graduate Mentors</h2>
            <p class="text-xl text-gray-500">Learning what works</p>
          </div>

          <ul role="list" class="h-auto mx-auto grid grid-cols-2 gap-x-4 gap-y-8 sm:grid-cols-4 md:gap-x-6 lg:max-w-5xl lg:gap-x-8 lg:gap-y-12 xl:grid-cols-6">
            {% assign members = site.edit_mentors | where:"type","Graduates" %}
            {% assign sorted_people = members | sort:"title" %}

            {% for person in sorted_people %}
              <li>
                <a class="text-indigo-600 hover:no-underline" href="{{ person.redirect_url }}">
                  <div class="p-2 space-y-4 rounded transition ease-in-out delay-150 hover:-translate-y-1 hover:scale-110 hover:bg-indigo-100 duration-300">
                    {% if person.img %}
                      {% if person.img=="placeholder" %}
                        <img class="mx-auto h-20 w-20 rounded-full lg:w-24 lg:h-24" src="/assets/img/blank_profile-800.webp" alt="">
                      {% else %}
                        <img class="mx-auto h-20 w-20 rounded-full lg:w-24 lg:h-24" src="{{ person.img }}" alt="">
                      {% endif %}
                    {% endif %}

                    <div class="space-y-2">
                      <div class="text-xs font-medium lg:text-sm">
                        <h3>{{ person.title }}</h3>
                        <p class="text-indigo-600"> {{ person.description }}</p>
                      </div>
                    </div>
                  </div>
                </a>
              </li>
            {% endfor %}
          </ul>
        </div>
      </div>
    </div>

    <div class="bg-white">
      <div class="max-w-7xl mx-auto py-12 px-4 text-center sm:px-6 lg:px-8 lg:py-24">
        <div class="flex-none space-y-8 sm:space-y-12">
          <div class="space-y-5 sm:mx-auto sm:max-w-xl sm:space-y-4 lg:max-w-5xl">
            <h2 class="text-3xl font-extrabold tracking-tight sm:text-4xl">EDIT AI Mentor Track Students</h2>
            <p class="text-xl text-gray-500">Paving the Way</p>
          </div>

          <!-- YEAR FILTER DROPDOWN -->
          <label for="year-select" class="block mb-4 text-lg font-medium text-gray-700">Filter by Year:</label>
          <select id="year-select" class="mb-8 p-2 border border-gray-300 rounded-md text-gray-900">
            <option value="">All Years</option>
            {% assign years = "" | split: "" %}
            {% for person in site.edit_mentors %}
              {% if person.type == "High School Summer" and person.description %}
                {% assign year = person.description | slice: -4, 4 %}
                {% if year contains '20' and year.size == 4 %}
                  {% unless years contains year %}
                    {% assign years = years | push: year %}
                  {% endunless %}
                {% endif %}
              {% endif %}
            {% endfor %}
            {% assign sorted_years = years | sort | reverse %}
            {% for y in sorted_years %}
              <option value="{{ y }}">{{ y }}</option>
            {% endfor %}
          </select>

          {% assign students = site.edit_mentors | where: "type", "High School Summer" %}
          {% assign students_with_year = "" | split: "" %}
          {% for student in students %}
            {% assign year = student.description | slice: -4, 4 %}
            {% if sorted_years contains year %}
              {% assign key = year | append: "|||" | append: student.url %}
              {% assign students_with_year = students_with_year | push: key %}
            {% endif %}
          {% endfor %}

          {% assign sorted_students = students_with_year | sort | reverse %}
          {% assign current_year = "" %}
          {% for pair in sorted_students %}
            {% assign parts = pair | split: "|||" %}
            {% assign year = parts[0] %}
            {% assign url = parts[1] %}
            {% assign student = site.edit_mentors | where: "url", url | first %}

            {% if year != current_year %}
              {% if current_year != "" %}
                </ul>
              {% endif %}
              <h3 class="text-2xl font-semibold mb-4 year-section" data-year="{{ year }}">{{ year }}</h3>
              <ul role="list" class="h-auto mx-auto grid grid-cols-2 gap-x-4 gap-y-8 sm:grid-cols-4 md:gap-x-6 lg:max-w-5xl lg:gap-x-8 lg:gap-y-12 xl:grid-cols-6 year-section" data-year="{{ year }}">
              {% assign current_year = year %}
            {% endif %}

            <li>
              <a class="text-indigo-600 hover:no-underline" href="{{ student.redirect_url }}">
                <div class="p-2 space-y-4 rounded transition ease-in-out delay-150 hover:-translate-y-1 hover:scale-110 hover:bg-indigo-100 duration-300">
                  {% if student.img %}
                    {% if student.img == "placeholder" %}
                      <img class="mx-auto h-20 w-20 rounded-full lg:w-24 lg:h-24" src="/assets/img/blank_profile-800.webp" alt="">
                    {% else %}
                      <img class="mx-auto h-20 w-20 rounded-full lg:w-24 lg:h-24" src="{{ student.img }}" alt="">
                    {% endif %}
                  {% endif %}

                  <div class="space-y-2">
                    <div class="text-xs font-medium lg:text-sm">
                      <h3>{{ student.title }}</h3>
                      <p class="text-indigo-600">{{ student.description }}</p>
                    </div>
                  </div>
                </div>
              </a>
            </li>
          {% endfor %}
          {% if current_year != "" %}
            </ul>
          {% endif %}
        </div>
      </div>
    </div>

  </main>
</div>
