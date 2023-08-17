abstract interface class BaseRepository<T, U> {
  Future<List<T>> findAll();
  Future<void> insertOne(U newRegister);
}
