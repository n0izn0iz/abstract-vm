#ifndef INSTRUCTIONS_HPP
# define INSTRUCTIONS_HPP

enum InstructionType : Instruction {
	notAnInstruction,
	push,
	pop,
	dump,
	assert,
	add,
	sub,
	mul,
	div,
	mod,
	print,
	exit
}

#endif
