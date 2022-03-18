instance_destroy();

repeat(choose(1, 1, 2)) {
	var spider = instance_create_layer(x, y, "Instances", obj_spider);
	spider.target = obj_player;
	spider.state = "walk";
}