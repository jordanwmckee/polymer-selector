This is where you put your layout skeletons -- but NO css js code or content.

Use a template language like Django's builtin template language, Smarty or Twig
for PHP, Cheetah for Python or whatever works for you! Just use one!

If you must (or if you don't want to install/maintain extra bits of software)
you can use PHP as a fairly workable template language by using the <?=$variable?>
construct. But BEWARE: there are zillions of pitfalls to this approach, the
biggest of which is the extreme temptation to write code in your template.
Don't. Just don't. There's always a better way.

The example templates in this folder use H2O for PHP. Get it here:
http://www.h2o-template.org/

