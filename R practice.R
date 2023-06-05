plot(iris)

2+2

print('This is R programming')

a<- 100

a


b<- 200

x<- c(2,3,4,5) #this c stands for combine or concatenation

x

c <- e <- f<- 700

c

f

0:10

10:0

100:50

seq(10)

seq(0,20, by = 2)

seq(20,0, by =-2)

#Operations
a+b

y<-c (10,3,7,8)

y

x+y #it will sum individual figs of same length

z  <-c (10,3,7,8,5)

z


sqrt(64)

log(100)

log10(100)

#install packages

# to install pacman ('package manager') if needed
if (!require('pacman')) install.packages ('pacman') #to check if the packege is available

#load contributed packages with pacman
pacman::p_load(pacman,party,psych,rio,tidyverse)

#Pacman for loading and unloading packages
#party for decision trees
#psych for many statistical procedures
#rio for importing data
#tdyverse for so many reasons

#load base pacakges manually
library(datasets) 

 #import csv files with readr::read_csv() from tidyverse
(df<- read_csv('data/StateData.csv'))


# or import with rio:: import() from rio
(df<- import('data/StateData.xlsx')%>% as_tibble())

#Or 
df<- read_csv('data/StateData.csv')%>% 
     as_tibble()%>%
     select(state_code, 
            psychRegions,
            instagram:modernDance)%>%
     mutate(psychRegions = as.factor(psychRegions))%>%
     rename (y =psychRegions) %>%
     print()

  
  
install.packages("tidyverse")

getwd() #to check where files are kept like pwd() in python

#%>%  its called a piping command

library (datasets)
?datasets

library(help = 'datasets')

#load sample datasets

?iris
iris

?UCBAdmissions
UCBAdmissions

?Titanic
Titanic

state.x77

df<- read_csv("Automobile.csv") #doesnt show outputs but just columns
(df<- read_csv("Automobile.csv")) #wrapping it up in () like this shows the out put at once without using the df
df

df<- read_csv('Automobile.csv')%>% 
  as_tibble()%>%
  select(make, 
         fuel_type,
         wheel_base:height)%>%
  mutate(fuel_type = as.factor(fuel_type))%>%
  rename (y =fuel_type) %>%
  print()

#Colors and use in R

x = c(24,13,7,5,3,2)
barplot(x, col = 'seashell')

?colors

colors()


x = c(24,13,7,5,3,2)
barplot(x, col = 'turquoise3')



x = c(24,13,7,5,3,2)
barplot(x, col = rgb(159,182,205, max = 255)) #slategray3


x = c(24,13,7,5,3,2)
barplot(x, col = c('seashell', 'turquoise3')) #2 use color combo

?palette
palette()


x = c(24,13,7,5,3,2)
barplot(x, col = 1:6)


x = c(24,13,7,5,3,2)
barplot(x, col = rainbow(6))


x = c(24,13,7,5,3,2)
barplot(x, col = heat.colors(3))  #the no could be any thing just saying give me 3 shades of heat colors

#creating bar chats

?diamonds
diamonds

diamonds %>%
  select(cut)%>%
  plot()
#can either plot as seen above or below

plot (diamonds$cut)

#to use a barplot
diamonds %>%
  select(cut)%>%
  table()%>% #to use a barplot the data must be in appropriate format and that is what the table fxn does
  barplot()

?table

diamonds %>%
  select(clarity)%>%
  table()%>% #to use a barplot the data must be in appropriate format and that is what the table fxn does
  barplot()


diamonds %>%
  select(cut)%>%
  table()%>% #to use a barplot the data must be in appropriate format and that is what the table fxn does
  sort(decreasing = T)%>% #T = True
  barplot()

diamonds %>%
  select(clarity)%>%
  table()%>% #to use a barplot the data must be in appropriate format and that is what the table fxn does
  barplot( 
     main = 'clarity of diamonds',
     sub = '(source: ggplot2::diamonds)',
     horiz = T, #Draw horizontal bars
     ylab = 'clarity of diamonds',
     xlab = 'frequency',
     xlim = c(0, 15000),
     border = NA, #No borders on bars
     col = '#CD0000') #red3


#barplot side by side
diamonds %>%
  select(cut, clarity)%>%
  table()%>% #to use a barplot the data must be in appropriate format and that is what the table fxn does
  barplot()


df<- diamonds %>%
  select(cut, clarity,)%>%
  table()%>% #to use a barplot the data must be in appropriate format and that is what the table fxn does
  print()


#stacked bar : step 1 create graph
df %>%
  barplot(legend = rownames(.)) #the legend is like colorcodes for diffent variables
  
#side by side
df %>%
  barplot(legend = rownames(.),
          beside = T) #to put bars next to each other

#HISTOGRAM

?hist

hist(diamonds$price)

hist(diamonds$price,
     breaks = 7, #no of breaks
     main = 'hisogram of diamnods price',
     sub = 'source:ggplot2::diamonds',
     ylab = 'frequency',
     xlab = 'price of diamonds',
     border = F, #no of borders on bar you could say T or NA or F
     col = '#CD0000') #red3 

#BOXPLOT

?boxplot

boxplot(diamonds$price)

#or can be done this way with the pipping cmd

diamonds%>%
  select(price)%>%
  boxplot()

