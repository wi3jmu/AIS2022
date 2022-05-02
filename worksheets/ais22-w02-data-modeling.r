{"cells":[{"source":"<a href=\"https://www.kaggle.com/code/matjes/ais22-w02-data-modeling?scriptVersionId=94569556\" target=\"_blank\"><img align=\"left\" alt=\"Kaggle\" title=\"Open in Kaggle\" src=\"https://kaggle.com/static/images/open-in-kaggle.svg\"></a>","metadata":{},"cell_type":"markdown","outputs":[],"execution_count":0},{"cell_type":"markdown","id":"1c07aba9","metadata":{"id":"19WySn1P8V1U","papermill":{"duration":0.004912,"end_time":"2022-05-02T12:45:08.957959","exception":false,"start_time":"2022-05-02T12:45:08.953047","status":"completed"},"tags":[]},"source":["*Analytical Information Systems*\n","\n","# Data Modeling\n","\n","Matthias Griebel<br>\n","Chair of Information Systems and Business Analytics \n","\n","SS 2022\n","\n","***\n","# Table of Contents\n","\n","* [1. Recap: Entity-Relationship Model](#em_model)\n","* [2. Exercises](#exercises)\n","    * [2.1. Exam AIS SS 2018, Question 1](#ss18)\n","    * [2.2. Exam AIS WS 2021/2022, Question 1](#ws2122)\n","\n","***\n","\n","__This Tutorial covers the architectural compoments of ARIS (Architecture of Integrated Information Systems)__\n","\n","The ARIS concept ensures that an enterprise information system can completely meet its requirements.\n","\n","<img src=\"https://github.com/matjesg/AIS_2019/raw/master/notebooks/images/01/aris.png\" width=\"500\">\n","\n","\n","## 1. Entity-Relationship Model<a id=\"em_model\"></a>\n","\n","***Recap***\n","\n","*From [wikipedia]()*: An entity–relationship model (or ER model) describes interrelated things of interest in a specific domain of knowledge. A basic ER model is composed of entity types (which classify the things of interest) and specifies relationships that can exist between entities (instances of those entity types).\n","\n","The main components of an ER Model are:\n","- Entity: Entirety of similar objects\n","- Relationship: Entirety of relationships between object\n","- Attribute: Property of an entity or relationship type\n","    - Key attributes uniquely identify an entity\n","- Cardinalities: The number of times an entity of an entity set participates in a relationship\n","\n","<span style=\"color:red\">***Your turn***</span>\n","\n","****\n","\n","## 2. Exercises<a id=\"exercises\"></a>\n","\n","## 2.1. Exam AIS SS 2018, Question 1<a id=\"ss18\"></a>\n","\n","Vaccinations play a key role to fight and end the ongoing COVID-19 pandemic. To this end, vaccination centers are established. Vaccination centers handle a multitude of processes and interact with numerous partners:\n","\n","- Appointments specify a certain date-time and are identified by an ID. They use a dose and serve a patient. Furthermore, successful completion of an appointment has to be tracked.\n","- Doses are characterized by the production lot which in turn specifies the ID, the manufacturer and the date-time.\n","- Patients provide their contact information and their social security number.\n","\n","Please create an Entity-Relationship diagram that captures this information about the vaccination process. Be certain to indicate cardinality constraints as well as primary keys (underline attributes).\n"]},{"cell_type":"code","execution_count":1,"id":"9eaefd19","metadata":{"execution":{"iopub.execute_input":"2022-05-02T12:45:08.972307Z","iopub.status.busy":"2022-05-02T12:45:08.969394Z","iopub.status.idle":"2022-05-02T12:45:09.102546Z","shell.execute_reply":"2022-05-02T12:45:09.100741Z"},"papermill":{"duration":0.141217,"end_time":"2022-05-02T12:45:09.102734","exception":false,"start_time":"2022-05-02T12:45:08.961517","status":"completed"},"tags":[]},"outputs":[],"source":["# Sketch your ERM Model here\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","# ... or somewhere else!"]},{"cell_type":"markdown","id":"fed1992d","metadata":{"papermill":{"duration":0.002988,"end_time":"2022-05-02T12:45:09.108786","exception":false,"start_time":"2022-05-02T12:45:09.105798","status":"completed"},"tags":[]},"source":["## 2.1. Exam AIS WS 2021/2022, Question 1<a id=\"ws2122\"></a>\n","\n","tbd."]}],"metadata":{"kernelspec":{"display_name":"R","language":"R","name":"ir"},"language_info":{"codemirror_mode":"r","file_extension":".r","mimetype":"text/x-r-source","name":"R","pygments_lexer":"r","version":"3.6.3"},"papermill":{"default_parameters":{},"duration":3.433071,"end_time":"2022-05-02T12:45:09.224222","environment_variables":{},"exception":null,"input_path":"__notebook__.ipynb","output_path":"__notebook__.ipynb","parameters":{},"start_time":"2022-05-02T12:45:05.791151","version":"2.3.3"}},"nbformat":4,"nbformat_minor":5}