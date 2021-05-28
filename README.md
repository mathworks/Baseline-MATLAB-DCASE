# Unofficial Baseline System for DCASE2021 Task1A Using MATLAB&reg;

This repo contains an unofficial MATLAB implementation of [DCASE2021 Task 1A baseline code](https://github.com/marmoi/dcase2021_task1a_baseline), which is part of the [DCASE 2021 challenge](http://dcase.community/).

Copyright 2021 The MathWorks, Inc.

## Mathworks Products (http://www.mathworks.com)
Requires MATLAB release R2021a or newer.
To train the baseline system, the following toolboxes are required:

- [Audio Toolbox&trade;](https://www.mathworks.com/products/audio.html)
- [Deep Learning Toolbox&trade;](https://www.mathworks.com/products/deep-learning.html)

To accelerate training, the following toolbox is recommended:

- [Parallel Computing Toolbox&trade;](https://www.mathworks.com/products/parallel-computing.html)

To deploy a quantized network to C++ code, the following toolbox is required:

- [MATLAB&reg; Coder&trade;](https://www.mathworks.com/products/parallel-computing.html)

## Known Differences with Official Baseline System
This unofficial baseline has the following known differences with the official baseline. There may be additional differences.

1. The mini-batch size was increased from 16 to 256.
2. A piecewise learn rate schedule was added with a drop period of 100 epochs. The max number of epochs was reduced from 200 to 120.
3. This example uses and evaluates the final state of the network, after all epochs are complete. The official baseline uses the best peforming model over all of the epochs.
4. This example only trains the network and evalutes the system once. The official baseline trains and evaluates 10 times to provide additional statistical analysis.
5. This example uses int8 quantization instead of the half-precision quantization in the official baseline.

## Getting Started
To run this baseline, add [Unofficial_DCASE2021_Task1A_Baseline_Using_MATLAB.mlx](https://insidelabs-git.mathworks.com/bhemmat/matlab-dcase-baseline/-/blob/main/Unofficial_DCASE2021_Task1A_Baseline_Using_MATLAB.mlx) and [classifyAcousticScene.m](https://insidelabs-git.mathworks.com/bhemmat/matlab-dcase-baseline/-/blob/main/classifyAcousticScene.m) to your current folder in MATLAB and then run [Unofficial_DCASE2021_Task1A_Baseline_Using_MATLAB.mlx](https://insidelabs-git.mathworks.com/bhemmat/matlab-dcase-baseline/-/blob/main/Unofficial_DCASE2021_Task1A_Baseline_Using_MATLAB.mlx). The example loads and examines the data, defines and trains a model, quantizes the model, and evaluates the quantized model. 

You can view a PDF of the executed example in the file [Unofficial_DCASE2021_Task1A_Baseline_Using_MATLAB.pdf](https://insidelabs-git.mathworks.com/bhemmat/matlab-dcase-baseline/-/blob/main/Unofficial_DCASE2021_Task1A_Baseline_Using_MATLAB.pdf).

## License
The license is available in the [License.txt](https://insidelabs-git.mathworks.com/bhemmat/matlab-dcase-baseline/-/blob/main/License.txt) file in this repository.

## References
[1] Toni Heittola, Annamaria Mesaros, and Tuomas Virtanen. Acoustic scene classification in dcase 2020 
challenge: generalization across devices and low complexity solutions. In Proceedings of the Detection and 
Classification of Acoustic Scenes and Events 2020 Workshop (DCASE2020). 2020. Submitted. URL: https://
arxiv.org/abs/2005.14623.
