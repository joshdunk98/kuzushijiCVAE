# kuzushijiCVAE
a CVAE model for generating Japanese Kuzushiji

Before attempting to run the demo, please make sure that you have a version of Python 3.7 or greater installed on your machine. If not, please visit this link and find a version that satisfies the requirements given: https://www.python.org/downloads/ 

Additionally, make sure that you have jupyter notebook installed as well as the necessary libraries required to run the code. If you already have python installed, you can simply run:

    python -m pip install numpy matplotlib sklearn tensorflow===2.4.3 jupyter
    
Make sure that the tensorflow version installed is 2.4.3; otherwise, the generative models will not load correctly.


The purpose of the CVAE is to introduce a conditional generative model that will generate quality kuzushiji images to compensate for lack of data or data imbalance. By generating enough kuzushiji images, the desire is to improve the performance of models by simply introducing more data without the need to develop complex models. We use data from https://github.com/rois-codh/kmnist to train the generative model to create the augmented data. Please follow the instructions detailed in Demo.ipynb to learn how to generate kuzushiji images and evaluate their quality using a CNN model.