��    �      d  �   �
      8  R   9     �  
   �     �  3   �  @   �  `   ;  W   �  W   �    L  A   S  5   �  J   �  ?        V  6   r  P   �  C   �  :   >  Q   y  5   �  ]     4   _  B   �  H   �  G      >   h  G   �  4   �  9   $  3   ^  ?   �  (   �  /   �  I   +  "   u  !   �  �   �  d   @     �     �  �   �  O   Y  R   �  K   �     H  _   a     �     �  <   �  ;   4  �   p  @     ;   B    ~  u   �  p     e   v  s   �  &   P     w  t     0   �  /   %   �   U   �   �   *   �!  A   �!     �!  0   "  /   4"     d"  &   s"  0   �"  .   �"  -   �"     (#     ?#  #   Q#     u#  '   �#  &   �#  (   �#  2   $  "   ?$  #   b$  1   �$  '   �$  "   �$      %  0   $%  A   U%     �%  7   �%  $   �%  (   &  +   ;&  !   g&  (   �&  (   �&     �&  ,   �&  :   %'     `'  !   {'  *   �'  %   �'  +   �'  &   (  $   A(  8   f(     �(  )   �(     �(  %   )  !   *)     L)     g)  1   �)  &   �)  5   �)     *     %*     -*  *   L*  +   w*     �*  !   �*     �*     �*     +  0   &+  0   W+  ,   �+  7   �+     �+     ,  B   ,  .   ],     �,  E   �,     �,     �,     �,     -     -  >   3-     r-  -   �-     �-  '   �-  (   �-     .     <.  &   Z.  %   �.      �.  3   �.     �.  D   /  =   T/  E   �/  +   �/     0  /   0     N0  (   b0  	   �0  {  �0  �   3  .   �3     �3     �3  X   �3  {   S4  �   �4  �   �5  �   b6  z  7  �   �8  @   9     N9  Y   �9     (:  W   D:  �   �:  �   );  Q   �;  e   <  `   n<  �   �<  [   f=  a   �=  k   $>  j   �>  t   �>  �   p?  j   �?  Q   ]@  Y   �@  `   	A  C   jA  H   �A  �   �A  T   �B  V   �B    CC  �   OD     E  9   $E  �   ^E  s   DF  �   �F  g   DG  *   �G  �   �G  :   �H  A   I  j   FI  k   �I  �   J  e   �J  �   CK  �  �K  �   �M  �   }N  �   2O  �   �O  d   �P     �P  �   Q  ^   �Q  _   =R  �   �R    S  C   �T  Z   �T  0   ;U  a   lU  l   �U     ;V  P   ZV  ^   �V  P   
W  O   [W  2   �W  $   �W  8   X  2   <X  C   oX  ?   �X  9   �X  K   -Y  :   yY  <   �Y  ]   �Y  S   OZ  <   �Z  >   �Z  a   [  �   �[  +   
\  p   6\  N   �\  J   �\  T   A]  <   �]  L   �]  J    ^  6   k^  Y   �^  n   �^  D   k_  >   �_  J   �_  U   :`  L   �`  J   �`  N   (a  i   wa  T   �a  h   6b  6   �b  J   �b  B   !c  *   dc  /   �c  e   �c  C   %d  o   id  1   �d     e  =   e  F   Ze  B   �e  B   �e  C   'f  
   kf     vf  5   �f  U   �f  @    g  f   ag  l   �g  /   5h  1   eh  }   �h  j   i     �i  �   �i  -   j     @j  $   Dj  %   ij  5   �j  Z   �j      k  N   :k  0   �k  >   �k  :   �k  :   4l  C   ol  <   �l  8   �l  Q   )m  b   {m  /   �m  �   n  y   �n  �   
o  e   �o  :    p  \   ;p  &   �p  b   �p     "q     i                     �      C       ,   '      !      3   (       �              �       5   ]      �                  n       l          �       D   X   y       #          ^               �           �   �         s           m   *   t   "   p       G      E   �   _   �   c       T   �       e           }   S   0   1   /      U   �   �   R       b   o   >   u              h       �                �   d      �   
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
 password file "%s" is empty password prompt and password file cannot be specified together pclose failed: %m performing post-bootstrap initialization ...  removing WAL directory "%s" removing contents of WAL directory "%s" removing contents of data directory "%s" removing data directory "%s" running bootstrap script ...  selecting default max_connections ...  selecting default shared_buffers ...  selecting default time zone ...  selecting dynamic shared memory implementation ...  setlocale() failed specified text search configuration "%s" might not match locale "%s" suitable text search configuration for locale "%s" is unknown superuser name "%s" is disallowed; role names cannot begin with "pg_" symlinks are not supported on this platform syncing data to disk ...  too many command-line arguments (first is "%s") user does not exist user name lookup failure: error code %lu warning:  Project-Id-Version: postgresql
Report-Msgid-Bugs-To: pgsql-bugs@lists.postgresql.org
PO-Revision-Date: 2020-07-17 12:35
Last-Translator: pasha_golub
Language-Team: Ukrainian
Language: uk_UA
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=((n%10==1 && n%100!=11) ? 0 : ((n%10 >= 2 && n%10 <=4 && (n%100 < 12 || n%100 > 14)) ? 1 : ((n%10 == 0 || (n%10 >= 5 && n%10 <=9)) || (n%100 >= 11 && n%100 <= 14)) ? 2 : 3));
X-Crowdin-Project: postgresql
X-Crowdin-Project-ID: 324573
X-Crowdin-Language: uk
X-Crowdin-File: /REL_12_STABLE/initdb.pot
X-Crowdin-File-ID: 224
 
Якщо каталог даних не вказано, використовується змінна середовища PGDATA.
 
Рідковживані параметри:
 
Параметри:
 
Інші параметри:
 
Про помилки повідомляйте на <pgsql-bugs@lists.postgresql.org>.
 
Готово. Тепер ви можете запустити сервер бази даних командою:

    %s

 
Синхронізація з диском пропущена.
Каталог з даними може бути пошкоджено під час аварійного завершення роботи операційної системи.
       --auth-host=METHOD     метод аутентифікації за замовчуванням для локального TCP/IP підключення
       --auth-local=METHOD   метод аутентифікації за замовчуванням для локального під'єднання через сокет
       --lc-collate=, --lc-ctype=, --lc-messages=LOCALE
      --lc-monetary=, --lc-numeric=, --lc-time=LOCALE
                            встановлення локалі за замовчуванням для відповідної категорії в
                            нових базах даних (замість значення з середовища)
       --locale=LOCALE       встановлює локаль за замовчуванням для нових баз даних
       --no-locale           еквівалентно --locale=C
       --pwfile=FILE         прочитати пароль для нового суперкористувача з файлу
       --wal-segsize=SIZE     розмір сегментів WAL у мегабайтах
   %s [OPTION]... [DATADIR]
   -?, --help               показати цю довідку, потім вийти
   -A, -- auth=METHOD метод аутентифікації за замовчуванням для локальних підключень
   -E, --encoding=ENCODING встановлення кодування за замовчуванням для нової бази даних
   -L DIRECTORY              розташування вхідних файлів
   -N, --no-sync          не чекати на безпечний запис змін на диск
   -S, --sync-only           синхронізувати тільки каталог даних
   -T, --text-search-config=CFG                             конфігурація текстового пошуку за замовчуванням
   -U, --username=NAME         ім'я суперкористувача бази даних
   -V, --version            вивести інформацію про версію і вийти
   -W, --pwprompt           запитувати пароль нового суперкористувача
   -X, --waldir=WALDIR       розташування журналу попереднього запису
   -d, --debug             генерувати багато налагоджувальних повідомлень
   -g, --allow-group-access дозволити читати/виконувати у каталозі даних для групи
   -k, --data-checksums      використовувати контрольні суми сторінок
   -n, --no-clean             не очищувати після помилок
 
   -s, --show                показати внутрішні налаштування
  [-D - pgdata =] DATADIR розташування кластеру цієї бази даних
 "%s" невірне ім'я серверного кодування %s ініціалізує кластер баз даних PostgreSQL.

 Перевірте вашу установку або вкажіть правильний перелік дій використання параметру-L.
 Контроль цілісності сторінок даних вимкнено.
 Контроль цілісності сторінок даних увімкнено.
 Кодування "%s", що очікується локалізацією, не дозволено у якості кодування сервера.
Замість нього буде встановлене кодування "%s" за замовчуванням.
 Кодування "%s" не дозволяється у якості кодування сервера.
Перезапустіть %s, обравши іншу локалізацію.
 Введіть знову:  Введіть новий пароль для superuser:  Якщо ви хочете створити нову систему бази даних, видаліть або очистіть каталог "%s", або запустіть %s з іншим аргументом, ніж "%s".
 Якщо ви хочете зберегти WAL, видаліть або спорожніть каталог "%s".
 Він містить файл з крапкою або невидимий файл, можливо це точка під'єднання.
 Він містить каталог lost+found, можливо це точка під'єднання.
 Паролі не співпадають.
 Будь ласка, увійдіть (за допомогою, наприклад, "su") як (непривілейований) користувач, від імені якого буде запущено серверний процес. 
 Перезапустіть %s з параметром -E.
 Виконується у режимі налагодження.
 Виконується у режимі 'no-clean'. Помилки не будуть виправлені.
 Кластер бази даних буде ініціалізовано з локалізацією "%s".
 Кластер бази даних буде ініціалізовано з локалізацією
  COLLATE:  %s
  CTYPE:    %s
  MESSAGES: %s
  MONETARY: %s
  NUMERIC:  %s
  TIME:     %s
 Кодування бази даних за замовчуванням встановлено: "%s".
 Конфігурація текстового пошуку за замовчуванням буде встановлена в "%s".
 Кодування, яке ви вибрали (%s), та кодування, що використовується локаллю (%s), не збігаються. 
Це може спричинити некоректну поведінку у функціях, що обробляють символьні рядки.
Перезапустіть %s і не вказуйте явне кодування або виберіть відповідну комбінацію.
 Файли цієї бази даних будуть належати користувачеві "%s".
Від імені цього користувача повинен запускатися процес сервера.

 Програма "postgres" потрібна для %s, але не знайдена в тому 
ж каталозі, що й "%s".
Перевірте вашу установку. Програма "postgres" була знайдена "%s", 
але не була тієї ж версії, що й %s.
Перевірте вашу установку. Це означає, що ваша інсталяція пошкоджена або в параметрі -L задана неправильна директорія.
 Спробуйте "%s --help" для отримання додаткової інформації.
 Використання:
 Не рекомендується використовувати точку під'єднання у якості каталогу даних.
Створіть підкаталог і використайте його.
 директорія WAL "%s" не видалена за запитом користувача розташування WAL каталогу має бути абсолютним шляхом Ви можете змінити це, змінивши pg_hba.conf або скориставшись опцією -A, або
--auth-local і --auth-host, наступний раз, коли ви запускаєте initdb.
 Вам потрібно ідентифікувати каталог, у якому будуть розташовані дані для цієї бази даних. Зробіть це за допомогою параметру -D або змінного середовища PGDATA.
 аргумент --wal-segsize повинен бути числом аргумент --wal-segsize повинен бути ступенем 2 між 1 і 1024 не може виконуватись як root не вдалося створити обмежені токени на цій платформі неможливо дублювати нульовий покажчик (внутрішня помилка)
 отримано сигнал
 дочірній процес завершився з кодом виходу %d дочірній процес завершився з невизнаним статусом %d дочірній процес перервано через помилку 0х%X дочірній процес перервано через сигнал %d: %s неможливо виконати команду команду не знайдено немає доступу до каталогу "%s": %m немає доступу до файлу "%s": %m не вдалося виділити SID: код помилки %lu не вдалося змінити каталог на "%s": %m неможливо змінити дозволи "%s": %m не вдалося змінити дозволи каталогу "%s": %m не вдалося закрити каталог "%s": %m не вдалося створити каталог "%s": %m не вдалося створити обмежений токен: код помилки %lu не вдалося створити символічне послання "%s": %m не вдалося виконати команду "%s": %m неможливо знайти "%s" для виконання не вдалося знайти відповідне кодування для локалі "%s" не вдалося знайти відповідну конфігурацію текстового пошуку для локалі"%s" не вдалося fsync файл "%s": %m не вдалося отримати код завершення підпроцесу: код помилки %lu не вдалося встановити сполучення для "%s": %s
 не вдалося визначити поточний каталог: %m не можу знайти користувача з ефективним ID %ld: %s не вдалося відкрити каталог "%s": %m не вдалося відкрити файл "%s" для читання: %m не вдалося відкрити файл "%s" для запису: %m не можливо відкрити файл "%s": %m не вдалося відкрити токен процесу: код помилки %lu не вдалося перезапустити з обмеженим токеном: код помилки %lu неможливо прочитати бінарний файл "%s" не вдалося прочитати каталог "%s": %m не вдалося прочитати пароль з файлу "%s": %m не можливо прочитати символічне послання "%s": %m не вдалося видалити файл або каталог "%s": %m не вдалося перейменувати файл "%s" на "%s": %m не вдалося встановити сполучення для "%s": %s
 не вдалося запустити процес для команди "%s": код помилки %lu не вдалося отримати інформацію від файлу "%s": %m не вдалося отримати інформацію про файл або каталог "%s": %m не вдалося записати файл "%s": %m не вдалося написати у дочірній процес: %s
 створення конфігураційних файлів...  створення каталогу %s...  створення підкаталогів...  директорія даних "%s" не видалена за запитом користувача каталог "%s" існує, але він не порожній увімкнення автентифікації "довіри" для локальних підключень невідповідність кодування помилка:  не вдалося видалити директорію WAL не вдалося видалити дані директорії WAL не вдалося видалити дані директорії не вдалося видалити дані директорії не вдалося відновити старі локалі "%s" збій:  файл "%s" не існує файл "%s" не є звичайним файлом виправляю дозволи для створеного каталогу %s...  вхідний файл "%s" не належить PostgreSQL %s розташування вхідного файлу має бути абсолютним шляхом неприпустимий спосіб автентифікації "%s" для "%s" підключення невірний бінарний файл "%s" не допустиме ім'я локалі "%s" неприпустимі параметри локалі; перевірте LANG та LC_* змінні середовища локалізація "%s" потребує кодування "%s", що не підтримується logfile необхідно вказати пароль суперкористувача для активації автентифікації %s каталог даних не вказано ok
 недостатньо пам'яті недостатньо пам'яті
 файл з паролями "%s" є порожнім неможливо вказати одночасно пароль і файл паролю помилка pclose: %m виконується кінцева фаза ініціалізації ...  видалення WAL директорії "%s" видалення даних з директорії WAL "%s" видалення даних з директорії "%s" видалення даних з директорії "%s" виконуємо сценарій ініціалізації ...  обирається значення max_connections ... 
  обирається значення shared_buffers...  обирається часовий пояс за замовчуванням ...  обирається реалізація динамічної спільної пам'яті ...  setlocale() завершився невдало вказана конфігурація текстового пошуку "%s" може не підходити локалі "%s" відповідна конфігурація текстового пошуку для локалі "%s" невідома неприпустиме ім'я суперкористувача "%s"; імена ролей не можуть починатися на "pg_" символічні посилання не підтримуються цією платформою синхронізація даних з диском ...  забагато аргументів у командному рядку (перший "%s") користувача не існує невдала підстановка імені користувача: код помилки %lu попередження:  