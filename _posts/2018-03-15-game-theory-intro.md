---
layout: post
title: Game Theory Introduction
date: 2018-03-01
categories: website
---

{% include lib/mathjax.html %}
   
Some notes on the basics of game theory, taken from {% cite game %}.

## Definition of a Game

A game consists of a set of \\( N \\) players and a set of \\( A_{i} \\) actions for each player \\( i \in N \\).  The set of outcomes, \\( A = \times_{j \in N} A_{j} \\), is the set of all possible action profiles, which in turn contain one action for each player:

\\[ 
a 
= 
\(a_{j}\)_{j \in N}  
=
\\begin{pmatrix}
a\_{1} \\\
a\_{2} \\\
\\vdots \\\
a\_{|N|}
\\end{pmatrix}
\\] 

for \\( a \in A \\).  An alternate representation of a profile \\( \( x \) \\) for \\( i \in N \\) is \\( \( x_{-i}, x_{i} \) \\), where \\( x_{-i} = \( x_{j}\)\_{j \in N \backslash \\{i\\}} \\) representing all members of profile \\(  \( x \) \\) for all players except \\( i \\), and \\( x_{i} \\) is the member of profile \\( \( x \) \\) for player \\( i \\).

A preference relation \\( \succeq_{i} \\) on \\( A \\) for each \\( i \in N \\) indicates which action profiles (outcomes) are preferred by the player. This may also be put in terms of a utility function \\( u_{i} : A \to \mathbb{R} \\) where \\( u_{i}\(a\) \geq u_{i}\(b\) \implies a \succeq_{i} b \\). 

A game may be summarized as

\\[
\langle N, \(A_{i}\), \(\succeq_{i}\) \rangle
\\]

or

\\[
\langle N, \(A_{i}\), \(u_{i}\) \rangle.
\\]

## Nash Equilibrium

A Nash Equilibrium of a game \\( \langle N, \(A_{i}\), \(\succeq_{i}\) \rangle \\) is a profile \\( a^{\ast} \in A \\) such that \\( \( a_{-i}^{\ast}, a_{i}^{\ast} \) \succeq_{i} \( a_{-i}^{\ast}, a_{i} \) \\) for all \\( a_{i} \in A_{i} \\). Each player \\( i \in N \\) prefers their action \\( a_{i}^{\ast} \\) in profile \\( \( a^{\ast} \) \\) more than any other given the actions \\( a_{-i}^{\ast} \\) of the other players.  In other words, no single player can profitably deviate from their action in \\( \( a^{\ast} \) \\).


References
----------

{% bibliography --cited %}
