��    �        �   
      �      �     �  &   �     �       3   "     V     l  /        �  "   �  1   �  �   $  "   �  j   �  o   N     �  D   �  !   !  3   C  ?   w  H   �  D      C   E  E   �  ?   �  ?     >   O  9   �  L   �  B     E   X  �   �  0   #  F   T  >   �  B   �  I     %   g  <   �  O   �  7        R     Y     b  M   t  -   �  !   �  >     E   Q  C   �  y   �  9   U  D   �  C   �  D     E   ]  >   �  A   �  '   $  (   L  ,   u  7   �  2   �  6     >   D  *   �  /   �  7   �  4     %   K  %   q  1   �  0   �  #   �       4   <  7   q  2   �  6   �  1     0   E  ,   v  .   �  3   �  7         >   +   ^   1   �   6   �   6   �   1   *!  *   \!  "   �!  7   �!  "   �!  $   "  J   *"     u"     �"  3   �"  0   �"     #  #    #  !   D#     f#  !   �#  $   �#      �#  -   �#     $  4   ;$  %   p$  $   �$  "   �$  !   �$  u    %  F   v%     �%  7   �%  )   	&  k   3&  `   �&  %    '  &   &'     M'  d   U'     �'  /   �'  &   	(  0   0(  .   a(  -   �(     �(     �(  &   �(      )  ,   /)  (   \)     �)  %   �)     �)     �)     �)     �)     	*     *     ,*     B*  #   S*     w*     �*     �*     �*     �*      �*  "    +     #+  {  B+  A   �-  &    .  H   '.  B   p.  H   �.  X   �.     U/     t/  L   �/  +   �/  "   0  B   +0  �   n0  0   [1  �   �1  �   2     �2  ^   �2  *   23  U   ]3     �3  s   34  {   �4  v   #5  �   �5  a   6  L   }6  _   �6  M   *7  �   x7  t   8  \   w8  v   �8  B   K9  z   �9  k   	:  j   u:  �   �:  A   s;  q   �;  �   '<  T   �<     =     ,=  )   ==  �   g=  V   �=  &   J>  r   q>  �   �>  �   y?  @  @  z   MA  }   �A  �   FB  �   �B  �   tC  �   D  ~   �D  N   'E  =   vE  H   �E  l   �E  l   jF  b   �F  p   :G  U   �G  P   H  Z   RH  f   �H  ?   I  J   TI  ^   �I  V   �I  E   UJ  9   �J  `   �J  l   6K  l   �K  i   L  [   zL  h   �L  J   ?M  P   �M  u   �M  _   QN  <   �N  S   �N  R   BO  V   �O  o   �O  l   \P  g   �P  .   1Q  X   `Q  3   �Q  A   �Q  z   /R  '   �R  $   �R  X   �R  d   PS     �S  ?   �S  =   T  '   ST  )   {T  9   �T  7   �T  N   U  #   fU  a   �U  4   �U  <   !V  )   ^V  2   �V  �   �V  z   fW     �W     �W  D   }X  �   �X  �   qY  O   Z  d   `Z     �Z  �   �Z  6   �[  l   �[  P   J\  ^   �\  P   �\  O   K]  2   �]  $   �]  ?   �]  >   3^  X   r^  J   �^  D   _  U   [_  /   �_  $   �_  %   `     ,`      F`  &   g`  $   �`  /   �`  a   �`     Ea     da     �a  <   �a  K   �a  ;   )b  5   eb  3   �b     _   0   *   @       �   ,   S   �   )   5       K   �       9   J   :       P      U          &   `   E   6   2          {   �           -      4      �       M       �      |   R   W               I   f   �   �              �   N      y       V          /              �          �   !   8   u   z   �   x       #   �      n   +       r       T      c           7   L               b       �   >   B   �      �   g   a   %      "   �              p       ]   t   q   �   .       �       C   �       d      [   ^      O   <               X   �   
           (           �           Z   k   $   i   �   j       e          ?   �              ;           v       H       l       �       �   '   \   Y          �       F   o   �   m   �   A   }       w   �   =       Q      �                    	   h   �                     s   D   G          ~   1          3    
Allowed signal names for kill:
 
Common options:
 
Options for register and unregister:
 
Options for start or restart:
 
Options for stop or restart:
 
Report bugs to <pgsql-bugs@lists.postgresql.org>.
 
Shutdown modes are:
 
Start types are:
   %s init[db]   [-D DATADIR] [-s] [-o OPTIONS]
   %s kill       SIGNALNAME PID
   %s logrotate  [-D DATADIR] [-s]
   %s promote    [-D DATADIR] [-W] [-t SECS] [-s]
   %s register   [-D DATADIR] [-N SERVICENAME] [-U USERNAME] [-P PASSWORD]
                    [-S START-TYPE] [-e SOURCE] [-W] [-t SECS] [-s] [-o OPTIONS]
   %s reload     [-D DATADIR] [-s]
   %s restart    [-D DATADIR] [-m SHUTDOWN-MODE] [-W] [-t SECS] [-s]
                    [-o OPTIONS] [-c]
   %s start      [-D DATADIR] [-l FILENAME] [-W] [-t SECS] [-s]
                    [-o OPTIONS] [-p PATH] [-c]
   %s status     [-D DATADIR]
   %s stop       [-D DATADIR] [-m SHUTDOWN-MODE] [-W] [-t SECS] [-s]
   %s unregister [-N SERVICENAME]
   -?, --help             show this help, then exit
   -D, --pgdata=DATADIR   location of the database storage area
   -N SERVICENAME  service name with which to register PostgreSQL server
   -P PASSWORD     password of account to register PostgreSQL server
   -S START-TYPE   service start type to register PostgreSQL server
   -U USERNAME     user name of account to register PostgreSQL server
   -V, --version          output version information, then exit
   -W, --no-wait          do not wait until operation completes
   -c, --core-files       allow postgres to produce core files
   -c, --core-files       not applicable on this platform
   -e SOURCE              event source for logging when running as a service
   -l, --log=FILENAME     write (or append) server log to FILENAME
   -m, --mode=MODE        MODE can be "smart", "fast", or "immediate"
   -o, --options=OPTIONS  command line options to pass to postgres
                         (PostgreSQL server executable) or initdb
   -p PATH-TO-POSTGRES    normally not necessary
   -s, --silent           only print errors, no informational messages
   -t, --timeout=SECS     seconds to wait when using -w option
   -w, --wait             wait until operation completes (default)
   auto       start service automatically during system startup (default)
   demand     start service on demand
   fast        quit directly, with proper shutdown (default)
   immediate   quit without complete shutdown; will lead to recovery on restart
   smart       quit after all clients have disconnected
  done
  failed
  stopped waiting
 %s is a utility to initialize, start, stop, or control a PostgreSQL server.

 %s: -S option not supported on this platform
 %s: PID file "%s" does not exist
 %s: WARNING: cannot create restricted tokens on this platform
 %s: WARNING: could not locate all job object functions in system API
 %s: another server might be running; trying to start server anyway
 %s: cannot be run as root
Please log in (using, e.g., "su") as the (unprivileged) user that will
own the server process.
 %s: cannot promote server; server is not in standby mode
 %s: cannot promote server; single-user server is running (PID: %ld)
 %s: cannot reload server; single-user server is running (PID: %ld)
 %s: cannot restart server; single-user server is running (PID: %ld)
 %s: cannot rotate log file; single-user server is running (PID: %ld)
 %s: cannot set core file size limit; disallowed by hard limit
 %s: cannot stop server; single-user server is running (PID: %ld)
 %s: control file appears to be corrupt
 %s: could not access directory "%s": %s
 %s: could not allocate SIDs: error code %lu
 %s: could not create log rotation signal file "%s": %s
 %s: could not create promote signal file "%s": %s
 %s: could not create restricted token: error code %lu
 %s: could not determine the data directory using command "%s"
 %s: could not find own program executable
 %s: could not find postgres program executable
 %s: could not get LUIDs for privileges: error code %lu
 %s: could not get token information: error code %lu
 %s: could not open PID file "%s": %s
 %s: could not open log file "%s": %s
 %s: could not open process token: error code %lu
 %s: could not open service "%s": error code %lu
 %s: could not open service manager
 %s: could not read file "%s"
 %s: could not register service "%s": error code %lu
 %s: could not remove log rotation signal file "%s": %s
 %s: could not remove promote signal file "%s": %s
 %s: could not send log rotation signal (PID: %ld): %s
 %s: could not send promote signal (PID: %ld): %s
 %s: could not send reload signal (PID: %ld): %s
 %s: could not send signal %d (PID: %ld): %s
 %s: could not send stop signal (PID: %ld): %s
 %s: could not start server
Examine the log output.
 %s: could not start server due to setsid() failure: %s
 %s: could not start server: %s
 %s: could not start server: error code %lu
 %s: could not start service "%s": error code %lu
 %s: could not unregister service "%s": error code %lu
 %s: could not write log rotation signal file "%s": %s
 %s: could not write promote signal file "%s": %s
 %s: database system initialization failed
 %s: directory "%s" does not exist
 %s: directory "%s" is not a database cluster directory
 %s: invalid data in PID file "%s"
 %s: missing arguments for kill mode
 %s: no database directory specified and environment variable PGDATA unset
 %s: no operation specified
 %s: no server running
 %s: old server process (PID: %ld) seems to be gone
 %s: option file "%s" must have exactly one line
 %s: out of memory
 %s: server did not promote in time
 %s: server did not start in time
 %s: server does not shut down
 %s: server is running (PID: %ld)
 %s: service "%s" already registered
 %s: service "%s" not registered
 %s: single-user server is running (PID: %ld)
 %s: the PID file "%s" is empty
 %s: too many command-line arguments (first is "%s")
 %s: unrecognized operation mode "%s"
 %s: unrecognized shutdown mode "%s"
 %s: unrecognized signal name "%s"
 %s: unrecognized start type "%s"
 HINT: The "-m fast" option immediately disconnects sessions rather than
waiting for session-initiated disconnection.
 If the -D option is omitted, the environment variable PGDATA is used.
 Is server running?
 Please terminate the single-user server and try again.
 Server started and accepting connections
 The program "%s" is needed by %s but was not found in the
same directory as "%s".
Check your installation.
 The program "%s" was found by "%s"
but was not the same version as %s.
Check your installation.
 Timed out waiting for server startup
 Try "%s --help" for more information.
 Usage:
 WARNING: online backup mode is active
Shutdown will not complete until pg_stop_backup() is called.

 Waiting for server startup...
 cannot duplicate null pointer (internal error)
 child process exited with exit code %d child process exited with unrecognized status %d child process was terminated by exception 0x%X child process was terminated by signal %d: %s command not executable command not found could not change directory to "%s": %m could not find a "%s" to execute could not get current working directory: %s
 could not identify current directory: %m could not read binary "%s" could not read symbolic link "%s": %m invalid binary "%s" out of memory out of memory
 pclose failed: %m server promoted
 server promoting
 server shutting down
 server signaled
 server signaled to rotate log file
 server started
 server starting
 server stopped
 starting server anyway
 trying to start server anyway
 waiting for server to promote... waiting for server to shut down... waiting for server to start... Project-Id-Version: postgresql
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
X-Crowdin-File: /REL_12_STABLE/pg_ctl.pot
X-Crowdin-File-ID: 238
 
Дозволенні сигнали для команди kill:
 
Загальні параметри:
 
Параметри для реєстрації і видалення: 
 
Параметри запуску або перезапуску:
 
Параметри припинення або перезапуску:
 
Про помилки повідомляйте на <pgsql-bugs@lists.postgresql.org>.
 
Режими зупинки:
 
Типи запуску:
   %s init[db]   [-D КАТАЛОГ-ДАНИХ] [-s] [-o ПАРАМЕТРИ]
   %s kill       ІМ'Я-СИГНАЛУ PID
   %s logrotate  [-D DATADIR] [-s]
   %s promote [-D КАТАЛОГ-ДАНИХ] [-W] [-t СЕК] [-s]
   %s register [-D КАТАЛОГ-ДАНИХ] [-N ІМ'Я-СЛУЖБИ] [-U ІМ'Я-КОРИСТУВАЧА] [-P ПАРОЛЬ]
                  [-S ТИП-ЗАПУСКУ] [-e ДЖЕРЕЛО] [-W] [-t СЕК] [-s] [-o ПАРАМЕТРИ]
   %s reload [-D КАТАЛОГ-ДАНИХ] [-s]
   %s restart [-D КАТАЛОГ-ДАНИХ] [-m РЕЖИМ-ЗУПИНКИ] [-W] [-t СЕК] [-s]
                    [-o ПАРАМЕТРИ] [-c]
   %s start [-D КАТАЛОГ-ДАНИХ] [-l ІМ'Я-ФАЙЛ] [-W] [-t СЕК] [-s]
                    [-o ПАРАМЕТРИ] [-p ШЛЯХ] [-c]
   %s status     [-D DATADIR]
   %s stop [-D КАТАЛОГ-ДАНИХ] [-m РЕЖИМ-ЗУПИНКИ] [-W] [-t СЕК] [-s]
   %s unregister [-N ІМ'Я-СЛУЖБИ]
   -?, --help              показати цю довідку потім вийти
   -D, --pgdata=КАТАЛОГ-ДАНИХ    розташування простору зберігання бази даних
   -N ІМ'Я-СЛУЖБИ  ім'я служби під яким зареєструвати сервер PostgreSQL
   -P ПАРОЛЬ     пароль облікового запису для реєстрації серверу PostgreSQL
   -S ТИП-ЗАПУСКУ   тип запуску служби для реєстрації серверу PostgreSQL
   -U КОРИСТУВАЧ     ім'я користувача під яким зареєструвати сервер PostgreSQL
   -V, --version            вивести інформацію про версію і вийти
   -W, --no-wait     не чекати завершення операції
   -c, --core-files   дозволяти postgres створювати дампи пам'яті
   -c, --core-files      недопустимо цією платформою
   -e ДЖЕРЕЛО             джерело подій для протоколу при запуску в якості послуги
   -l, --log=ФАЙЛ     записувати (або додавати) протокол служби до ФАЙЛ
   -m, --mode=РЕЖИМ    РЕЖИМ може бути "smart", "fast", або "immediate"
   -o, --options=ПАРАМЕТРИ параметри командного рядку для PostgreSQL або initdb
   -p ШЛЯХ-ДО-СЕРВЕРУ   зазвичай зайвий
   -s, --silent         виводити лише помилки, без інформаційних повідомлень
   -t, --timeout=СЕК   час очікування при використанні -w параметра
   -w, --wait         чекати завершення операції (за замовчуванням)
   auto       запускати сервер автоматично під час запуску системи (за замовчуванням)
   demand     запускати сервер за потреби
   fast        вийти негайно з коректним вимкненням (за замовченням)
   immediate   вийти негайно без повної процедури. Приведе до відновлення під час перезапуску
   smart       вийти після від'єднання усіх клієнтів
  готово
  помилка
  очікування припинено
 %s - це утиліта для ініціалізації, запуску, зупинки і контролю серверу PostgreSQL.

 %s: параметр -S не підтримується цією платформою
 %s: файл PID "%s" не існує
 %s: УВАГА: не вдалося створити обмежені токени на цій платформі
 %s: ПОПЕРЕДЖЕННЯ: не вдалося знайти усі робочі функції у системному API для завдань
 %s: мабуть, інший сервер вже працює; у будь-якому разі спробуємо запустити сервер
 %s: не може бути запущеним від ім'я супер-користувача
 Будь ласка увійдіть (використовуючи наприклад, "su") як (непривілейований) користувач який буде мати
свій серверний процес. 
 %s: неможливо підвищити сервер; сервер запущено не в режимі резерву
 %s: неможливо підвищити сервер; сервер запущено в режимі single-user (PID: %ld)
 %s: неможливо перезавантажити сервер; сервер запущено в однокористувацькому режимі (PID: %ld)
 %s: не можливо перезапустити сервер; сервер запущений в режимі single-user (PID: %ld)
 %s: не можливо розвернути файл журналу; сервер працює в режимі одного користувача (PID: %ld)
 %s: не вдалося встановити обмеження на розмір файлу; заборонено жорстким лімітом
 %s: не можливо зупинити сервер; сервер запущений в режимі single-user (PID: %ld)
 %s: контрольний файл видається пошкодженим
 %s: немає доступу до каталогу "%s": %s
 %s: не вдалося виділити SID: код помилки %lu
 %s: не вдалося створити файл сигналу розвороту журналу "%s": %s
 %s: неможливо створити файл "%s" із сигналом для підвищення: %s
 %s: не вдалося створити обмежений токен: код помилки %lu
 %s: неможливо визначити каталог даних за допомогою команди "%s"
 %s: не вдалося знайти ехе файл власної програми
 %s: не вдалося знайти виконану програму postgres
 %s: не вдалося отримати LUIDs для прав: код помилки %lu
 %s: не вдалося отримати інформацію токену: код помилки %lu
 %s: не вдалося відкрити файл PID "%s": %s
 %s: не вдалося відкрити файл журналу "%s": %s
 %s: не вдалося відкрити токен процесу: код помилки %lu
 %s: не вдалося відкрити службу "%s": код помилки %lu
 %s: не вдалося відкрити менеджер служб
 %s: не вдалося прочитати файл "%s"
 %s: не вдалося зареєструвати службу "%s": код помилки %lu
 %s: не вдалося видалити файл сигналу розвороту журналу "%s": %s
 %s: неможливо видалити файл "%s" із сигналом для підвищення: %s
 %s: не вдалося надіслати сигнал розвороту журналу (PID: %ld): %s
 %s: неможливо надіслати сигнал підвищення (PID: %ld): %s
 %s: не можливо надіслати сигнал перезавантаження (PID: %ld): %s
 %s: не вдалося надіслати сигнал %d (PID: %ld): %s
 %s: не вдалося надіслати стоп-сигнал (PID: %ld): %s
 %s: неможливо запустити сервер
Передивіться протокол виконання.
 %s: не вдалося запустити сервер через помилку setsid(): %s
 %s: не вдалося запустити сервер: %s
 %s: не вдалося запустити сервер: код помилки %lu
 %s: не вдалося почати службу "%s": код помилки %lu
 %s: не вдалося видалити службу "%s": код помилки %lu
 %s: не вдалося записати у файл сигналу розвороту журналу "%s": %s
 %s: неможливо записати файл "%s" із сигналом для підвищення: %s
 %s: не вдалося виконати ініціалізацію системи бази даних
 %s: директорія "%s" не існує
 %s: каталог "%s" не є каталогом кластера бази даних
 %s: невірні дані у файлі PID "%s"
 %s: відсутні аргументи для режиму kill
 %s: не вказано каталог даних і змінна середовища PGDATA не встановлена
 %s: команда не вказана
 %s: сервер не працює 
 %s: старий серверний процес (PID: %ld), здається, зник
 %s: файл параметрів "%s" повинен містити рівно один рядок
 %s: бракує пам'яті
 %s: сервер не було підвищено вчасно
 %s: сервер не було запущено вчасно
 %s: сервер не зупинено
 %s: сервер працює (PID: %ld)
 %s: служба "%s" вже зареєстрована 
 %s: служба "%s" не зареєстрована 
 %s: однокористувацький сервер працює (PID: %ld)
 %s: файл PID "%s" пустий
 %s: забагато аргументів у командному рядку (перший "%s")
 %s: невідомий режим роботи "%s"
 %s: невідомий режим завершення "%s"
 %s: невідомий сигнал "%s"
 %s: невідомий тип запуску "%s"
 ПІДКАЗКА: Режим "-m fast" закриває сесії відразу, не чекаючи на відключення ініційовані сесіями.
 Якщо -D параметр пропущено, використовувати змінну середовища PGDATA.
 Сервер працює?
 Будь ласка, припиніть однокористувацький сервер та спробуйте ще раз.
 Сервер запущений і приймає з'єднання
 Програма "%s" потрібна для %s, але не знайдена в тому ж каталозі, що й "%s".
Перевірте вашу установку.
 Програма "%s" була знайдена "%s", але не була тієї ж версії, що %s.
Перевірте вашу установку.
 Перевищено час очікування запуску сервера
 Спробуйте "%s --help" для отримання додаткової інформації.
 Використання:
 ПОПЕРЕДЖЕННЯ: режим онлайн копіювання активний
Зупинку не буде завершено поки не буде викликано pg_stop_backup().

 Очікування запуску сервера...
 неможливо дублювати нульовий покажчик (внутрішня помилка)
 дочірній процес завершився з кодом виходу %d дочірній процес завершився з невизнаним статусом %d дочірній процес перервано через помилку 0х%X дочірній процес перервано через сигнал %d: %s неможливо виконати команду команду не знайдено не вдалося змінити каталог на "%s": %m неможливо знайти "%s" для виконання не вдалося отримати поточний робочий каталог: %s
 не вдалося визначити поточний каталог: %m неможливо прочитати бінарний файл "%s" не можливо прочитати символічне послання "%s": %m невірний бінарний файл "%s" недостатньо пам'яті недостатньо пам'яті
 помилка pclose: %m сервер підвищено
 сервер підвищується
 сервер зупиняється
 серверу надіслано сигнал
 серверу надіслано сигнал для розворот файлу журналу
 сервер запущено
 запуск серверу
 сервер зупинено
 запуск серверу в будь-якому разі
 спроба запуску серверу в будь-якому разі
 очікується підвищення серверу... очікується зупинка серверу... очікується запуск серверу... 