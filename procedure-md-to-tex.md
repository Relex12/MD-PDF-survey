# Liste des modifications pour compiler `.tex` généré avec Pandoc

Pour un document LaTeX classique :

1.  Entourer le contenu généré par Pandoc du contenu de Template.tex
2.  Remplacer le titre et la date
3.  Supprimer la bibliographie générée par Pandoc
4.  Utiliser la balise de Template.tex pour l'astract généré
5.  Supprimer les balises `\tightlist`
6.  Remplacer les `{[}@` par `\cite{` et les `{]}` par `}`
7.  Pour centrer les tableaux, avant les `\begin{longtable}` ajouter `\begin{table}[!h] \setlength{\LTleft}{-20cm plus -1fill}\setlength{\LTright}{\LTleft}` et après la description de la table ajouter `\end{table}\addtocounter{table}{-1}` (car `\table` et `\caption` incrémentent chacun)
8.  Pour ajouter une description à un tableau, ajouter `\caption{[...]}` après le `\begin{table}`
9.  Pour les orienter en paysage, entourer le tableau et la description de `\begin{landscape}` et `\end{landscape}`
10.  Entourer les images de `\begin{center}` et `\end{center}` pour les centrer
11.  Pour le formatage des listes à puces, remplacer les `\begin{itemize}` et `\end{itemize}` par `\begin{description}` et `\end{description}`, puis les `\item \textbf{element}` par `\item[element]`
12.  Pour ajouter dans la bibliographie les références non citées, ajouter `\nocite{*}` avant le `\printbibliography` en fin de fichier
13.  Pour ajouter une description à une figure, utiliser `\caption{}` comme pour les tableaux
14.  Pour faire référence à un tableau ou une figure, utiliser `\label{}` dans l'élément et `\ref{}` pour la référence

Pour une présentation Beamer :

1.  Ajouter `\documentclass{beamer}\begin{document}` au début et `\end{document}` à la fin
2.  Ajouter `\title{}`, `\author{}` et `\date{}` entre `\documentclass{}` et `\begin{document}`
3.  Ajouter le thème à utiliser, par exemple Copenhagen `\usetheme{Copenhagen}`
4.  Ajouter une slide titre `\begin{frame}\titlepage\end{frame}` après `\begin{document}`
5.  Retirer les balises `\tightlist`

>   Voir sur Overleaf pour d'autres fonctionnalités
