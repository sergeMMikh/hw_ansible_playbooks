# Домашнее задание к занятию 2 «Работа с Playbook» - Сергей Михалёв


## Основная часть

1. Подготовьте свой inventory-файл `prod.yml`.
2. Допишите playbook: нужно сделать ещё один play, который устанавливает и настраивает [vector](https://vector.dev). Конфигурация vector должна деплоиться через template файл jinja2. От вас не требуется использовать все возможности шаблонизатора, просто вставьте стандартный конфиг в template файл. Информация по шаблонам по [ссылке](https://www.dmosk.ru/instruktions.php?object=ansible-nginx-install). не забудьте сделать handler на перезапуск vector в случае изменения конфигурации!
3. При создании tasks рекомендую использовать модули: `get_url`, `template`, `unarchive`, `file`.
4. Tasks должны: скачать дистрибутив нужной версии, выполнить распаковку в выбранную директорию, установить vector.
5. Запустите `ansible-lint site.yml` и исправьте ошибки, если они есть.
6. Попробуйте запустить playbook на этом окружении с флагом `--check`.
7. Запустите playbook на `prod.yml` окружении с флагом `--diff`. Убедитесь, что изменения на системе произведены.
8. Повторно запустите playbook с флагом `--diff` и убедитесь, что playbook идемпотентен.
9. Подготовьте README.md-файл по своему playbook. В нём должно быть описано: что делает playbook, какие у него есть параметры и теги. Пример качественной документации ansible playbook по [ссылке](https://github.com/opensearch-project/ansible-playbook). Так же приложите скриншоты выполнения заданий №5-8
10. Готовый playbook выложите в свой репозиторий, поставьте тег `08-ansible-02-playbook` на фиксирующий коммит, в ответ предоставьте ссылку на него.

---

### Решение

1. Для корректной установки clickhouse пришлось изменить версию пакета на актуальную *24.8.2.3* и добавить в playbook игнорирование сертификатов ```disable_gpg_check: true```. Были исправлены некорректные символы.
2. Были созданы в облаке lве виртуальные машины Amazon Linux
3. Резальтат поиска ошибо к при помощи `ansible-lint site.yml`
     <img src="images/Task_5_1.png" alt="Task_5_1.png" width="700" height="auto">
4. Результат запуска `ansible-playbook site.yml -i inventory/prod.yml --check`
   <img src="images/Task_6_1.png" alt="Task_6_1.png" width="700" height="auto">
6. Результат запуска `ansible-playbook site.yml -i inventory/prod.yml --diff`
   <img src="images/Task_7_1.png" alt="Task_7_1.png" width="700" height="auto">
6. Результат повторного запуска `ansible-playbook site.yml -i inventory/prod.yml --diff`
   <img src="images/Task_8_1.png" alt="Task_8_1.png" width="700" height="auto">
7. Написал [README.md](https://github.com/sergeMMikh/hw_ansible_playbooks/blob/main/playbook/README.md) для playbook.
7. [Сыслка](https://github.com/sergeMMikh/hw_ansible_playbooks/releases/tag/08-ansible-02-playbook) на тег `08-ansible-02-playbook`.
---
