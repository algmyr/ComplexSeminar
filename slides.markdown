% What AIs Can't Do
% Criticism Throughout History and Present Issues
% Anton Älgmyr,	J. Esteban Pérez-Hidalgo <br> 26 April 2017

# Early approach on AI:<br>Back to the 60s

## Good Old Fashioned Artificial Intelligence (GOFAI)

* Physical Symbolic Systems: All knowledge and actions can be expressed in terms of patterns of symbols that can be manipulated and combined to produce new expressions

## Early Expectations for the following 10 years:

A digital computer would... 

* ...be the world's chess champion.

* ...compose music that had considerable aesthetic value
	
* ...discover and prove an important mathematical theorem

* Theories in psychology will take the form of a computer program

## Counterpart: What computers can't do,<br>Hubert Dreyfus' views on AI research
	
* Alchemy and Artificial Intelligence (1965)

* What Computers Can't Do; A Critique of Artificial Reason (1972)	 

## Wrong assumptions of AI researchers

* AI was obsolete from its foundation

## Biological assumption

* On/Off switches of a computer are comparable to actions of neurons

## Psychological assumption

* Information processing relates to the processes of human cognition

## Epistemological assumption

* Actions and knowledge can be represented in a formal way
* This formalism can be used to reproduce the phenomena

## Ontological assumption

* All the existing knowledge can be formalized as a set determined set of elements.

## The Chinese room argument

* Intelligence lies on the meaning

## Embodied cognition

* Cognition is shaped by aspects of the entire body of the organism
* A challenge to the Cartesian dualism

# Modern approach:<br>90s till nowadays

## Probabilistic and statistical methods

* Big data

* Machine learning

## Today's criticism

* Modern methods exploit the improvement on computer performance

* AI field is still attached to reductionism and concieve a mind separated from the body

* Neural networks are black boxes

## Do old assumptions still hold?
* What's the goal of the development of an artificial *intelligence*?

# A modern case study,<br>fooling neural networks

## Quick primer on (deep) neural networks

* Inspired by the brain, has large number of interconnected neurons


* Structure and strength of these connections determine behavior

* *Deep* means the network has a large number of _layers_ of neurons

* Highly expressive, great performance on recognition tasks

* General purpose structure trained for a specific task

![](img/Net.png){.plain}

## Sounds good, what's the problem?

* Expressiveness bring not only positives

* State space is huge, sparse knowledge of what the internals of a network actually does

* Turns out that these facts are useful for fooling a neural network


# Computer vision:<br>False negatives

## “Intriguing properties of neural networks”
Szegedy et al [@szegedy] showed that

* Small pertubations on a recognized image yields misclassifications

* Hardly perceptible change to a human

* The pertubations turned out to *not* be specific to the training set used

* Rather invariant to hyperparameters and the chosen subset of training data

## Adversarial examples

* Examples was generated (optimized through gradiend ascent) for a number of networks

    - AlexNet (supervised, multi-class image classifier)

    - QuocNet (unsupervised, used as a binary classifier)

    - Simple fully connected network (supervised, MNIST)

    - Classifier+autoencoder (MNIST)

## MNIST
Adversial examples, 0% accuracy

![](img/ce_200-200-10.png){height=150}
![](img/ce_softmax.png){height=150}

Added gaussian noise, 51% accuracy

![](img/ce_random.png){height=150}


## Binary car classifier (QuocNet)
Image sets: orignal, changed image and enhanced difference
![quoc1](img/quocnet_distorted1.png){height=175}
![quoc2](img/quocnet_distorted2.png){height=175}


## Multi-class classifier (AlexNet)
Image sets: original, enhanced difference and changed image

<div>
![ostriches1](img/negative1.png){height=350}
![ostriches2](img/negative2.png){height=350}
</div>
<div id=ostrich class="fragment" data-fragment-index="0">
![](img/ostrich.jpg){width=400}
</div>

## Conclusion
We can create images *easily recognizable* by a human<br>that is *foreign* to a neural network.


# Computer vision:<br>False positives

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
We can create images *easily recognizable* by a neural network<br>that is *foreign* to a human.

# So, why all the pessimism?<br><span class="fragment" data-fragment-index="0">Because it's a subject we care about.</span>

## Hype is not all good

* Uncritical optimism is inspiring, but leads to unrealistic expectations

* Rigorous critisism can hint at what subjects are worth pursuing

* Could also spur technical innovation to prove the critisism wrong

## Case study: Insights

* DNN and humans see things differently

* The two papers mentioned here helps to concretize this

* Gives another way of understanding how DNNs behave

## Case study: Improvements

* These insights has lead to methods to combat adversarial examples

* Has lead to numerous papers, e.g. [@fawsi] [@papernot] [@papernot2] [@goodfellow]

* Will likely lead to long time improvement of DNNs

## Summary
Human like AI
: has faced harsh critisism and has fundamental issues, including the assumptions highlighted by Dreyfus

AI as a tool
: does not make the same assumptions but still has substantial issues, in part because we don't really know the inner workings of the tool

Critisism
: can be a driving force of understanding and innovation by highlighting problems while uncritical praise tend to downplay or ignore problems

# Thank you for listening!

## References
<div id="refs"></div>

## Questions

<div id="qs">
* Optical illusions can be thought of as causing false positives when inputed to the human neural network. *Are these images equivalent to the false positives of the ANN? If so what does it tell us about the ANN? If not, what is the difference?*
<hr>
* The two parts of this presentation relate to different areas of research in AI: general purpose super-intelligence and task specific problem solving. In the case of the first interpretation, to understand what is the goal of such research we need to have a working definition of 'intelligence'. *Can you come up with one?* One aspect that is generally not considered is perception. *How does an AI need to relate to the world?*
<hr>
* *Using this working definition, can you answer Dreyfus and show that you are not making the assumptions he points out: biological, psychological, epistemological, ontological, mind-body separation, reductionism?*
<hr>
* A common approach to machine learning is representation learning, which takes a set of features of the dataset and optimize a model to describe it. Deep learning is an end to end model that does both feature extraction and representation learning given raw data. While highly successful, we strictly don't know why/how this works.<br>*In the light of shown adversarial examples, do you think deep learning is a reasonable strategy? What's your opinion of using tech that we still don't understand in applications?*
</div>

## Summary of concepts...

<div style="font-size: 0.9em">
Biological assumption
: On/off switches of a computer are comparable to actions of neurons

Psychological assumption
: Information processing relates to the procecess of human cognition

Epistemological assumption
: Actions and knowledge can be represented in a formal way. This formalism can be used to reproduce the phenomena

Ontological assumption
: All the existing knowledge can be formalized as a set determined set of elements

Mind-body separation
: Postulate made by Descartes, mind and body as separated entities.

Reductionism
: Scientific attempt to provide explanation in terms of ever smaller entities
</div>
