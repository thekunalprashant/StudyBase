---
layout: page
title: Inequalities
description: AM-GM, Cauchy-Schwarz, and rearrangement inequality
category: Essential Algebra
permalink: /topics/inequalities/
---

Inequalities are a cornerstone of competitive mathematics, appearing frequently in algebra, number theory, and even geometry. Mastery of these tools allows for rapid bounds-testing and optimization.

<h2>Core Inequalities</h2>

<h3>AM-GM Inequality</h3>
The Arithmetic Mean-Geometric Mean inequality states that for non-negative real numbers $a_1, a_2, \dots, a_n$:
$$\frac{a_1 + a_2 + \dots + a_n}{n} \geq \sqrt[n]{a_1 a_2 \dots a_n}$$
Equality holds if and only if $a_1 = a_2 = \dots = a_n$.

<h3>Cauchy-Schwarz Inequality</h3>
For any sequences of real numbers $a_1, a_2, \dots, a_n$ and $b_1, b_2, \dots, b_n$:
$$(a_1^2 + a_2^2 + \dots + a_n^2)(b_1^2 + b_2^2 + \dots + b_n^2) \geq (a_1b_1 + a_2b_2 + \dots + a_nb_n)^2$$

<h3>Rearrangement Inequality</h3>
For two sequences of real numbers sorted in the same order $a_1 \leq a_2 \leq \dots \leq a_n$ and $b_1 \leq b_2 \leq \dots \leq b_n$:
$$a_1b_1 + a_2b_2 + \dots + a_nb_n \geq a_1b_{\sigma(1)} + a_2b_{\sigma(2)} + \dots + a_nb_{\sigma(n)} \geq a_1b_n + a_2b_{n-1} + \dots + a_nb_1$$
where $\sigma$ is any permutation of $\{1, 2, \dots, n\}$.