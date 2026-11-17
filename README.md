# Airline Booking Database (SQL)

**Group:** PLP8
**Activity:** Passenger booking a ticket (Databases & SQL)

## Who did what

| Member | Name                             | Role              | What they did                                                                                            |
| ------ | -------------------------------- | ----------------- | -------------------------------------------------------------------------------------------------------- |
| 1      | Bill Francis Ajengo              | Driver            | Created the `airline_db` database and the `passengers` table                                             |
| 2      | Neema Nyokabi Maina              | Driver            | Created the `bookings` table with the foreign key                                                        |
| 3      | Gloria Hirwa Kayitaba            | Driver            | Inserted 3 passengers and their bookings (Economy, Business, First Class)                                |
| 4      | Mohammed Atif Ibrahim Abdelgader | Driver            | Read: selected passengers booked in Business or First Class                                              |
| 5      | Hwa-Pyong Edouard Maniragaba     | Driver, Navigator | Created the repo, wrote the Join query (ticket receipt), fixed the merge conflicts in the final SQL file |
| 6      | Aristide Niyokwizerwa            | Driver            | Update: changed a seat preference and a destination. Delete: removed a booking                           |

**Roles:**

- **Driver:** wrote the code for their own part
- **Navigator:** reviewed the final file and fixed the errors
- **Presenter:** every member presents their own part in the video

**Absent members:** None

## Video

[PLP8_SQL_Activity2_Video.mp4](https://youtu.be/LGCAxT9KD0Y)

## What this project does

This project turns the airline passenger booking system into a database. It stores passengers and their bookings, and has queries to read, join, update and delete data.

## File

- `PLP8_SQL_Activity2.sql`: all the SQL code for the activity

## What you need

- MySQL installed on your computer
- Git installed on your computer

## How to run it

**1. Clone the repo** (this downloads the project to your computer)

```bash
git clone https://github.com/hwa-pyong-maniragaba-edouard/PLP8_SQL_Activity2.git
```

**2. Go into the project folder**

```bash
cd PLP8_SQL_Activity2
```

**3. Check the file is there**

```bash
ls
```

You should see `PLP8_SQL_Activity2.sql` and `README.md`.

**4. Run the SQL file**

```bash
sudo mysql --table < PLP8_SQL_Activity2.sql
```

If that doesn't work on your computer, try this instead and type your MySQL password when asked:

```bash
mysql -u root -p --table < PLP8_SQL_Activity2.sql
```

## What you should see

The file creates the database, the tables and the data, then runs the queries. You should see:

- **Read:** the passengers booked in Business or First Class
- **Join:** a ticket receipt for every passenger, with name, destination, class and class perks

The update and delete run quietly, so they print nothing.

## Look around the database yourself (optional)

Open MySQL:

```bash
sudo mysql
```

Then type these one at a time:

```sql
USE airline_db;
SHOW TABLES;
SELECT * FROM passengers;
SELECT * FROM bookings;
```

You will see that the seat preference was updated and that one booking was deleted. Type `exit;` to leave MySQL.
