{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "6bd07217",
   "metadata": {
    "papermill": {
     "duration": 0.003254,
     "end_time": "2023-12-22T08:55:46.913117",
     "exception": false,
     "start_time": "2023-12-22T08:55:46.909863",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#  Table of Contents\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a24a3b9b",
   "metadata": {
    "papermill": {
     "duration": 0.002623,
     "end_time": "2023-12-22T08:55:46.918618",
     "exception": false,
     "start_time": "2023-12-22T08:55:46.915995",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "##  About the Company\n",
    "\n",
    "Bellabeat is a successful small company specialising in creating health-focused products for women, utilising advanced technology. Although they have succeeded, they can expand and become a significant player in the worldwide smart device market. Urška Sršen, one of the co-founders and the Chief Creative Officer at Bellabeat, thinks that examining data from fitness-related smart devices could open up new possibilities for the company's growth."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "28cddb3a",
   "metadata": {
    "papermill": {
     "duration": 0.002516,
     "end_time": "2023-12-22T08:55:46.923640",
     "exception": false,
     "start_time": "2023-12-22T08:55:46.921124",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Questions to Ask\n",
    "\n",
    "1. What are some trends in smart device usage?\n",
    "2. How could these trends apply to Bellabeat customers?\n",
    "3. How could these trends help influence Bellabeat's marketing strategy?"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "00a51ee5",
   "metadata": {
    "papermill": {
     "duration": 0.002414,
     "end_time": "2023-12-22T08:55:46.928496",
     "exception": false,
     "start_time": "2023-12-22T08:55:46.926082",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## The Business Task\n",
    "\n",
    "Find potential chances for growth and suggest ways to enhance Bellabeat's marketing strategy by considering trends in the use of smart devices."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "22bcae9f",
   "metadata": {
    "papermill": {
     "duration": 0.002355,
     "end_time": "2023-12-22T08:55:46.933296",
     "exception": false,
     "start_time": "2023-12-22T08:55:46.930941",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Packages to load\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "8316a848",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-12-22T08:55:46.942219Z",
     "iopub.status.busy": "2023-12-22T08:55:46.940106Z",
     "iopub.status.idle": "2023-12-22T08:55:48.125593Z",
     "shell.execute_reply": "2023-12-22T08:55:48.123735Z"
    },
    "papermill": {
     "duration": 1.192466,
     "end_time": "2023-12-22T08:55:48.128141",
     "exception": false,
     "start_time": "2023-12-22T08:55:46.935675",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching core tidyverse packages\u001b[22m ──────────────────────── tidyverse 2.0.0 ──\n",
      "\u001b[32m✔\u001b[39m \u001b[34mdplyr    \u001b[39m 1.1.4     \u001b[32m✔\u001b[39m \u001b[34mreadr    \u001b[39m 2.1.4\n",
      "\u001b[32m✔\u001b[39m \u001b[34mforcats  \u001b[39m 1.0.0     \u001b[32m✔\u001b[39m \u001b[34mstringr  \u001b[39m 1.5.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2  \u001b[39m 3.4.4     \u001b[32m✔\u001b[39m \u001b[34mtibble   \u001b[39m 3.2.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mlubridate\u001b[39m 1.9.3     \u001b[32m✔\u001b[39m \u001b[34mtidyr    \u001b[39m 1.3.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mpurrr    \u001b[39m 1.0.2     \n",
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\u001b[36mℹ\u001b[39m Use the conflicted package (\u001b[3m\u001b[34m<http://conflicted.r-lib.org/>\u001b[39m\u001b[23m) to force all conflicts to become errors\n"
     ]
    }
   ],
   "source": [
    "library(tidyverse)\n",
    "library(lubridate)\n",
    "library(dplyr)\n",
    "library(ggplot2)\n",
    "library(tidyr)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c2c16293",
   "metadata": {
    "papermill": {
     "duration": 0.002804,
     "end_time": "2023-12-22T08:55:48.133864",
     "exception": false,
     "start_time": "2023-12-22T08:55:48.131060",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Importing the required datasets\n",
    "\n",
    "For this project, I will use FitBit Fitness Tracker [Data](https://www.kaggle.com/datasets/arashnic/fitbit)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "8c62a8e9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-12-22T08:55:48.172241Z",
     "iopub.status.busy": "2023-12-22T08:55:48.141270Z",
     "iopub.status.idle": "2023-12-22T08:55:48.339687Z",
     "shell.execute_reply": "2023-12-22T08:55:48.337803Z"
    },
    "papermill": {
     "duration": 0.205761,
     "end_time": "2023-12-22T08:55:48.342294",
     "exception": false,
     "start_time": "2023-12-22T08:55:48.136533",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "activity <- read.csv(\"../input/fitbit/Fitabase Data 4.12.16-5.12.16/dailyActivity_merged.csv\")\n",
    "calories <- read.csv(\"../input/fitbit/Fitabase Data 4.12.16-5.12.16/hourlyCalories_merged.csv\")\n",
    "intensities <- read.csv(\"../input/fitbit/Fitabase Data 4.12.16-5.12.16/hourlyIntensities_merged.csv\")\n",
    "sleep <- read.csv(\"../input/fitbit/Fitabase Data 4.12.16-5.12.16/sleepDay_merged.csv\")\n",
    "weight <- read.csv(\"../input/fitbit/Fitabase Data 4.12.16-5.12.16/weightLogInfo_merged.csv\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4f4aac79",
   "metadata": {
    "papermill": {
     "duration": 0.002655,
     "end_time": "2023-12-22T08:55:48.347784",
     "exception": false,
     "start_time": "2023-12-22T08:55:48.345129",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "To ensure it is the required datasets that are correctly imported I will use the functions(view) and (head)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "d0199123",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-12-22T08:55:48.356397Z",
     "iopub.status.busy": "2023-12-22T08:55:48.354793Z",
     "iopub.status.idle": "2023-12-22T08:55:48.404539Z",
     "shell.execute_reply": "2023-12-22T08:55:48.402347Z"
    },
    "papermill": {
     "duration": 0.056763,
     "end_time": "2023-12-22T08:55:48.407104",
     "exception": false,
     "start_time": "2023-12-22T08:55:48.350341",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 15</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Id</th><th scope=col>ActivityDate</th><th scope=col>TotalSteps</th><th scope=col>TotalDistance</th><th scope=col>TrackerDistance</th><th scope=col>LoggedActivitiesDistance</th><th scope=col>VeryActiveDistance</th><th scope=col>ModeratelyActiveDistance</th><th scope=col>LightActiveDistance</th><th scope=col>SedentaryActiveDistance</th><th scope=col>VeryActiveMinutes</th><th scope=col>FairlyActiveMinutes</th><th scope=col>LightlyActiveMinutes</th><th scope=col>SedentaryMinutes</th><th scope=col>Calories</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>1503960366</td><td>4/12/2016</td><td>13162</td><td>8.50</td><td>8.50</td><td>0</td><td>1.88</td><td>0.55</td><td>6.06</td><td>0</td><td>25</td><td>13</td><td>328</td><td> 728</td><td>1985</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>1503960366</td><td>4/13/2016</td><td>10735</td><td>6.97</td><td>6.97</td><td>0</td><td>1.57</td><td>0.69</td><td>4.71</td><td>0</td><td>21</td><td>19</td><td>217</td><td> 776</td><td>1797</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>1503960366</td><td>4/14/2016</td><td>10460</td><td>6.74</td><td>6.74</td><td>0</td><td>2.44</td><td>0.40</td><td>3.91</td><td>0</td><td>30</td><td>11</td><td>181</td><td>1218</td><td>1776</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>1503960366</td><td>4/15/2016</td><td> 9762</td><td>6.28</td><td>6.28</td><td>0</td><td>2.14</td><td>1.26</td><td>2.83</td><td>0</td><td>29</td><td>34</td><td>209</td><td> 726</td><td>1745</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>1503960366</td><td>4/16/2016</td><td>12669</td><td>8.16</td><td>8.16</td><td>0</td><td>2.71</td><td>0.41</td><td>5.04</td><td>0</td><td>36</td><td>10</td><td>221</td><td> 773</td><td>1863</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>1503960366</td><td>4/17/2016</td><td> 9705</td><td>6.48</td><td>6.48</td><td>0</td><td>3.19</td><td>0.78</td><td>2.51</td><td>0</td><td>38</td><td>20</td><td>164</td><td> 539</td><td>1728</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 15\n",
       "\\begin{tabular}{r|lllllllllllllll}\n",
       "  & Id & ActivityDate & TotalSteps & TotalDistance & TrackerDistance & LoggedActivitiesDistance & VeryActiveDistance & ModeratelyActiveDistance & LightActiveDistance & SedentaryActiveDistance & VeryActiveMinutes & FairlyActiveMinutes & LightlyActiveMinutes & SedentaryMinutes & Calories\\\\\n",
       "  & <dbl> & <chr> & <int> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <int> & <int> & <int> & <int> & <int>\\\\\n",
       "\\hline\n",
       "\t1 & 1503960366 & 4/12/2016 & 13162 & 8.50 & 8.50 & 0 & 1.88 & 0.55 & 6.06 & 0 & 25 & 13 & 328 &  728 & 1985\\\\\n",
       "\t2 & 1503960366 & 4/13/2016 & 10735 & 6.97 & 6.97 & 0 & 1.57 & 0.69 & 4.71 & 0 & 21 & 19 & 217 &  776 & 1797\\\\\n",
       "\t3 & 1503960366 & 4/14/2016 & 10460 & 6.74 & 6.74 & 0 & 2.44 & 0.40 & 3.91 & 0 & 30 & 11 & 181 & 1218 & 1776\\\\\n",
       "\t4 & 1503960366 & 4/15/2016 &  9762 & 6.28 & 6.28 & 0 & 2.14 & 1.26 & 2.83 & 0 & 29 & 34 & 209 &  726 & 1745\\\\\n",
       "\t5 & 1503960366 & 4/16/2016 & 12669 & 8.16 & 8.16 & 0 & 2.71 & 0.41 & 5.04 & 0 & 36 & 10 & 221 &  773 & 1863\\\\\n",
       "\t6 & 1503960366 & 4/17/2016 &  9705 & 6.48 & 6.48 & 0 & 3.19 & 0.78 & 2.51 & 0 & 38 & 20 & 164 &  539 & 1728\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 15\n",
       "\n",
       "| <!--/--> | Id &lt;dbl&gt; | ActivityDate &lt;chr&gt; | TotalSteps &lt;int&gt; | TotalDistance &lt;dbl&gt; | TrackerDistance &lt;dbl&gt; | LoggedActivitiesDistance &lt;dbl&gt; | VeryActiveDistance &lt;dbl&gt; | ModeratelyActiveDistance &lt;dbl&gt; | LightActiveDistance &lt;dbl&gt; | SedentaryActiveDistance &lt;dbl&gt; | VeryActiveMinutes &lt;int&gt; | FairlyActiveMinutes &lt;int&gt; | LightlyActiveMinutes &lt;int&gt; | SedentaryMinutes &lt;int&gt; | Calories &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | 1503960366 | 4/12/2016 | 13162 | 8.50 | 8.50 | 0 | 1.88 | 0.55 | 6.06 | 0 | 25 | 13 | 328 |  728 | 1985 |\n",
       "| 2 | 1503960366 | 4/13/2016 | 10735 | 6.97 | 6.97 | 0 | 1.57 | 0.69 | 4.71 | 0 | 21 | 19 | 217 |  776 | 1797 |\n",
       "| 3 | 1503960366 | 4/14/2016 | 10460 | 6.74 | 6.74 | 0 | 2.44 | 0.40 | 3.91 | 0 | 30 | 11 | 181 | 1218 | 1776 |\n",
       "| 4 | 1503960366 | 4/15/2016 |  9762 | 6.28 | 6.28 | 0 | 2.14 | 1.26 | 2.83 | 0 | 29 | 34 | 209 |  726 | 1745 |\n",
       "| 5 | 1503960366 | 4/16/2016 | 12669 | 8.16 | 8.16 | 0 | 2.71 | 0.41 | 5.04 | 0 | 36 | 10 | 221 |  773 | 1863 |\n",
       "| 6 | 1503960366 | 4/17/2016 |  9705 | 6.48 | 6.48 | 0 | 3.19 | 0.78 | 2.51 | 0 | 38 | 20 | 164 |  539 | 1728 |\n",
       "\n"
      ],
      "text/plain": [
       "  Id         ActivityDate TotalSteps TotalDistance TrackerDistance\n",
       "1 1503960366 4/12/2016    13162      8.50          8.50           \n",
       "2 1503960366 4/13/2016    10735      6.97          6.97           \n",
       "3 1503960366 4/14/2016    10460      6.74          6.74           \n",
       "4 1503960366 4/15/2016     9762      6.28          6.28           \n",
       "5 1503960366 4/16/2016    12669      8.16          8.16           \n",
       "6 1503960366 4/17/2016     9705      6.48          6.48           \n",
       "  LoggedActivitiesDistance VeryActiveDistance ModeratelyActiveDistance\n",
       "1 0                        1.88               0.55                    \n",
       "2 0                        1.57               0.69                    \n",
       "3 0                        2.44               0.40                    \n",
       "4 0                        2.14               1.26                    \n",
       "5 0                        2.71               0.41                    \n",
       "6 0                        3.19               0.78                    \n",
       "  LightActiveDistance SedentaryActiveDistance VeryActiveMinutes\n",
       "1 6.06                0                       25               \n",
       "2 4.71                0                       21               \n",
       "3 3.91                0                       30               \n",
       "4 2.83                0                       29               \n",
       "5 5.04                0                       36               \n",
       "6 2.51                0                       38               \n",
       "  FairlyActiveMinutes LightlyActiveMinutes SedentaryMinutes Calories\n",
       "1 13                  328                   728             1985    \n",
       "2 19                  217                   776             1797    \n",
       "3 11                  181                  1218             1776    \n",
       "4 34                  209                   726             1745    \n",
       "5 10                  221                   773             1863    \n",
       "6 20                  164                   539             1728    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(activity)"
   ]
  }
 ],
 "metadata": {
  "kaggle": {
   "accelerator": "none",
   "dataSources": [
    {
     "datasetId": 1041311,
     "sourceId": 1752235,
     "sourceType": "datasetVersion"
    }
   ],
   "dockerImageVersionId": 30618,
   "isGpuEnabled": false,
   "isInternetEnabled": true,
   "language": "r",
   "sourceType": "notebook"
  },
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 5.149928,
   "end_time": "2023-12-22T08:55:48.532194",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2023-12-22T08:55:43.382266",
   "version": "2.5.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
