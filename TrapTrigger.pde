class TrapTrigger extends GenericMassedCollider<Entity, Trap> {
  boolean triggered;

  TrapTrigger () {
    super (0);
    triggered = false;
  }

  void handle (Entity e, Trap t) {}

  boolean detect (Entity entity, Trap trap) {
    return super.detect (entity, trap);
  }
}
