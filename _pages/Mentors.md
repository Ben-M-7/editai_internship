---
layout: page
permalink: /mentors/
title: Mentors
description:
nav: true
person_types: ["Principal Investigator","Collaborators","PhD","PhD Students","Medical Students","Master's","Undergraduates"]
lab_types: ["Current","Previous"]
---

<!-- Tailwind CSS -->
<script src="https://cdn.tailwindcss.com/3.0.0"></script>


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
                        <img class="mx-auto h-24 w-24 rounded-full lg:w-32 lg:h-32" src="/editai_internship/assets/img/blank_profile.png" alt="">
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