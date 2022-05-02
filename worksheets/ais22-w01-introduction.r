{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "rough-combat",
   "metadata": {
    "id": "19WySn1P8V1U",
    "papermill": {
     "duration": 0.021183,
     "end_time": "2022-05-02T12:10:00.545634",
     "exception": false,
     "start_time": "2022-05-02T12:10:00.524451",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "*Analytical Information Systems*\n",
    "\n",
    "# Introduction to Jupyter and R Analytic Pipelines\n",
    "\n",
    "Matthias Griebel<br>\n",
    "Chair of Information Systems and Business Analytics \n",
    "\n",
    "SS 2022\n",
    "\n",
    "***\n",
    "\n",
    "# Table of Contents\n",
    "\n",
    "* [1. Jupyter and R Working Environment](#jupyter_and_r)\n",
    "  * [1.1. The Jupyter Notebook](#notebook)\n",
    "  * [1.2. Kaggle Notebooks](#kaggle_notebooks)\n",
    "  * [1.3. Local Installation](#local_install)\n",
    "* [2. R Programming Basics](#r_programming)\n",
    "  * [2.1. Getting Help](#help)\n",
    "  * [2.2. Operators in R](#r_operators)\n",
    "* [3. Analytic Pipelines](#analytic_pipelines)\n",
    "  * [3.1. Progamming Example](#pe)\n",
    "* [4. Recommended Books](#recommended_books)\n",
    "\n",
    "## 1. Jupyter and R Working Environment\n",
    "<a id=\"jupyter_and_r\"></a>\n",
    "\n",
    "__We will be using R__\n",
    "\n",
    "<img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/R_logo.svg/724px-R_logo.svg.png\" width=\"200\">\n",
    "\n",
    "\n",
    "R is not the only language that can be used for data analysis. Why R rather than another?\n",
    "- interactive language\n",
    "- data structures & functions\n",
    "- graphics\n",
    "- packages & community!\n",
    "\n",
    "__... and tidyverse__\n",
    "\n",
    "<img src=\"https://github.com/matjesg/AIS_2019/raw/master/notebooks/images/01/ecosystem.png\" width=\"300\">\n",
    "\n",
    "The [tidyverse](https://www.tidyverse.org) is a collection of R packages that share common philosophies and are designed to work together.\n",
    "\n",
    "- Reuse existing data structures\n",
    "- Compose simple functions with the pipe\n",
    "- Embrace functional programming\n",
    "- Design for humans\n",
    "\n",
    "__... within the Jupyter Ecosystem__\n",
    "\n",
    "Project Jupyter exists to develop open-source software, open-standards, and services for interactive computing across dozens of programming languages (https://jupyter.org/).\n",
    "\n",
    "### 1.1. The Jupyter Notebook (this!)\n",
    "<a id=\"notebook\"></a>\n",
    "\n",
    "- open-source web application \n",
    "- create and share documents that contain\n",
    "    - live code and narrative text\n",
    "    - data cleaning and transformation\n",
    "    - numerical simulation\n",
    "    - statistical modeling \n",
    "    - data visualization\n",
    "    - machine learning\n",
    "    - and much more \n",
    "\n",
    "<img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Jupyter_logo.svg/250px-Jupyter_logo.svg.png\" width=\"100\">\n",
    "    \n",
    "__Jupyter Notebooks Cells__\n",
    "- A Markdown cell (this cell) contains text formatted using Markdown and displays its output in-place when it is run\n",
    "- A code cell contains code to be executed in the kernel and displays its output below\n",
    "\n",
    "Now, write and run your first code in the next cell and run the code\n",
    "```R\n",
    "string <- \"your text\"\n",
    "print(string)\n",
    "```"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "multiple-bosnia",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-02T12:10:00.592893Z",
     "iopub.status.busy": "2022-05-02T12:10:00.590566Z",
     "iopub.status.idle": "2022-05-02T12:10:00.728766Z",
     "shell.execute_reply": "2022-05-02T12:10:00.720127Z"
    },
    "id": "vqeEng-b8V1b",
    "outputId": "da18a913-3ceb-4ef2-8b74-0f765041e9e6",
    "papermill": {
     "duration": 0.162675,
     "end_time": "2022-05-02T12:10:00.728977",
     "exception": false,
     "start_time": "2022-05-02T12:10:00.566302",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"hello world\"\n"
     ]
    }
   ],
   "source": [
    "string <- \"hello world\"\n",
    "print(string)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "decent-spencer",
   "metadata": {
    "id": "UCUAEyWk8V1h",
    "papermill": {
     "duration": 0.019183,
     "end_time": "2022-05-02T12:10:00.769750",
     "exception": false,
     "start_time": "2022-05-02T12:10:00.750567",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### 1.2. Kaggle Notebooks\n",
    "<a id=\"kaggle_notebooks\"></a>\n",
    "\n",
    "There are two different types of Notebooks on Kaggle (see [Types of Notebooks](https://www.kaggle.com/docs/notebooks)):\n",
    "\n",
    "- Jupyter Notebooks (Python and R)\n",
    "- Scripts (Python and RMarkdown)\n",
    "\n",
    "With Kaggle Kaggle Notebooks we can\n",
    "- write and execute code, \n",
    "- save and share your analyses, and \n",
    "- access powerful computing resources (GPU and TPU), \n",
    "\n",
    "all for free from your browser.\n",
    "\n",
    "### 1.3. Local Installation<a id=\"local_install\"></a>\n",
    "\n",
    "You can also access and download the worksheets (notebooks) from [github](https://github.com/wi3jmu/AIS2022) and work with them locally or on your desired platform.\n",
    "- You may need to change the filetype from .r to .ipynb\n",
    "- Basic git knowledge required ;) "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "animated-clear",
   "metadata": {
    "id": "s5BPOxfq8V1j",
    "papermill": {
     "duration": 0.021338,
     "end_time": "2022-05-02T12:10:00.810421",
     "exception": false,
     "start_time": "2022-05-02T12:10:00.789083",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## 2. R Programming Basics\n",
    "<a id=\"r_programming\"></a>\n",
    "\n",
    "### 2.1. Getting Help \n",
    "<a id=\"help\"></a>\n",
    "\n",
    "![](https://pbs.twimg.com/media/En136SCXEAInQ6u?format=jpg&name=small)\n",
    "\n",
    "[Richard Campbell via Twitter](https://twitter.com/richcampbell/status/1332352909451911170?s=21)\n",
    "\n",
    "#### Cheat Sheets\n",
    "\n",
    "- Cheat sheets make it easy to learn about your favorite packages\n",
    "- [Here](https://www.rstudio.com/resources/cheatsheets/), you will find some cheat sheets\n",
    "\n",
    "#### Accessing the documentation with '?'\n",
    "\n",
    "The question mark is a simple shortcut to get help\n",
    "\n",
    "```R\n",
    "?print\n",
    "```\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "emotional-music",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-02T12:10:00.879737Z",
     "iopub.status.busy": "2022-05-02T12:10:00.850963Z",
     "iopub.status.idle": "2022-05-02T12:10:01.077527Z",
     "shell.execute_reply": "2022-05-02T12:10:01.076450Z"
    },
    "papermill": {
     "duration": 0.248907,
     "end_time": "2022-05-02T12:10:01.077685",
     "exception": false,
     "start_time": "2022-05-02T12:10:00.828778",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "?c"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "distributed-breakdown",
   "metadata": {
    "id": "iSV46rUf8V2c",
    "papermill": {
     "duration": 0.019566,
     "end_time": "2022-05-02T12:10:01.116464",
     "exception": false,
     "start_time": "2022-05-02T12:10:01.096898",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### 2.2. R Packages\n",
    "<a id=\"r_packages\"></a>\n",
    "\n",
    "Packages are the fundamental units of reproducible R code. They include reusable R functions, the documentation that describes how to use them, and sample data. \n",
    "\n",
    "Example: Install and load the *tidyverse*\n",
    "```R\n",
    "# install\n",
    "install.packages('tidyverse')\n",
    "# load\n",
    "library(tidyverse)\n",
    "```\n",
    "\n",
    "The *tidyverse* package is already pre-installed, so we just need to load it."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "complete-ceramic",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-02T12:10:01.159733Z",
     "iopub.status.busy": "2022-05-02T12:10:01.158491Z",
     "iopub.status.idle": "2022-05-02T12:10:02.555263Z",
     "shell.execute_reply": "2022-05-02T12:10:02.553311Z"
    },
    "id": "_8lo7BRy8V1l",
    "papermill": {
     "duration": 1.420016,
     "end_time": "2022-05-02T12:10:02.555847",
     "exception": false,
     "start_time": "2022-05-02T12:10:01.135831",
     "status": "completed"
    },
    "scrolled": true,
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching packages\u001b[22m ─────────────────────────────────────── tidyverse 1.3.0 ──\n",
      "\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2\u001b[39m 3.3.3     \u001b[32m✔\u001b[39m \u001b[34mpurrr  \u001b[39m 0.3.4\n",
      "\u001b[32m✔\u001b[39m \u001b[34mtibble \u001b[39m 3.1.0     \u001b[32m✔\u001b[39m \u001b[34mdplyr  \u001b[39m 1.0.5\n",
      "\u001b[32m✔\u001b[39m \u001b[34mtidyr  \u001b[39m 1.1.3     \u001b[32m✔\u001b[39m \u001b[34mstringr\u001b[39m 1.4.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mreadr  \u001b[39m 1.4.0     \u001b[32m✔\u001b[39m \u001b[34mforcats\u001b[39m 0.5.0\n",
      "\n",
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\n"
     ]
    }
   ],
   "source": [
    "library(tidyverse)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "forbidden-tuesday",
   "metadata": {
    "id": "_l0AhfQb8V1o",
    "papermill": {
     "duration": 0.019629,
     "end_time": "2022-05-02T12:10:02.597237",
     "exception": false,
     "start_time": "2022-05-02T12:10:02.577608",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### 2.3. Operators in R\n",
    "<a id=\"r_operators\"></a>\n",
    "\n",
    "#### Assignment operators\n",
    "\n",
    "These operators are used to assign values to variables\n",
    "<table style=\"font-size: 100%;\">\n",
    "<tbody>\n",
    "<tr>\n",
    "<th>Operator</th>\n",
    "<th>Description</th>\n",
    "</tr>\n",
    "<tr>\n",
    "<td>&lt;-, =</td>\n",
    "<td>Leftwards assignment</td>\n",
    "</tr>\n",
    "<tr>\n",
    "<td>-&gt;</td>\n",
    "<td>Rightwards assignment</td>\n",
    "</tr>\n",
    "</tbody>\n",
    "</table>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "textile-brighton",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-02T12:10:02.642263Z",
     "iopub.status.busy": "2022-05-02T12:10:02.640190Z",
     "iopub.status.idle": "2022-05-02T12:10:02.675640Z",
     "shell.execute_reply": "2022-05-02T12:10:02.673892Z"
    },
    "id": "LXSnM1MP8V1q",
    "outputId": "b3758dee-690b-4201-e0c4-4ddcf63bb4dd",
    "papermill": {
     "duration": 0.059524,
     "end_time": "2022-05-02T12:10:02.675790",
     "exception": false,
     "start_time": "2022-05-02T12:10:02.616266",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "5"
      ],
      "text/latex": [
       "5"
      ],
      "text/markdown": [
       "5"
      ],
      "text/plain": [
       "[1] 5"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "5"
      ],
      "text/latex": [
       "5"
      ],
      "text/markdown": [
       "5"
      ],
      "text/plain": [
       "[1] 5"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "5"
      ],
      "text/latex": [
       "5"
      ],
      "text/markdown": [
       "5"
      ],
      "text/plain": [
       "[1] 5"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "x <- 5\n",
    "x\n",
    "x = 5\n",
    "x\n",
    "5 -> x\n",
    "x"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "sought-rainbow",
   "metadata": {
    "id": "2pySpL648V1u",
    "papermill": {
     "duration": 0.02048,
     "end_time": "2022-05-02T12:10:02.717653",
     "exception": false,
     "start_time": "2022-05-02T12:10:02.697173",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Arithmetic operators\n",
    "\n",
    "These operators are used to carry out mathematical operations like addition and multiplication.\n",
    "\n",
    "<table style=\"font-size: 100%;\">\n",
    "<tbody>\n",
    "<tr>\n",
    "<th>Operator</th>\n",
    "<th>Description</th>\n",
    "</tr>\n",
    "<tr>\n",
    "<td>+</td>\n",
    "<td>Addition</td>\n",
    "</tr>\n",
    "<tr>\n",
    "<td>&#8211;</td>\n",
    "<td>Subtraction</td>\n",
    "</tr>\n",
    "<tr>\n",
    "<td>*</td>\n",
    "<td>Multiplication</td>\n",
    "</tr>\n",
    "<tr>\n",
    "<td>/</td>\n",
    "<td>Division</td>\n",
    "</tr>\n",
    "<tr>\n",
    "<td>^</td>\n",
    "<td>Exponent</td>\n",
    "</tr>\n",
    "<tr>\n",
    "<td>%%</td>\n",
    "<td>Modulus (Remainder from division)</td>\n",
    "</tr>\n",
    "<tr>\n",
    "<td>%/%</td>\n",
    "<td>Integer Division</td>\n",
    "</tr>\n",
    "</tbody>\n",
    "</table>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "intensive-promotion",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-02T12:10:02.768111Z",
     "iopub.status.busy": "2022-05-02T12:10:02.766118Z",
     "iopub.status.idle": "2022-05-02T12:10:02.784663Z",
     "shell.execute_reply": "2022-05-02T12:10:02.782914Z"
    },
    "id": "iNC-tmBw8V1v",
    "outputId": "fca32eeb-96d9-4c34-d26c-c896961fa6fc",
    "papermill": {
     "duration": 0.046099,
     "end_time": "2022-05-02T12:10:02.784813",
     "exception": false,
     "start_time": "2022-05-02T12:10:02.738714",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "25"
      ],
      "text/latex": [
       "25"
      ],
      "text/markdown": [
       "25"
      ],
      "text/plain": [
       "[1] 25"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "x^2"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "martial-building",
   "metadata": {
    "id": "TnHh46cM8V1z",
    "papermill": {
     "duration": 0.024439,
     "end_time": "2022-05-02T12:10:02.830887",
     "exception": false,
     "start_time": "2022-05-02T12:10:02.806448",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Relational operators\n",
    "Relational operators test or define some kind of relation between two entities/values\n",
    "<table style=\"font-size: 100%;\">\n",
    "<tbody>\n",
    "<tr>\n",
    "<th>Operator</th>\n",
    "<th>Description</th>\n",
    "</tr>\n",
    "<tr>\n",
    "<td>&lt;</td>\n",
    "<td>Less than</td>\n",
    "</tr>\n",
    "<tr>\n",
    "<td>&gt;</td>\n",
    "<td>Greater than</td>\n",
    "</tr>\n",
    "<tr>\n",
    "<td>&lt;=</td>\n",
    "<td>Less than or equal to</td>\n",
    "</tr>\n",
    "<tr>\n",
    "<td>&gt;=</td>\n",
    "<td>Greater than or equal to</td>\n",
    "</tr>\n",
    "<tr>\n",
    "<td>==</td>\n",
    "<td>Equal to</td>\n",
    "</tr>\n",
    "<tr>\n",
    "<td>!=</td>\n",
    "<td>Not equal to</td>\n",
    "</tr>\n",
    "</tbody>\n",
    "</table>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "maritime-match",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-02T12:10:02.882624Z",
     "iopub.status.busy": "2022-05-02T12:10:02.880685Z",
     "iopub.status.idle": "2022-05-02T12:10:02.899048Z",
     "shell.execute_reply": "2022-05-02T12:10:02.896958Z"
    },
    "id": "XMAGyzGu8V1z",
    "outputId": "2dcb9dd3-a35b-42d4-fad1-74bb6b7a9130",
    "papermill": {
     "duration": 0.044416,
     "end_time": "2022-05-02T12:10:02.899340",
     "exception": false,
     "start_time": "2022-05-02T12:10:02.854924",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "x != 10"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "traditional-breeding",
   "metadata": {
    "id": "e7_yCAK28V13",
    "papermill": {
     "duration": 0.021489,
     "end_time": "2022-05-02T12:10:02.943329",
     "exception": false,
     "start_time": "2022-05-02T12:10:02.921840",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### The pipe operator\n",
    "\n",
    "<img src=\"https://github.com/matjesg/AIS_2019/raw/master/notebooks/images/01/pipes.png\" width=\"150\">\n",
    "\n",
    "Pipes are a powerful tool for clearly expressing a sequence of multiple operations.<br>\n",
    "\n",
    "In a pipe, we can rewrite the code as follows\n",
    "```R\n",
    "string %>%\n",
    "    print()\n",
    "```"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "happy-cincinnati",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-02T12:10:02.994112Z",
     "iopub.status.busy": "2022-05-02T12:10:02.992129Z",
     "iopub.status.idle": "2022-05-02T12:10:03.009591Z",
     "shell.execute_reply": "2022-05-02T12:10:03.008190Z"
    },
    "id": "XBU9nSRH8V13",
    "outputId": "66a7f9e3-4f75-460e-d39c-166ecc0d3f1f",
    "papermill": {
     "duration": 0.044717,
     "end_time": "2022-05-02T12:10:03.009753",
     "exception": false,
     "start_time": "2022-05-02T12:10:02.965036",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] 5\n"
     ]
    }
   ],
   "source": [
    "x %>%\n",
    "    print()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "talented-consortium",
   "metadata": {
    "id": "jPnJq3B08V2e",
    "papermill": {
     "duration": 0.024295,
     "end_time": "2022-05-02T12:10:03.056930",
     "exception": false,
     "start_time": "2022-05-02T12:10:03.032635",
     "status": "completed"
    },
    "tags": [],
    "toc-hr-collapsed": true,
    "toc-nb-collapsed": true
   },
   "source": [
    "## 3. Analytic Pipelines: Data Transformation with *dplyr*\n",
    "<a id=\"analytic_pipelines\"></a>\n",
    "\n",
    "The *dplyr* packages provides a grammar for manipulating tables in R. It can be conceptualized as an alternative to a traditional query language like SQL.\n",
    "\n",
    "Main functions are\n",
    "\n",
    "- *select()* extracts variables/columns as a table\n",
    "\n",
    "- *filter()* extracts rows that meet logical criteria\n",
    "\n",
    "- *group_by()* creates a \"grouped\" copy of a table. *dplyr* functions will manipulate each \"group\" separately and then combine the results\n",
    "\n",
    "- *summarise()* applies summary functions to columns to create a new table of summary statistics based on grouping.\n",
    "\n",
    "- *arrange()* orders rows by values of a column or columns\n",
    "\n",
    "- *mutate()* computes new columns/variables"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "significant-bradley",
   "metadata": {
    "id": "jxf22wsi8V18",
    "papermill": {
     "duration": 0.022085,
     "end_time": "2022-05-02T12:10:03.101700",
     "exception": false,
     "start_time": "2022-05-02T12:10:03.079615",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### 3.1. Progamming Example\n",
    "<a id=\"pe\"></a>\n",
    "\n",
    "We will be working on the Student Performance Data Set:\n",
    "The [data set](https://rstudio-pubs-static.s3.amazonaws.com/108835_65a73467d96f4c79a5f808f5b8833922.html) contains information on students in secondary education in Portugal.\n",
    "\n",
    "Important  attributes/columns:\n",
    "- G1 - first period grade (from 0 to 20) \n",
    "- G2 - second period grade (from 0 to 20) \n",
    "- G3 - final grade (from 0 to 20)\n",
    "\n",
    "Let's download the data and save it to the data frame \"student_data\""
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "golden-console",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-02T12:10:03.154904Z",
     "iopub.status.busy": "2022-05-02T12:10:03.152891Z",
     "iopub.status.idle": "2022-05-02T12:10:03.193950Z",
     "shell.execute_reply": "2022-05-02T12:10:03.192720Z"
    },
    "id": "qrYR4lVC8V1_",
    "papermill": {
     "duration": 0.069226,
     "end_time": "2022-05-02T12:10:03.194106",
     "exception": false,
     "start_time": "2022-05-02T12:10:03.124880",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "file = \"../input/d/impapan/student-performance-data-set/student/student-mat.csv\"\n",
    "student_data <- read.table(file=file, header=TRUE, sep=\";\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "electric-butler",
   "metadata": {
    "id": "zds7oa6y8V2D",
    "papermill": {
     "duration": 0.024174,
     "end_time": "2022-05-02T12:10:03.242538",
     "exception": false,
     "start_time": "2022-05-02T12:10:03.218364",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Have a look at the data\n",
    "\n",
    "To view your data frame, write the name in a code cell and run it"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "suited-macedonia",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-02T12:10:03.293200Z",
     "iopub.status.busy": "2022-05-02T12:10:03.291716Z",
     "iopub.status.idle": "2022-05-02T12:10:03.325257Z",
     "shell.execute_reply": "2022-05-02T12:10:03.324245Z"
    },
    "id": "kyzruYRY8V2D",
    "outputId": "a03b4f30-f93d-4c4f-a4a7-977d7aa6f4c4",
    "papermill": {
     "duration": 0.059395,
     "end_time": "2022-05-02T12:10:03.325448",
     "exception": false,
     "start_time": "2022-05-02T12:10:03.266053",
     "status": "completed"
    },
    "scrolled": true,
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 33</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>school</th><th scope=col>sex</th><th scope=col>age</th><th scope=col>address</th><th scope=col>famsize</th><th scope=col>Pstatus</th><th scope=col>Medu</th><th scope=col>Fedu</th><th scope=col>Mjob</th><th scope=col>Fjob</th><th scope=col>⋯</th><th scope=col>famrel</th><th scope=col>freetime</th><th scope=col>goout</th><th scope=col>Dalc</th><th scope=col>Walc</th><th scope=col>health</th><th scope=col>absences</th><th scope=col>G1</th><th scope=col>G2</th><th scope=col>G3</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>⋯</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>GP</td><td>F</td><td>18</td><td>U</td><td>GT3</td><td>A</td><td>4</td><td>4</td><td>at_home </td><td>teacher </td><td>⋯</td><td>4</td><td>3</td><td>4</td><td>1</td><td>1</td><td>3</td><td> 6</td><td> 5</td><td> 6</td><td> 6</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>GP</td><td>F</td><td>17</td><td>U</td><td>GT3</td><td>T</td><td>1</td><td>1</td><td>at_home </td><td>other   </td><td>⋯</td><td>5</td><td>3</td><td>3</td><td>1</td><td>1</td><td>3</td><td> 4</td><td> 5</td><td> 5</td><td> 6</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>GP</td><td>F</td><td>15</td><td>U</td><td>LE3</td><td>T</td><td>1</td><td>1</td><td>at_home </td><td>other   </td><td>⋯</td><td>4</td><td>3</td><td>2</td><td>2</td><td>3</td><td>3</td><td>10</td><td> 7</td><td> 8</td><td>10</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>GP</td><td>F</td><td>15</td><td>U</td><td>GT3</td><td>T</td><td>4</td><td>2</td><td>health  </td><td>services</td><td>⋯</td><td>3</td><td>2</td><td>2</td><td>1</td><td>1</td><td>5</td><td> 2</td><td>15</td><td>14</td><td>15</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>GP</td><td>F</td><td>16</td><td>U</td><td>GT3</td><td>T</td><td>3</td><td>3</td><td>other   </td><td>other   </td><td>⋯</td><td>4</td><td>3</td><td>2</td><td>1</td><td>2</td><td>5</td><td> 4</td><td> 6</td><td>10</td><td>10</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>GP</td><td>M</td><td>16</td><td>U</td><td>LE3</td><td>T</td><td>4</td><td>3</td><td>services</td><td>other   </td><td>⋯</td><td>5</td><td>4</td><td>2</td><td>1</td><td>2</td><td>5</td><td>10</td><td>15</td><td>15</td><td>15</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 33\n",
       "\\begin{tabular}{r|lllllllllllllllllllll}\n",
       "  & school & sex & age & address & famsize & Pstatus & Medu & Fedu & Mjob & Fjob & ⋯ & famrel & freetime & goout & Dalc & Walc & health & absences & G1 & G2 & G3\\\\\n",
       "  & <fct> & <fct> & <int> & <fct> & <fct> & <fct> & <int> & <int> & <fct> & <fct> & ⋯ & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <int>\\\\\n",
       "\\hline\n",
       "\t1 & GP & F & 18 & U & GT3 & A & 4 & 4 & at\\_home  & teacher  & ⋯ & 4 & 3 & 4 & 1 & 1 & 3 &  6 &  5 &  6 &  6\\\\\n",
       "\t2 & GP & F & 17 & U & GT3 & T & 1 & 1 & at\\_home  & other    & ⋯ & 5 & 3 & 3 & 1 & 1 & 3 &  4 &  5 &  5 &  6\\\\\n",
       "\t3 & GP & F & 15 & U & LE3 & T & 1 & 1 & at\\_home  & other    & ⋯ & 4 & 3 & 2 & 2 & 3 & 3 & 10 &  7 &  8 & 10\\\\\n",
       "\t4 & GP & F & 15 & U & GT3 & T & 4 & 2 & health   & services & ⋯ & 3 & 2 & 2 & 1 & 1 & 5 &  2 & 15 & 14 & 15\\\\\n",
       "\t5 & GP & F & 16 & U & GT3 & T & 3 & 3 & other    & other    & ⋯ & 4 & 3 & 2 & 1 & 2 & 5 &  4 &  6 & 10 & 10\\\\\n",
       "\t6 & GP & M & 16 & U & LE3 & T & 4 & 3 & services & other    & ⋯ & 5 & 4 & 2 & 1 & 2 & 5 & 10 & 15 & 15 & 15\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 33\n",
       "\n",
       "| <!--/--> | school &lt;fct&gt; | sex &lt;fct&gt; | age &lt;int&gt; | address &lt;fct&gt; | famsize &lt;fct&gt; | Pstatus &lt;fct&gt; | Medu &lt;int&gt; | Fedu &lt;int&gt; | Mjob &lt;fct&gt; | Fjob &lt;fct&gt; | ⋯ ⋯ | famrel &lt;int&gt; | freetime &lt;int&gt; | goout &lt;int&gt; | Dalc &lt;int&gt; | Walc &lt;int&gt; | health &lt;int&gt; | absences &lt;int&gt; | G1 &lt;int&gt; | G2 &lt;int&gt; | G3 &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | GP | F | 18 | U | GT3 | A | 4 | 4 | at_home  | teacher  | ⋯ | 4 | 3 | 4 | 1 | 1 | 3 |  6 |  5 |  6 |  6 |\n",
       "| 2 | GP | F | 17 | U | GT3 | T | 1 | 1 | at_home  | other    | ⋯ | 5 | 3 | 3 | 1 | 1 | 3 |  4 |  5 |  5 |  6 |\n",
       "| 3 | GP | F | 15 | U | LE3 | T | 1 | 1 | at_home  | other    | ⋯ | 4 | 3 | 2 | 2 | 3 | 3 | 10 |  7 |  8 | 10 |\n",
       "| 4 | GP | F | 15 | U | GT3 | T | 4 | 2 | health   | services | ⋯ | 3 | 2 | 2 | 1 | 1 | 5 |  2 | 15 | 14 | 15 |\n",
       "| 5 | GP | F | 16 | U | GT3 | T | 3 | 3 | other    | other    | ⋯ | 4 | 3 | 2 | 1 | 2 | 5 |  4 |  6 | 10 | 10 |\n",
       "| 6 | GP | M | 16 | U | LE3 | T | 4 | 3 | services | other    | ⋯ | 5 | 4 | 2 | 1 | 2 | 5 | 10 | 15 | 15 | 15 |\n",
       "\n"
      ],
      "text/plain": [
       "  school sex age address famsize Pstatus Medu Fedu Mjob     Fjob     ⋯ famrel\n",
       "1 GP     F   18  U       GT3     A       4    4    at_home  teacher  ⋯ 4     \n",
       "2 GP     F   17  U       GT3     T       1    1    at_home  other    ⋯ 5     \n",
       "3 GP     F   15  U       LE3     T       1    1    at_home  other    ⋯ 4     \n",
       "4 GP     F   15  U       GT3     T       4    2    health   services ⋯ 3     \n",
       "5 GP     F   16  U       GT3     T       3    3    other    other    ⋯ 4     \n",
       "6 GP     M   16  U       LE3     T       4    3    services other    ⋯ 5     \n",
       "  freetime goout Dalc Walc health absences G1 G2 G3\n",
       "1 3        4     1    1    3       6        5  6  6\n",
       "2 3        3     1    1    3       4        5  5  6\n",
       "3 3        2     2    3    3      10        7  8 10\n",
       "4 2        2     1    1    5       2       15 14 15\n",
       "5 3        2     1    2    5       4        6 10 10\n",
       "6 4        2     1    2    5      10       15 15 15"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "student_data %>% \n",
    "    head()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "eligible-lodge",
   "metadata": {
    "id": "JrfH4Ulr8V2H",
    "papermill": {
     "duration": 0.023534,
     "end_time": "2022-05-02T12:10:03.372883",
     "exception": false,
     "start_time": "2022-05-02T12:10:03.349349",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### View first or last part\n",
    "\n",
    "*head()* and *tail()* return first or last part of the data frame"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "external-grain",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-02T12:10:03.425422Z",
     "iopub.status.busy": "2022-05-02T12:10:03.423421Z",
     "iopub.status.idle": "2022-05-02T12:10:03.468751Z",
     "shell.execute_reply": "2022-05-02T12:10:03.454862Z"
    },
    "id": "rDwLC0NC8V2H",
    "outputId": "4bf6e32b-f2b5-4aa4-fb1d-e4c9fe8a5f9e",
    "papermill": {
     "duration": 0.073135,
     "end_time": "2022-05-02T12:10:03.468912",
     "exception": false,
     "start_time": "2022-05-02T12:10:03.395777",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 33</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>school</th><th scope=col>sex</th><th scope=col>age</th><th scope=col>address</th><th scope=col>famsize</th><th scope=col>Pstatus</th><th scope=col>Medu</th><th scope=col>Fedu</th><th scope=col>Mjob</th><th scope=col>Fjob</th><th scope=col>⋯</th><th scope=col>famrel</th><th scope=col>freetime</th><th scope=col>goout</th><th scope=col>Dalc</th><th scope=col>Walc</th><th scope=col>health</th><th scope=col>absences</th><th scope=col>G1</th><th scope=col>G2</th><th scope=col>G3</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>⋯</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>390</th><td>MS</td><td>F</td><td>18</td><td>U</td><td>GT3</td><td>T</td><td>1</td><td>1</td><td>other   </td><td>other   </td><td>⋯</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>5</td><td> 0</td><td> 6</td><td> 5</td><td> 0</td></tr>\n",
       "\t<tr><th scope=row>391</th><td>MS</td><td>M</td><td>20</td><td>U</td><td>LE3</td><td>A</td><td>2</td><td>2</td><td>services</td><td>services</td><td>⋯</td><td>5</td><td>5</td><td>4</td><td>4</td><td>5</td><td>4</td><td>11</td><td> 9</td><td> 9</td><td> 9</td></tr>\n",
       "\t<tr><th scope=row>392</th><td>MS</td><td>M</td><td>17</td><td>U</td><td>LE3</td><td>T</td><td>3</td><td>1</td><td>services</td><td>services</td><td>⋯</td><td>2</td><td>4</td><td>5</td><td>3</td><td>4</td><td>2</td><td> 3</td><td>14</td><td>16</td><td>16</td></tr>\n",
       "\t<tr><th scope=row>393</th><td>MS</td><td>M</td><td>21</td><td>R</td><td>GT3</td><td>T</td><td>1</td><td>1</td><td>other   </td><td>other   </td><td>⋯</td><td>5</td><td>5</td><td>3</td><td>3</td><td>3</td><td>3</td><td> 3</td><td>10</td><td> 8</td><td> 7</td></tr>\n",
       "\t<tr><th scope=row>394</th><td>MS</td><td>M</td><td>18</td><td>R</td><td>LE3</td><td>T</td><td>3</td><td>2</td><td>services</td><td>other   </td><td>⋯</td><td>4</td><td>4</td><td>1</td><td>3</td><td>4</td><td>5</td><td> 0</td><td>11</td><td>12</td><td>10</td></tr>\n",
       "\t<tr><th scope=row>395</th><td>MS</td><td>M</td><td>19</td><td>U</td><td>LE3</td><td>T</td><td>1</td><td>1</td><td>other   </td><td>at_home </td><td>⋯</td><td>3</td><td>2</td><td>3</td><td>3</td><td>3</td><td>5</td><td> 5</td><td> 8</td><td> 9</td><td> 9</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 33\n",
       "\\begin{tabular}{r|lllllllllllllllllllll}\n",
       "  & school & sex & age & address & famsize & Pstatus & Medu & Fedu & Mjob & Fjob & ⋯ & famrel & freetime & goout & Dalc & Walc & health & absences & G1 & G2 & G3\\\\\n",
       "  & <fct> & <fct> & <int> & <fct> & <fct> & <fct> & <int> & <int> & <fct> & <fct> & ⋯ & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <int>\\\\\n",
       "\\hline\n",
       "\t390 & MS & F & 18 & U & GT3 & T & 1 & 1 & other    & other    & ⋯ & 1 & 1 & 1 & 1 & 1 & 5 &  0 &  6 &  5 &  0\\\\\n",
       "\t391 & MS & M & 20 & U & LE3 & A & 2 & 2 & services & services & ⋯ & 5 & 5 & 4 & 4 & 5 & 4 & 11 &  9 &  9 &  9\\\\\n",
       "\t392 & MS & M & 17 & U & LE3 & T & 3 & 1 & services & services & ⋯ & 2 & 4 & 5 & 3 & 4 & 2 &  3 & 14 & 16 & 16\\\\\n",
       "\t393 & MS & M & 21 & R & GT3 & T & 1 & 1 & other    & other    & ⋯ & 5 & 5 & 3 & 3 & 3 & 3 &  3 & 10 &  8 &  7\\\\\n",
       "\t394 & MS & M & 18 & R & LE3 & T & 3 & 2 & services & other    & ⋯ & 4 & 4 & 1 & 3 & 4 & 5 &  0 & 11 & 12 & 10\\\\\n",
       "\t395 & MS & M & 19 & U & LE3 & T & 1 & 1 & other    & at\\_home  & ⋯ & 3 & 2 & 3 & 3 & 3 & 5 &  5 &  8 &  9 &  9\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 33\n",
       "\n",
       "| <!--/--> | school &lt;fct&gt; | sex &lt;fct&gt; | age &lt;int&gt; | address &lt;fct&gt; | famsize &lt;fct&gt; | Pstatus &lt;fct&gt; | Medu &lt;int&gt; | Fedu &lt;int&gt; | Mjob &lt;fct&gt; | Fjob &lt;fct&gt; | ⋯ ⋯ | famrel &lt;int&gt; | freetime &lt;int&gt; | goout &lt;int&gt; | Dalc &lt;int&gt; | Walc &lt;int&gt; | health &lt;int&gt; | absences &lt;int&gt; | G1 &lt;int&gt; | G2 &lt;int&gt; | G3 &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 390 | MS | F | 18 | U | GT3 | T | 1 | 1 | other    | other    | ⋯ | 1 | 1 | 1 | 1 | 1 | 5 |  0 |  6 |  5 |  0 |\n",
       "| 391 | MS | M | 20 | U | LE3 | A | 2 | 2 | services | services | ⋯ | 5 | 5 | 4 | 4 | 5 | 4 | 11 |  9 |  9 |  9 |\n",
       "| 392 | MS | M | 17 | U | LE3 | T | 3 | 1 | services | services | ⋯ | 2 | 4 | 5 | 3 | 4 | 2 |  3 | 14 | 16 | 16 |\n",
       "| 393 | MS | M | 21 | R | GT3 | T | 1 | 1 | other    | other    | ⋯ | 5 | 5 | 3 | 3 | 3 | 3 |  3 | 10 |  8 |  7 |\n",
       "| 394 | MS | M | 18 | R | LE3 | T | 3 | 2 | services | other    | ⋯ | 4 | 4 | 1 | 3 | 4 | 5 |  0 | 11 | 12 | 10 |\n",
       "| 395 | MS | M | 19 | U | LE3 | T | 1 | 1 | other    | at_home  | ⋯ | 3 | 2 | 3 | 3 | 3 | 5 |  5 |  8 |  9 |  9 |\n",
       "\n"
      ],
      "text/plain": [
       "    school sex age address famsize Pstatus Medu Fedu Mjob     Fjob     ⋯ famrel\n",
       "390 MS     F   18  U       GT3     T       1    1    other    other    ⋯ 1     \n",
       "391 MS     M   20  U       LE3     A       2    2    services services ⋯ 5     \n",
       "392 MS     M   17  U       LE3     T       3    1    services services ⋯ 2     \n",
       "393 MS     M   21  R       GT3     T       1    1    other    other    ⋯ 5     \n",
       "394 MS     M   18  R       LE3     T       3    2    services other    ⋯ 4     \n",
       "395 MS     M   19  U       LE3     T       1    1    other    at_home  ⋯ 3     \n",
       "    freetime goout Dalc Walc health absences G1 G2 G3\n",
       "390 1        1     1    1    5       0        6  5  0\n",
       "391 5        4     4    5    4      11        9  9  9\n",
       "392 4        5     3    4    2       3       14 16 16\n",
       "393 5        3     3    3    3       3       10  8  7\n",
       "394 4        1     3    4    5       0       11 12 10\n",
       "395 2        3     3    3    5       5        8  9  9"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "student_data %>%\n",
    "    tail()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "statewide-lyric",
   "metadata": {
    "id": "KH-92nQv8V2L",
    "papermill": {
     "duration": 0.025396,
     "end_time": "2022-05-02T12:10:03.517438",
     "exception": false,
     "start_time": "2022-05-02T12:10:03.492042",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Get a glimpse of your data\n",
    "\n",
    "*glimpse()* outputs a transposed version of the standard view: columns run down the page, and data runs across. This makes it possible to see every column in a data frame"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "everyday-stanley",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-02T12:10:03.572048Z",
     "iopub.status.busy": "2022-05-02T12:10:03.570119Z",
     "iopub.status.idle": "2022-05-02T12:10:03.605106Z",
     "shell.execute_reply": "2022-05-02T12:10:03.604048Z"
    },
    "id": "bBR4UGig8V2M",
    "outputId": "2e3d7bf0-0c0d-4a9b-9bd3-dede57cb6cc4",
    "papermill": {
     "duration": 0.063322,
     "end_time": "2022-05-02T12:10:03.605258",
     "exception": false,
     "start_time": "2022-05-02T12:10:03.541936",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Rows: 395\n",
      "Columns: 33\n",
      "$ school     \u001b[3m\u001b[90m<fct>\u001b[39m\u001b[23m GP, GP, GP, GP, GP, GP, GP, GP, GP, GP, GP, GP, GP, GP, GP,…\n",
      "$ sex        \u001b[3m\u001b[90m<fct>\u001b[39m\u001b[23m F, F, F, F, F, M, M, F, M, M, F, F, M, M, M, F, F, F, M, M,…\n",
      "$ age        \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m 18, 17, 15, 15, 16, 16, 16, 17, 15, 15, 15, 15, 15, 15, 15,…\n",
      "$ address    \u001b[3m\u001b[90m<fct>\u001b[39m\u001b[23m U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U,…\n",
      "$ famsize    \u001b[3m\u001b[90m<fct>\u001b[39m\u001b[23m GT3, GT3, LE3, GT3, GT3, LE3, LE3, GT3, LE3, GT3, GT3, GT3,…\n",
      "$ Pstatus    \u001b[3m\u001b[90m<fct>\u001b[39m\u001b[23m A, T, T, T, T, T, T, A, A, T, T, T, T, T, A, T, T, T, T, T,…\n",
      "$ Medu       \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m 4, 1, 1, 4, 3, 4, 2, 4, 3, 3, 4, 2, 4, 4, 2, 4, 4, 3, 3, 4,…\n",
      "$ Fedu       \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m 4, 1, 1, 2, 3, 3, 2, 4, 2, 4, 4, 1, 4, 3, 2, 4, 4, 3, 2, 3,…\n",
      "$ Mjob       \u001b[3m\u001b[90m<fct>\u001b[39m\u001b[23m at_home, at_home, at_home, health, other, services, other, …\n",
      "$ Fjob       \u001b[3m\u001b[90m<fct>\u001b[39m\u001b[23m teacher, other, other, services, other, other, other, teach…\n",
      "$ reason     \u001b[3m\u001b[90m<fct>\u001b[39m\u001b[23m course, course, other, home, home, reputation, home, home, …\n",
      "$ guardian   \u001b[3m\u001b[90m<fct>\u001b[39m\u001b[23m mother, father, mother, mother, father, mother, mother, mot…\n",
      "$ traveltime \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m 2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 3, 1, 2, 1, 1, 1, 3, 1, 1,…\n",
      "$ studytime  \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m 2, 2, 2, 3, 2, 2, 2, 2, 2, 2, 2, 3, 1, 2, 3, 1, 3, 2, 1, 1,…\n",
      "$ failures   \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0,…\n",
      "$ schoolsup  \u001b[3m\u001b[90m<fct>\u001b[39m\u001b[23m yes, no, yes, no, no, no, no, yes, no, no, no, no, no, no, …\n",
      "$ famsup     \u001b[3m\u001b[90m<fct>\u001b[39m\u001b[23m no, yes, no, yes, yes, yes, no, yes, yes, yes, yes, yes, ye…\n",
      "$ paid       \u001b[3m\u001b[90m<fct>\u001b[39m\u001b[23m no, no, yes, yes, yes, yes, no, no, yes, yes, yes, no, yes,…\n",
      "$ activities \u001b[3m\u001b[90m<fct>\u001b[39m\u001b[23m no, no, no, yes, no, yes, no, no, no, yes, no, yes, yes, no…\n",
      "$ nursery    \u001b[3m\u001b[90m<fct>\u001b[39m\u001b[23m yes, no, yes, yes, yes, yes, yes, yes, yes, yes, yes, yes, …\n",
      "$ higher     \u001b[3m\u001b[90m<fct>\u001b[39m\u001b[23m yes, yes, yes, yes, yes, yes, yes, yes, yes, yes, yes, yes,…\n",
      "$ internet   \u001b[3m\u001b[90m<fct>\u001b[39m\u001b[23m no, yes, yes, yes, no, yes, yes, no, yes, yes, yes, yes, ye…\n",
      "$ romantic   \u001b[3m\u001b[90m<fct>\u001b[39m\u001b[23m no, no, no, yes, no, no, no, no, no, no, no, no, no, no, ye…\n",
      "$ famrel     \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m 4, 5, 4, 3, 4, 5, 4, 4, 4, 5, 3, 5, 4, 5, 4, 4, 3, 5, 5, 3,…\n",
      "$ freetime   \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m 3, 3, 3, 2, 3, 4, 4, 1, 2, 5, 3, 2, 3, 4, 5, 4, 2, 3, 5, 1,…\n",
      "$ goout      \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m 4, 3, 2, 2, 2, 2, 4, 4, 2, 1, 3, 2, 3, 3, 2, 4, 3, 2, 5, 3,…\n",
      "$ Dalc       \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1,…\n",
      "$ Walc       \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m 1, 1, 3, 1, 2, 2, 1, 1, 1, 1, 2, 1, 3, 2, 1, 2, 2, 1, 4, 3,…\n",
      "$ health     \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m 3, 3, 3, 5, 5, 5, 3, 1, 1, 5, 2, 4, 5, 3, 3, 2, 2, 4, 5, 5,…\n",
      "$ absences   \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m 6, 4, 10, 2, 4, 10, 0, 6, 0, 0, 0, 4, 2, 2, 0, 4, 6, 4, 16,…\n",
      "$ G1         \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m 5, 5, 7, 15, 6, 15, 12, 6, 16, 14, 10, 10, 14, 10, 14, 14, …\n",
      "$ G2         \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m 6, 5, 8, 14, 10, 15, 12, 5, 18, 15, 8, 12, 14, 10, 16, 14, …\n",
      "$ G3         \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m 6, 6, 10, 15, 10, 15, 11, 6, 19, 15, 9, 12, 14, 11, 16, 14,…\n"
     ]
    }
   ],
   "source": [
    "student_data %>%\n",
    "    glimpse()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "trying-cocktail",
   "metadata": {
    "id": "awKthJVE8V2S",
    "papermill": {
     "duration": 0.024727,
     "end_time": "2022-05-02T12:10:03.653878",
     "exception": false,
     "start_time": "2022-05-02T12:10:03.629151",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Data summaries\n",
    "\n",
    "You can use the *summary()* command to get a better feel for how your data are distributed"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "faced-globe",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-02T12:10:03.708500Z",
     "iopub.status.busy": "2022-05-02T12:10:03.706694Z",
     "iopub.status.idle": "2022-05-02T12:10:03.734120Z",
     "shell.execute_reply": "2022-05-02T12:10:03.732826Z"
    },
    "id": "6QWloHZJ8V2T",
    "outputId": "07bce7a4-60a6-44a8-b4ab-6a57618a0ebf",
    "papermill": {
     "duration": 0.056868,
     "end_time": "2022-05-02T12:10:03.734265",
     "exception": false,
     "start_time": "2022-05-02T12:10:03.677397",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       " school   sex          age       address famsize   Pstatus      Medu      \n",
       " GP:349   F:208   Min.   :15.0   R: 88   GT3:281   A: 41   Min.   :0.000  \n",
       " MS: 46   M:187   1st Qu.:16.0   U:307   LE3:114   T:354   1st Qu.:2.000  \n",
       "                  Median :17.0                             Median :3.000  \n",
       "                  Mean   :16.7                             Mean   :2.749  \n",
       "                  3rd Qu.:18.0                             3rd Qu.:4.000  \n",
       "                  Max.   :22.0                             Max.   :4.000  \n",
       "      Fedu             Mjob           Fjob            reason      guardian  \n",
       " Min.   :0.000   at_home : 59   at_home : 20   course    :145   father: 90  \n",
       " 1st Qu.:2.000   health  : 34   health  : 18   home      :109   mother:273  \n",
       " Median :2.000   other   :141   other   :217   other     : 36   other : 32  \n",
       " Mean   :2.522   services:103   services:111   reputation:105               \n",
       " 3rd Qu.:3.000   teacher : 58   teacher : 29                                \n",
       " Max.   :4.000                                                              \n",
       "   traveltime      studytime        failures      schoolsup famsup     paid    \n",
       " Min.   :1.000   Min.   :1.000   Min.   :0.0000   no :344   no :153   no :214  \n",
       " 1st Qu.:1.000   1st Qu.:1.000   1st Qu.:0.0000   yes: 51   yes:242   yes:181  \n",
       " Median :1.000   Median :2.000   Median :0.0000                                \n",
       " Mean   :1.448   Mean   :2.035   Mean   :0.3342                                \n",
       " 3rd Qu.:2.000   3rd Qu.:2.000   3rd Qu.:0.0000                                \n",
       " Max.   :4.000   Max.   :4.000   Max.   :3.0000                                \n",
       " activities nursery   higher    internet  romantic      famrel     \n",
       " no :194    no : 81   no : 20   no : 66   no :263   Min.   :1.000  \n",
       " yes:201    yes:314   yes:375   yes:329   yes:132   1st Qu.:4.000  \n",
       "                                                    Median :4.000  \n",
       "                                                    Mean   :3.944  \n",
       "                                                    3rd Qu.:5.000  \n",
       "                                                    Max.   :5.000  \n",
       "    freetime         goout            Dalc            Walc      \n",
       " Min.   :1.000   Min.   :1.000   Min.   :1.000   Min.   :1.000  \n",
       " 1st Qu.:3.000   1st Qu.:2.000   1st Qu.:1.000   1st Qu.:1.000  \n",
       " Median :3.000   Median :3.000   Median :1.000   Median :2.000  \n",
       " Mean   :3.235   Mean   :3.109   Mean   :1.481   Mean   :2.291  \n",
       " 3rd Qu.:4.000   3rd Qu.:4.000   3rd Qu.:2.000   3rd Qu.:3.000  \n",
       " Max.   :5.000   Max.   :5.000   Max.   :5.000   Max.   :5.000  \n",
       "     health         absences            G1              G2       \n",
       " Min.   :1.000   Min.   : 0.000   Min.   : 3.00   Min.   : 0.00  \n",
       " 1st Qu.:3.000   1st Qu.: 0.000   1st Qu.: 8.00   1st Qu.: 9.00  \n",
       " Median :4.000   Median : 4.000   Median :11.00   Median :11.00  \n",
       " Mean   :3.554   Mean   : 5.709   Mean   :10.91   Mean   :10.71  \n",
       " 3rd Qu.:5.000   3rd Qu.: 8.000   3rd Qu.:13.00   3rd Qu.:13.00  \n",
       " Max.   :5.000   Max.   :75.000   Max.   :19.00   Max.   :19.00  \n",
       "       G3       \n",
       " Min.   : 0.00  \n",
       " 1st Qu.: 8.00  \n",
       " Median :11.00  \n",
       " Mean   :10.42  \n",
       " 3rd Qu.:14.00  \n",
       " Max.   :20.00  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "student_data %>%\n",
    "    summary()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "armed-blocking",
   "metadata": {
    "id": "rTiFtfr08V2f",
    "papermill": {
     "duration": 0.024752,
     "end_time": "2022-05-02T12:10:03.784127",
     "exception": false,
     "start_time": "2022-05-02T12:10:03.759375",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Piping Multiple Operations\n",
    "\n",
    "Multiple operations can be executed in sequence using the pipe operator:\n",
    "\n",
    "```R\n",
    "df %>%\n",
    "    filter() %>%\n",
    "    mutate() %>%\n",
    "    arrange()\n",
    "```"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "single-chuck",
   "metadata": {
    "id": "uJaANdAO8V2g",
    "papermill": {
     "duration": 0.024828,
     "end_time": "2022-05-02T12:10:03.834321",
     "exception": false,
     "start_time": "2022-05-02T12:10:03.809493",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "We will now apply these functions to our student dataset. You can use the  [Cheat Cheat](https://content.cdntwrk.com/files/aT05NjI5Mjgmdj0xJmlzc3VlTmFtZT1kYXRhLXRyYW5zZm9ybWF0aW9uLWNoZWF0LXNoZWV0JmNtZD1kJnNpZz01ZjdlZGUxZDJiM2QwMmYxNDUzODIwYzA0NzE5NTA2YQ%253D%253D) to work on the following tasks. \n",
    "\n",
    "#### Select variables\n",
    "\n",
    "Select the attributes *sex* and *age* from the data"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "musical-province",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-02T12:10:03.890024Z",
     "iopub.status.busy": "2022-05-02T12:10:03.888895Z",
     "iopub.status.idle": "2022-05-02T12:10:03.922407Z",
     "shell.execute_reply": "2022-05-02T12:10:03.921130Z"
    },
    "id": "m4ulVXRF8V2h",
    "outputId": "85b19835-b40f-44f0-a308-bfc0434be533",
    "papermill": {
     "duration": 0.062836,
     "end_time": "2022-05-02T12:10:03.922546",
     "exception": false,
     "start_time": "2022-05-02T12:10:03.859710",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>sex</th><th scope=col>age</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>F</td><td>18</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>F</td><td>17</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>F</td><td>15</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>F</td><td>15</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>F</td><td>16</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>M</td><td>16</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 2\n",
       "\\begin{tabular}{r|ll}\n",
       "  & sex & age\\\\\n",
       "  & <fct> & <int>\\\\\n",
       "\\hline\n",
       "\t1 & F & 18\\\\\n",
       "\t2 & F & 17\\\\\n",
       "\t3 & F & 15\\\\\n",
       "\t4 & F & 15\\\\\n",
       "\t5 & F & 16\\\\\n",
       "\t6 & M & 16\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 2\n",
       "\n",
       "| <!--/--> | sex &lt;fct&gt; | age &lt;int&gt; |\n",
       "|---|---|---|\n",
       "| 1 | F | 18 |\n",
       "| 2 | F | 17 |\n",
       "| 3 | F | 15 |\n",
       "| 4 | F | 15 |\n",
       "| 5 | F | 16 |\n",
       "| 6 | M | 16 |\n",
       "\n"
      ],
      "text/plain": [
       "  sex age\n",
       "1 F   18 \n",
       "2 F   17 \n",
       "3 F   15 \n",
       "4 F   15 \n",
       "5 F   16 \n",
       "6 M   16 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "student_data %>%\n",
    "    select(sex, age) %>%\n",
    "    head()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "optimum-toilet",
   "metadata": {
    "id": "JvL-lhoS8V2k",
    "papermill": {
     "duration": 0.024457,
     "end_time": "2022-05-02T12:10:03.972759",
     "exception": false,
     "start_time": "2022-05-02T12:10:03.948302",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Make new variables\n",
    "\n",
    "Calculate the average grade from the first period grade (G1) and the second period grade (G2) in a new columns 'MeanGrade'"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "palestinian-bristol",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-02T12:10:04.026173Z",
     "iopub.status.busy": "2022-05-02T12:10:04.024937Z",
     "iopub.status.idle": "2022-05-02T12:10:04.064238Z",
     "shell.execute_reply": "2022-05-02T12:10:04.063447Z"
    },
    "id": "ZZDJmHWD8V2l",
    "outputId": "b91fee62-a79a-4120-f505-b5b8208eed4e",
    "papermill": {
     "duration": 0.067354,
     "end_time": "2022-05-02T12:10:04.064408",
     "exception": false,
     "start_time": "2022-05-02T12:10:03.997054",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 34</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>school</th><th scope=col>sex</th><th scope=col>age</th><th scope=col>address</th><th scope=col>famsize</th><th scope=col>Pstatus</th><th scope=col>Medu</th><th scope=col>Fedu</th><th scope=col>Mjob</th><th scope=col>Fjob</th><th scope=col>⋯</th><th scope=col>freetime</th><th scope=col>goout</th><th scope=col>Dalc</th><th scope=col>Walc</th><th scope=col>health</th><th scope=col>absences</th><th scope=col>G1</th><th scope=col>G2</th><th scope=col>G3</th><th scope=col>MeanGrade</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>⋯</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>GP</td><td>F</td><td>18</td><td>U</td><td>GT3</td><td>A</td><td>4</td><td>4</td><td>at_home </td><td>teacher </td><td>⋯</td><td>3</td><td>4</td><td>1</td><td>1</td><td>3</td><td> 6</td><td> 5</td><td> 6</td><td> 6</td><td> 5.5</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>GP</td><td>F</td><td>17</td><td>U</td><td>GT3</td><td>T</td><td>1</td><td>1</td><td>at_home </td><td>other   </td><td>⋯</td><td>3</td><td>3</td><td>1</td><td>1</td><td>3</td><td> 4</td><td> 5</td><td> 5</td><td> 6</td><td> 5.0</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>GP</td><td>F</td><td>15</td><td>U</td><td>LE3</td><td>T</td><td>1</td><td>1</td><td>at_home </td><td>other   </td><td>⋯</td><td>3</td><td>2</td><td>2</td><td>3</td><td>3</td><td>10</td><td> 7</td><td> 8</td><td>10</td><td> 7.5</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>GP</td><td>F</td><td>15</td><td>U</td><td>GT3</td><td>T</td><td>4</td><td>2</td><td>health  </td><td>services</td><td>⋯</td><td>2</td><td>2</td><td>1</td><td>1</td><td>5</td><td> 2</td><td>15</td><td>14</td><td>15</td><td>14.5</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>GP</td><td>F</td><td>16</td><td>U</td><td>GT3</td><td>T</td><td>3</td><td>3</td><td>other   </td><td>other   </td><td>⋯</td><td>3</td><td>2</td><td>1</td><td>2</td><td>5</td><td> 4</td><td> 6</td><td>10</td><td>10</td><td> 8.0</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>GP</td><td>M</td><td>16</td><td>U</td><td>LE3</td><td>T</td><td>4</td><td>3</td><td>services</td><td>other   </td><td>⋯</td><td>4</td><td>2</td><td>1</td><td>2</td><td>5</td><td>10</td><td>15</td><td>15</td><td>15</td><td>15.0</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 34\n",
       "\\begin{tabular}{r|lllllllllllllllllllll}\n",
       "  & school & sex & age & address & famsize & Pstatus & Medu & Fedu & Mjob & Fjob & ⋯ & freetime & goout & Dalc & Walc & health & absences & G1 & G2 & G3 & MeanGrade\\\\\n",
       "  & <fct> & <fct> & <int> & <fct> & <fct> & <fct> & <int> & <int> & <fct> & <fct> & ⋯ & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & GP & F & 18 & U & GT3 & A & 4 & 4 & at\\_home  & teacher  & ⋯ & 3 & 4 & 1 & 1 & 3 &  6 &  5 &  6 &  6 &  5.5\\\\\n",
       "\t2 & GP & F & 17 & U & GT3 & T & 1 & 1 & at\\_home  & other    & ⋯ & 3 & 3 & 1 & 1 & 3 &  4 &  5 &  5 &  6 &  5.0\\\\\n",
       "\t3 & GP & F & 15 & U & LE3 & T & 1 & 1 & at\\_home  & other    & ⋯ & 3 & 2 & 2 & 3 & 3 & 10 &  7 &  8 & 10 &  7.5\\\\\n",
       "\t4 & GP & F & 15 & U & GT3 & T & 4 & 2 & health   & services & ⋯ & 2 & 2 & 1 & 1 & 5 &  2 & 15 & 14 & 15 & 14.5\\\\\n",
       "\t5 & GP & F & 16 & U & GT3 & T & 3 & 3 & other    & other    & ⋯ & 3 & 2 & 1 & 2 & 5 &  4 &  6 & 10 & 10 &  8.0\\\\\n",
       "\t6 & GP & M & 16 & U & LE3 & T & 4 & 3 & services & other    & ⋯ & 4 & 2 & 1 & 2 & 5 & 10 & 15 & 15 & 15 & 15.0\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 34\n",
       "\n",
       "| <!--/--> | school &lt;fct&gt; | sex &lt;fct&gt; | age &lt;int&gt; | address &lt;fct&gt; | famsize &lt;fct&gt; | Pstatus &lt;fct&gt; | Medu &lt;int&gt; | Fedu &lt;int&gt; | Mjob &lt;fct&gt; | Fjob &lt;fct&gt; | ⋯ ⋯ | freetime &lt;int&gt; | goout &lt;int&gt; | Dalc &lt;int&gt; | Walc &lt;int&gt; | health &lt;int&gt; | absences &lt;int&gt; | G1 &lt;int&gt; | G2 &lt;int&gt; | G3 &lt;int&gt; | MeanGrade &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | GP | F | 18 | U | GT3 | A | 4 | 4 | at_home  | teacher  | ⋯ | 3 | 4 | 1 | 1 | 3 |  6 |  5 |  6 |  6 |  5.5 |\n",
       "| 2 | GP | F | 17 | U | GT3 | T | 1 | 1 | at_home  | other    | ⋯ | 3 | 3 | 1 | 1 | 3 |  4 |  5 |  5 |  6 |  5.0 |\n",
       "| 3 | GP | F | 15 | U | LE3 | T | 1 | 1 | at_home  | other    | ⋯ | 3 | 2 | 2 | 3 | 3 | 10 |  7 |  8 | 10 |  7.5 |\n",
       "| 4 | GP | F | 15 | U | GT3 | T | 4 | 2 | health   | services | ⋯ | 2 | 2 | 1 | 1 | 5 |  2 | 15 | 14 | 15 | 14.5 |\n",
       "| 5 | GP | F | 16 | U | GT3 | T | 3 | 3 | other    | other    | ⋯ | 3 | 2 | 1 | 2 | 5 |  4 |  6 | 10 | 10 |  8.0 |\n",
       "| 6 | GP | M | 16 | U | LE3 | T | 4 | 3 | services | other    | ⋯ | 4 | 2 | 1 | 2 | 5 | 10 | 15 | 15 | 15 | 15.0 |\n",
       "\n"
      ],
      "text/plain": [
       "  school sex age address famsize Pstatus Medu Fedu Mjob     Fjob     ⋯ freetime\n",
       "1 GP     F   18  U       GT3     A       4    4    at_home  teacher  ⋯ 3       \n",
       "2 GP     F   17  U       GT3     T       1    1    at_home  other    ⋯ 3       \n",
       "3 GP     F   15  U       LE3     T       1    1    at_home  other    ⋯ 3       \n",
       "4 GP     F   15  U       GT3     T       4    2    health   services ⋯ 2       \n",
       "5 GP     F   16  U       GT3     T       3    3    other    other    ⋯ 3       \n",
       "6 GP     M   16  U       LE3     T       4    3    services other    ⋯ 4       \n",
       "  goout Dalc Walc health absences G1 G2 G3 MeanGrade\n",
       "1 4     1    1    3       6        5  6  6  5.5     \n",
       "2 3     1    1    3       4        5  5  6  5.0     \n",
       "3 2     2    3    3      10        7  8 10  7.5     \n",
       "4 2     1    1    5       2       15 14 15 14.5     \n",
       "5 2     1    2    5       4        6 10 10  8.0     \n",
       "6 2     1    2    5      10       15 15 15 15.0     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "student_data %>%\n",
    "    mutate(\"MeanGrade\" = (G1+G2)/2) %>%\n",
    "    head()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "decent-divorce",
   "metadata": {
    "id": "OKHQe2Ez8V2n",
    "papermill": {
     "duration": 0.02533,
     "end_time": "2022-05-02T12:10:04.116189",
     "exception": false,
     "start_time": "2022-05-02T12:10:04.090859",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Extract data\n",
    "Filter only male students"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "polished-cleaning",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-02T12:10:04.174978Z",
     "iopub.status.busy": "2022-05-02T12:10:04.173037Z",
     "iopub.status.idle": "2022-05-02T12:10:04.206804Z",
     "shell.execute_reply": "2022-05-02T12:10:04.205180Z"
    },
    "id": "z28KHfC28V2o",
    "outputId": "eed26380-6837-4ed9-cd16-a004d77f865a",
    "papermill": {
     "duration": 0.065228,
     "end_time": "2022-05-02T12:10:04.206944",
     "exception": false,
     "start_time": "2022-05-02T12:10:04.141716",
     "status": "completed"
    },
    "scrolled": true,
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 33</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>school</th><th scope=col>sex</th><th scope=col>age</th><th scope=col>address</th><th scope=col>famsize</th><th scope=col>Pstatus</th><th scope=col>Medu</th><th scope=col>Fedu</th><th scope=col>Mjob</th><th scope=col>Fjob</th><th scope=col>⋯</th><th scope=col>famrel</th><th scope=col>freetime</th><th scope=col>goout</th><th scope=col>Dalc</th><th scope=col>Walc</th><th scope=col>health</th><th scope=col>absences</th><th scope=col>G1</th><th scope=col>G2</th><th scope=col>G3</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>⋯</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>GP</td><td>M</td><td>16</td><td>U</td><td>LE3</td><td>T</td><td>4</td><td>3</td><td>services</td><td>other   </td><td>⋯</td><td>5</td><td>4</td><td>2</td><td>1</td><td>2</td><td>5</td><td>10</td><td>15</td><td>15</td><td>15</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>GP</td><td>M</td><td>16</td><td>U</td><td>LE3</td><td>T</td><td>2</td><td>2</td><td>other   </td><td>other   </td><td>⋯</td><td>4</td><td>4</td><td>4</td><td>1</td><td>1</td><td>3</td><td> 0</td><td>12</td><td>12</td><td>11</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>GP</td><td>M</td><td>15</td><td>U</td><td>LE3</td><td>A</td><td>3</td><td>2</td><td>services</td><td>other   </td><td>⋯</td><td>4</td><td>2</td><td>2</td><td>1</td><td>1</td><td>1</td><td> 0</td><td>16</td><td>18</td><td>19</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>GP</td><td>M</td><td>15</td><td>U</td><td>GT3</td><td>T</td><td>3</td><td>4</td><td>other   </td><td>other   </td><td>⋯</td><td>5</td><td>5</td><td>1</td><td>1</td><td>1</td><td>5</td><td> 0</td><td>14</td><td>15</td><td>15</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>GP</td><td>M</td><td>15</td><td>U</td><td>LE3</td><td>T</td><td>4</td><td>4</td><td>health  </td><td>services</td><td>⋯</td><td>4</td><td>3</td><td>3</td><td>1</td><td>3</td><td>5</td><td> 2</td><td>14</td><td>14</td><td>14</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>GP</td><td>M</td><td>15</td><td>U</td><td>GT3</td><td>T</td><td>4</td><td>3</td><td>teacher </td><td>other   </td><td>⋯</td><td>5</td><td>4</td><td>3</td><td>1</td><td>2</td><td>3</td><td> 2</td><td>10</td><td>10</td><td>11</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 33\n",
       "\\begin{tabular}{r|lllllllllllllllllllll}\n",
       "  & school & sex & age & address & famsize & Pstatus & Medu & Fedu & Mjob & Fjob & ⋯ & famrel & freetime & goout & Dalc & Walc & health & absences & G1 & G2 & G3\\\\\n",
       "  & <fct> & <fct> & <int> & <fct> & <fct> & <fct> & <int> & <int> & <fct> & <fct> & ⋯ & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <int>\\\\\n",
       "\\hline\n",
       "\t1 & GP & M & 16 & U & LE3 & T & 4 & 3 & services & other    & ⋯ & 5 & 4 & 2 & 1 & 2 & 5 & 10 & 15 & 15 & 15\\\\\n",
       "\t2 & GP & M & 16 & U & LE3 & T & 2 & 2 & other    & other    & ⋯ & 4 & 4 & 4 & 1 & 1 & 3 &  0 & 12 & 12 & 11\\\\\n",
       "\t3 & GP & M & 15 & U & LE3 & A & 3 & 2 & services & other    & ⋯ & 4 & 2 & 2 & 1 & 1 & 1 &  0 & 16 & 18 & 19\\\\\n",
       "\t4 & GP & M & 15 & U & GT3 & T & 3 & 4 & other    & other    & ⋯ & 5 & 5 & 1 & 1 & 1 & 5 &  0 & 14 & 15 & 15\\\\\n",
       "\t5 & GP & M & 15 & U & LE3 & T & 4 & 4 & health   & services & ⋯ & 4 & 3 & 3 & 1 & 3 & 5 &  2 & 14 & 14 & 14\\\\\n",
       "\t6 & GP & M & 15 & U & GT3 & T & 4 & 3 & teacher  & other    & ⋯ & 5 & 4 & 3 & 1 & 2 & 3 &  2 & 10 & 10 & 11\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 33\n",
       "\n",
       "| <!--/--> | school &lt;fct&gt; | sex &lt;fct&gt; | age &lt;int&gt; | address &lt;fct&gt; | famsize &lt;fct&gt; | Pstatus &lt;fct&gt; | Medu &lt;int&gt; | Fedu &lt;int&gt; | Mjob &lt;fct&gt; | Fjob &lt;fct&gt; | ⋯ ⋯ | famrel &lt;int&gt; | freetime &lt;int&gt; | goout &lt;int&gt; | Dalc &lt;int&gt; | Walc &lt;int&gt; | health &lt;int&gt; | absences &lt;int&gt; | G1 &lt;int&gt; | G2 &lt;int&gt; | G3 &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | GP | M | 16 | U | LE3 | T | 4 | 3 | services | other    | ⋯ | 5 | 4 | 2 | 1 | 2 | 5 | 10 | 15 | 15 | 15 |\n",
       "| 2 | GP | M | 16 | U | LE3 | T | 2 | 2 | other    | other    | ⋯ | 4 | 4 | 4 | 1 | 1 | 3 |  0 | 12 | 12 | 11 |\n",
       "| 3 | GP | M | 15 | U | LE3 | A | 3 | 2 | services | other    | ⋯ | 4 | 2 | 2 | 1 | 1 | 1 |  0 | 16 | 18 | 19 |\n",
       "| 4 | GP | M | 15 | U | GT3 | T | 3 | 4 | other    | other    | ⋯ | 5 | 5 | 1 | 1 | 1 | 5 |  0 | 14 | 15 | 15 |\n",
       "| 5 | GP | M | 15 | U | LE3 | T | 4 | 4 | health   | services | ⋯ | 4 | 3 | 3 | 1 | 3 | 5 |  2 | 14 | 14 | 14 |\n",
       "| 6 | GP | M | 15 | U | GT3 | T | 4 | 3 | teacher  | other    | ⋯ | 5 | 4 | 3 | 1 | 2 | 3 |  2 | 10 | 10 | 11 |\n",
       "\n"
      ],
      "text/plain": [
       "  school sex age address famsize Pstatus Medu Fedu Mjob     Fjob     ⋯ famrel\n",
       "1 GP     M   16  U       LE3     T       4    3    services other    ⋯ 5     \n",
       "2 GP     M   16  U       LE3     T       2    2    other    other    ⋯ 4     \n",
       "3 GP     M   15  U       LE3     A       3    2    services other    ⋯ 4     \n",
       "4 GP     M   15  U       GT3     T       3    4    other    other    ⋯ 5     \n",
       "5 GP     M   15  U       LE3     T       4    4    health   services ⋯ 4     \n",
       "6 GP     M   15  U       GT3     T       4    3    teacher  other    ⋯ 5     \n",
       "  freetime goout Dalc Walc health absences G1 G2 G3\n",
       "1 4        2     1    2    5      10       15 15 15\n",
       "2 4        4     1    1    3       0       12 12 11\n",
       "3 2        2     1    1    1       0       16 18 19\n",
       "4 5        1     1    1    5       0       14 15 15\n",
       "5 3        3     1    3    5       2       14 14 14\n",
       "6 4        3     1    2    3       2       10 10 11"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "student_data %>%\n",
    "    filter(sex=='M') %>%\n",
    "    head()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "surprised-script",
   "metadata": {
    "id": "KZk90ob68V2q",
    "papermill": {
     "duration": 0.027258,
     "end_time": "2022-05-02T12:10:04.260218",
     "exception": false,
     "start_time": "2022-05-02T12:10:04.232960",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Sorting the data\n",
    "\n",
    "Select only the female students and sort them by age."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "built-checkout",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-02T12:10:04.322161Z",
     "iopub.status.busy": "2022-05-02T12:10:04.320162Z",
     "iopub.status.idle": "2022-05-02T12:10:04.365778Z",
     "shell.execute_reply": "2022-05-02T12:10:04.364208Z"
    },
    "id": "OoaeiS5t8V2r",
    "outputId": "ecfd270b-9c1f-4b94-95cc-4be62c2c156f",
    "papermill": {
     "duration": 0.07793,
     "end_time": "2022-05-02T12:10:04.365926",
     "exception": false,
     "start_time": "2022-05-02T12:10:04.287996",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 33</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>school</th><th scope=col>sex</th><th scope=col>age</th><th scope=col>address</th><th scope=col>famsize</th><th scope=col>Pstatus</th><th scope=col>Medu</th><th scope=col>Fedu</th><th scope=col>Mjob</th><th scope=col>Fjob</th><th scope=col>⋯</th><th scope=col>famrel</th><th scope=col>freetime</th><th scope=col>goout</th><th scope=col>Dalc</th><th scope=col>Walc</th><th scope=col>health</th><th scope=col>absences</th><th scope=col>G1</th><th scope=col>G2</th><th scope=col>G3</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>⋯</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>MS</td><td>F</td><td>20</td><td>U</td><td>GT3</td><td>T</td><td>4</td><td>2</td><td>health </td><td>other   </td><td>⋯</td><td>5</td><td>4</td><td>3</td><td>1</td><td>1</td><td>3</td><td> 4</td><td>15</td><td>14</td><td>15</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>GP</td><td>F</td><td>19</td><td>U</td><td>GT3</td><td>T</td><td>0</td><td>1</td><td>at_home</td><td>other   </td><td>⋯</td><td>3</td><td>4</td><td>2</td><td>1</td><td>1</td><td>5</td><td> 2</td><td> 7</td><td> 8</td><td> 9</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>GP</td><td>F</td><td>19</td><td>U</td><td>GT3</td><td>T</td><td>3</td><td>3</td><td>other  </td><td>other   </td><td>⋯</td><td>4</td><td>3</td><td>3</td><td>1</td><td>2</td><td>3</td><td>10</td><td> 8</td><td> 8</td><td> 8</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>GP</td><td>F</td><td>19</td><td>U</td><td>GT3</td><td>T</td><td>3</td><td>3</td><td>other  </td><td>services</td><td>⋯</td><td>4</td><td>3</td><td>5</td><td>3</td><td>3</td><td>5</td><td>15</td><td> 9</td><td> 9</td><td> 9</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>GP</td><td>F</td><td>19</td><td>U</td><td>GT3</td><td>T</td><td>4</td><td>4</td><td>health </td><td>other   </td><td>⋯</td><td>2</td><td>3</td><td>4</td><td>2</td><td>3</td><td>2</td><td> 0</td><td>10</td><td> 9</td><td> 0</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>GP</td><td>F</td><td>19</td><td>U</td><td>LE3</td><td>T</td><td>1</td><td>1</td><td>at_home</td><td>other   </td><td>⋯</td><td>4</td><td>4</td><td>3</td><td>1</td><td>3</td><td>3</td><td>18</td><td>12</td><td>10</td><td>10</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 33\n",
       "\\begin{tabular}{r|lllllllllllllllllllll}\n",
       "  & school & sex & age & address & famsize & Pstatus & Medu & Fedu & Mjob & Fjob & ⋯ & famrel & freetime & goout & Dalc & Walc & health & absences & G1 & G2 & G3\\\\\n",
       "  & <fct> & <fct> & <int> & <fct> & <fct> & <fct> & <int> & <int> & <fct> & <fct> & ⋯ & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <int>\\\\\n",
       "\\hline\n",
       "\t1 & MS & F & 20 & U & GT3 & T & 4 & 2 & health  & other    & ⋯ & 5 & 4 & 3 & 1 & 1 & 3 &  4 & 15 & 14 & 15\\\\\n",
       "\t2 & GP & F & 19 & U & GT3 & T & 0 & 1 & at\\_home & other    & ⋯ & 3 & 4 & 2 & 1 & 1 & 5 &  2 &  7 &  8 &  9\\\\\n",
       "\t3 & GP & F & 19 & U & GT3 & T & 3 & 3 & other   & other    & ⋯ & 4 & 3 & 3 & 1 & 2 & 3 & 10 &  8 &  8 &  8\\\\\n",
       "\t4 & GP & F & 19 & U & GT3 & T & 3 & 3 & other   & services & ⋯ & 4 & 3 & 5 & 3 & 3 & 5 & 15 &  9 &  9 &  9\\\\\n",
       "\t5 & GP & F & 19 & U & GT3 & T & 4 & 4 & health  & other    & ⋯ & 2 & 3 & 4 & 2 & 3 & 2 &  0 & 10 &  9 &  0\\\\\n",
       "\t6 & GP & F & 19 & U & LE3 & T & 1 & 1 & at\\_home & other    & ⋯ & 4 & 4 & 3 & 1 & 3 & 3 & 18 & 12 & 10 & 10\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 33\n",
       "\n",
       "| <!--/--> | school &lt;fct&gt; | sex &lt;fct&gt; | age &lt;int&gt; | address &lt;fct&gt; | famsize &lt;fct&gt; | Pstatus &lt;fct&gt; | Medu &lt;int&gt; | Fedu &lt;int&gt; | Mjob &lt;fct&gt; | Fjob &lt;fct&gt; | ⋯ ⋯ | famrel &lt;int&gt; | freetime &lt;int&gt; | goout &lt;int&gt; | Dalc &lt;int&gt; | Walc &lt;int&gt; | health &lt;int&gt; | absences &lt;int&gt; | G1 &lt;int&gt; | G2 &lt;int&gt; | G3 &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | MS | F | 20 | U | GT3 | T | 4 | 2 | health  | other    | ⋯ | 5 | 4 | 3 | 1 | 1 | 3 |  4 | 15 | 14 | 15 |\n",
       "| 2 | GP | F | 19 | U | GT3 | T | 0 | 1 | at_home | other    | ⋯ | 3 | 4 | 2 | 1 | 1 | 5 |  2 |  7 |  8 |  9 |\n",
       "| 3 | GP | F | 19 | U | GT3 | T | 3 | 3 | other   | other    | ⋯ | 4 | 3 | 3 | 1 | 2 | 3 | 10 |  8 |  8 |  8 |\n",
       "| 4 | GP | F | 19 | U | GT3 | T | 3 | 3 | other   | services | ⋯ | 4 | 3 | 5 | 3 | 3 | 5 | 15 |  9 |  9 |  9 |\n",
       "| 5 | GP | F | 19 | U | GT3 | T | 4 | 4 | health  | other    | ⋯ | 2 | 3 | 4 | 2 | 3 | 2 |  0 | 10 |  9 |  0 |\n",
       "| 6 | GP | F | 19 | U | LE3 | T | 1 | 1 | at_home | other    | ⋯ | 4 | 4 | 3 | 1 | 3 | 3 | 18 | 12 | 10 | 10 |\n",
       "\n"
      ],
      "text/plain": [
       "  school sex age address famsize Pstatus Medu Fedu Mjob    Fjob     ⋯ famrel\n",
       "1 MS     F   20  U       GT3     T       4    2    health  other    ⋯ 5     \n",
       "2 GP     F   19  U       GT3     T       0    1    at_home other    ⋯ 3     \n",
       "3 GP     F   19  U       GT3     T       3    3    other   other    ⋯ 4     \n",
       "4 GP     F   19  U       GT3     T       3    3    other   services ⋯ 4     \n",
       "5 GP     F   19  U       GT3     T       4    4    health  other    ⋯ 2     \n",
       "6 GP     F   19  U       LE3     T       1    1    at_home other    ⋯ 4     \n",
       "  freetime goout Dalc Walc health absences G1 G2 G3\n",
       "1 4        3     1    1    3       4       15 14 15\n",
       "2 4        2     1    1    5       2        7  8  9\n",
       "3 3        3     1    2    3      10        8  8  8\n",
       "4 3        5     3    3    5      15        9  9  9\n",
       "5 3        4     2    3    2       0       10  9  0\n",
       "6 4        3     1    3    3      18       12 10 10"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "student_data %>%\n",
    "    filter(sex=='F') %>%\n",
    "    arrange(-age) %>%\n",
    "    head()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "plain-honey",
   "metadata": {
    "id": "udeGeg_88V2w",
    "papermill": {
     "duration": 0.028069,
     "end_time": "2022-05-02T12:10:04.421585",
     "exception": false,
     "start_time": "2022-05-02T12:10:04.393516",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Summarize the data\n",
    "\n",
    "What is the average absences of the students?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "ruled-rating",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-02T12:10:04.481879Z",
     "iopub.status.busy": "2022-05-02T12:10:04.479926Z",
     "iopub.status.idle": "2022-05-02T12:10:04.503227Z",
     "shell.execute_reply": "2022-05-02T12:10:04.501833Z"
    },
    "id": "56g7l4lw8V2w",
    "outputId": "651e6c50-ea54-47d5-8192-4d935e3f51fd",
    "papermill": {
     "duration": 0.055017,
     "end_time": "2022-05-02T12:10:04.503402",
     "exception": false,
     "start_time": "2022-05-02T12:10:04.448385",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 1 × 1</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Mean_absences</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>5.708861</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 1 × 1\n",
       "\\begin{tabular}{l}\n",
       " Mean\\_absences\\\\\n",
       " <dbl>\\\\\n",
       "\\hline\n",
       "\t 5.708861\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 1 × 1\n",
       "\n",
       "| Mean_absences &lt;dbl&gt; |\n",
       "|---|\n",
       "| 5.708861 |\n",
       "\n"
      ],
      "text/plain": [
       "  Mean_absences\n",
       "1 5.708861     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "student_data %>%\n",
    "    summarise(Mean_absences = mean(absences))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "complicated-desire",
   "metadata": {
    "id": "uYf201W68V2z",
    "papermill": {
     "duration": 0.027748,
     "end_time": "2022-05-02T12:10:04.559865",
     "exception": false,
     "start_time": "2022-05-02T12:10:04.532117",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Grouping and summarizing\n",
    "\n",
    "Calculate the average absences of both male and female students"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "specialized-arkansas",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-02T12:10:04.622471Z",
     "iopub.status.busy": "2022-05-02T12:10:04.621230Z",
     "iopub.status.idle": "2022-05-02T12:10:04.663177Z",
     "shell.execute_reply": "2022-05-02T12:10:04.661900Z"
    },
    "id": "_T1fmoNb8V20",
    "outputId": "038804b7-e217-44cd-fa1c-f0ac222f40d3",
    "papermill": {
     "duration": 0.073272,
     "end_time": "2022-05-02T12:10:04.663357",
     "exception": false,
     "start_time": "2022-05-02T12:10:04.590085",
     "status": "completed"
    },
    "scrolled": true,
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "`summarise()` has grouped output by 'age'. You can override using the `.groups` argument.\n",
      "\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A grouped_df: 6 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>age</th><th scope=col>sex</th><th scope=col>Mean_absences</th></tr>\n",
       "\t<tr><th scope=col>&lt;int&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>15</td><td>F</td><td>3.894737</td></tr>\n",
       "\t<tr><td>15</td><td>M</td><td>2.863636</td></tr>\n",
       "\t<tr><td>16</td><td>F</td><td>5.888889</td></tr>\n",
       "\t<tr><td>16</td><td>M</td><td>4.980000</td></tr>\n",
       "\t<tr><td>17</td><td>F</td><td>6.913793</td></tr>\n",
       "\t<tr><td>17</td><td>M</td><td>5.800000</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A grouped\\_df: 6 × 3\n",
       "\\begin{tabular}{lll}\n",
       " age & sex & Mean\\_absences\\\\\n",
       " <int> & <fct> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 15 & F & 3.894737\\\\\n",
       "\t 15 & M & 2.863636\\\\\n",
       "\t 16 & F & 5.888889\\\\\n",
       "\t 16 & M & 4.980000\\\\\n",
       "\t 17 & F & 6.913793\\\\\n",
       "\t 17 & M & 5.800000\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A grouped_df: 6 × 3\n",
       "\n",
       "| age &lt;int&gt; | sex &lt;fct&gt; | Mean_absences &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| 15 | F | 3.894737 |\n",
       "| 15 | M | 2.863636 |\n",
       "| 16 | F | 5.888889 |\n",
       "| 16 | M | 4.980000 |\n",
       "| 17 | F | 6.913793 |\n",
       "| 17 | M | 5.800000 |\n",
       "\n"
      ],
      "text/plain": [
       "  age sex Mean_absences\n",
       "1 15  F   3.894737     \n",
       "2 15  M   2.863636     \n",
       "3 16  F   5.888889     \n",
       "4 16  M   4.980000     \n",
       "5 17  F   6.913793     \n",
       "6 17  M   5.800000     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "student_data %>%\n",
    "    group_by(age, sex) %>%\n",
    "    summarise(Mean_absences = mean(absences)) %>%\n",
    "    head()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "flush-presentation",
   "metadata": {
    "cell_style": "split",
    "id": "KDSCD1j-8V2b",
    "papermill": {
     "duration": 0.029517,
     "end_time": "2022-05-02T12:10:04.721012",
     "exception": false,
     "start_time": "2022-05-02T12:10:04.691495",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## 4. Recommended Books\n",
    "<a id=\"recommended_books\"></a>\n",
    "\n",
    "R for Data Science (https://r4ds.had.co.nz/)\n",
    "\n",
    "<img src=\"https://d33wubrfki0l68.cloudfront.net/b88ef926a004b0fce72b2526b0b5c4413666a4cb/24a30/cover.png\" width=\"100\" style=\"float:left\">"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "satisfactory-shark",
   "metadata": {
    "papermill": {
     "duration": 0.031283,
     "end_time": "2022-05-02T12:10:04.783759",
     "exception": false,
     "start_time": "2022-05-02T12:10:04.752476",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "\n",
    "An Introduction to Statistical Learning (https://www.springer.com/de/book/9781461471370)\n",
    "\n",
    "<img src=\"https://images-na.ssl-images-amazon.com/images/I/41RgG05lZaL._SX329_BO1,204,203,200_.jpg\" width=\"100\" style=\"float:left\">"
   ]
  }
 ],
 "metadata": {
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
   "version": "3.6.3"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 7.298484,
   "end_time": "2022-05-02T12:10:04.924902",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-05-02T12:09:57.626418",
   "version": "2.3.3"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
