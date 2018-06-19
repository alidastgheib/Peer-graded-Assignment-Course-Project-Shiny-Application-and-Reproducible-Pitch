# Define UI
pageWithSidebar(
  
  # Application title
  headerPanel('Iris k-means clustering'),
  
  # Sidebar with a slider input
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(iris)),
    selectInput('ycol', 'Y Variable', names(iris),
                selected = names(iris)[[2]]),
    numericInput('clusters', 'Cluster count', 3,
                 min = 1, max = 9)
  ),
  
  
  # Show a plot of the generated distribution
  mainPanel(
    plotOutput('plot1'),
    h2("Instruction"),
    h3("This application performs K-means clustering.
       You can create \"two-feature\" sub-dataset based on the Iris data by choosing your preferred
       variables X and Y. You can also determine \"number of groups\" (Cluster count) for the purpose 
       of clustering."),
    h6(" . "),
    h3("About K-means clustering:"),
    h4("k-means clustering aims to partition n observations into k 
       clusters in which each observation belongs to the cluster 
       with the nearest mean, serving as a prototype of the cluster.
       This results in a partitioning of the data space into Voronoi cells."),
    code("I used some of the example codes from:"),
    code("https://shiny.rstudio.com/gallery/kmeans-example.html")
  )
)