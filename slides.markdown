% Some title...
% Anton Älgmyr, Jose Perez Hidalgo [sic, from group pdf]
% 26 April 2017

# History lesson!



# Current examples

# DNNs: Quick background

## Primer on (deep) neural networks

* Inspired by the brain, has large number of interconnected neurons
* Structure and strength of these connections determine behavior
* *Deep* means the network has a large number of _layers_ of neurons
* Highly expressive, great performance on recognition tasks
* General purpose structure trained for a specific task

![](img/Net.png){.plain}

## Sounds good, what's the problem?

* Expressiveness bring not only positives

* State space is huge, sparse knowledge of what a network actually does

* Turns out that this is useful for fooling a neural network

# False negatives

## “Intriguing properties of neural networks”

Szegedy et al [@szegedy] showed that

* Small pertubations on an recognized image yields misclassifications

* Hardly perceptible change to a human

* The pertubations turned out to *not* be specific to the training set used

* Rather invariant to hyperparameters and the chosen subset of training data

## Adversarial examples

* Examples was generated (optimized) for a number of networks

    - AlexNet (supervised, multi-class image classifier)

    - QuocNet (unsupervised, used as a binary classifier)

    - Simple fully connected network (supervised, MNIST)

    - Classifier+autoencoder (MNIST)


## AlexNet (multi-class classifier)

Image sets: original, enhanced difference and changed image

![ostriches1](img/negative1.png){height=350}
![ostriches2](img/negative2.png){height=350}

## Quocnet (binary car classifier)

Image sets: orignal, changed image and enhanced difference
![quoc1](img/quocnet_distorted1.png){height=175}
![quoc2](img/quocnet_distorted2.png){height=175}

## MNIST (FC and AE)

Adversial examples, 0% accuracy

![](img/ce_200-200-10.png){height=150}
![](img/ce_softmax.png){height=150}

Added gaussian noise, 51% accuracy

![](img/ce_random.png){height=150}

## Conclusion
We can create images easily recognizable by a human that is foreign to a neural network.


# False positives

### “Deep Neural Networks are Easily Fooled:<br> High Confidence Predictions for Unrecognizable Images”
Nguyen, Yosinski and Clune [@nguyen]

* Investigated another difference between DNN and human vision

* Looked at networks trained on the ImageNet and MNIST datasets

* Optimized adversarial exemples using evolutionary algorithms or gradient ascent

* Direct (pixelwise) and indirect (feature based, CPPN) encoding

## MNIST handwritten digit database (LeNet)

<div class=left>
EA, direct encoding<br>(99.99% certainty)

![](img/1412/whitenoise_lenet_images_5_runs.pdf.png){height=200}
</div>

<div class=right>
EA, indirect encoding<br>(99.99% certainty)

![](img/1412/mnist_images_5_runs.pdf.png){height=200}
</div>

## ImageNet: Evolutionary Algorithm

<div class=left>
* Direct encoding not successful over all classes

* The ones with high confidence are at large indescernible

* Indirect encoding was effective and many examples are nonsensical to humans
</div>
<div class=right>
![](img/1412/imagenet_16_images_1.jpg){height=450}
</div>

## ImageNet: Gradient Ascent

* Very different results, still hard to identify by humans
* Interestingly, knowing the class you can identify details

![](img/1412/gradient_descent_nodecay_less.jpg){height=360}

## Conclusion
We can create images easily recognizable by a neural network that is foreign to a human.

# So, why does this matter?

## Insights

* DNN and humans see things differently

* These kinds of studies helps to concretize this

* Another way of understanding how DNNs behave

## Improvements

* Insights about DNNs lead to new methods to combat adversarial examples

* Has lead to numerous papers, e.g. [@fawsi] [@papernot] [@papernot2] [@goodfellow]

* Will likely lead to long time improvement of DNNs

#

## Summary
We said stuff, some of which could be interesting to highlight.

## Thank you for listening!

## References
