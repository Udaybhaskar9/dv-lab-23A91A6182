
library(ggplot2)

data(AirPassengers)
ap_df <- data.frame(
  year = as.numeric(time(AirPassengers)),
  passengers = as.numeric(AirPassengers)
)

plot(AirPassengers,
     type = 'l',
     main = "Air Passengers Trend Analysis",
     xlab = "Year",
     ylab = "No. of passengers",
     col = "red")
points(AirPassengers, pch = 16, col = "blue", cex = 0.5)
grid()

ggplot(ap_df, aes(x = year, y = passengers)) +
  geom_line(color = "darkgreen", linewidth = 0.5) +
  labs(
    title = 'Trend Analysis of Air Passengers',
    subtitle = "From 1949-1960",
    caption = 'Using Built-in AirPassengers Dataset',
    x = 'Year',
    y = 'No. of Passengers'
  ) +
  geom_point(color = 'red', size = 0.5) +
  geom_smooth(method = "loess", se = FALSE, color = 'pink') +
  theme_minimal() +
  theme(
    plot.title = element_text(face = 'bold', size = 14),
    plot.subtitle = element_text(size = 10)
  )