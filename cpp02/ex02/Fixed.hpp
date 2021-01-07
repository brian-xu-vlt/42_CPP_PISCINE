#ifndef FIXED_HPP
# define FIXED_HPP

# include <iostream>
# include <string>

class Fixed
{

	public:

		Fixed();
		Fixed( Fixed const & src );
		Fixed( int const src );
		Fixed( float const src );
		~Fixed();

		int			getRawBits( void ) const;
		void		setRawBits( int const raw );
		float		toFloat( void ) const;
		int			toInt( void ) const;

		void		printToBinary( float const src) const ;
		void		printToBinary( int const src ) const ;
		void		printToBinary( Fixed const *src) const ;

		Fixed &		operator=( Fixed const & rhs );

		bool		operator==( Fixed const & rhs ) const ;
		bool		operator!=( Fixed const & rhs ) const ;
		bool		operator< ( Fixed const & rhs ) const ;
		bool		operator<=( Fixed const & rhs ) const ;
		bool		operator> ( Fixed const & rhs ) const ;
		bool		operator>=( Fixed const & rhs ) const ;

		Fixed 		operator+( Fixed const & rhs ) const ;
		Fixed 		operator-( Fixed const & rhs ) const ;
		Fixed 		operator*( Fixed const & rhs ) const ;
		Fixed 		operator/( Fixed const & rhs ) const ;

		Fixed &		operator++( void );
		Fixed 		operator++( int );
		Fixed &		operator--( void );
		Fixed 		operator--( int );

		static Fixed &					min(Fixed & a, Fixed & b);
		static Fixed const &			min(Fixed const & a, Fixed const & b);
		static Fixed &					max(Fixed & a, Fixed & b);
		static Fixed const &			max(Fixed const & a, Fixed const & b);

	private:

		int					_value;
		static const int	_nbFractionalBits;
};

std::ostream &			operator<<( std::ostream & o, Fixed const & i );

#endif /* *********************************************************** FIXED_H */
