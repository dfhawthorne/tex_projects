# ------------------------------------------------------------------------------
# Produces a graph for number of times a paper is cited by the decade of
# publication.
# ------------------------------------------------------------------------------

# Load CSV into a data frame

df <- read.csv('citations_by_year.csv')

# Convert the year of publication into a factor called 'Decade'

df['Decade'] <- trunc(df$Year_Published/10)*10
df['Decade'] <- factor(df$Decade)

# Summarise the data frame

summary(df)

# Produce a Box plot

boxplot( Times_Cited ~ Decade, data=df)
