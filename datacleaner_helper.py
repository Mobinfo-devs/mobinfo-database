
import sys
import pandas as pd
import re

def clean_cams(cams_string):
    def get_last_num_from_str(s):
        if s.isdigit():
            return s

        all_nums = []
        current_num = ""
        for x in s:
            if x.isdigit():
                current_num += x
            elif x == " " and current_num != "":
                all_nums.append(current_num)
                current_num = ""

        return all_nums[-1]

    cams_lst = []
    previous_mp_index = 0
    current_mp_index = cams_string.find("MP")
    while current_mp_index != -1:  # all MPS exhausted
        current_cam = cams_string[previous_mp_index : current_mp_index]
        current_cam = get_last_num_from_str(current_cam)
        current_cam = re.sub("[^0-9]", "", current_cam)
        current_cam = int(current_cam)
        cams_lst.append(current_cam)
        previous_mp_index = current_mp_index + 2
        current_mp_index = cams_string.find("MP", current_mp_index + 2)
    return cams_lst

# df1 = pd.read_excel("MobileDB.xlsx")

# rear_cams = (df1["Front"])
# # rear_cams = rear_cams.apply(lambda cams_str: cams_str.split("+"))  # seperate every camera for every row (based on +)
# # # rear_cams = rear_cams.apply(lambda cams_lst: [cam[ cam.find("+") + 1 : ] for cam in cams_lst])  # seperate every camera for every row (based on +)
# # rear_cams = rear_cams.apply(lambda cam_list: [
# #     (
# #         re.sub("[^0-9]", "", cam[:cam.find("MP")])
# #     )
# #     for cam in cam_list])  # for every seperate camera string, truncate it at "MP", remove non numeric chars (re) and convert to int to get MPS

# rear_cams = rear_cams.apply(clean_cams)
# [print(i, (x)) for i, x in enumerate(rear_cams)]


def clean_sensors(sensors_string):
    sensors_lst = sensors_string.split(",")  # make a list of the sensors
    for i in range(len(sensors_lst)):
        sensors_lst[i] = sensors_lst[i].capitalize()  # make first char capital, rest lowercase
        if "(" in sensors_lst[i]:
            sensors_lst[i] = sensors_lst[i][ : sensors_lst[i].find("(")]  # slice up the string till just before open parenthis 
    return sensors_lst

