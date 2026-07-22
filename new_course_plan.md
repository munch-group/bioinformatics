
# Learning goals

## Technical

- Pixi
- Both VScode pixi-extensions
- Environment:
  - codelens-widget
  - steps-widget
  - turtle-widget
  - iplot-widget
  - puzzle-widget


## Setup

- Everything is Notebooks (convert qmd lecture notes to ipynb: `quarto convert document.qmd`)
- Do they get a pdf? Do they clone a repo? How can they pull securely?



## Widgets:
    - puzzle-widget: %%puzzle: drag to put arbitrary code in right order (full cell or subset of lines marked with #shuffle
    - new quiz-widget: %%padlet and %%flascards magics
    - video showing in notebook not only in html: iPython.display.Video
    - %%script magic that runs a cell with empty global and local and outputs to a shaded out cell so it is easily distinguishable from normal notebook mode. 

Narrated video format with screen flow and Claude and 11labs voice

1. Basic Python, VScode, Notebooks, Padlet-widget
2. Basic Python, Steps-widget
3. Basic Python, Codelens-widget
4. Objects, Turtle-widget
5. Basic Python
6. Testing, assert, pytest
7. Classes, Modules
8. Broadcasting, numpy, pandas
9. Data analysis, Plotting
10. AI with BioPython, REST APIs, etc.
11. Code tweaking (take a code base with tests, have an AI produce a change backed with tests, check tests, use software)
12. Producing code using AI


## New plan


1. **Getting set up**
    - Double: 
      - How a computer program works
      - Computer architecture, CPU, memory, storage
      - Machine code, compiler, AI
      - Python, iPython
      - Terminal, script, notebook
    - Exercises: 
      - Getting to know you computer and vscode
      - Students track screencasts (with chapter markers) guiding them through vscode UI, sidebar, editor, terminal, command palette, opening/saving a script/notebook
      - *Padlet-widget*
2. **Python**
   - Double: 
     - Python, values, operators, variables, logic, types
   - Exercises: 
     - Up and running (cover all pixi issues on windows), basic Python exercises
     - *script-widget*, *steps-widget*,
   - Single: substitution, reduction, course helper tools
3. **Logic, Functions**
    - Double: If, else, logic, functions, scope
    - Exercises: Values, operators, math, variables, *puzzle-widget*
    - Single: functions, builtin functions
4. **AI / Tests / Objects** 
    - Double: AI, transformers, pytest
    - Exercises: Functions
    - Single: Objects, methods, strings
5. **List, Dict**
    - Double: lists, dictionaries, tuples
    - Exercises: Functions (**Reprise**)
    - Single: Classes, Turtle, *turtle-widget*
6. **Iteration / Classes**
    - Double: Iteration
    - Exercises: objects, strings, lists, dictionaries, *codelens-widget*
    - Single: Turtle (with iteration)
7. **Data structures / Files**
    - Double: Data struct.
    - Exercises: iteration, simple plotting matplotlib/seaborn
    - Single: Files
8. **Pandas / plotting**
    - Double: data frame, series, numpy, broadcasting
    - Exercises: combines exercises covering everything so far **flashcard-widget**
    - Single: 
9. **Producing code using AI**
    - Double: Prompting, planning, validating with tests
    - Exercises: pandas / plotting **iplot-widget**
    - Single: 
10. **Code tweaking with AI**  (take a code base with tests, have an AI produce a change backed with tests, check tests, use software)
    - Double: 
    - Exercises:
    - Single: Master in bioinformatics
11. **Visualizing with AI**
    - Double: 
    - Exercises:
    - Single:
12. **GWF workflows with AI ( BioPython, REST APIs, etc.)**
    - Double: 
    - Exercises:
    - Single: 
13. ****
    - Double:
    - Exercises:
    - Single: 
14. ****
    - Double:
    - Exercises:
    - Single: Evaluation, exam information



Week    | Double lecture                                        | Exercises                                         | Single lecture
---     | ---                                                   | ---                                               | ---
1, 35   | Python, values, operators, variables, logic, types    | Up and running, basic Python exercises            | substitution, reduction, course helper tools
2, 36   | If, else, logic, functions, scope                     | Values, operators, math, variables                | functions, builtin functions
3, 37   | Objects, methods, strings, lists                      | Functions                                         | dictionaries, tuples
4, 38   | iteration                                             | objects, strings, lists, dictionaries (MO/B only) | Files, tests
5, 39   |                                                       | Reprise of last week's exercise (MM only)         | Recursion
6, 40   |                                data struct.           | Iteration, files + translation project            | **Local pairwise alignment**
7, 41   |                            classes.                   | **GWAS and databases** + Folding project          | **Multiple alignment**
8, 43   |                                    k-mers/project     | **HIV and alignment** + alignment project         | **Evolutionary distance**
9, 44   |                                                       | **MRSA, blast and mult. aln.** + Codon usage project | BioPython, Master in bioinformatics
10, 45  | **Phylogenetics**, python/project                     | **Aardwarks and DNA evolution** + HIV project     | TBA
11, 46  | **Hidden Markov models**, python/project              | **TBA** +  Clustering project                     | **Hidden Markov models**
12, 47  | **Assembly**, modules, python/project                 | **TBA** +  ORF project                            | **Neural networks**
13, 48  | **Genome and protein annotation**                     | **TBA** + Assembly project                        | **RNA structure**
14, 49  | modules, biopython, **guest talk**                    | **TBA** + Biopython                               | Evaluation, exam information



## Week 1 {.unnumbered}

##### Reading:  

- Lecture notes: chapter @sec-preface
- Lecture notes: chapter @sec-before_you_begin
- Lecture notes: chapter @sec-bsf
- Lecture notes: chapter @sec-helloworld
- Lecture notes: chapter @sec-values
- Lecture notes: chapter @sec-precedence
- Lecture notes: chapter @sec-coursetools

Make sure you have installed Python and VScode for the first lecture.

##### Lectures:  

- In the first lecture, I will outline how the course is organized and how you will get the most out of your efforts in learning programming.
- In the first lecture, I will also talk about how a Python program works and about values, math, and logic.
- In the second lecture, I will talk about variables, operators, substitution, and reduction.

##### Exercises: 

If you have yet to do so at home, you will install Python and the text editor. To do this, follow the instructions in @sec-before_you_begin. Then, start doing the exercises in chapter @sec-helloworld, chapter @sec-values, and chapter @sec-precedence. You will also have time to do these exercises in the TA session of week two, so go slow. It is important to properly absorb the basic concepts at the beginning of the course; otherwise, it will become too difficult later on. Have a look 

And make sure to familiarize yourself with the Myiagi game and the pysteps tool described in chapter @sec-coursetools. These are useful companions in the course.


## Week 2 {.unnumbered}

##### Reading: 

- Lecture notes: chapter @sec-controlflow
- Lecture notes: chapter @sec-functions
  
I will cover chapters 8-9 in the lecture notes.

##### Lectures: 

- In the first lecture, I will talk about how to use logic to control which statements in your program that get executed.
- In the first lecture, I will also talk about how you can efficiently organize your code using functions.
- In the second lecture, I will talk more about functions.

##### Exercises:  

The topics for this week's exercises are statements, variables, operators, expressions, substitution, reduction, and logic. You will work on the rest of the exercises in chapter @sec-helloworld, chapter @sec-values, chapter @sec-precedence, and chapter @sec-coursetools. Do what you can at home and do the rest at the TA session.


## Week 3 {.unnumbered}

##### Reading:

- Lecture notes: chapter @sec-objects
- Lecture notes: chapter @sec-lists
- Lecture notes: chapter @sec-dictionaries
- Lecture notes: chapter @sec-tuples

##### Lectures:  

- In the first lecture, I will talk about objects and methods. 
- In the first lecture, I will also talk about lists.
- In the second lecture, I will talk about dictionaries and a bit about tuples.

##### Exercises:  

The topics for this week's exercises are if, else, logic, and functions. You are meant to complete all the exercises in chapter @sec-controlflow and chapter @sec-functions. Do what you can at home and do the rest at the TA session.


### Week 4 {.unnumbered}

##### Reading:

- Lecture notes: chapter @sec-iteration
- Lecture notes: chapter @sec-files

##### Lectures:  

- In the first lecture, I will talk about iteration and lists.
- In the second lecture, I will talk about how your code can interact with files on your computer.

##### Exercises:  

::: {.callout-note}
Only MO and Bio classes attend the exercises this week. MM classes do not. The exercise is repeated next week for the MM classes to attend*
:::

The topics for this week are objects, methods, strings, lists, tuples, and dictionaries. You are meant to complete all the exercises in chapters @sec-objects, @sec-lists, @sec-dictionaries, and @sec-tuples. Do what you can at home and do the rest at the TA session.


### Week 5 {.unnumbered}

##### Reading:

- Lecture notes: chapter @sec-datastructures
- Lecture notes: chapter @sec-recursion
- Lecture notes: chapter @sec-testing_your_code
- [Chapter 11: Genomewide Association Studies](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1002822)
- [Benefits and limitations of genomewide association studies](https://www.nature.com/articles/s41576-019-0127-1)

##### Lectures:  

- In the first lecture, I will talk about databases, genotyping arrays, and genomewide association studies (GWAS).
- In the first lecture, I will also talk about building simple data strutures in Python.
- In the second lecture, I will talk about how to use recursion in Python.

##### Exercises:  

::: {.callout-note}
Only MM classes attend the exercises this week. MO and Bio classes do not. The exercise is repeated from last week*.
:::

The topics for this week are iteration and data structures. You are meant to complete all the exercises in chapter @sec-iteration and chapter @sec-files.


### Week 6 {.unnumbered}

##### Reading:

- Lecture notes: chapter @sec-translationproject
- Understanding Bioinformatics 127-141

##### Lectures:  

- In the first lecture, I will talk about global pairwise alignment In the first lecture
- In the first lecture, I will also talk about the weekly programming project. 
- In the second lecture, I will talk about local pairwise alignment and more realistic gap scoring.

##### Exercises:  

- The programming project described in chapter @sec-translationproject.

From the [project files](supplementary/project_files.qmd) page, you can download the files you need for programming projects. There will be lots of work, so do what you can at home and do the rest at the TA session.

::: {.callout-important}
Chapter @sec-translationproject is a mandatory assignment. The deadline for handing it in (on Brightspace) is the night before your exercise class in week 41.
:::


### Week 7 {.unnumbered}

##### Reading:  

- Lecture notes: chapter @sec-foldingproject
- Understanding Bioinformatics: 117-127
- Alignment methods: strategies, challenges, benchmarking, and comparative overview (don't do the exercises).

##### Lectures:  

- In the first lecture, I will talk about protein substitution matrices and how to score protein alignments. - In the first lecture, I will also talk Python classes and the weekly programming project.
- In the second lecture, I will talk about multiple alignment.

##### Exercises:  

- The web exercise: [GWAS candidates](chapters/web/gwas_databases/index.qmd)
- The programming project described in chapter @sec-foldingproject (not a mandatory assignment).

From the [project files](supplementary/project_files.qmd) page, you can download the files you need for both programming projects and web exercises. There will be lots of work, so do what you can at home and do the rest at the TA session.


### Week 8 {.unnumbered}

##### Reading:  

- Lecture notes: chapter @sec-alignmentproject
- Bioinformatics Explained: BLAST
- Biological Sequence Analysis pp. 192-197

##### Lectures:  

- In the first lecture, I will talk about how to search for matches in a sequence database and how to asses alignment significance.
- In the first lecture, I will also talk about programming topics and the weekly programming project.
- In the second lecture, I will talk about models of DNA evolution and how to measure evolutionary distance between sequences.

##### Exercises:  

- The web exercise: [CCR5-delta32](chapters/web/ccr5_pwalign/index.qmd)
- The programming project described in chapter @sec-alignmentproject (not a mandatory assignment).

From the [project files](supplementary/project_files.qmd) page, you can download the files you need for both programming projects and web exercises. There will be lots of work, so do what you can at home and do the rest at the TA session.


### Week 9 {.unnumbered}

##### Reading:  

- Lecture notes: chapter @sec-codonbiasproject
- Biological Sequence Analysis pp. 165-179  <!-- UPGMA / NJ -->

##### Lectures:  

- In the first lecture, I will talk about methods for sequence clustering. 
- In the first lecture, I will also talk about the programming project.
- In the second lecture, I will talk about bioinformatics code libraries for Python, such as BioPython, and the Master in Bioinformatics that we offer at the Bioinformatics Centre.

##### Exercises:  

- The web exercise: [MRSA](chapters/web/mrsa_blast_multalign/index.qmd)
- The programming project described in chapter @sec-codonbiasproject (not a mandatory assignment).

From the [project files](supplementary/project_files.qmd) page, you can download the files you need for both programming projects and web exercises. There will be lots of work, so do what you can at home and do the rest at the TA session.


### Week 10 {.unnumbered}

##### Reading:  

- Lecture notes: chapter @sec-hivproject
- Biological Sequence Analysis pp. 192-202 <!-- phylogeny / felsenstein -->

##### Lectures:  

- In the first lecture, I will talk about phylogenetic trees.
- In the first lecture, I will also talk about Python topics and the weekly programming project.
- In the second lecture, I will talk about gene prediction in prokaryotes.

##### Exercises:  

- The web exercise: [Aardvark?](chapters/web/aardwark_seqdist/index.qmd)
- The programming project described in chapter @sec-hivproject.

From the [project files](supplementary/project_files.qmd) page, you can download the files you need for both programming projects and web exercises. There will be lots of work, so do what you can at home and do the rest at the TA session.

::: {.callout-important}
Chapter @sec-hivproject is a mandatory assignment. The deadline for handing it in is the night before your exercise class in week 46.
:::


### Week 11 {.unnumbered}

##### Reading:  

- Lecture notes: chapter @sec-seqdistproject
- Biological Sequence Analysis pp. 46-66 <!-- HMMs -->

##### Lectures:

- In the first lecture, I will talk about hidden Markov models (HMMs).
- In the first lecture, I will also talk about python topics and the weekly programming project.
- In the second lecture, I will talk about more about HMMs

##### Exercises:  

- The programming project described in chapter @sec-seqdistproject (not a mandatory assignment).

From the [project files](supplementary/project_files.qmd) page, you can download the files you need for both programming projects and web exercises. There will be lots of work, so do what you can at home and do the rest at the TA session.


### Week 12 {.unnumbered}

##### Reading:  

- Lecture notes: chapter @sec-orfproject
- Understanding Bioinformatics pp. 438-448 <!--protein prediction -->
- [Automatic generation of gene finders for Eukaryotic species](https://bmcbioinformatics.biomedcentral.com/articles/10.1186/1471-2105-7-263)
- [The Theory and Practice of Genome Sequence Assembly](https://www.annualreviews.org/doi/10.1146/annurev-genom-090314-050032) <!-- genome assembly -->

##### Lectures

- In the first lecture, I will talk about applications of hidden Markov models gene finding and protein annotation.
- In the first lecture, I will also talk about Python topics and the weekly programming project.
- In the second lecture, I will talk genome assembly.

##### Exercises:  

- The web exercise: [Plasmid ORFs](chapters/web/orf_finding/index.qmd)
- The programming project described in chapter @sec-orfproject (not a mandatory assignment).


From the [project files](supplementary/project_files.qmd) page, you can download the files you need for both programming projects and web exercises. There will be lots of work, so do what you can at home and do the rest at the TA session.


### Week 13 {.unnumbered}

##### Reading:  

- Lecture notes: chapter @sec-assemblyproject
- Understanding Bioinformatics pp. 494-496  <!-- Neural networks -->
- ~~Exploring Bioinformatics pp. 242-248~~  <!-- RNA structure -->

##### Lectures:

- In the first lecture, I will talk about neural networks
- In the first lecture, I will also talk about the programming project.
- In the second lecture, I will talk about applications of HMMs ~~RNA secondary structure prediction~~.

##### Exercises:  

- The web exercise: [Read mapping](chapters/web/long_reads/index.qmd)
- The programming project described in chapter @sec-assemblyproject (not a mandatory assignment).

From the [project files](supplementary/project_files.qmd) page, you can download the files you need for both programming projects and web exercises. There will be lots of work, so do what you can at home and do the rest at the TA session.


### Week 14 {.unnumbered}

##### Reading:  

- None this week.

##### Lectures:  

<!-- TODO: Add toic for lecture in week 14 -->
- In the first lecture, I will talk about python and algorithms. You will also hear a guest talk by about bioinformatics outside the class room.
- In the last lecture, we will evaluate the course and review the exam's practicalities.

##### Exercises:  

- The web exercise: [Neural networks](chapters/web/neural_networks/index.qmd)

From the [project files](supplementary/project_files.qmd) page, you can download the files you need for both programming projects and web exercises. There will be lots of work, so do what you can at home and do the rest at the TA session.


