#include "Character.hpp"

#include "AWeapon.hpp"
#include "Enemy.hpp"

#include "LonelyStud.hpp"
#include "RadScorpion.hpp"
#include "SuperMutant.hpp"

#include "SpaceGun.hpp"
#include "PowerFist.hpp"
#include "PlasmaRifle.hpp"

#include <iostream>

#ifndef RESET_COLOR
# define RESET_COLOR   "\033[0m"
#endif

#ifndef RED_COLOR
# define RED_COLOR    "\033[31m"
#endif

int main() {

	std::cout << RED_COLOR << "----------MAIN FROM SUBJECT-----------" << RESET_COLOR << std::endl;
	{
		Character* me = new Character("me");

		std::cout << *me << std::endl;

		Enemy* b = new RadScorpion();

		AWeapon* pr = new PlasmaRifle();

		AWeapon* pf = new PowerFist();

		me->equip(pr);

		std::cout << *me;

		me->equip(pf);

		me->attack(b);
		std::cout << *me;
		me->equip(pr);

		std::cout << *me;

		me->attack(b);

		std::cout << *me;
		me->attack(b);

		std::cout << *me;

		delete me;
		delete pr;
		delete pf;
	}
	std::cout << RED_COLOR << "----------END MAIN FROM SUBJECT--------" << RESET_COLOR << std::endl << std::endl;

	{
		std::cout << RED_COLOR << "[WEAPON CTOR]" << RESET_COLOR << std::endl;
		SpaceGun		wa;

		std::cout << wa.getName() << " - " << wa.getAPCost() << " - " << wa.getDamage() << std::endl;
		wa.attack();

		std::cout << RED_COLOR << "[CHARACTER CTOR]" << RESET_COLOR << std::endl;
		Character		player("Player1");
		std::cout << RED_COLOR << "[ENEMY CTOR]" << RESET_COLOR << std::endl;
		Enemy*			badGuy = new LonelyStud();

		std::cout << RED_COLOR << "[CHARACTER << OVERLOAD]" << RESET_COLOR << std::endl;
		std::cout << player;
		std::cout << RED_COLOR << "[ENEMY ATTACK WITH NO WEAPON(null)]" << RESET_COLOR << std::endl;
		player.attack(badGuy);
		std::cout << RED_COLOR << "[ENEMY EQUIP FUNCTION CALL]" << RESET_COLOR << std::endl;
		player.equip(&wa);
		std::cout << RED_COLOR << "[CHARACTER << OVERLOAD]" << RESET_COLOR << std::endl;
		std::cout << player;

		std::cout << RED_COLOR << "[LOOP OF 10 ATTACKS FROM CHARACTER ON ENEMY]" << RESET_COLOR << std::endl;
		for (int i = 0; i < 8 && badGuy != NULL; i++)
		{
			int HPValue = badGuy->getHP();
			std::cout << badGuy->getType() << " has " <<  HPValue << " HP points."<< std::endl << std::endl;
			player.attack(badGuy);
			if (HPValue - wa.getDamage() <= 0)
				break ;
		}
		std::cout << RED_COLOR << "[ENEMY DIED ONCE IT HAS REACHED 0 HP POINTS]" << RESET_COLOR << std::endl;
	}

	return 0;
}
