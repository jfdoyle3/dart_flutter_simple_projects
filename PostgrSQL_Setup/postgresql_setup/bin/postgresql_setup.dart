import 'package:postgres/postgres.dart';


void main(List<String> arguments) async{
    final conn=PostgreSQLConnection(
      'localhost',
      5435,
      'postgres',
      username: 'postgres',
      password:'Dum80I9y7',
    );

    await conn.open();
    print ('connected');
    await conn.close();

}
