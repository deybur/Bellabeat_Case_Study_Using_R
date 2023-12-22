{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "40c6bbc1",
   "metadata": {
    "papermill": {
     "duration": 0.006329,
     "end_time": "2023-12-22T09:17:40.949420",
     "exception": false,
     "start_time": "2023-12-22T09:17:40.943091",
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
   "id": "01fc72f0",
   "metadata": {
    "papermill": {
     "duration": 0.005209,
     "end_time": "2023-12-22T09:17:40.960057",
     "exception": false,
     "start_time": "2023-12-22T09:17:40.954848",
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
   "id": "4fe2bf26",
   "metadata": {
    "papermill": {
     "duration": 0.005135,
     "end_time": "2023-12-22T09:17:40.970304",
     "exception": false,
     "start_time": "2023-12-22T09:17:40.965169",
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
   "id": "0e25302d",
   "metadata": {
    "papermill": {
     "duration": 0.005048,
     "end_time": "2023-12-22T09:17:40.980375",
     "exception": false,
     "start_time": "2023-12-22T09:17:40.975327",
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
   "id": "ec4ba430",
   "metadata": {
    "papermill": {
     "duration": 0.005022,
     "end_time": "2023-12-22T09:17:40.990622",
     "exception": false,
     "start_time": "2023-12-22T09:17:40.985600",
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
   "id": "51a272b5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-12-22T09:17:41.006614Z",
     "iopub.status.busy": "2023-12-22T09:17:41.003572Z",
     "iopub.status.idle": "2023-12-22T09:17:42.553138Z",
     "shell.execute_reply": "2023-12-22T09:17:42.550625Z"
    },
    "papermill": {
     "duration": 1.560915,
     "end_time": "2023-12-22T09:17:42.556679",
     "exception": false,
     "start_time": "2023-12-22T09:17:40.995764",
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
   "id": "d42c2266",
   "metadata": {
    "papermill": {
     "duration": 0.005661,
     "end_time": "2023-12-22T09:17:42.567956",
     "exception": false,
     "start_time": "2023-12-22T09:17:42.562295",
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
   "id": "0a390472",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-12-22T09:17:42.621835Z",
     "iopub.status.busy": "2023-12-22T09:17:42.582022Z",
     "iopub.status.idle": "2023-12-22T09:17:42.801799Z",
     "shell.execute_reply": "2023-12-22T09:17:42.799419Z"
    },
    "papermill": {
     "duration": 0.232155,
     "end_time": "2023-12-22T09:17:42.805841",
     "exception": false,
     "start_time": "2023-12-22T09:17:42.573686",
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
   "id": "e6e31ed5",
   "metadata": {
    "papermill": {
     "duration": 0.005538,
     "end_time": "2023-12-22T09:17:42.816958",
     "exception": false,
     "start_time": "2023-12-22T09:17:42.811420",
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
   "id": "e771f4e2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-12-22T09:17:42.833117Z",
     "iopub.status.busy": "2023-12-22T09:17:42.830819Z",
     "iopub.status.idle": "2023-12-22T09:17:42.898052Z",
     "shell.execute_reply": "2023-12-22T09:17:42.894902Z"
    },
    "papermill": {
     "duration": 0.079622,
     "end_time": "2023-12-22T09:17:42.901966",
     "exception": false,
     "start_time": "2023-12-22T09:17:42.822344",
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
  },
  {
   "cell_type": "markdown",
   "id": "4b14fa80",
   "metadata": {
    "papermill": {
     "duration": 0.005908,
     "end_time": "2023-12-22T09:17:42.913792",
     "exception": false,
     "start_time": "2023-12-22T09:17:42.907884",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The timestamp data needs to be adjusted because it has some errors. So before analysis, I need to convert it to date time format and split to date and time."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "86b502f6",
   "metadata": {
    "papermill": {
     "duration": 0.006126,
     "end_time": "2023-12-22T09:17:42.925779",
     "exception": false,
     "start_time": "2023-12-22T09:17:42.919653",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Getting Formatting Done"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "5b84fbdd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-12-22T09:17:42.944498Z",
     "iopub.status.busy": "2023-12-22T09:17:42.942299Z",
     "iopub.status.idle": "2023-12-22T09:17:43.094131Z",
     "shell.execute_reply": "2023-12-22T09:17:43.091782Z"
    },
    "papermill": {
     "duration": 0.165866,
     "end_time": "2023-12-22T09:17:43.097480",
     "exception": false,
     "start_time": "2023-12-22T09:17:42.931614",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# activity\n",
    "activity$ActivityDate=as.POSIXct(activity$ActivityDate, format=\"%m/%d/%Y\", tz=Sys.timezone())\n",
    "activity$date <- format(activity$ActivityDate, format = \"%m/%d/%y\")\n",
    "\n",
    "# calories\n",
    "calories$ActivityHour=as.POSIXct(calories$ActivityHour, format=\"%m/%d/%Y %I:%M:%S %p\", tz=Sys.timezone())\n",
    "calories$time <- format(calories$ActivityHour, format = \"%H:%M:%S\")\n",
    "calories$date <- format(calories$ActivityHour, format = \"%m/%d/%y\")\n",
    "\n",
    "# intensities\n",
    "intensities$ActivityHour=as.POSIXct(intensities$ActivityHour, format=\"%m/%d/%Y %I:%M:%S %p\", tz=Sys.timezone())\n",
    "intensities$time <- format(intensities$ActivityHour, format = \"%H:%M:%S\")\n",
    "intensities$date <- format(intensities$ActivityHour, format = \"%m/%d/%y\")\n",
    "\n",
    "# sleep\n",
    "sleep$SleepDay=as.POSIXct(sleep$SleepDay, format=\"%m/%d/%Y %I:%M:%S %p\", tz=Sys.timezone())\n",
    "sleep$date <- format(sleep$SleepDay, format = \"%m/%d/%y\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "945125df",
   "metadata": {
    "papermill": {
     "duration": 0.006306,
     "end_time": "2023-12-22T09:17:43.109775",
     "exception": false,
     "start_time": "2023-12-22T09:17:43.103469",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Exploring and summarising data"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "0b5f5829",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-12-22T09:17:43.126450Z",
     "iopub.status.busy": "2023-12-22T09:17:43.124191Z",
     "iopub.status.idle": "2023-12-22T09:17:43.184576Z",
     "shell.execute_reply": "2023-12-22T09:17:43.182255Z"
    },
    "papermill": {
     "duration": 0.071979,
     "end_time": "2023-12-22T09:17:43.187657",
     "exception": false,
     "start_time": "2023-12-22T09:17:43.115678",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "33"
      ],
      "text/latex": [
       "33"
      ],
      "text/markdown": [
       "33"
      ],
      "text/plain": [
       "[1] 33"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "33"
      ],
      "text/latex": [
       "33"
      ],
      "text/markdown": [
       "33"
      ],
      "text/plain": [
       "[1] 33"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "33"
      ],
      "text/latex": [
       "33"
      ],
      "text/markdown": [
       "33"
      ],
      "text/plain": [
       "[1] 33"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "24"
      ],
      "text/latex": [
       "24"
      ],
      "text/markdown": [
       "24"
      ],
      "text/plain": [
       "[1] 24"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "8"
      ],
      "text/latex": [
       "8"
      ],
      "text/markdown": [
       "8"
      ],
      "text/plain": [
       "[1] 8"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "n_distinct(activity$Id)\n",
    "\n",
    "n_distinct(calories$Id)\n",
    "\n",
    "n_distinct(intensities$Id)\n",
    "\n",
    "n_distinct(sleep$Id)\n",
    "\n",
    "n_distinct(weight$Id)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fab22fb8",
   "metadata": {
    "papermill": {
     "duration": 0.007309,
     "end_time": "2023-12-22T09:17:43.202088",
     "exception": false,
     "start_time": "2023-12-22T09:17:43.194779",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The activity, calories, and intensities datasets have 33 participants, the sleep dataset has 24 participants, and the weight dataset has only 8 participants. The limited number of participants in the weighted dataset (8) is insufficient to draw meaningful recommendations or conclusions based on this data.\n",
    "\n",
    "I will examine the summary statistics of the datasets below:"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "980f5a85",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-12-22T09:17:43.221225Z",
     "iopub.status.busy": "2023-12-22T09:17:43.219086Z",
     "iopub.status.idle": "2023-12-22T09:17:43.384566Z",
     "shell.execute_reply": "2023-12-22T09:17:43.382182Z"
    },
    "papermill": {
     "duration": 0.178498,
     "end_time": "2023-12-22T09:17:43.387744",
     "exception": false,
     "start_time": "2023-12-22T09:17:43.209246",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   TotalSteps    TotalDistance    SedentaryMinutes    Calories   \n",
       " Min.   :    0   Min.   : 0.000   Min.   :   0.0   Min.   :   0  \n",
       " 1st Qu.: 3790   1st Qu.: 2.620   1st Qu.: 729.8   1st Qu.:1828  \n",
       " Median : 7406   Median : 5.245   Median :1057.5   Median :2134  \n",
       " Mean   : 7638   Mean   : 5.490   Mean   : 991.2   Mean   :2304  \n",
       " 3rd Qu.:10727   3rd Qu.: 7.713   3rd Qu.:1229.5   3rd Qu.:2793  \n",
       " Max.   :36019   Max.   :28.030   Max.   :1440.0   Max.   :4900  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/plain": [
       " VeryActiveMinutes FairlyActiveMinutes LightlyActiveMinutes\n",
       " Min.   :  0.00    Min.   :  0.00      Min.   :  0.0       \n",
       " 1st Qu.:  0.00    1st Qu.:  0.00      1st Qu.:127.0       \n",
       " Median :  4.00    Median :  6.00      Median :199.0       \n",
       " Mean   : 21.16    Mean   : 13.56      Mean   :192.8       \n",
       " 3rd Qu.: 32.00    3rd Qu.: 19.00      3rd Qu.:264.0       \n",
       " Max.   :210.00    Max.   :143.00      Max.   :518.0       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/plain": [
       "    Calories     \n",
       " Min.   : 42.00  \n",
       " 1st Qu.: 63.00  \n",
       " Median : 83.00  \n",
       " Mean   : 97.39  \n",
       " 3rd Qu.:108.00  \n",
       " Max.   :948.00  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/plain": [
       " TotalSleepRecords TotalMinutesAsleep TotalTimeInBed \n",
       " Min.   :1.000     Min.   : 58.0      Min.   : 61.0  \n",
       " 1st Qu.:1.000     1st Qu.:361.0      1st Qu.:403.0  \n",
       " Median :1.000     Median :433.0      Median :463.0  \n",
       " Mean   :1.119     Mean   :419.5      Mean   :458.6  \n",
       " 3rd Qu.:1.000     3rd Qu.:490.0      3rd Qu.:526.0  \n",
       " Max.   :3.000     Max.   :796.0      Max.   :961.0  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/plain": [
       "    WeightKg           BMI       \n",
       " Min.   : 52.60   Min.   :21.45  \n",
       " 1st Qu.: 61.40   1st Qu.:23.96  \n",
       " Median : 62.50   Median :24.39  \n",
       " Mean   : 72.04   Mean   :25.19  \n",
       " 3rd Qu.: 85.05   3rd Qu.:25.56  \n",
       " Max.   :133.50   Max.   :47.54  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# activity\n",
    "activity %>%  \n",
    "  select(TotalSteps,\n",
    "         TotalDistance,\n",
    "         SedentaryMinutes, Calories) %>%\n",
    "  summary()\n",
    "\n",
    "# explore num of active minutes per category\n",
    "activity %>%\n",
    "  select(VeryActiveMinutes, FairlyActiveMinutes, LightlyActiveMinutes) %>%\n",
    "  summary()\n",
    "\n",
    "# calories\n",
    "calories %>%\n",
    "  select(Calories) %>%\n",
    "  summary()\n",
    "\n",
    "# sleep\n",
    "sleep %>%\n",
    "  select(TotalSleepRecords, TotalMinutesAsleep, TotalTimeInBed) %>%\n",
    "  summary()\n",
    "\n",
    "# weight\n",
    "weight %>%\n",
    "  select(WeightKg, BMI) %>%\n",
    "  summary()"
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
   "duration": 6.799751,
   "end_time": "2023-12-22T09:17:43.522079",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2023-12-22T09:17:36.722328",
   "version": "2.5.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
