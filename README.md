# 2022 Quantitative Biology Bootcamp

Welcome to the 2022 QB Bootcamp of the School for Biological Sciences at Cold Spring Harbor Laboratory! This Github repository contains the Jupyter notebooks, shell scripts, and datasets that we will work through in this bootcamp. 

## Summary

Repository URL: https://github.com/jbkinney/22e_qbbootcamp

Lead Instructor: 
- Justin Kinney (<jkinney@cshl.edu>), Associate Professor

Schedule:
- Day 1: Monday, 29 August 2022, 10am - 5pm, Wendt Conference Room, Wendt Bldg.
- Day 2: Tuesday, 30 August 2022, 10am - 6pm, James Library, James Bldg.
- Day 3: Wednesday, 31 August 2022, 2pm - 6pm, Hershey East Room, Hershey Bldg.

## Installing Python 3.9 

Students are asked to install the Anaconda distribution of Python 3.9, on their own computers. This is available at https://www.anaconda.com/products/distribution. 

## Windows laptops

Students with Windows laptops must also install the "Git BASH" tool to prepare for the Bootcamp. You can download it by going to https://gitforwindows.org and clicking the Download button. The installation asks many questions but fortunately provides default answers that work well for the course.

We will use GitBash for the "The Unix command line" section and for logging into Elzar, the high-performance computing cluster on campus.

## Elzar exercise

To log into the Elzar cluster, execute this at your command line:

```ssh [user]@bamdev2.cshl.edu```

where ``[user]`` is your CSHL username (e.g. mine is ``jkinney``). Then enter your CSHL password. 

To download elzar_exercise.tar.gz to Elzar, execute:

```wget --no-check-certificate "https://github.com/jbkinney/22e_qbbootcamp/raw/main/elzar_exercise.tar.gz"```

Then to unpack, execute:

```tar -zxvf elzar_exercise.tar.gz```
