from utils.query_database import QueryDatabase
import plotly.express as px
import streamlit as st 

class ViewsTrend:
    def __init__(self) -> None:
        self.df = QueryDatabase("SELECT * FROM marts.views_per_date").df
        print(self.df)

    def display_plot(self):
        fig = px.line(self.df, x="Datum", y="Visningar")
        st.markdown("## Antal visningar under senaste månaden")
        st.plotly_chart(fig)


class SubsTrend:
    def __init__(self) -> None:
        self.df = QueryDatabase("SELECT * FROM marts.sub_vs_not_sub").df
        print(self.df)
    def display_sub_trend(self):
        fig = px.line(self.df, 
                   x="Datum", 
                   y=["Prenumererar", "Prenumererar_inte"],  # Use a list for multiple y values
                   labels={"value": "Antal prenumerationer", "variable": "Prenumerationsstatus"},  # Label customization
                   title="Antal prenumeranter per dag vs inte prenumeranter")  # Add a title for the plot
    
        st.markdown("## Antal prenumeranter per dag vs inte prenumeranter")
        st.plotly_chart(fig)
# create more graphs here

