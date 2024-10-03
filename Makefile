csa.nml: csa.cnml csa.snml
	@cat csa.cnml csa.snml > csa.nml
	@echo 'Part 3 merge file complete'
	
	-@nmlc csa.nml -o chinasetaircraft.grf
	@echo 'Compile complete'

	@make clean

csa.cnml: *.pnml
	@cat csa.pnml src/*.pnml > csa.cnml
	@echo 'Part 1 merge file complete'

csa.snml: *.pnml
	@cat src/aircraft/*/*.pnml > csa.snml
	@echo 'Part 2 merge file complete'

clean:
	@rm -f csa.cnml
	@rm -f csa.snml
	@rm -f csa.nml