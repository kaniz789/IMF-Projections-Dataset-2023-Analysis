##  International Monetary Fund (IMF) FORECAST Dataset

This dataset provides insights into various key economic metrics that are crucial for assessing the economic health and performance of countries worldwide.


The dataset consists of individual files, each representing a specific economic indicator. Here is an overview of the included indicators:

* Budget Balance forecast

* Current Account forecast

* Inflation forecast

* Budget Balance forecast

* Investment Economic forecast

* Unemployment rate forecast


![libraries](https://github.com/user-attachments/assets/6df0ce83-f366-4e0c-9175-0f6aff7891dc)


![configuration part](https://github.com/user-attachments/assets/41983bc1-207b-4f62-9f28-5bfab1a577ca)


![adding 6 files](https://github.com/user-attachments/assets/6816af35-63b0-42cf-a535-9e8fcf1002e3)



###  1.  The bar chart visually represents the top 20 countries with the highest current account forecasts for 2023, indicating nations with strong surplus positions in global trade and investments. Countries like Guyana, Norway, and Papua New Guinea exhibit the largest positive forecasts, highlighting their economic stability and favorable trade balances.

![1](https://github.com/user-attachments/assets/0e7911db-db4f-403b-8bab-f1ae0e8616a0)



###  2.   This bar plot illustrates the relationship between economic growth forecasts and investment forecasts for countries with an expected growth rate above 6% in 2023, showing that high economic growth does not necessarily correlate with high investment projections.

![2](https://github.com/user-attachments/assets/afa40fa0-aa50-47ba-b5a2-462fe6eba42e)



###  3.   The scatter plot visualizes the economic growth forecast and investment forecast for countries with an expected growth rate above 6% in 2023, helping to identify whether high economic growth correlates with strong investment projections.

![3](https://github.com/user-attachments/assets/16bb36aa-97e5-4d3f-845f-859cdcf6917c)



###  4.   The chart is a bar plot, which compares economic growth forecasts and investment forecasts for high-growth countries in 2023, illustrating variations in investment levels among nations with strong economic projections.


![4](https://github.com/user-attachments/assets/8f918305-cbaf-4312-b264-07925855824d)



###  5.   The chart is a bar plot, which compares economic growth forecasts and investment forecasts for high-growth countries in 2023, illustrating whether stronger economic projections align with higher investment expectations.


![5](https://github.com/user-attachments/assets/e671b0b0-a859-4bc0-8bd1-9033e3985118)



###  6.    This is a pie chart, which visually represents the proportional distribution of economic growth forecasts or investment forecasts among high-growth countries in 2023. Let me know if you’d like a deeper breakdown of the insights it conveys!


![6](https://github.com/user-attachments/assets/8491d6d3-ece9-473d-8b35-f604afbc1527)



###  7.

![7](https://github.com/user-attachments/assets/4fe68f02-4997-495d-8934-82d802d9e768)



###  8.

![8](https://github.com/user-attachments/assets/0cd07ad9-04ee-4f48-9fb3-307aa370eb09)



###  9.

![9](https://github.com/user-attachments/assets/5d12f7d9-b172-49b1-b2ac-91c313941d45)



###  10.    This histogram visualizes the distribution of investment forecasts for 2023, highlighting how frequently different investment levels occur across countries. The KDE curve helps identify whether investments are concentrated within a specific range or spread out, offering insights into global investment trends.

![10](https://github.com/user-attachments/assets/07323982-2e36-47e6-904d-dfd48e7df3f3)



###  11.    The investment dataset categorizes countries by their primary investment sectors, such as Technology, Energy, Finance, and Infrastructure, based on known investment patterns. It also includes forecasted investment percentages for 2023, allowing for analysis of global economic priorities and sector-specific funding trends.

![11](https://github.com/user-attachments/assets/96f9f08e-18c4-4143-8ac7-3f4d42ba9c26)



###  12.    This interactive geographic heatmap visually represents investment forecasts across countries, with color intensity reflecting the level of projected investment for 2023. Regions with higher investment forecasts appear in warmer tones, highlighting economies expected to prioritize significant capital growth, while cooler shades indicate lower projected investments.

![12](https://github.com/user-attachments/assets/144dc5bb-b565-41b5-8918-4760f82b90f9)



###  13.   This bar chart ranks the top 20 countries with the highest unemployment rates, making it easy to compare economic challenges across nations. The longer bars indicate higher unemployment levels, highlighting the countries facing the most severe job market instability.

![13](https://github.com/user-attachments/assets/f022b678-dc7a-4742-868c-8417b2b6bbde)



###  14.   This interactive choropleth map visualizes global unemployment rates, allowing users to explore country-specific job market challenges with hover details. The darker red shades indicate higher unemployment, highlighting regions struggling the most with workforce stability.

![14](https://github.com/user-attachments/assets/de9d6110-9d17-4f16-9e67-eddcef391435)




###  Conclusion:    This dataset enables cross-sector comparisons to assess economic health, forecast future trends, and refine investment strategies. The interplay between inflation, unemployment, and financial metrics presents a compelling story about regional stability, global competitiveness, and economic resilience.



##  Here is the Transformation:


![transformation process](https://github.com/user-attachments/assets/715478b2-9692-4a91-b2ea-66fcb2d7bf52)



![final step](https://github.com/user-attachments/assets/be8ab0a6-7fc3-466f-9686-872b557432a9)


# SQL queries


This query analyzes global economic trends by identifying clusters of countries with the same forecasted growth rate, emphasizing shared economic conditions and regional patterns rather than individual country insights.

![e-04](https://github.com/user-attachments/assets/a2fd71b8-61a7-4a90-bdab-858cb80ce05b)


This query analyzes unemployment and inflation forecasts for 2023 by performing a LEFT JOIN to retain all countries from the unemployment dataset while incorporating inflation data, allowing for comparative insights into economic conditions across nations.

![j-un_in- 05](https://github.com/user-attachments/assets/713700e7-208f-4461-b6ce-ca6fb1164489)


This query retrieves economic growth forecasts for 2023 alongside current account forecasts, ensuring that missing values default to zero, and orders the results by economic growth in descending order to highlight the strongest expected economies.

![j-ac_ec-06](https://github.com/user-attachments/assets/9d8c71ca-b86c-4f0b-9e4c-40ce39f42364)


Which countries have both high investment (>35%) and low unemployment (<10%)?

This query retrieves economic growth forecasts for 2023 along with current account forecasts, ensuring missing values default to zero, and ranks countries by economic growth in descending order to highlight the strongest expected economies.

![j-in_un-07](https://github.com/user-attachments/assets/49e9b36f-b945-46f3-afa0-219ad3c640e4)


Do high-growth countries also have high investment forecasts?

This query examines whether high-growth countries also have high investment forecasts by selecting those with an economic growth forecast above 6% and ordering them by their investment forecast in descending order. 
![j-ec_in-08](https://github.com/user-attachments/assets/6f68218b-7680-4e3e-adfd-b79213b12958)


Are the global ranks in each table consistent with the actual ordering?

This query selects countries with an economic growth forecast above 6% and orders them by investment forecast in descending order, analyzing whether high-growth nations also have strong investment projections.

![09](https://github.com/user-attachments/assets/63db787d-a675-492a-a70b-5d41576b7eaa)


All economic indicators for each country in a unified view

This query analyzes whether high-growth countries also have high investment forecasts by selecting those with an economic growth forecast above 6% and ordering them by investment forecast in descending order, with a visual representation comparing the two metrics across nations.

![10](https://github.com/user-attachments/assets/6391a117-a227-4e5f-9ef7-148b65d8cd3b)

















