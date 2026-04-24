grammar ohmin;

c247string     : '24/7';

NUMBERS : [0-9]+;

cdayoftheweek     : cworkdays | cweekend;

cworkdays         : cworkdays2letters | cworkdays3letters;
cworkdays2letters : 'Mo'  | 'Tu'  | 'We'  | 'Th'  | 'Fr';
cworkdays3letters : 'Mon' | 'Tue' | 'Wed' | 'Thu' | 'Fri';

cweekend         : cweekend2letters | cweekend3letters;
cweekend2letters : 'Sa'  | 'Su';
cweekend3letters : 'Sat' | 'Sun';

cmonth         : 'Jan' | 'Feb' | 'Mar' | 'Apr' | 'May' | 'Jun' | 'Jul' | 'Aug' | 'Sep' | 'Oct' | 'Nov' | 'Dec';

csunlightevent : 'dawn' | 'sunrise' | 'sunset' | 'dusk';

coffsetsymbols : '+' | '-';

cminute        : NUMBERS;
chour          : NUMBERS;
cday           : NUMBERS;
cweeknum       : NUMBERS;

positive_integer : NUMBERS;
negative_integer : '-' positive_integer;

hh_mm         : chour ':' cminute;

COMMENT             : '"' ~('"')* '"';
comment             : COMMENT;

nth_entry           :
                      negative_integer
                    | positive_integer '-' positive_integer
                    | positive_integer
                    ;

WS : [ \t\n\r]+ -> channel(HIDDEN);

opening_hours : rule_sequence (rule_separator rule_sequence)* EOF;

rule_sequence :
                selector_sequence rule_modifier
              | selector_sequence
              ;

rule_separator :
                 ';'    #rule_separator_normal
               | '||'   #rule_separator_fallback
               ;

rule_modifier             :
                            rule_modifier_open
                          | rule_modifier_closed
                          | rule_modifier_unknown
                          | rule_modifier_comment
                          ;
rule_modifier_open        : 'open' comment?;
rule_modifier_closed      : ('closed' | 'off') comment?;
rule_modifier_unknown     : 'unknown' comment?;
rule_modifier_comment     : comment;

selector_sequence     :
                        c247string
                      | wide_range_selectors small_range_selectors
                      | wide_range_selectors
                      | small_range_selectors
                      ;

small_range_selectors :
                        weekday_selector time_selector
                      | weekday_selector
                      | time_selector
                      ;

weekday_selector     :
                       holiday_sequence ',' weekday_sequence
                     | weekday_sequence ',' holiday_sequence
                     | holiday_sequence weekday_sequence
                     | weekday_sequence
                     | holiday_sequence
                     ;

weekday_sequence     : weekday_ranges (',' weekday_ranges)*;

weekday_ranges                  :
                                  weekday_ranges_range_nth_offset
                                | weekday_ranges_range_nth
                                | weekday_ranges_range
                                | weekday_ranges_single
                                ;
weekday_ranges_single           : cdayoftheweek;
weekday_ranges_range            : cdayoftheweek '-' cdayoftheweek;
weekday_ranges_range_nth        : cdayoftheweek '[' nth_entry (',' nth_entry)* ']';
weekday_ranges_range_nth_offset : cdayoftheweek '[' nth_entry (',' nth_entry)* ']' day_offset;

holiday_sequence     : holiday (',' holiday)*;
holiday              :
                       'PH' day_offset? #singular_day_holiday
                     | 'SH' day_offset? #plural_day_holiday
                     ;

day_offset           : (('+' positive_integer) | negative_integer) ('day' 's'?);

time_selector            : timespan (',' timespan)*;

timespan                 :
                           timespan_range_cron
                         | timespan_range_openended
                         | timespan_range
                         | timespan_openended
                         ;

timespan_range           : time '-' time;
timespan_range_openended : time '-' time '+';
timespan_range_cron      : time '-' time '/' (hh_mm | positive_integer);
timespan_openended       : time '+';

time                     : variable_time | hh_mm;
variable_time            :
                           '(' csunlightevent coffsetsymbols hh_mm ')'
                         | csunlightevent coffsetsymbols hh_mm
                         | csunlightevent
                         ;

wide_range_selectors  :
    (
      year_sel calendarmonth_selector week_selector
    | year_sel calendarmonth_selector
    | year_sel week_selector
    | year_sel date_from
    | year_sel calendarmonth_range
    | year_sel
    | calendarmonth_selector week_selector
    | calendarmonth_selector
    | week_selector
    ) ':'?
    | comment ':'?
    ;

year_sel                       : year_selector (',' year_selector)*;
year_selector                  :
                                 year_selector_range_cron
                               | year_selector_range
                               | year_selector_single_cron
                               | year_selector_single_openended
                               | year_selector_single
                               ;
year_selector_range            : year_selector_single '-' year_selector_single;
year_selector_range_cron       : year_selector_range '/' positive_integer;

year_selector_single           : NUMBERS;
year_selector_single_cron      : year_selector_single '/' positive_integer;
year_selector_single_openended : year_selector_single '+';

calendarmonth_selector        : calendarmonth_range (',' calendarmonth_range)*;

calendarmonth_range           :
                                calendarmonth_range_from_to
                              | calendarmonth_range_from_openended
                              | calendarmonth_range_from
                              | calendarmonth_range_cron
                              | calendarmonth_range_range
                              | calendarmonth_range_single
                              ;
calendarmonth_range_single         : cmonth;
calendarmonth_range_range          : cmonth '-' cmonth;
calendarmonth_range_cron           : cmonth '-' cmonth '/' positive_integer;
calendarmonth_range_from           : date_from date_offset?;
calendarmonth_range_from_openended : date_from date_offset? '+';
calendarmonth_range_from_to        : date_from date_offset? '-' date_to date_offset?;

date_offset          :
                       coffsetsymbols cdayoftheweek day_offset?
                     | day_offset
                     ;

date_from            :
                       year_selector_single? cmonth cday
                     | year_selector_single? moveable_holidays
                     ;
date_to              : date_from | cday;

moveable_holidays    : 'easter';

week_selector        : 'week' week (',' week)*;
week                 : week_range_cron | week_range | week_single;
week_single          : cweeknum;
week_range           : cweeknum '-' cweeknum;
week_range_cron      : cweeknum '-' cweeknum '/' positive_integer;
