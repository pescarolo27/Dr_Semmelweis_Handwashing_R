#Q2 -- Create two ggplot line plots: 
  #One for the yearly proportion of deaths &,
  #Another for the monthly proportion of deaths. For the yearly plot, create a different colored line for each clinic.

#YEARLY
#adjust the figure size
options(repr.plot.width = 8, repr.plot.height = 6)
#plot the data
q2_plot_YR <- ggplot(yearly, aes(x=year, y=proportion_deaths, color=clinic)) + geom_line() +
  labs(title="Proportion of Deaths for Every Birth - Yearly", x='Year', y='Deaths/Births', 
       color='Clinic') +
  theme(plot.title=element_text(size=11), axis.title.x=element_text(size=10),
        axis.title.y=element_text(size=10), legend.title=element_text(size=10))
q2_plot_YR


#MONTHLY
#adjust the figure size
options(repr.plot.width = 10, repr.plot.height = 6)
#plot the data
q2_plot_M <- ggplot(monthly, aes(x=date, y=proportion_deaths)) + geom_line() +
  labs(title="Proportion of Deaths for Every Birth - Monthly", x='Month', y='Deaths/Births') +
  theme(plot.title=element_text(size=11), axis.title.x=element_text(size=10),
        axis.title.y=element_text(size=10), legend.title=element_text(size=10))
q2_plot_M