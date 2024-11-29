import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pocketbase/pocketbase.dart';

class PocketBaseService {
  final con = PocketBase(dotenv.env['API_URL'] ?? 'http://127.0.0.1:8090');
}
