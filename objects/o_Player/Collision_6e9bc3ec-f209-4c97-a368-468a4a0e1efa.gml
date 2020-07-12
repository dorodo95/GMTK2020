instance_destroy(other);
o_Enemy01.PlayerReceivedDamage=true;
instance_create_layer(o_Player.x,o_Player.y,"UI",o_DamageExplosion);
HP--;