{
  :'ru' => {
 
    :time => {
      :formats => {
        :long_ordinal => lambda { |time| "%B #{time.day.ordinalize}, %Y %H:%M" }
      },
      :time_with_zone => {
        :formats => {
          :default => lambda { |time| "%Y-%m-%d %H:%M:%S #{time.formatted_offset(false, 'UTC')}" }
        }
      },
      :am => 'утра',
      :pm => 'вечера'
    },

            
    # date helper distance in words
    #NOTE: Pluralization rules have changed! Rather than simply submitting an array, i18n now allows for a hash with the keys:
    # :zero, :one & :many   - FUNKY (but a pain to find...)!
    :datetime => {
      :distance_in_words => {
        :half_a_minute       => 'полминуты',
        :less_than_x_seconds => {:zero => 'менее минуты', :one => '1 минута', :few =>'{{count}} секунды',  :many => '{{count}} секунд'},
        :x_seconds           => {:one => '1 секунда', :few =>'{{count}} секунды', :many => '{{count}} секунд'},
        :less_than_x_minutes => {:zero => 'менее минуты', :one => '1 минута', :few =>'{{count}} минуты', :many => '{{count}} минут'},
        :x_minutes           => {:one => "{{count}} минута", :few => "{{count}} минуты", :many => "{{count}} минут"},
        :about_x_hours       => {:one => 'около часа', :few =>'{{count}} часа', :many => '{{count}} часов'},
        :x_days              => {:one => '1 день', :few =>'{{count}} дня', :many => '{{count}} дней'},
        :about_x_months      => {:one => 'около месяца', :few =>'{{count}} месяца', :many => '{{count}} месяцев'},
        :x_months            => {:one => '1 месяц', :few =>'{{count}} месяца', :many => '{{count}} месяцев'},
        :about_x_years       => {:one => 'около года', :few =>'{{count}} года', :many => '{{count}} лет'},
        :over_x_years        => {:one => 'около года', :few =>'{{count}} года', :many => '{{count}} лет'}
      }
    },
 
    # numbers
    :number => {
      :format => {
        :precision => 3,
        :separator => ',',
        :delimiter => '.'
      },
      :currency => {
        :format => {
          :unit => '$',
          :precision => 2,
          :format => '%u %n'
        }
      }
    },
 
    # Active Record
    :active_record => {
      :error => {
        :header_message => ["Сохранить {{object_name}} невозможно: 1 ошибка", "Сохранить {{object_name}} невозможно: {{count}} ошибок."],
        :message => "Пожалуйста, проверьте следующие поля:",
        :template => {
                      :body => "ddd"
        }
      },

      :error_messages => {
         :inclusion => "имеет непредусмотренное значение",
        :exclusion => "имеет зарезервированное значение",
        :invalid => "имеет неверное значение",
        :confirmation => "не совпадает с подтверждением",
        :accepted => "нужно подтвердить",
        :empty => "не может быть пустым",
        :blank => "не может быть пустым",
        :too_long => {
          :one => "слишком большой длины (не может быть больше чем {{count}} символ)",
          :few => "слишком большой длины (не может быть больше чем {{count}} символа)",
          :many => "слишком большой длины (не может быть больше чем {{count}} символов)",
          :many => "слишком большой длины (не может быть больше чем {{count}} символа)"
         },
        :too_short  => {
          :one => "недостаточной длины (не может быть меньше {{count}} символа)",
          :few => "недостаточной длины (не может быть меньше {{count}} символов)",
          :many => "недостаточной длины (не может быть меньше {{count}} символов)",
          :many => "недостаточной длины (не может быть меньше {{count}} символа)"
         },
        :wrong_length  => {
          :one => "неверной длины (может быть длиной ровно {{count}} символ)",
          :few => "неверной длины (может быть длиной ровно {{count}} символа)",
          :many => "неверной длины (может быть длиной ровно {{count}} символов)",
          :many => "неверной длины (может быть длиной ровно {{count}} символа)"
         },
                           
        :taken => "уже существует",
        :not_a_number => "не является числом",
        :greater_than => "может иметь лишь значение большее {{count}}",
        :greater_than_or_equal_to => "может иметь лишь значение большее или равное {{count}}",
        :equal_to => "может иметь лишь значение, равное {{count}}",
        :less_than => "может иметь лишь значение меньшее чем {{count}}",
        :less_than_or_equal_to => "может иметь значение меньшее или равное {{count}}",
        :odd => "может иметь лишь четное значение",
        :even => "может иметь лишь нечетное значение",
        :record_invalid => "Возникли ошибки: {{errors}}",
 
        :full_messages => {
          :format => "{{attribute}} {{message}}"
        }
      }
    },
    :txt => {
      :count_forums => {
        :zero => "Нет форума",
        :one => "1 форум",
        :few => "{{num}} форума",
        :many => "{{num}} форумов"
      },

      :count_users => {
        :zero => "Нет пользователей",
        :one => "1 пользователь",
        :few => "{{num}} пользователя",
        :many => "{{num}} пользователей"
      },
             
      :count_users_active => {
        :zero => "Нет активных пользователей",
        :one => "1 активный пользователь",
        :few => "{{num}} активных пользователя",
        :many => "{{num}} активных пользователей"
       },

      :count_users_lurking => {
        :zero => "Нет скрытых пользователей",
        :one => "1 скрытый пользователь",
        :few => "{{num}} скрытых пользователя",
        :many => "{{num}} скрытых пользователей"
      },
             
      :count_voices => {
        :zero => "голосов нет",
        :one => "1 голос",
        :few => "{{num}} голоса",
        :many => "{{num}} голосов"
      },
             
      :count_topics => {
        :zero => "Тем нет",
        :one => "{{num}} тема",
        :few => "{{num}} темы",
        :many => "{{num}} тем"
      },
             
      :count_posts => {
        :zero => "Сообщений нет",
        :one => "1 сообщение",
        :few => "{{num}} сообщения",
        :many => "{{num}} сообщений"
      },
             
      :count_posts_found => {
        :zero => "Ни одного сообщения не найдено",
        :one => "Найдено 1 сообщение",
        :few => "Найдено {{count}} сообщения",
        :many => "Найдено {{count}} сообщений"
      },
             
      :main_title => "Локализация Rails",
      :app_name => "Демонстрационное приложение",
      :sub_title => "как локализовать ваше Rails-приложение': новые возможности i18n",
      :contents => "Содержание",
      :menu => {
        :introduction => "Введение",
        :about => "О",
        :setup => "Установка",
        :date_formats => "Форматы даты",
        :time_formats => "Форматы времени"
      },
      :about => {
        :title => "Об этом демонстрационном приложении",
        :author => "Это демонстрационное приложение написано {{mail_1}}.",
        :feedback => "Если вы хотите оставить отзыв, пожалуйста, напишите мне письмо. А также посетите {{blog_href}}, где я регулярно веду свой блог о Rails.",
        :licence => "Это демонстрационное преложение и всё его содержимое управляется лицензией {{licence_href}}. Если вы хотите его использовать в неоговорённых условиях, пожалуйста, напишите мне и попросите разрешение."
      },
      :active_record => {
        :too_lazy => "Здесь нет примеров, так как мне лень думать об атрибутах, которые показывают <strong>все</strong> сообщения об ошибках. ;-)",
        :easy_to_understand => "Я думаю, это легко понять!"
      },
      :date_formats => {
        :rails_standards_work => "Стандартные форматы Rails (Date::DATE_FORMATS) ещё работают:"
      },
      :date_helper => {
        :date_time_title => "Date/Time distance",
        :forms_title => "Формы"
      },
      :index => {
        :manys => "другое",
        :introduction => "В последнее время, чтобы облегчить возможность по интернационализации и локализации Rails сделано много работы. См. {{sven_blog}} и {{sven_github}}!",
        :story_so_far => "Это демонстрационное приложение показывает  вам, как вы можете использовать эти реализованные возможности, чтобы локализовать большие части ваших приложений на Rails."
      },
      :number_helper => {
        :note_one => "Примечание: <code>number_to_phone</code> ещё пока не локализован, а, возможно, не будет локализован вообще; по крайне мере в ядре. Обратитесь к новым плагинам по интернационализации/локализации, напримерХ к новой версии {{globalize}}, чтобы посмотреть, как они поддерживают подобные вещи.",
        :note_two => "Ещё одно замечание: <code>number_to_currency</code>, <code>number_to_percentage</code> и <code>number_to_human_size</code> используются внутри <code>number_with_precision</code>, а  <code>number_with_precision</code> -- внутри <code>number_with_delimiter</code>."
      },
      :setup => {
        :freezing_edge_and_adding => "Freezing Edge и установка плагина локализации даты",
        :you_need_to_be_on_edge => "Чтобы использовать следующие возможности по интернационализации, вам необходимо иметь самую последнюю версию Rails i18n:",
        :date_time_formats => "Для форматов даты и времени вам также необходимо установить {{localized_dates_link}}:",
        :config_locale => "Конфигурация локали",
        :best_place => "По моему мнению, самое лучшее место, куда нужно поместить ваш файл перевода - это  <code>config/locales</code>. Плагин localized_dates копирует в эту директорию две локали, en-US и de-AT. Вы можете их расширить или модифицировать, а также создать новые файлы переводов.",
        :locale => "Вот здесь демонстрационная локаль, которая используется для этого демонстрационного приложения:",
        :defaults => "Вам также надо установить локаль по умолчанию и/или указать её в  <code>environment.rb</code> или в initializer.",
        :locale_structure_title => "Немного о структуре файлов перевода",
        :locale_structure_number => "Вы можете заметить, что внутри раздела локали <code>:number</code>, мы определили  <code>:format</code> и <code>:currency</code>. В общем случае, локали структурированы иерархически - т.е.валюта и числа, проценты и числа и т.д. <code>:currency</code> можно либо переписать настройкой ключа <code>:format</code> (в нашем случае мы указали, что <code>:precision</code> равно 2, вместо 3) или расширить их (мы добавили две опции <code>:unit</code> и <code>:format</code>).",
        :locale_structure_date_time => "Тоже самое справедливо и для дат и времени: Если необходимо, то может использоваться <code>:datetime</code> и <code>:time_with_zone</code>, чтобы указать именно форматы их типов, вместо того, чтобы положиться на ключ <code>:time</code>. Примечание, однако, в общем случае, вы можете сохранить формат <code>:time</code>."   
      },
      :sidebar => {
        :beast_title => "Что такое Beast?",
        :beast_desc => "Небольшой, облегчённый форум на Rails с жутким названием и целью не превысить размер в 500 строк."
      },
             
      :time_formats => {
        :rails_standards_work => "Стандартные форматы Rails (Time::DATE_FORMATS) ещё работают:"
      },
      :ipe => {
        :click => "Щёлкните здесь!"             
      },
    
      :view => "просмотр",
      :create => "Создать",
      :edit => "Редактировать",
      :save => "Сохранить",
      :save_changes => "Сохранить изменения",
      :delete => "Удалить",
      :cancel => "Отмена",
      :or_login_with_openid => 'или войти с OpenID',
      :or_login_with => "или войти с помощью",
      :username_password => "пароля/логина",
      :username => "Имя пользователя",
             
             

      :or => "или",
      :and => "и",
      :all => "всех",

      :site => "сайт",
      :sites => "сайты",
      :forum => "Форум",
      :forums => "форум",
      :user => "Пользователь",
      :users => "пользователи",
      :voice => "голос",
      :voices => "В теме высказались:",
      :topic => "тема",
      :topics => "Темы",
      :post => "сообщение",
      :posts => "сообщений",
      :views => "просмотров",
      :search => "поиск",
      :settings => "настройки",
      :signup => "Регистрация",
      :login => "Войти",
      :logout => "Выйти",

      :user_is_administrator => "Администратор",
      :user_is_moderator => "Модератор",

      :user_since => "Пользователь с {{date}}",
      :monitored => "наблюдаемых",
      :locked => "закрытая",
      :locked_topic => "Тема закрыта",

      :latest_post => "последнее сообщение",
      :recent_activity => "последняя активность",
      :recent_posts => "последние сообщения",
      :no_recent_activity => "В последнее время пользователь отсутствует",
      :show_recent_posts => "показать последние сообщения",
      :search_results_for_searchterm => "Результаты поиска для &laquo;{{searchterm}}&raquo;",
      :goto_last_page => "Перейти на последнюю страницу",

      :new_topic => "Новая тема",
      :post_topic => "Тема начата",
      :reply_to_topic => "Ответить на тему",

      :by_user => "от {{user}}",
      :page_nr => "страница {nr}}",

      :login => "Вход",
      :login_name => "Логин",
      :password => "Пароль",
      :password_confirm => "Подтверждение пароля",
      :remember_me => "Запомнить пользователя",
      :email => "Email",
      :log_in => "Войти",
      :sign_up => "Зарегистрироваться",
      :invalid_login => "Неверный логин",
      :successful_login => "Здравствуйте!",
      :logged_out => "До свидания!",
      :moderatorship_created => 'Модерирование установлено',
      :moderatorship_not_created => "Модерирование не может быть установлено {{error}}",
      :post_created => 'Сообщение было успешно создано',
      :post_updated => "Сообщение было успешно обновлено",
      :site_created => "Сайт был успешно создан",
      :create_account => "Пожалуйста, создайте ваш аккаунт",
      :site_updated => "Сайт был успешно обновлён",
      :topic_created => 'Тема была успешно создана',
      :topic_updated => "Тема была успешно обновлена",
      :account_updated => 'Аккаунт пользователя был успешно обновлён',
      :signup_complete => "Регистрация завершена",
      :user_suspended => "Пользователь заблокирован",
      :user_unsuspended => "Пользователь разблокирован",
             
      :posts_user_is_monitoring => 'Сообщения, за которыми наблюдает {{user}}',
      :users_monitored_topics => "{{user}} наблюдает темы",
      :page_next => "следующие",
      :page_prev => "предыдущие",
      :pages => "Страницы",
             
      :will_activate => "Пожалуйста, активируйте ваш аккаунт",
      :activated => ', Ваш аккаунт активирован!',
      :visit_to_activate => "Чтобы активировать аккаунт, пройдите по следующей ссылке:",
      :activation_required => "Спасибо за регистрацию, Пожалуйста, чтобы активировать ваш аккаунт, пройдите по ссылке присланной вам в письме",
      :openid_url => "OpenID (дополнительно)",
      :account_updated => "Ваш аккаунт успешно обновлён!",
      :account_created => "Ваш аккаунт успешно создан",
             
      :forum_created => "Форум создан",
      :monitor_topic => "Отслеживать тему",
      :monitoring_topic => "Тема отслеживается",
      :set => "Установить",
      :suspended_user_post => "(Сообщение забаненного пользователя)",

      :searching_for => " Поиск для",
             
      :mail_notification =>  "В вашей теме появилась новая запись", 
      :new_post => "Появилась новая запись!",
      :dear => "Уважаемый(-ая)",
             
      :sended_new_password => "Новый пароль был вам отослан!",
      :user_not_found => "Пользователь с таким адресом электронной почты найден не был!",
      :new_password => "Новый пароль.",
      :your_new_password => "Ваш новый пароль!",
    
      :footer_message => "Двое - компания. Трое - форум. Больше трёх - Beast.",
             
      :admin => {
        :title => "Администрация",
        :create_new_forum => "Создать новый форум",
             
        :admin_and_moderation => "Администрация и модерация",
        :remove_moderated_forum => "Данный пользователь может модерировать следующие форумы. Кликните на названии, чтобы снять эти права.",
        :remove_user_as_moderator => "Снять с пользователя права модератора?",
        :add_as_moderator => "Назначить пользователя модератором форума",
        :user_is_an_administrator => "Администратор сайта",
        :suspend_user_account => "Заблокировать аккаунт пользователя",
        :user_account_is_suspended => "Аккаунт пользователя заблокирован",
        :unsuspend_user_account => "Разблокировать аккаунт пользователя",
        :edit_user_account => "Редактировать аккаунт пользователя",
        :edit_post => "Редактирование поста"
      },

             
      :post_age => "размещено {{when}} назад",

      :views_sites => {
        :title => "Вебсайт",
        :site_title => "Название",
        :site_host => "Имя хоста",
        :create_new_site => "Создать новый сайт",
        :new => "Новый сайт",
        :new_desc => "Добро пожаловать на наш форум. Пожалуйста, укажите название вашего сайта!",
        :edit => "Редактировать сайт",
        :description => "Описание",
        :tagline => 'Теги'
      },
             
      :views_users => {
        :find_a_user => "Найти пользователя",
        :display_name_or_login => "Имя или логин",
        :name_or_login => "Имя / Логин",
        :current_status_title => "Текущий статус",
        :website_title => "Вебсайт",
        :posts_title => "Сообщения",
        :admin_in_parens => "(Администратор)",
        :search_title => "Поиск",
        :reset_password => "смена пароля",
        :email_directions => 'отправка email',
        :login_with_openid => 'войти с помощью OpenID',
        :send_email => "Отправить ссылку по Email",
        :avatars_title => "Аватар",
        :gravatar_notice => "Чтобы поставить на этот форум свой собственный аватар посетите {gravatar} и бесплатно зарегистрируйтесь на gravatar.",
        :settings => "Настройки",
        :for_user => "Для пользователя {{user}}",
        :change_email_or_password => "Измените Email или пароль",
        :update_profile => "Обновите профайл",

        :basics_title => "Основное",
        :change_login => "Пожалуйста, измените ваш логин",
        :login_field => "Логин должен начинаться с, как минимум, двух символов и может содержать буквы, числа или подчёркивания",

        :password_title => "Пароль",
        :password_field => "Чтобы изменить ваш пароль, введите новый дважды (длина должна быть более 5 символов)",
              
        :once => "Один раз",
        :and_again => "И ещё раз",
        :profile => "Профиль пользователя",
        :display_name=> "Псевдоним",
        :openid_url_title => "Дополнительно: вход через OpenID",
        :open_id_field => "Введите ваш OpenID Identity Url, если вы его знаете",
        :website_title => "Вебсайт",
        :without_http => "без префикса HTTP://",
        :bio_title => "О себе"
      },
          
      :views_forums => {
        :title => "Название форума",
        :position => "Порядковый номер",
        :desc => "Описание",
        :edit => "Редактирование форума",
        :unmoderated =>"В настоящее время этот форум не модерируется. <br />Пожалуйста, соблюдайте нормы приличия.", 
        :new => "Новый форум",
        :comma_locked_topic => ', тема закрыта.',
        :recent_activity => "Недавняя активность",
        :no_recent_activity => "Без недавней активности"
      },
            
      :views_topics => {
        :edit => "Редактирование темы",
        :topic => "Тема",
        :body => "Описание",
        :save_reply => "Сохранить",
        :delete_sure => "Вы действительно хотите удалить тему?",
        :topic_locked => "Тема закрыта",
        :locked_topic => "Эта тема закрыта",
        :topic_title => "Сообщение"
      },
            
      :views_posts => {
        :edit => "Редактирование сообщения",
        :save => "Сохранить сообщение",
        :save_reply => "Сохранить",
        :delete => "Удалить сообщение",
        :delete_sure => "Вы действительно хотите удалить сообщение?",
        :formatting_help => "Справка по форматированию",
        :formatting_bold => '*жирный*',
        :formatting_italics => '_курсив_',
        :formatting_blockquote => 'bq. <span>(Блочная цитата)</span>',
        :formatting_list => '* oder # <span>Упорядоченный список</span>'
      },

      :moderator => {
        :zero => "Нет модераторов",
        :one => "1 модератор",
        :few => "{{num}} модератора",
        :many => "{{num}} модераторов"
      }
    }
  }
}
