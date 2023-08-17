abstract interface class BaseRepository<T> {
  Future<List<Map<String, dynamic>>> findAll();
  Future<void> insertOne(T newRegister);
}
