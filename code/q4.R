#Q4 -- Calculate the mean proportion of deaths before and after handwashing from the monthly data, 
  #& store the result as a 2x2 df named "monthly_summary" with the first column containing the 'handwashing_started' groups
  #& the second column having the mean proportion of deaths.

#get the avg # deaths per birth before & after handwashing became mandatory
monthly_summary <- monthly %>%
  group_by(handwashing_started) %>%
  summarize(avg_deaths_per_births_prop = mean(deaths/births)) %>%
  ungroup()
monthly_summary
  #2x2 tibble