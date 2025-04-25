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

INSERT INTO `numbers` SELECT
  `Service Type`,
  `Prefix`,
  `Number Length`,
  `From`,
  `To`,
  `Status`,
  `Quantity`,
  `Latest Holder`,
  `Latest Transfer Date`,
  `Allocatee`,
  `Allocation Date`
FROM `numbers_raw`;

DROP TABLE `numbers_raw`;
