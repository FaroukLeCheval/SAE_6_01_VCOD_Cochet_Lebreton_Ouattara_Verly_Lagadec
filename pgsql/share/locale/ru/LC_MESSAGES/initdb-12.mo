��    �      d  �   �
      8  R   9     �  
   �     �  3   �  @   �  `   ;  W   �  W   �    L  A   S  5   �  J   �  ?        V  6   r  P   �  C   �  :   >  Q   y  5   �  ]     4   _  B   �  H   �  G      >   h  G   �  4   �  9   $  3   ^  ?   �  (   �  /   �  I   +  "   u  !   �  �   �  d   @     �     �  �   �  O   Y  R   �  K   �     H  _   a     �     �  <   �  ;   4  �   p  @     ;   B    ~  u   �  p     e   v  s   �  &   P     w  t     0   �  /   %   �   U   �   �   *   �!  A   �!     �!  0   "  /   4"     d"  &   s"  0   �"  .   �"  -   �"     (#     ?#  #   Q#     u#  '   �#  &   �#  (   �#  2   $  "   ?$  #   b$  1   �$  '   �$  "   �$      %  0   $%  A   U%     �%  7   �%  $   �%  (   &  +   ;&  !   g&  (   �&  (   �&     �&  ,   �&  :   %'     `'  !   {'  *   �'  %   �'  +   �'  &   (  $   A(  8   f(     �(  )   �(     �(  %   )  !   *)     L)     g)  1   �)  &   �)  5   �)     *     %*     -*  *   L*  +   w*     �*  !   �*     �*     �*     +  0   &+  0   W+  ,   �+  7   �+     �+     ,  B   ,  .   ],     �,  E   �,     �,     �,     �,     -     -  >   3-     r-  -   �-     �-  '   �-  (   �-     .     <.  &   Z.  %   �.      �.  3   �.     �.  D   /  =   T/  E   �/  +   �/     0  /   0     N0  (   b0  	   �0  �  �0  �   q2  9   �2     .3  "   D3  ]   g3  l   �3  �   24  �   �4  �   �5  T  �6  `   �7  @   <8  s   }8  `   �8  ,   R9  Q   9  �   �9  i   �:  X   �:  s   N;  n   �;  �   1<  N   �<  H   $=  _   m=  `   �=  `   .>  �   �>  d   2?  H   �?  U   �?  j   6@  N   �@  <   �@  �   -A  V   �A  T   B  �   gB  �   SC     D  K   D  �   iD  v   XE  �   �E  t   RF  &   �F  �   �F  :   �G  D   H  �   LH  e   �H  �   ;I  �   "J  h   �J  �  K  �   M  �   �M  �   �N  �   ^O  [   P     iP    �P  ]   �Q  s   �Q  �   ZR  �   7S  C   .T  Z   rT  <   �T  X   
U  p   cU     �U  V   �U  l   HV  J   �V  K    W  )   LW  "   vW  2   �W  ,   �W  \   �W  =   VX  ?   �X  P   �X  :   %Y  :   `Y  c   �Y  S   �Y  >   SZ  C   �Z  _   �Z  �   6[  N   �[  o   \  Q   }\  J   �\  y   ]  :   �]  H   �]  H   ^  4   a^  [   �^  z   �^  K   m_  >   �_  L   �_  W   E`  P   �`  H   �`  O   7a  k   �a  P   �a  h   Db  6   �b  [   �b  B   @c  (   �c  -   �c  f   �c  A   Ad  u   �d  /   �d     )e  9   8e  P   re  Y   �e  B   f  K   `f     �f  '   �f  %   �f  Y   g  F   ag  v   �g  w   h  5   �h  +   �h  y   �h  d   si     �i     �i  -   pj     �j     �j     �j  #   �j  x   k     ~k  R   �k  *   �k  A   l  J   Vl  3   �l  H   �l  Q   m  P   pm  H   �m  j   
n     un  �   �n     %o  �   �o  Z   <p  5   �p  c   �p  2   1q  c   dq     �q     i                     �      C       ,   '      !      3   (       �              �       5   ]      �                  n       l          �       D   X   y       #          ^               �           �   �         s           m   *   t   "   p       G      E   �   _   �   c       T   �       e           }   S   0   1   /      U   �   �   R       b   o   >   u              h       �                �   d      �   
   $   A   �   W      .   2   	         �   �   v   �   �           =   a   �   �       k       )   `   M   N   K       �   <   @   �       V   x   �       �       q   7   8   z   �   |           �          4   9   �   �   g       �      j   �       F       w       O      P       {   &   J   �   I   �   �       +   �       �   B       ;         Z                      Y   �   \   f       ?   -   6   ~   :      H       L   �   r   Q   �   %   [   �        
If the data directory is not specified, the environment variable PGDATA
is used.
 
Less commonly used options:
 
Options:
 
Other options:
 
Report bugs to <pgsql-bugs@lists.postgresql.org>.
 
Success. You can now start the database server using:

    %s

 
Sync to disk skipped.
The data directory might become corrupt if the operating system crashes.
       --auth-host=METHOD    default authentication method for local TCP/IP connections
       --auth-local=METHOD   default authentication method for local-socket connections
       --lc-collate=, --lc-ctype=, --lc-messages=LOCALE
      --lc-monetary=, --lc-numeric=, --lc-time=LOCALE
                            set default locale in the respective category for
                            new databases (default taken from environment)
       --locale=LOCALE       set default locale for new databases
       --no-locale           equivalent to --locale=C
       --pwfile=FILE         read password for the new superuser from file
       --wal-segsize=SIZE    size of WAL segments, in megabytes
   %s [OPTION]... [DATADIR]
   -?, --help                show this help, then exit
   -A, --auth=METHOD         default authentication method for local connections
   -E, --encoding=ENCODING   set default encoding for new databases
   -L DIRECTORY              where to find the input files
   -N, --no-sync             do not wait for changes to be written safely to disk
   -S, --sync-only           only sync data directory
   -T, --text-search-config=CFG
                            default text search configuration
   -U, --username=NAME       database superuser name
   -V, --version             output version information, then exit
   -W, --pwprompt            prompt for a password for the new superuser
   -X, --waldir=WALDIR       location for the write-ahead log directory
   -d, --debug               generate lots of debugging output
   -g, --allow-group-access  allow group read/execute on data directory
   -k, --data-checksums      use data page checksums
   -n, --no-clean            do not clean up after errors
   -s, --show                show internal settings
  [-D, --pgdata=]DATADIR     location for this database cluster
 "%s" is not a valid server encoding name %s initializes a PostgreSQL database cluster.

 Check your installation or specify the correct path using the option -L.
 Data page checksums are disabled.
 Data page checksums are enabled.
 Encoding "%s" implied by locale is not allowed as a server-side encoding.
The default database encoding will be set to "%s" instead.
 Encoding "%s" is not allowed as a server-side encoding.
Rerun %s with a different locale selection.
 Enter it again:  Enter new superuser password:  If you want to create a new database system, either remove or empty
the directory "%s" or run %s
with an argument other than "%s".
 If you want to store the WAL there, either remove or empty the directory
"%s".
 It contains a dot-prefixed/invisible file, perhaps due to it being a mount point.
 It contains a lost+found directory, perhaps due to it being a mount point.
 Passwords didn't match.
 Please log in (using, e.g., "su") as the (unprivileged) user that will
own the server process.
 Rerun %s with the -E option.
 Running in debug mode.
 Running in no-clean mode.  Mistakes will not be cleaned up.
 The database cluster will be initialized with locale "%s".
 The database cluster will be initialized with locales
  COLLATE:  %s
  CTYPE:    %s
  MESSAGES: %s
  MONETARY: %s
  NUMERIC:  %s
  TIME:     %s
 The default database encoding has accordingly been set to "%s".
 The default text search configuration will be set to "%s".
 The encoding you selected (%s) and the encoding that the
selected locale uses (%s) do not match.  This would lead to
misbehavior in various character string processing functions.
Rerun %s and either do not specify an encoding explicitly,
or choose a matching combination.
 The files belonging to this database system will be owned by user "%s".
This user must also own the server process.

 The program "postgres" is needed by %s but was not found in the
same directory as "%s".
Check your installation. The program "postgres" was found by "%s"
but was not the same version as %s.
Check your installation. This might mean you have a corrupted installation or identified
the wrong directory with the invocation option -L.
 Try "%s --help" for more information.
 Usage:
 Using a mount point directly as the data directory is not recommended.
Create a subdirectory under the mount point.
 WAL directory "%s" not removed at user's request WAL directory location must be an absolute path You can change this by editing pg_hba.conf or using the option -A, or
--auth-local and --auth-host, the next time you run initdb.
 You must identify the directory where the data for this database system
will reside.  Do this with either the invocation option -D or the
environment variable PGDATA.
 argument of --wal-segsize must be a number argument of --wal-segsize must be a power of 2 between 1 and 1024 cannot be run as root cannot create restricted tokens on this platform cannot duplicate null pointer (internal error)
 caught signal
 child process exited with exit code %d child process exited with unrecognized status %d child process was terminated by exception 0x%X child process was terminated by signal %d: %s command not executable command not found could not access directory "%s": %m could not access file "%s": %m could not allocate SIDs: error code %lu could not change directory to "%s": %m could not change permissions of "%s": %m could not change permissions of directory "%s": %m could not close directory "%s": %m could not create directory "%s": %m could not create restricted token: error code %lu could not create symbolic link "%s": %m could not execute command "%s": %m could not find a "%s" to execute could not find suitable encoding for locale "%s" could not find suitable text search configuration for locale "%s" could not fsync file "%s": %m could not get exit code from subprocess: error code %lu could not get junction for "%s": %s
 could not identify current directory: %m could not look up effective user ID %ld: %s could not open directory "%s": %m could not open file "%s" for reading: %m could not open file "%s" for writing: %m could not open file "%s": %m could not open process token: error code %lu could not re-execute with restricted token: error code %lu could not read binary "%s" could not read directory "%s": %m could not read password from file "%s": %m could not read symbolic link "%s": %m could not remove file or directory "%s": %m could not rename file "%s" to "%s": %m could not set junction for "%s": %s
 could not start process for command "%s": error code %lu could not stat file "%s": %m could not stat file or directory "%s": %m could not write file "%s": %m could not write to child process: %s
 creating configuration files ...  creating directory %s ...  creating subdirectories ...  data directory "%s" not removed at user's request directory "%s" exists but is not empty enabling "trust" authentication for local connections encoding mismatch error:  failed to remove WAL directory failed to remove contents of WAL directory failed to remove contents of data directory failed to remove data directory failed to restore old locale "%s" fatal:  file "%s" does not exist file "%s" is not a regular file fixing permissions on existing directory %s ...  input file "%s" does not belong to PostgreSQL %s input file location must be an absolute path invalid authentication method "%s" for "%s" connections invalid binary "%s" invalid locale name "%s" invalid locale settings; check LANG and LC_* environment variables locale "%s" requires unsupported encoding "%s" logfile must specify a password for the superuser to enable %s authentication no data directory specified ok
 out of memory out of memory
 password file "%s" is empty password prompt and password file cannot be specified together pclose failed: %m performing post-bootstrap initialization ...  removing WAL directory "%s" removing contents of WAL directory "%s" removing contents of data directory "%s" removing data directory "%s" running bootstrap script ...  selecting default max_connections ...  selecting default shared_buffers ...  selecting default time zone ...  selecting dynamic shared memory implementation ...  setlocale() failed specified text search configuration "%s" might not match locale "%s" suitable text search configuration for locale "%s" is unknown superuser name "%s" is disallowed; role names cannot begin with "pg_" symlinks are not supported on this platform syncing data to disk ...  too many command-line arguments (first is "%s") user does not exist user name lookup failure: error code %lu warning:  Project-Id-Version: initdb (PostgreSQL current)
Report-Msgid-Bugs-To: pgsql-bugs@lists.postgresql.org
PO-Revision-Date: 2019-09-02 12:06+0300
Last-Translator: Alexander Lakhin <exclusion@gmail.com>
Language-Team: Russian <pgsql-ru-general@postgresql.org>
Language: ru
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
 
Если каталог данных не указан, используется переменная окружения PGDATA.
 
Редко используемые параметры:
 
Параметры:
 
Другие параметры:
 
Об ошибках сообщайте по адресу <pgsql-bugs@lists.postgresql.org>.
 
Готово. Теперь вы можете запустить сервер баз данных:

    %s

 
Сохранение данных на диск пропускается.
Каталог данных может повредиться при сбое операционной системы.
       --auth-host=МЕТОД     метод проверки подлинности по умолчанию
                            для локальных TCP/IP-подключений
       --auth-local=МЕТОД    метод проверки подлинности по умолчанию
                            для локальных подключений через сокет
       --lc-collate=, --lc-ctype=, --lc-messages=ЛОКАЛЬ
      --lc-monetary=, --lc-numeric=, --lc-time=ЛОКАЛЬ
                            установить соответствующий параметр локали
                            для новых баз (вместо значения из окружения)
       --locale=ЛОКАЛЬ       локаль по умолчанию для новых баз
       --no-locale           эквивалентно --locale=C
       --pwfile=ФАЙЛ         прочитать пароль суперпользователя из файла
       --wal-segsize=РАЗМЕР  размер сегментов WAL (в мегабайтах)
   %s [ПАРАМЕТР]... [КАТАЛОГ]
   -?, --help                показать эту справку и выйти
   -A, --auth=МЕТОД          метод проверки подлинности по умолчанию
                            для локальных подключений
   -E, --encoding=КОДИРОВКА  кодировка по умолчанию для новых баз
   -L КАТАЛОГ                расположение входных файлов
   -N, --no-sync             не ждать завершения сохранения данных на диске
   -S, --sync-only           только синхронизировать с ФС каталог данных
   -T, --text-search-config=КОНФИГУРАЦИЯ
                            конфигурация текстового поиска по умолчанию
   -U, --username=ИМЯ        имя суперпользователя БД
   -V, --version             показать версию и выйти
   -W, --pwprompt            запросить пароль суперпользователя
   -X, --waldir=КАТАЛОГ      расположение журнала предзаписи
   -d, --debug               выдавать много отладочных сообщений
   -g, --allow-group-access  разрешить чтение/выполнение в каталоге данных для
                            группы
   -k, --data-checksums      включить контроль целостности страниц
   -n, --no-clean            не очищать после ошибок
   -s, --show                показать внутренние установки
  [-D, --pgdata=]КАТАЛОГ     расположение данных этого кластера БД
 "%s" — некорректное имя серверной кодировки %s инициализирует кластер PostgreSQL.

 Проверьте правильность установки или укажите корректный путь в параметре -L.
 Контроль целостности страниц данных отключён.
 Контроль целостности страниц данных включён.
 Кодировка "%s", подразумеваемая локалью, не годится для сервера.
Вместо неё в качестве кодировки БД по умолчанию будет выбрана "%s".
 Кодировка "%s" недопустима в качестве кодировки сервера.
Перезапустите %s, выбрав другую локаль.
 Повторите его:  Введите новый пароль суперпользователя:  Если вы хотите создать новую систему баз данных,
удалите или очистите каталог "%s",
либо при запуске %s в качестве пути укажите не "%s".
 Если вы хотите хранить WAL здесь, удалите или очистите каталог
"%s".
 Он содержит файл с точкой (невидимый), возможно это точка монтирования.
 Он содержит подкаталог lost+found, возможно это точка монтирования.
 Пароли не совпадают.
 Пожалуйста, переключитесь на обычного пользователя (например,
используя "su"), который будет запускать серверный процесс.
 Перезапустите %s с параметром -E.
 Программа запущена в режиме отладки.
 Программа запущена в режиме 'no-clean' - очистки и исправления ошибок не будет.
 Кластер баз данных будет инициализирован с локалью "%s".
 Кластер баз данных будет инициализирован со следующими параметрами локали:
  COLLATE:  %s
  CTYPE:    %s
  MESSAGES: %s
  MONETARY: %s
  NUMERIC:  %s
  TIME:     %s
 Кодировка БД по умолчанию, выбранная в соответствии с настройками: "%s".
 Выбрана конфигурация текстового поиска по умолчанию "%s".
 Выбранная вами кодировка (%s) не совпадает с кодировкой
локали (%s). Это может привести к неправильной работе
различных функций обработки текстовых строк.
Для исправления перезапустите %s, не указывая кодировку явно, 
либо выберите подходящее сочетание параметров локализации.
 Файлы, относящиеся к этой СУБД, будут принадлежать пользователю "%s".
От его имени также будет запускаться процесс сервера.

 Программа "postgres" нужна для %s, но она не найдена
в каталоге "%s".
Проверьте правильность установки СУБД. Программа "postgres" найдена в "%s",
но её версия отличается от версии %s.
Проверьте правильность установки СУБД. Это означает, что ваша установка PostgreSQL испорчена или в параметре -L
задан неправильный каталог.
 Для дополнительной информации попробуйте "%s --help".
 Использование:
 Использовать в качестве каталога данных точку монтирования не рекомендуется.
Создайте в монтируемом ресурсе подкаталог и используйте его.
 каталог WAL "%s" не был удалён по запросу пользователя расположение каталога WAL должно определяться абсолютным путём Другой метод можно выбрать, отредактировав pg_hba.conf или используя ключи -A,
--auth-local или --auth-host при следующем выполнении initdb.
 Вы должны указать, где будут располагаться данные этой СУБД.
Это можно сделать, добавив ключ -D или установив переменную
окружения PGDATA.
 аргументом --wal-segsize должно быть число аргументом --wal-segsize должна быть степень 2 от 1 до 1024 программу не должен запускать root в этой ОС нельзя создавать ограниченные маркеры попытка дублирования нулевого указателя (внутренняя ошибка)
 получен сигнал
 дочерний процесс завершился с кодом возврата %d дочерний процесс завершился с нераспознанным состоянием %d дочерний процесс прерван исключением 0x%X дочерний процесс завершён по сигналу %d: %s неисполняемая команда команда не найдена нет доступа к каталогу "%s": %m нет доступа к файлу "%s": %m не удалось подготовить структуры SID (код ошибки: %lu) не удалось перейти в каталог "%s": %m не удалось поменять права для "%s": %m не удалось поменять права для каталога "%s": %m не удалось закрыть каталог "%s": %m не удалось создать каталог "%s": %m не удалось создать ограниченный маркер (код ошибки: %lu) не удалось создать символическую ссылку "%s": %m не удалось выполнить команду "%s": %m не удалось найти запускаемый файл "%s" не удалось найти подходящую кодировку для локали "%s" не удалось найти подходящую конфигурацию текстового поиска для локали "%s" не удалось синхронизировать с ФС файл "%s": %m не удалось получить код выхода от подпроцесса (код ошибки: %lu) не удалось получить связь для каталога "%s": %s
 не удалось определить текущий каталог: %m выяснить эффективный идентификатор пользователя (%ld) не удалось: %s не удалось открыть каталог "%s": %m не удалось открыть файл "%s" для чтения: %m не удалось открыть файл "%s" для записи: %m не удалось открыть файл "%s": %m не удалось открыть маркер процесса (код ошибки: %lu) не удалось перезапуститься с ограниченным маркером (код ошибки: %lu) не удалось прочитать исполняемый файл "%s" не удалось прочитать каталог "%s": %m не удалось прочитать пароль из файла "%s": %m не удалось прочитать символическую ссылку "%s": %m ошибка при удалении файла или каталога "%s": %m не удалось переименовать файл "%s" в "%s": %m не удалось создать связь для каталога "%s": %s
 не удалось запустить процесс для команды "%s" (код ошибки: %lu) не удалось получить информацию о файле "%s": %m не удалось получить информацию о файле или каталоге "%s": %m не удалось записать файл "%s": %m не удалось записать в поток дочернего процесса: %s
 создание конфигурационных файлов...  создание каталога %s...  создание подкаталогов...  каталог данных "%s" не был удалён по запросу пользователя каталог "%s" существует, но он не пуст включение метода аутентификации "trust" для локальных подключений несоответствие кодировки ошибка:  ошибка при удалении каталога WAL ошибка при удалении содержимого каталога WAL ошибка при удалении содержимого каталога данных ошибка при удалении каталога данных не удалось восстановить старую локаль "%s" важно:  файл "%s" не существует "%s" — не обычный файл исправление прав для существующего каталога %s...  входной файл "%s" не принадлежит PostgreSQL %s расположение входных файлов должно задаваться абсолютным путём нераспознанный метод проверки подлинности "%s" для подключений "%s" неверный исполняемый файл "%s" ошибочное имя локали "%s" неверные установки локали; проверьте переменные окружения LANG и LC_* для локали "%s" требуется неподдерживаемая кодировка "%s" файл_журнала для применения метода %s необходимо указать пароль суперпользователя каталог данных не указан ок
 нехватка памяти нехватка памяти
 файл пароля "%s" пуст нельзя одновременно запросить пароль и прочитать пароль из файла ошибка pclose: %m выполняется заключительная инициализация...  удаление каталога WAL "%s" удаление содержимого каталога WAL "%s" удаление содержимого каталога данных "%s" удаление каталога данных "%s" выполняется подготовительный скрипт...  выбирается значение max_connections по умолчанию...  выбирается значение shared_buffers по умолчанию...  выбирается часовой пояс по умолчанию...  выбирается реализация динамической разделяемой памяти...  ошибка в setlocale() указанная конфигурация текстового поиска "%s" может не соответствовать локали "%s" внимание: для локали "%s" нет известной конфигурации текстового поиска имя "%s" для суперпользователя не допускается; имена ролей не могут начинаться с "pg_" символические ссылки не поддерживаются в этой ОС сохранение данных на диске...  слишком много аргументов командной строки (первый: "%s") пользователь не существует распознать имя пользователя не удалось (код ошибки: %lu) предупреждение:  