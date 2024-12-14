
<!-- README.md is generated from README.Rmd. Please edit that file -->

# unijob

<!-- badges: start -->
<!-- badges: end -->

The goal of unijob is to …

## Installation

You can install the development version of unijob from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("TengMCing/unijob")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(unijob)
## basic example code
```

``` r
monash() |>
  head()
#>   access_date      organization
#> 1  2024-12-14 Monash University
#> 2  2024-12-14 Monash University
#> 3  2024-12-14 Monash University
#> 4  2024-12-14 Monash University
#> 5  2024-12-14 Monash University
#> 6  2024-12-14 Monash University
#>                                                                             position
#> 1                                                             Senior Project Officer
#> 2                 Program Manager, Optimising Immunoglobulin Management in Australia
#> 3                                     Research Fellow in Rare Disease Data Analytics
#> 4 Senior Lecturer/ Associate Professor (Education Focused) and Director of Education
#> 5          Senior Lecturer (Education Focused) - Masters of Genome Analytics program
#> 6                         Lecturer or Senior Lecturer, Social Determinants of Health
#>   close_date
#> 1 2025-01-05
#> 2 2025-01-06
#> 3 2025-01-26
#> 4 2025-01-09
#> 5 2025-01-17
#> 6 2025-01-09
#>                                                                                                                                     url
#> 1                                                          https://careers.pageuppeople.com/513/cw/en/job/672452/senior-project-officer
#> 2               https://careers.pageuppeople.com/513/cw/en/job/672922/program-manager-optimising-immunoglobulin-management-in-australia
#> 3                                  https://careers.pageuppeople.com/513/cw/en/job/668424/research-fellow-in-rare-disease-data-analytics
#> 4 https://careers.pageuppeople.com/513/cw/en/job/670465/senior-lecturer-associate-professor-education-focused-and-director-of-education
#> 5           https://careers.pageuppeople.com/513/cw/en/job/671400/senior-lecturer-education-focused-masters-of-genome-analytics-program
#> 6                       https://careers.pageuppeople.com/513/cw/en/job/672317/lecturer-or-senior-lecturer-social-determinants-of-health
#>                                                                                                                                                                                                                                                                                            summary
#> 1                   Work closely with the MAB Centre Directors, project teams, and stakeholders across the university and external client groups to support the coordination of key projects, events, and deliverables, enabling us to advance our mission of improving cardiovascular health.\t\r
#> 2                                                                                                                                                                                              Join as CRE Program Manager and lead innovative projects improving immunoglobulin use worldwide\t\r
#> 3                                                                                                                                                                                                      Join ENRU as a Research Fellow shaping the future of neurodegenerative disease research\t\r
#> 4 As a Senior Lecturer/ Associate Professor (Education-Focused) and Director of Education at the School of Translational Medicine (STM), you’ll drive educational innovation, curriculum development, quality improvement and new course development in undergraduate and postgraduate courses\t\r
#> 5                                                                                                                                            Be part of an inspiring academic community, engage in meaningful educational leadership, and help shape the future of genome analytics education.\t\r
#> 6                                                                                                                                                                                                       Shape impactful learning experiences as an academic in the Health and Society Program.\t\r
#>                        location                              salary
#> 1             The Alfred Centre   \r HEW 7 ($103,178 - $113,167) \r
#> 2             553 St Kilda Road   \r HEW 8 ($116,075 - $128,126) \r
#> 3                Clayton campus  \r Level A ($80,464 - $109,203) \r
#> 4             The Alfred Centre \r Level D ($169,553 - $186,788) \r
#> 5                Clayton campus \r Level C ($140,812 - $162,366) \r
#> 6 Monash Rural Health Churchill \r Level C ($140,812 - $162,366) \r
#>   salary_lower salary_upper
#> 1     $103,178     $113,167
#> 2     $116,075     $128,126
#> 3      $80,464     $109,203
#> 4     $169,553     $186,788
#> 5     $140,812     $162,366
#> 6     $140,812     $162,366
```

``` r
unimelb() |>
  head()
#>   access_date            organization
#> 1  2024-12-14 University of Melbourne
#> 2  2024-12-14 University of Melbourne
#> 3  2024-12-14 University of Melbourne
#> 4  2024-12-14 University of Melbourne
#> 5  2024-12-14 University of Melbourne
#> 6  2024-12-14 University of Melbourne
#>                                             position close_date
#> 1                        Clinical School Coordinator 2025-01-12
#> 2 Research Strategy Project Officer (Infrastructure) 2025-01-10
#> 3                  Research Strategy Project Officer 2025-01-10
#> 4                           Department Administrator 2025-01-07
#> 5                        Freedom of Information Lead 2025-01-11
#> 6                Design and Print Studio Coordinator 2025-01-10
#>                                                                                          url
#> 1                      https://jobs.unimelb.edu.au/en/job/919005/clinical-school-coordinator
#> 2 https://jobs.unimelb.edu.au/en/job/918757/research-strategy-project-officer-infrastructure
#> 3                https://jobs.unimelb.edu.au/en/job/918760/research-strategy-project-officer
#> 4                         https://jobs.unimelb.edu.au/en/job/918796/department-administrator
#> 5                      https://jobs.unimelb.edu.au/en/job/918810/freedom-of-information-lead
#> 6              https://jobs.unimelb.edu.au/en/job/918890/design-and-print-studio-coordinator
#>                                                                                                                                      summary
#> 1                                                    Coordinate the delivery of world-class medical education in a dynamic clinical setting.
#> 2              Drive research innovation by coordinating strategies, supporting projects, and advancing infrastructure initiatives at scale.
#> 3       Support research excellence: drive research strategy, capability and integrity for the University’s Advancing Melbourne 2030 vision.
#> 4                                                     Coordinate impactful communications for pioneering psychiatric research and education.
#> 5           Lead FOI compliance, managing complex requests, fostering stakeholder relationships, and ensuring timely, high-quality outcomes.
#> 6 Coordinate creative projects, streamline workflows, and ensure seamless design and print delivery with innovative tools and collaboration.
#>   location                           salary salary_lower salary_upper
#> 1       NA  \r $96,459 - $104,413 (UOM 6)\r      $96,459     $104,413
#> 2       NA \r $106,432 - $115,211 (UOM 7)\r     $106,432     $115,211
#> 3       NA \r $106,432 - $115,211 (UOM 7)\r     $106,432     $115,211
#> 4       NA   \r $83,159 - $95,518 (UOM 5)\r      $83,159      $95,518
#> 5       NA \r $119,742 - $129,607 (UOM 8)\r     $119,742     $129,607
#> 6       NA  \r $96,459 - $104,413 (UOM 6)\r      $96,459     $104,413
```
