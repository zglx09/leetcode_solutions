# https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/submissions/1330179083/?envType=study-plan-v2&envId=top-sql-50

import pandas as pd

def count_unique_subjects(teacher: pd.DataFrame) -> pd.DataFrame:
    return teacher.groupby('teacher_id')['subject_id'].nunique().reset_index()[['teacher_id', 'subject_id']].rename(columns={'subject_id':'cnt'})
