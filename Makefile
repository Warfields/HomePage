# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SPHINXPROJ    = SamuelWarfieldsFunRepository
SOURCEDIR     = .
BUILDDIR      = _build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
# TODO: Add check if deploy is true
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O);
	@rsync -avz _build/html/ pvm-jumpbox.mines.edu:/u/au/cx/warfield/html
	@rsync -avz files/ pvm-jumpbox.mines.edu:/u/au/cx/warfield/html
	@ssh pvm-jumpbox.mines.edu rsync -avz ./html/ warfield@illuminate:public_html
