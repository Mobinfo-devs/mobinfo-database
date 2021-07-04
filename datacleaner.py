import pandas as pd
import re

# read the csv file
df1 = pd.read_excel("MobileDB.xlsx")
# print(df1.info())

# make an empty dataframe to store the cleaned data
df2 = pd.DataFrame(columns=["brand_name", "name", "os", "weight_grams", "cpu", "chipset", "display_technology",
                   "screen_size_inches", "display_resolution", "extra_display_features", "built_in_memory", "ram", "battery_capacity_mah",
                   "front_cameras", "rear_cameras"])
# print(df2)

# get brand name from full name (slice from start to just before first space)
df2["brand_name"] = df1["Name"].apply(lambda name: name[: name.index(" ")])

# get phone_name from full name (slice from just after first space to end of full name)
df2["name"] = df1["Name"].apply(lambda name: name[name.index(" ")+1:])

# OS (new) = OS (old) + UI (old)
df2["os"] = df1[["OS", "UI"]].apply(lambda x: ', '.join(x.dropna()), axis=1)
# df2["os"] = df1["OS"].apply(lambda os: os + (f", {df1['UI']}" if df1["UI"] is not None else ""))
# print(df1["OS"] + (", "+ df1["UI"] if df1["UI"] else "None") )

# weight_grams (new) = Weight (old) (removed "g" and converted to int)
df2["weight_grams"] = df1["Weight"].apply(lambda x: int(x[:-1]))

# new cpu, chipset and display technology == old cpu, chipset and display_technology
df2["cpu"] = df1["CPU"]
df2["chipset"] = df1["Chipset"]
df2["display_technology"] = df1["Technology"]

# screen_size_inches (new) = Size (old) (converted to float)
df2["screen_size_inches"] = df1["Size"].apply(
    lambda x: float(x[: -len("Inches")]))

# new display_resolution, extra_display_features = old Resolution, Extra Features
df2["display_resolution"] = df1["Resolution"]
df2["extra_display_features"] = df1["Extra Features"]

# memory probs
# df2["built_in_memory"] = df1["Built-in"].apply(lambda x: int(x[:x.index("GB")]))
# df2["ram"] = df1["Built-in"].apply(lambda x: int(x[x.index("GB"): x.index("GB", x.index("GB"))]))
# print(df2[["built_in_memory", "ram"]])

# New battery capacity = numeric part from old Cpacity
df2["battery_capacity_mah"] = df1["Capacity"].apply(
    lambda x: int(re.sub("[^0-9]", "", x)))


# cleaning up rear cameras
rear_cams = (df1["Main"])
rear_cams = rear_cams.apply(lambda cams_str: cams_str.split("+"))  # seperate every camera for every row (based on +)
rear_cams = rear_cams.apply(lambda cam_list: [
    (
        re.sub("[^0-9]", "", cam[:cam.find("MP")])
    )
    for cam in cam_list])  # for every seperate camera string, truncate it at "MP", remove non numeric chars (re) and convert to int to get MPS
df2["rear_cameras"] = rear_cams
print(df2["rear_cams"][3])

# cleaning up front cameras


# Exporting the new dataframe as csv
# df2.to_csv(r'CleanedUp.csv')
