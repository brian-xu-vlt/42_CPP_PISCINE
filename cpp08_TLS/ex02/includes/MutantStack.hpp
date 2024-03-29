#ifndef MUTANTSTACK_HPP
# define MUTANTSTACK_HPP

# include <iostream>
# include <stack>
# include <iterator>

template<typename T>
class MutantStack : public std::stack<T> {

	public:

		MutantStack(void);
		MutantStack(MutantStack const &src);

		~MutantStack(void);

		MutantStack	&operator=(MutantStack const &rhs);

		typedef typename std::stack<T>::container_type::const_iterator const_iterator;

		const_iterator	begin(void) const	{ return (this->c.begin()); };
		const_iterator	end(void) const		{ return (this->c.end()); };

		typedef typename std::stack<T>::container_type::iterator iterator;

		iterator	begin(void)		{ return (this->c.begin()); };
		iterator	end(void)		{ return (this->c.end()); };
};

#endif /* *****BVALETTE****** MUTANTSTACK_H */
