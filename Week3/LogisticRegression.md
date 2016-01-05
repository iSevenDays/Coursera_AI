latex input:    mmd-article-header  
Title:          MultiMarkdown Math Example  
latex input:    mmd-article-begin-doc  
latex footer:   mmd-memoir-footer  
HTML header:    <script type="text/javascript"
                src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
                </script>


##Previous<br>
h(x) = ϴ^T^X<br><br>
will look like <br>
h(x) = g(ϴ^T^X)
<center> Sigmoid (Logistic) function </center>
\\[ g_{z} = \frac{1}{1+e^{-z})} \\] <br>
###Combining previous equation into one will look like

\\[h(x) = \frac{1}{1+e^{-ϴ^{T}X}} \\] <br>

###Cost function will look like

\\[
    Cost(\:h_{0}(x^{(i)}, y^{(i)})\:)= 
\begin{cases}
    -log(\:h_{0}(x)\:), & \text{if } y = 1\\
    -log(\:1 - h_{0}(x)\:), & \text{if }   y = 0 
\end{cases}
\\]

###Computing cost function
\\[
    J(ϴ) =\frac{1}{m} \sum\limits_{i=1}^m Cost(\:h_{0}(x^{(i)}, y^{(i)})\:)= -\frac{1}{m} \sum\limits_{i=1}^m [y^{(i)}\:log\ h_{ϴ}(x^{i)}) + (1 - y^{(i)}))\:log\ (1 - h_{ϴ}(x^{(i)}))]
\\]

##To minimize J(ϴ):
\\[

\text{Repeat} \: \{  \\
ϴ_{j} := ϴ_{j}\:-\: \alpha\frac{\partial}{\partial\: ϴ_{j}} J(\:ϴ\:) = ϴ_{j}\:-\: \alpha \frac{1}{m} \sum\limits_{i=1}^m (\:h_{0}(x^{(i)}) - y^{(i)}\:)\: x_{j}
\\
\text{simultaneously update all}\:ϴ_{j}
   \\ \}
\\]