diamonds%>%
  select(price)%>%
  boxplot(
     horizontal = T, #horizontal
     notch = T, #confidence interval for the mean
     main = 'boxplot of diamnods price',
     sub = 'source:ggplot2::diamonds',
     xlab = 'price of diamonds',
     col = '#561671') #darkpurple 

diamonds%>%
  select(color,price)%>% #columns from the table
  plot()

diamonds%>%
  select(color,price)%>%
  boxplot(
    price ~ color, #reads price as a function of color
    data = ., #dot is a place holder for pipe
    col = '#561671') #darkpurple

(df<- read_csv("Automobile.csv"))

df<- read_csv('Automobile.csv')%>% 
  as_tibble()%>%
  select(make, 
         fuel_type,
         wheel_base:height)%>%
  mutate(fuel_type = as.factor(fuel_type))%>%
  rename (y =fuel_type) %>%
  print()

df%>%
  select (wheel_base:height)%>% #to plot from one column to another
  plot()

#My PLOTS DIDNT WORK BUT THESE ARE SAMPLES 

diamonds%>%
  select (depth:price) %>% #to plot from one column to another
  plot(
    main = 'Scatter plot',
    xlab = 'searches for D',
    ylab = 'searches for P',
    pch = 10,)#plotting character (small circle)


?diamonds

#add fit linearregression line y-x
diamonds%>%
  lm(depth~price, data= .)%>%
  abline()

#identify outliers - To remove outliers if any
diamonds%>%
  select (color,price)%>% #to plot from one column to another
  filter(price > 334)%>%
  print()

#bivariate outliers
diamonds%>%
  select (depth~price)%>% #to plot from one column to another
  filter(price < 334)%>%
  plot(
    main = 'Scatter plot',
    xlab = 'searches for D',
    ylab = 'searches for P',
    col = 'grey',
    pch = 25,)

#Add fit line without outlier
df %>%
  filter (price <334)
  lm(depth~price, data= .)%>%
  abline()
  
  
  #Creating a line chat - plot with options
  plot(uspop) #-can go like this or like below
  
  uspop%>%
    plot(
      main = 'US POP 1790 -1970',
      sub = 'Source : USpop',
      xlab = 'Year',
      ylab = 'population (in millions)',
      col = 'blue')
  
  #on the same plot we add the following;
  
abline( v=1930, col = 'red4') #prev used for regression but now for drawing vertical 
text(1930, 20, '1930', col = 'red') #add text to show 1930, 10 pixels or spaces up for the text         
abline( v =1940, col = 'red4')
text(1940, 2, 1940, col = 'red')

?ts.plot # for time series data plot, best for multiple time series plot

ts.plot(uspop) 

plot.ts(uspop) #can also plot this way

#eg OF multiple time series data
 EuStockMarkets

 #can be ploted either ways 
 plot(EuStockMarkets)
 ts.plot(EuStockMarkets) #gives a better comparison
 plot.ts(EuStockMarkets)

 
 #Creating cluster chats
 
 (df<- read_csv("Automobile.csv"))
 
 df<- read_csv('Automobile.csv')%>% 
   as_tibble()%>%
   select(make, 
          fuel_type,
          wheel_base:height)%>%
   mutate(fuel_type = as.factor(fuel_type))%>%
   rename (y =fuel_type) %>%
   print()

 
hc<- df%>% #get data
  dist%>%  #compute distance / dissimilarity matrix
  hclust   #compute hierarchical clusters

#plot dendrogram
hc%>% plot (labels = df$make)

#draw boxes around clusters
hc %>% rect.hclust(k=2, border = 'red2') # for 2 boxes
hc %>% rect.hclust(k=3, border = 'red4')
hc %>% rect.hclust(k=4, border = 'blue')

#selecting cases and subgroups

df%>% 
  filter(height > 55) %>%
  print()

df%>% 
  filter(y == 'diesel') %>%
  print()

df%>% 
  filter(make == 'audi'&
           y == 'gas') %>%
  print()

df%>% 
  filter(make == 'audi'| #use the '|' pipe sign to represent 'or'
           y == 'gas') %>%
  print()

# 'not'is represented as the exclamation point !

df%>% 
  filter(make == 'mazda'& 
           !y == 'gas') %>% #and should not be gas
  print()


#Recording variables and combining categories with 'RECODE'

df%>%
  mutate(diesel =recode(y,  #creating another column called diesel and we are getting our info from the y column
                        'diesel' = 'yes',
                        'gas' = 'no', 
                        default = 'no'))%>% #means if you have other categories then put no to avoid listing all 
  select(make, y,diesel)

#CREATE CATEGORIES WITH 'CASE_WHEN'

df2<- df%>%
  mutate(new_column = case_when( 
                        length >160 |width > 55 | height > 55 ~ 'yes',
                        TRUE ~'no')) #otherwise put no
df2



df2%>% 
  select (make, new_column)%>%
  arrange(desc(new_column))%>% # so that the yes is up and no stays below
  print(n = Inf ) #to show all rows


# Computing new variables (average)

df%>% 
  mutate(column1 = (wheel_base + length) /2,
         column2 = (wheel_base + height) /2)%>%
  select(make, column1, column2) #in this case the select statement cant come first becuase these are new columns not existing columns
   

