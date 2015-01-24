class GameCollider extends GenericMassedCollider<Entity, Entity> {
  GameCollider() {
    super(0);
  }
  
  void handle(Entity e1, Entity e2) {
    if(
        dist( e1.getX(), e1.getY(),
              e2.getX(), e2.getY())
        <= e1.radius + e2.radius) {
      super.handle(e1, e2);
    }
  }
}
