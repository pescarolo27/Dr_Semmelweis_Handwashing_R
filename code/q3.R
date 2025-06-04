#Q3 -- Add a 'handwashing_started' boolean column to monthly using June 1st, 1847 as the threshold; 
  #TRUE should mean that handwashing has started at the clinic. 
  #Plot the new df with different colored lines depending on 'handwashing_started'.

monthly <- monthly %>%
  mutate(handwashing_started = case_when(date < "1847-06-01" ~ FALSE, date >= "1847-06-01" ~ TRUE))

#adjust figure size
options(repr.plot.width = 14, repr.plot.height = 6)
#plot the data
q3_plot_I <- ggplot(monthly, aes(x=date, y=proportion_deaths, color=handwashing_started)) + geom_line() +
  labs(title="Proportion of Deaths for Every Birth - Monthly", x='Month', y='Deaths/Births', 
       color="Did Doctors Wash Their Hands?") +
  theme(plot.title=element_text(size=11), axis.title.x=element_text(size=10),
        axis.title.y=element_text(size=10), legend.title=element_text(size=10))
q3_plot_I