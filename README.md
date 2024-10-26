# the numbering system
australian phone numbers are managed by [ACMA](http://www.acma.gov.au/). information about individual numbers and ranges of numbers is published online as a CSV file available on ["the numbering system"](https://www.thenumberingsystem.com.au/#!/number-register/search).

CSV files kinda suck.

this tool downloads the `EnhancedFullDownload.csv` file and imports it into an SQLite database with proper column types, names, and a more sensible order.

## usage
```output
$ # grab the zip file and create an sqlite database
$ ./download
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 7702k  100 7702k    0     0  8325k      0 --:--:-- --:--:-- --:--:-- 8318k

$ # dated folders are created in data/
$ tree data
data
└── 2024-10-26T12:27:22+08:00
    ├── EnhancedFullDownload.sqlite3
    └── EnhancedFullDownload.zip

2 directories, 2 files

$ # use the database :3
$ sqlite3 'data/2024-10-26T12:27:22+08:00/EnhancedFullDownload.sqlite3'
SQLite version 3.46.1 2024-08-13 09:16:08
Enter ".help" for usage hints.
sqlite> SELECT COUNT(*) FROM `numbers`;
681791
sqlite> .schema numbers
CREATE TABLE `numbers` (
  `Service Type` TEXT,
  `Prefix` TEXT,
  `Number Length` INT,
  `From` TEXT,
  `To` TEXT,
  `Status` TEXT,
  `Quantity` INT,
  `Latest Holder` TEXT,
  `Latest Transfer Date` TEXT,
  `Allocatee` TEXT,
  `Allocation Date` TEXT
);
sqlite>
```
