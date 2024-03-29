#include "Victim.hpp"

/*
** ------------------------------- CONSTRUCTOR --------------------------------
*/

Victim::Victim()
{
}

Victim::Victim( std::string const name ) : _name(name)	{

	this->beBorn();
}

Victim::Victim( __attribute__((unused))const Victim & src )
{
}


/*
** -------------------------------- DESTRUCTOR --------------------------------
*/

Victim::~Victim()
{
	this->beDead();
}


/*
** --------------------------------- OVERLOAD ---------------------------------
*/

Victim &				Victim::operator=( Victim const & rhs )
{
	if (this != &rhs)
		this->_name = rhs._name;
	return *this;
}

std::ostream &			operator<<( std::ostream & o, Victim const & i )
{
	o << i.introduce();
	return o;
}

/*
** --------------------------------- METHODS ----------------------------------
*/

void			Victim::beDead( void )	const {

	std::cout << "Victim " << this->getName() << " just died for no apparent reason!" << std::endl;
}

void			Victim::beBorn( void )	const {

	std::cout << "Some random victim called " << this->getName() << " just appeared!" << std::endl;
}

/*
** --------------------------------- ACCESSOR ---------------------------------
*/

std::string		Victim::introduce( void ) const	{

	std::stringstream	intro;

	intro << "I'm " << this->getName() << " and I like otters!" << std::endl;
	return (intro.str());
}

std::string		Victim::getName( void ) const	{ return (this->_name); }
void			Victim::sayHello( void ) const 	{ std::cout << this->introduce(); }

void			Victim::getPolymorphed( void ) const	{

	std::cout << this->getName() << " has been turned into a cute little sheep!" << std::endl;
}

/* ************************************************************************** */
