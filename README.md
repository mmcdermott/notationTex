# `notation`: Definitions for consistent, usable notation for math and CS concepts in LaTeX

This package provides functionality to define notation in a LaTeX document by concept, rather than visual
style, then render a table demonstrating what specific display styles mean in the context of your defined
styles. Various subsidiary packages (see below) provide
pre-specified notation elements for common mathematical and computer science concepts, which can be used as
well.

## Quick Start


### 1. Installation

This package is (will be) available on CTAN and can be installed using your LaTeX package manager.

### 2. Load the package

```latex
\usepackage{notation}
```

### 3. Define notation

To define notation, you use the `\DeclareNotation` command. The first argument is the name of the notation
macro, the second (optional) argument is the [argument specifier in xparse format](), the third argument is the
function definition of your notation macro (using `#1` for the first argument, `#2` for the second, etc., as
normal), and the fourth argument is an example of your notation element in use (which will be printed in the
notation table), and the last element is the description that should be included in the notation element to
define this style. See below for two examples:

##### Real Numbers
Thie example defines the set of real numbers:
```latex
\DeclareNotation{\R}{\mathbb{R}}{The set of real numbers.}
```

This would render the symbol $\mathbb{R}$ in the notation table, with the description "The set of real
numbers."

##### Random Variables
This exmaple defines a "random variable" macro:
```latex
\DeclareNotation{\rv}[m]{\mathsf{#1}}[\rv{x}]{
  Indicates that $\rv x$ is a random variable, as opposed to a deterministic variable $x$. A random variable
  $\rv x$ will typically have probability density function $p_{\rv x}$.
}
```

This would render the symbol $\mathsf{x}$ in the notation field, with the description "Indicates that
$\mathsf{x}$ is a random variable, as opposed to a deterministic variable $x$. A random variable $\mathsf{x}$
will typically have probability density function $p_{\mathsf{x}}$."

##### Examples must be defined for macros with arguments
Note that if your macro has arguments, like the random variable example above, you must provide an example or
the notation table will crash. This is because there is no way to know how to render something with arguments
without said arguments being defined.

### 4. Generating Notation Table

To generate a notation table, use the command `\NotationUsedTable`. This will generate a table of all used
notation elements with their defined descriptions.

## Contributing
For a local installation, first ensure you have a working LaTeX installation. The package is developed and
tested with TeX Live, so it is recommended to use that. Note that your tex distribution must have the
[`dsfont`](https://ctan.org/pkg/doublestroke?lang=en) package installed; this can be installed on a linux
system vis `sudo apt-get install texlive-fonts-extra`, for example.

Then, clone this repository and run the following command to build the package:

```bash
latex notation.ins
l3build doc
latexmk -pdf examples/demo.tex
```

This should build the demo document and the package documentation.

# `notation-sets`: Predefined notation for commonly referenced sets.
To use this package, load it with:

```latex
\usepackage{notation-sets}
```

This package defines common set indicators, such as `\R` for the real numbers, `\N` for the natural numbers,
`\Z` for the integers.

# `notation-probability`: Predefined notation for commonly referenced probability concepts.

To use this package, load it with:

```latex
\usepackage{notation-probability}
```

# `notation-linearalgebra`: Predefined notation for commonly referenced linear algebra concepts.

To use this package, load it with:

```latex
\usepackage{notation-linearalgebra}
```

# `notataion-calculus`: Predefined notation for commonly referenced calculus concepts.

To use this package, load it with:

```latex
\usepackage{notation-calculus}
```

# `notation-ops`: Predefined notation for commonly referenced operations.

To use this package, load it with:

```latex
\usepackage{notation-ops}
```
