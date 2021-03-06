import 'package:floor/floor.dart';

import '../model/name.dart';

@dao
abstract class NameDao {
  @Query('SELECT * FROM names ORDER BY name ASC')
  Future<List<Name>> findAllNames();

  @Query('SELECT * FROM names WHERE name = :name')
  Future<Name> findExactName(String name);

  @Query('SELECT * FROM names WHERE name LIKE :suffix ORDER BY name ASC')
  Future<List<Name>> findNamesLike(String suffix);
}
