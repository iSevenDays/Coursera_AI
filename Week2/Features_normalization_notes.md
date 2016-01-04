latex input:    mmd-article-header  
Title:          MultiMarkdown Math Example  
latex input:    mmd-article-begin-doc  
latex footer:   mmd-memoir-footer  
HTML header:    <script type="text/javascript"
                src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
                </script>



Mean normalization<br>
\\[ {x}_{i}=\frac{{x}_{i} - µ}{max - min} \\]
Where µ is a mean of an array (mean(X) in Matlab)<br>
and range is (max - min) (std(X) in Matlab)

Normal equations

ϴ = (X^T X)​^-1^ X^T^ y

Matlab:<br>
A = (X' * X);<br>
theta = inv(A) * X' * y;

<center>Comparison of Gradient descent and Normal equation</center>

| Gradient descent| Normal equation|<br>  
|  ------	| ------	| ------	|  
| Need to chose alpha(lr)	| No need to choose alpha	|  <br>  
| Needs many iterations | Don't need to iterate |  
| Works well even if n(features) is large | Slow if n is large | <br>  
| | Need to compute (X^T X)​^-1^, X is n * n | <br>  
| Use when n >= 10 000 | Use when n <= 10 000 |  