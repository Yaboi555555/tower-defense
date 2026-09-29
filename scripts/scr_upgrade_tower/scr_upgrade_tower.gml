function scr_upgrade_tower(tower) {
    with(tower) {
        range = min(ceil(range*1.1),850) // afronden op helen
        hitspd = min(round(hitspd*1.125*10)/10,10) // afronden op tienden
        damage = min(damage*1.175, damage+2); // niks speciaals
        upgradecost = min(ceil(upgradecost*1.4), upgradecost+1500) // afronden op helen
    }
}
