/**
 * Created by aimozg on 10.01.14.
 */
package classes.Items.Weapons
{
	import classes.Items.Weapon;
	import classes.Player;

	public class HugeWarhammer extends Weapon
	{
		override public function canUse(player:Player, printReason:Boolean):Boolean
		{
			if (player.str<80){
				if (printReason){
					clearOutput();
					outputText("You aren't strong enough to handle such a heavy weapon!  ");
				}
				return false;
			} else return true;
		}

		public function HugeWarhammer()
		{
			super("Warhamr","Warhammer","huge warhammer","a huge warhammer","smash",15,1600,"A huge war-hammer made almost entirely of steel that only the strongest warriors could use. Getting hit with this might stun the victim.  \n\nType: Weapon (Heavy) \nAttack: 15 \nBase value: 1,500 \nRequires 80 strength. \nChance to stun on strike.","Large");
		}
	}
}
