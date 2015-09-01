## Aim

In this unit we write the function ``makeDesignMatrix()`` that will help us do linear regression in due course. The idea here is to specify the on/off timing (say, for a visual stimulus in an fMRI experiment)

- 2 obligatory input arguments: ``blockOne, n``
- 2 optional input argument: ``TR, hrf``
- returns: 
	+ ``d`` (1-column design matrix taking into account the HRF)
	+ ``dRaw`` (same as d, but without HRF). 

## Notes

- the file ``makeDesignMatrix.p`` is the pcode/compiled version that runs (but for which you cannot see the code). The ``.m`` file here is just to provide the help text - you need to add the code to implement the function yourself!

- ``dRaw`` contains ``n`` repeats of ``blockOne`` in succession, 
- ``d`` is the same as ``dRaw``, but convolved with a haemodynamic response function. 
- ``d`` should be returned such that mean(d) = 0
- ninja skills: how to handle non-blocked designs?

