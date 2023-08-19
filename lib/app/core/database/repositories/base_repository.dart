abstract interface class BaseRepository {
  Future<List<Map<String, dynamic>>> findAll();
  Future<void> insertOne(Map<String, dynamic> newRegister);
  Future<void> updateOne(Map<String, dynamic> updatedRegister);
  Future<void> deleteOne(String registerId);
}
