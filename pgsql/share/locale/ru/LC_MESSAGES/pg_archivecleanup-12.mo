��          �   %   �      P  �   Q  
   +  �   6  3   �  3   �  +   &  7   R  6   �  L   �  <     6   K  &   �     �  $   �  )   �  (      (   )     R     q     y     �     �  !   �     �  	   �  �    1  �     
  �   0
  ]     x   y  F   �  =   9  r   w  �   �  W   {  O   �  [   #       D   �  Q   �  Q   3  U   �  4   �            <   ,  G   i  e   �  N        f                                                                                
                   	                          
For use as archive_cleanup_command in postgresql.conf:
  archive_cleanup_command = 'pg_archivecleanup [OPTION]... ARCHIVELOCATION %%r'
e.g.
  archive_cleanup_command = 'pg_archivecleanup /mnt/server/archiverdir %%r'
 
Options:
 
Or for use as a standalone archive cleaner:
e.g.
  pg_archivecleanup /mnt/server/archiverdir 000000010000000000000010.00000020.backup
 
Report bugs to <pgsql-bugs@lists.postgresql.org>.
   %s [OPTION]... ARCHIVELOCATION OLDESTKEPTWALFILE
   -?, --help     show this help, then exit
   -V, --version  output version information, then exit
   -d             generate debug output (verbose mode)
   -n             dry run, show the names of the files that would be removed
   -x EXT         clean up files if they have this extension
 %s removes older WAL files from PostgreSQL archives.

 Try "%s --help" for more information.
 Usage:
 archive location "%s" does not exist could not close archive location "%s": %m could not open archive location "%s": %m could not read archive location "%s": %m could not remove file "%s": %m error:  fatal:  invalid file name argument must specify archive location must specify oldest kept WAL file too many command-line arguments warning:  Project-Id-Version: pg_archivecleanup (PostgreSQL) 10
Report-Msgid-Bugs-To: pgsql-bugs@lists.postgresql.org
PO-Revision-Date: 2019-08-28 14:04+0300
Last-Translator: Alexander Lakhin <exclusion@gmail.com>
Language-Team: Russian <pgsql-ru-general@postgresql.org>
Language: ru
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
 
Для использования в качестве archive_cleanup_command в postgresql.conf:
  archive_cleanup_command = 'pg_archivecleanup [ПАРАМЕТР]... РАСПОЛОЖЕНИЕ_АРХИВА %%r'
например:
  archive_cleanup_command = 'pg_archivecleanup /mnt/server/archiverdir %%r'
 
Параметры:
 
Либо для использования в качестве отдельного средства очистки архива,
например:
  pg_archivecleanup /mnt/server/archiverdir 000000010000000000000010.00000020.backup
 
Об ошибках сообщайте по адресу <pgsql-bugs@lists.postgresql.org>.
   %s [ПАРАМЕТР]... РАСПОЛОЖЕНИЕ_АРХИВА СТАРЕЙШИЙ_СОХРАНЯЕМЫЙ_ФАЙЛ_WAL
   -?, --help     показать эту справку и выйти
   -V, --version  показать версию и выйти
   -d             генерировать подробные сообщения (отладочный режим)
   -n             холостой запуск, только показать имена файлов, которые будут удалены
   -x РСШ         убрать файлы с заданным расширением
 %s удаляет старые файлы WAL из архивов PostgreSQL.

 Для дополнительной информации попробуйте "%s --help".
 Использование:
 расположение архива "%s" не существует не удалось закрыть расположение архива "%s": %m не удалось открыть расположение архива "%s": %m не удалось прочитать расположение архива "%s": %m не удалось стереть файл "%s": %m ошибка:  важно:  неверный аргумент с именем файла необходимо задать расположение архива необходимо задать имя старейшего сохраняемого файла WAL слишком много аргументов командной строки предупреждение:  