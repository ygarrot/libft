# LibftASM

Part 1 - Fonctions simples de la libc

Dans cette première partie, vous devez recoder un ensemble de fonctions de la libc
telles que décrites dans leur man respectif sur votre système. Vos fonctions devront avoir
exactement le même prototype et le même comportement que les originales. Leur nom
devra être préfixé par "ft_". Par exemple strlen devient ft_strlen.
Vous devez recoder les fonctions suivantes :

• bzero
• strcat
• isalpha
• isdigit
• isalnum
• isascii
• isprint
• toupper
• tolower
• puts 

II.2.2 Part 2 - Fonctions simples mais un peu moins de la libc

Dans cette deuxième partie, vous devez recoder encore des fonctions de la libc, mais
avec les Instruction Repeat String Operations.

Vous devez recoder les fonctions suivantes :

• strlen
• memset
• memcpy
• strdup (bien entendu, vous pouvez appeller malloc)

II.2.3 Part 3 - Cat

Pour finir, vous devez coder une fonction ft_cat qui prendra un file descriptor
(par exemple 0...) en paramètre et qui auras le même comportement que la commande
cat, elle retournera void.
