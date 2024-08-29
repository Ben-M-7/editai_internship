---
layout: page
permalink: /people/
title: People
description:
nav: true
person_types: ["Principal Investigator","Collaborators","PhD","PhD Students","Medical Students","Master's","Undergraduates","High School Summer"]
lab_types: ["Current","Previous"]
---

<!-- Tailwind CSS -->
<script src="https://cdn.tailwindcss.com/3.0.0"></script>

<!-- PI -->
<div class="bg-white">
  <div class="max-w-7xl mx-auto py-12 px-4 text-center sm:px-6 lg:px-8 lg:py-24">
    <div class="space-y-8 sm:space-y-12">
      <div class="space-y-5 sm:mx-auto sm:max-w-xl sm:space-y-4 lg:max-w-5xl">
        <h2 class="text-3xl font-extrabold tracking-tight sm:text-4xl">Project Directors</h2>
        <p class="text-xl text-gray-500">Teaching the next generation responsible AI and biomed practice</p>
      </div>

      <!-- Container for the people items, adjusted to flex layout -->
      <div class="flex flex-wrap justify-center gap-6">
        {% assign members = site.people | where:"type","Principal Investigator" %}
        {% assign sorted_people = members | sort:"lab_type" %}

        {% for person in sorted_people %}
          {% if person.img %}
            <div class="flex flex-col items-center max-w-xs">
              <div class="w-40 h-40 flex justify-center items-center"> <!-- Updated size classes -->
                {% if person.img=="placeholder" %}
                  <img class="object-cover shadow-lg rounded-lg w-full h-full" src="/assets/img/blank_profile.png" alt="">
                {% else %}
                  <img class="object-cover shadow-lg rounded-lg w-full h-full" src="{{ person.img | prepend: site.baseurl | prepend: site.url }}" alt="">
                {% endif %}
              </div>
              <div class="text-center mt-4">
                <div class="text-lg leading-6 font-medium space-y-1">
                  <h3>{{ person.title }}</h3>
                  <p class="text-indigo-600">{{ person.description_update }}{{ "," if person.description_update else "" }}{{ person.description }}</p>
                  <a href="{{ person.url | prepend: site.baseurl | prepend: site.url }}" class="text-gray-400 hover:text-gray-500">
                    Profile
                  </a>
                </div>
              </div>
            </div>
          {% endif %}
        {% endfor %}
        <!-- More people... -->
      </div>
    </div>
  </div>
</div>


<!-- EDIT Program PhD Student Mentors -->
<div class="bg-white">
  <div class="max-w-7xl mx-auto py-12 px-4 text-center sm:px-6 lg:px-8 lg:py-24">
    <div class="space-y-8 sm:space-y-12">
      <div class="space-y-5 sm:mx-auto sm:max-w-xl sm:space-y-4 lg:max-w-5xl">
        <h2 class="text-3xl font-extrabold tracking-tight sm:text-4xl">EDIT Mentors and PhD Students</h2>
        <p class="text-xl text-gray-500">Our Esteemed Mentors</p>
      </div>

      <ul role="list" class="h-auto mx-auto grid grid-cols-2 gap-x-4 gap-y-8 sm:grid-cols-4 md:gap-x-6 lg:max-w-5xl lg:gap-x-8 lg:gap-y-12 xl:grid-cols-6">
        {% assign mentors = site.people | where:"type","PhD Students" %}
        {% assign sorted_people = mentors | sort:"lab_type" %}

        {% for person in sorted_people %}
            <li>
              <a class="text-indigo-600 hover:no-underline" href="{{ person.url | prepend: site.baseurl | prepend: site.url }}">
                <div class="p-2 space-y-4 rounded transition ease-in-out delay-150 hover:-translate-y-1 hover:scale-110 hover:bg-indigo-100 duration-300">
                  {% if person.img %}
                      {% if person.img=="placeholder" %}
                        <img class="mx-auto h-24 w-24 rounded-full lg:w-32 lg:h-32" src="/levylab/assets/img/blank_profile.png" alt="">
                      {% else %}
                        <img class="mx-auto h-24 w-24 rounded-full lg:w-32 lg:h-32" src="{{ person.img | prepend: site.baseurl | prepend: site.url }}" alt="">
                      {% endif %}
                    {% endif %}

                    <!-- Gray font if "Former" -->
                    {% if person.lab_type=="Current" %}
                      <div class="space-y-2">
                        <div class="text-xs font-medium lg:text-sm">
                          <h3>{{ person.title }}</h3>
                          <p class="text-indigo-600">PhD Student {{ person.description }}</p>
                        </div>
                      </div>
                    {% else %}
                      <div class="space-y-2">
                        <div class="text-xs font-medium lg:text-sm">
                          <h3>{{ person.title }}</h3>
                          <p class="text-gray-600">PhD Student {{ person.description }}</p>
                        </div>
                      </div>
                    {% endif %}

                </div>
              </a>
            </li>

        {% endfor %}
      </ul>
    </div>
  </div>
</div>

<div class="profiles-container bg-white">
  {% assign members = site.people | where:"type","High School Summer" %}
  {% assign sorted_people = members | sort: "description" %}
  {% assign sorted_people_by_year = sorted_people | reverse %}
  {% assign people_by_year = sorted_people_by_year | group_by: "description" %}

  {% for group in people_by_year %}
    {% assign year = group.name | split: " " | last %}
    
    <div class="year-section mb-12">
      <!-- Year Title -->
      <h2 class="text-2xl font-bold text-center my-8">Summer Interns {{ year }}</h2>

      <!-- Profiles Grid -->
      <ul role="list" class="h-auto mx-auto grid grid-cols-2 gap-x-4 gap-y-8 sm:grid-cols-4 md:gap-x-6 lg:max-w-5xl lg:gap-x-8 lg:gap-y-12 xl:grid-cols-6">
        {% for person in group.items %}
          <li>
            <a class="text-indigo-600 hover:no-underline" href="{{ person.url | prepend: site.baseurl | prepend: site.url }}">
              <div class="p-2 space-y-4 rounded transition ease-in-out delay-150 hover:-translate-y-1 hover:scale-110 hover:bg-indigo-100 duration-300">   
                {% if person.img %}
                  {% if person.img == "placeholder" %}
                    <img class="mx-auto h-20 w-20 rounded-full lg:w-24 lg:h-24" src="/levylab/assets/img/blank_profile.png" alt="">
                  {% else %}
                    <img class="mx-auto h-20 w-20 rounded-full lg:w-24 lg:h-24" src="{{ person.img | prepend: site.baseurl | prepend: site.url }}" alt="">
                  {% endif %}
                {% endif %}

                <div class="space-y-2">
                  <div class="text-xs font-medium lg:text-sm">
                    <h3>{{ person.title }}</h3>
                    {% if person.lab_type == "Current" %}
                      <p class="text-indigo-600">{{ person.lab_type }} {{ person.description }}</p>
                    {% else %}
                      <p class="text-gray-600">{{ person.lab_type }} {{ person.description }}</p>
                    {% endif %}
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
