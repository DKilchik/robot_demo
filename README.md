### Robot Framework demo

cmd to run and generate report
~~~
robot -d results path_to_test_file
~~~


to generate allure reports 
~~~
pip install allure-robotframework
robot --listener allure_robotframework ./path_to_test
allure serve path/to/artefacts
~~~
