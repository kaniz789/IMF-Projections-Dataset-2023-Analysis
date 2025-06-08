##    Azure Data analysis on ***IMF FORECAST Dataset***
**``Azure-based Data Analysis``**

This dataset provides insights into various key economic metrics that are crucial for assessing the economic health and performance of countries worldwide.


The dataset consists of individual files, each representing a specific economic indicator. Here is an overview of the included indicators:

* Budget Balance forecast
* Current Account forecast
* Inflation forecast
* Budget Balance forecast
* Investment Economic forecast
* Unemployment rate forecast

##  Project Overview

**Designed and implemented end-to-end data workflows using ``Azure services``:**
*  coordinated data pipelines with **``Azure Data Factory``** to ingest raw data into **``Data Lake Storage Gen2``**; 
*  performed data cleaning and transformation in **``Azure Databricks``**, storing curated outputs in a refined data layer. 
*  **``Azure Synapse Analytics``** for scalable querying and performance tuning, and 
*  delivered actionable insights through **``Power BI``** dashboards to support strategic decision-making and business intelligence reporting.



![Screenshot 2025-06-06 193648](https://github.com/user-attachments/assets/4a1affcf-3b3a-4d41-b8ef-fde82436c728)



##  Data processing workflow in ``Python``


*  Libraries for ``Python``: This code imports various libraries commonly used in data science and machine learning. Specifically, it imports PySpark functions for data manipulation, PySpark SQL types, and libraries for data analysis

![libraries](https://github.com/user-attachments/assets/6df0ce83-f366-4e0c-9175-0f6aff7891dc)


***``Configuration``***: The provided code imports essential libraries for data science and machine learning, then configures a Spark session to securely connect to Azure Data Lake Storage Gen2 using OAuth 2.0 authentication before loading a dataset.

![configuration part](https://github.com/user-attachments/assets/41983bc1-207b-4f62-9f28-5bfab1a577ca)


***Uploading files:*** This Python code uses PySpark to load multiple CSV files containing 6 datasets stored in ``Azure Blob Storage``.

![adding 6 files](https://github.com/user-attachments/assets/6816af35-63b0-42cf-a535-9e8fcf1002e3)


**1.  This vertical ***``bar chart``*** showcasing the top 30 countries based on their budget balance forecast for 2023.**


![01](https://github.com/user-attachments/assets/3a1babf8-9075-44be-a790-dac6494f8012)



**2.  This vertical ***``bar chart``*** displaying the current account forecast for 2023 for various countries, sorted in descending order.**

![1](https://github.com/user-attachments/assets/0e7911db-db4f-403b-8bab-f1ae0e8616a0)



**3.   This vertical ***``bar chart``*** illustrating the average budget balance forecast for 2023 across various continents.**

![2](https://github.com/user-attachments/assets/afa40fa0-aa50-47ba-b5a2-462fe6eba42e)



**4.   This ***``scatter plot``*** showing the relationship between "Global Rank" and the "Budget Balance Forecast" for 2023.**

![3](https://github.com/user-attachments/assets/16bb36aa-97e5-4d3f-845f-859cdcf6917c)



**5.  This vertical ***``bar chart``*** displaying the average current account forecast for 2023 across different continents.**


![4](https://github.com/user-attachments/assets/8f918305-cbaf-4312-b264-07925855824d)



**6.  This ***``histogram``*** with a Kernel Density Estimate (KDE), illustrating the frequency distribution of current account forecasts for 2023.**


![5](https://github.com/user-attachments/assets/e671b0b0-a859-4bc0-8bd1-9033e3985118)



**7.  This plot is a ***``pie chart``*** showing the average economic growth forecast for 2023, broken down proportionally by continent.**


![6](https://github.com/user-attachments/assets/8491d6d3-ece9-473d-8b35-f604afbc1527)



**8.  This plot is a vertical ***``bar chart``*** displaying the average economic growth forecast for 2023 across various continents.**

![7](https://github.com/user-attachments/assets/4fe68f02-4997-495d-8934-82d802d9e768)



**9.   This plot is a horizontal ***``bar chart``*** visualizing the average economic growth forecast for 2023 across different continents.**

![8](https://github.com/user-attachments/assets/0cd07ad9-04ee-4f48-9fb3-307aa370eb09)



**10.   This plot is a correlation ***``heatmap``*** illustrating the relationship between "inflation forecast, 2023" and "Global rank."**

![9](https://github.com/user-attachments/assets/5d12f7d9-b172-49b1-b2ac-91c313941d45)



**11.    This ***``histogram``*** visualizes the distribution of investment forecasts for 2023, highlighting how frequently different investment levels occur across countries. The KDE curve helps identify whether investments are concentrated within a specific range or spread out, offering insights into global investment trends.**

![10](https://github.com/user-attachments/assets/07323982-2e36-47e6-904d-dfd48e7df3f3)



**12.    The investment dataset categorizes countries by their primary investment sectors, such as Technology, Energy, Finance, and Infrastructure, based on known investment patterns. It also includes forecasted investment percentages for 2023, allowing for analysis of global economic priorities and sector-specific funding trends.**

![11](https://github.com/user-attachments/assets/96f9f08e-18c4-4143-8ac7-3f4d42ba9c26)



**13.    This interactive geographic ***``heatmap``*** visually represents investment forecasts across countries, with color intensity reflecting the level of projected investment for 2023. Regions with higher investment forecasts appear in warmer tones, highlighting economies expected to prioritize significant capital growth, while cooler shades indicate lower projected investments.**

![12](https://github.com/user-attachments/assets/144dc5bb-b565-41b5-8918-4760f82b90f9)



**14.   This ***``bar chart``*** ranks the top 20 countries with the highest unemployment rates, making it easy to compare economic challenges across nations. The longer bars indicate higher unemployment levels, highlighting the countries facing the most severe job market instability.**

![13](https://github.com/user-attachments/assets/f022b678-dc7a-4742-868c-8417b2b6bbde)



**15.   This interactive ***``choropleth map``*** visualizes global unemployment rates, allowing users to explore country-specific job market challenges with hover details. The darker red shades indicate higher unemployment, highlighting regions struggling the most with workforce stability.**

![14](https://github.com/user-attachments/assets/de9d6110-9d17-4f16-9e67-eddcef391435)


*  The ``Transformation``:

This ``Python code`` is performing transformations on the datasets using ``PySpark``.

![transformation process](https://github.com/user-attachments/assets/715478b2-9692-4a91-b2ea-66fcb2d7bf52)


*  Saving all datasets individually.
  
![final step](https://github.com/user-attachments/assets/be8ab0a6-7fc3-466f-9686-872b557432a9)


*  Here is my ``conclusion``. This dataset enables cross-sector comparisons to assess economic health, forecast future trends, and refine investment strategies. The interplay between inflation, unemployment, and financial metrics presents a compelling story about regional stability, global competitiveness, and economic resilience.*



##   ``SQL-based`` data initiative


Using ``SQL``, we can analyze the economic performance trends of countries by querying metrics like GDP growth, inflation rates, and budget balances across different regions and years. Additionally, we can compare and rank countries based on forecasted economic indicators to identify top-performing or at-risk economies.


**This query analyzes global economic trends by identifying clusters of countries with the same forecasted growth rate, emphasizing shared economic conditions and regional patterns rather than individual country insights.**

![e-04](https://github.com/user-attachments/assets/a2fd71b8-61a7-4a90-bdab-858cb80ce05b)


**This query analyzes unemployment and inflation forecasts for 2023 by performing a LEFT JOIN to retain all countries from the unemployment dataset while incorporating inflation data, allowing for comparative insights into economic conditions across nations.**

![j-un_in- 05](https://github.com/user-attachments/assets/713700e7-208f-4461-b6ce-ca6fb1164489)


**This query retrieves economic growth forecasts for 2023 alongside current account forecasts, ensuring that missing values default to zero, and orders the results by economic growth in descending order to highlight the strongest expected economies.**

![j-ac_ec-06](https://github.com/user-attachments/assets/9d8c71ca-b86c-4f0b-9e4c-40ce39f42364)


**Which countries have both high investment (>35%) and low unemployment (<10%)?**

This query retrieves economic growth forecasts for 2023 along with current account forecasts, ensuring missing values default to zero, and ranks countries by economic growth in descending order to highlight the strongest expected economies.

![j-in_un-07](https://github.com/user-attachments/assets/49e9b36f-b945-46f3-afa0-219ad3c640e4)


**Do high-growth countries also have high investment forecasts?**

This query examines whether high-growth countries also have high investment forecasts by selecting those with an economic growth forecast above 6% and ordering them by their investment forecast in descending order. 
![j-ec_in-08](https://github.com/user-attachments/assets/6f68218b-7680-4e3e-adfd-b79213b12958)


**Are the global ranks in each table consistent with the actual ordering?**

This query selects countries with an economic growth forecast above 6% and orders them by investment forecast in descending order, analyzing whether high-growth nations also have strong investment projections.

![09](https://github.com/user-attachments/assets/63db787d-a675-492a-a70b-5d41576b7eaa)


**All economic indicators for each country in a unified view**

This query analyzes whether high-growth countries also have high investment forecasts by selecting those with an economic growth forecast above 6% and ordering them by investment forecast in descending order, with a visual representation comparing the two metrics across nations.

![10](https://github.com/user-attachments/assets/6391a117-a227-4e5f-9ef7-148b65d8cd3b)


* In conclusion from ``SQL`` queries I can say the dataset reveals significant variations in economic forecasts across countries, highlighting regions with strong projected growth as well as those facing fiscal challenges.



## ``Power BI`` Dashboard


###   IMF Global Economic Outlook: 2023 Forecast

![Screenshot 2025-06-07 203138](https://github.com/user-attachments/assets/4bc8bb23-7da4-4350-a4d7-7e999a328d1d)



*  Ultimately, at the end, I could say, this ``Power BI`` workflow successfully consolidates complex economic forecasts into a user-friendly and interactive dashboard. This provides a clear, dynamic overview, empowering stakeholders to gain swift insights and make more informed decisions about global economic trends.


**``This end-to-end implementation established a robust and scalable data analytics pipeline, successfully transforming raw data into actionable intelligence crucial for enhanced business intelligence and strategic decision-making.``**











