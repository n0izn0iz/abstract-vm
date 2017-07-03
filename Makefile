NAME=abstract-vm
SOURCES_DIR=srcs
OBJS_DIR=objs
SOURCES=$(shell ls $(SOURCES_DIR))
OBJECTS=$(addprefix $(OBJS_DIR)/, $(patsubst %.cpp, %.o, $(SOURCES)))
42FLAGS=-Wall -Wextra -Werror
HEADERS=$(shell ls includes)


all: $(NAME)
	@echo made $@ with $^

$(NAME): $(OBJECTS)
	@echo making $@ with $^
	@clang++ $^ -o $@

$(OBJS_DIR)/%.o: $(SOURCES_DIR)/%.cpp
	@echo making $@ with $^
	@mkdir -p $(dir $@)
	@clang++ -c $^ -o $@ $(42FLAGS)

clean:
	@echo making $@
	@rm -fr $(OBJS_DIR)

fclean: clean
	@echo making $@ with $^
	@rm -fr $(NAME)

re: fclean
	@echo making $@ with $^
	@$(MAKE) all

.PHONY: all clean fclean re
