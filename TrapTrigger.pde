class TrapTrigger extends GenericMassedCollider<Entity, Trap> {
  boolean triggered;

  TrapTrigger () {
    super (0);
    triggered = false;
  }

  void handle (Entity e, Trap t) {
    if (!triggered) println("Boom.");
    else return;
    triggered = !triggered;
  }

  //boolean detect (Entity entity, Trap trap) {
  //}
}
