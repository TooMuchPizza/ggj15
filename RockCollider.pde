class RockCollider extends Collider<Entity, Being> {
  RockCollider() {
    super();
  }
  
  void handle(Entity ent, Being r) {
    println("HIT");
  }
}
