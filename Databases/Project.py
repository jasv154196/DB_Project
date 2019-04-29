import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns


terrorism = pd.read_csv('globalterrorismdb_0718dist.csv', encoding='ISO-8859-1')
terrorism.rename(columns={'iyear':'Year','imonth':'Month','iday':'Day','country_txt':'Country','region_txt':'Region','attacktype1_txt':'AttackType','targtype1_txt':'Target','nkill':'Killed','nwound':'Wounded','gname':'Group'},inplace=True)
terrorism=terrorism[['Year','Month','Day','Country','Region','latitude','longitude','AttackType','Killed','Wounded','Target','Group']]
terrorism['casualities'] = terrorism['Killed']+terrorism['Wounded']

#Number of terrorist attacks per year
plt.subplots(figsize=(16,7))
sns.countplot('Year', data=terrorism, palette='RdYlGn_r', edgecolor=sns.color_palette('dark',7))
plt.xticks(rotation=90)
plt.title('Number of terrorist attacks per year')
plt.show()

# Top 10 countries affected by terrorism
top_Countries10=terrorism[terrorism['Country'].isin(terrorism['Country'].value_counts()[1:11].index)]
pd.crosstab(top_Countries10.Year,top_Countries10.Country).plot(color=sns.color_palette('Paired',10))
fig=plt.gcf()
fig.set_size_inches(18,6)
plt.show()

#Top 10 terrorist groups
sns.barplot(terrorism['Group'].value_counts()[1:11].index, terrorism['Group'].value_counts()[1:11].values, palette=('inferno'))
fig=plt.gcf()
fig.set_size_inches(25,13)
plt.title('Top 10 terrorist groups with most attacks')
plt.show()

#5 Most popular attacks
plt.subplots(figsize=(14,8))
sns.barplot(terrorism['AttackType'].value_counts()[:5].index, terrorism['AttackType'].value_counts()[:5].values,palette='inferno')
plt.title('Top 5 most used attacks (1970-2017)')
plt.show()

#5 Attack types with the most fatalities
coun_terror = terrorism['AttackType'].value_counts()[:5].to_frame()
coun_terror.columns=['Attacks']
coun_kill= terrorism.groupby('AttackType')['Killed'].sum().to_frame()
coun_terror.merge(coun_kill, left_index=True, right_index=True, how='left').plot.bar(width=0.9)
fig = plt.gcf()
fig.set_size_inches(18,6)
plt.title('Top 5 attack types with most fatalities')
plt.show()
