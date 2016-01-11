latex input:    mmd-article-header  
Title:          MultiMarkdown Math Example  
latex input:    mmd-article-begin-doc  
latex footer:   mmd-memoir-footer  
HTML header:    <script type="text/javascript"
                src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
                </script>

##Gradient descent

To minimize J(ϴ):
\\[

\text{Repeat until convergence} \: \{  \\
ϴ_{j} := ϴ_{j}\:-\: \alpha\frac{\partial}{\partial\: ϴ_{j}} J(\:ϴ\:) = ϴ_{j}\:-\: \alpha \frac{1}{m} \sum\limits_{i=1}^m (\:h_{0}(x^{(i)}) - y^{(i)}\:)\: x_{j}
\\
\text{simultaneously update all}\:ϴ_{j}
   \\ \}
\\]

## Mean normalization<br>
\\[ {x}_{i}=\frac{{x}_{i} - µ}{max - min} \\]
Where µ is a mean of an array (mean(X) in Matlab)<br>
and range is (max - min) (std(X) in Matlab)

Normal equations

ϴ = (X^T X)​^-1^ X^T^ Y

Matlab:<br>
A = (X' * X);<br>
ϴ = inv(A) * X' * y;

##Comparison of Gradient descent and Normal equation

| Gradient descent| Normal equation|<br>  
|  ------	| ------	| ------	|  
| Need to chose alpha(lr)	| No need to choose alpha	|  <br>  
| Needs many iterations | Don't need to iterate |  
| Works well even if n(features) is large | Slow if n is large | <br>  
| | Need to compute (X^T X)​^-1^, X is n * n | <br>  
| Use when n >= 10 000 | Use when n <= 10 000 |  