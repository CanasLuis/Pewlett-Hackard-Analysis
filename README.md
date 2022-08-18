# Pewlett-Hackard-Analysis
##Overview of the analysis
We have different .csv files with the employees detail, those tables alone doesn´t say  much but we will be working with them and SQL in order to combine them and be able to obtain more information that can help the company to know better the status of its employees and what is comming in the near future. 

##Results
Once we joined a couple of tables we can have full detail of the information, the request is to see how many employees will be retiring and their titles, in addition to that, we can see which employees can be eligible for mentorship program, so the younger employees can learn from the ones with more experience that are about to retire.

-First we can obtain the full list of employees about to retire.  

![retirement_titles](https://user-images.githubusercontent.com/108499271/185421046-7e794d20-82b6-4e89-a13e-c966d8c014d1.png)


-In the previous table can see we have duplicated employee numbers because some of the workers had change the position but keep their employee number. So we will clean the table with the latest title they have.With the query made in posgresql we  the company from different areas:

![retiring_titles](https://user-images.githubusercontent.com/108499271/185410900-f2764bf5-bff2-49ae-a6e5-871cfb6aef4d.png)

-As shown, the main titles are Senior Engineer and Senior Staff, which is not that bad because they have a lot of experience to teach the younger employees

-Now we can obtain the employees eligible for mentorship, we have to join tables in order to have the information of current employees and also that were born in year 1965, along with the employee number, first and last name and title.
![mentorship_eligibility](https://user-images.githubusercontent.com/108499271/185419321-b41e129b-cbfd-4cfb-88f8-abfb1ee8c916.png)

##Summary
-We did a lot by joining tables, since we had different information in different tables, at the end the information obtained can give us more knowledge. There are a considerable amount of workers about to retire, however its very good that the company is using their experience to teach and younger employees. The company has a plan already for the upcoming future, with is a pretty good decision, future will be in good hands.
-Its important to also know which areas would be more affected with the retirement, so company can be prepared and focus on those who are loosing more employees. 
-Finally, the younger employees might not be enough so there would have to be hirings and people with fresh blood can join the company that has shown that there is chance to be promoted as we saw in the tables employees that started from assistans and now they are Senio Engenieers. Some of the currernt employees might be promoted now.

