import streamlit as st 
from frontend.kpi import ContentKPI, DeviceKPI
from frontend.graphs import ViewsTrend, SubsTrend


device_kpi = DeviceKPI()
content_kpi = ContentKPI()
views_graph = ViewsTrend()
subs_graph = SubsTrend()

def layout():
    st.markdown("# The data driven youtuber")
    st.markdown("Den här dashboarden syftar till att utforska datan i min youtubekanal")
    # device_kpi.display_device_views()
    # device_kpi.display_device_summary()
    device_kpi.display_subs()
    subs_graph.display_sub_trend()

if __name__ == "__main__":
    layout()