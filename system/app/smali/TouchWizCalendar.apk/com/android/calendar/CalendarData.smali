.class public final Lcom/android/calendar/CalendarData;
.super Ljava/lang/Object;
.source "CalendarData.java"


# static fields
.field static final s12AmPm:[Ljava/lang/String;

.field static final s12Hours:[Ljava/lang/String;

.field static final s12HoursNoAmPm:[Ljava/lang/String;

.field static final s24Hours:[Ljava/lang/String;

.field static final sDateStrings:[Ljava/lang/String;

.field static final sMinutes:[Ljava/lang/String;

.field static final sMonthNumStrings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    const-string v1, "1"

    aput-object v1, v0, v4

    const-string v1, "2"

    aput-object v1, v0, v5

    const-string v1, "3"

    aput-object v1, v0, v6

    const-string v1, "4"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "13"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "14"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "15"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "16"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "17"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "18"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "19"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "21"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "22"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "23"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "26"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "29"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "30"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "31"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/CalendarData;->sDateStrings:[Ljava/lang/String;

    .line 26
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v3

    const-string v1, "2"

    aput-object v1, v0, v4

    const-string v1, "3"

    aput-object v1, v0, v5

    const-string v1, "4"

    aput-object v1, v0, v6

    const-string v1, "5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "12"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/CalendarData;->sMonthNumStrings:[Ljava/lang/String;

    .line 30
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "12 AM"

    aput-object v1, v0, v3

    const-string v1, "1 AM"

    aput-object v1, v0, v4

    const-string v1, "2 AM"

    aput-object v1, v0, v5

    const-string v1, "3 AM"

    aput-object v1, v0, v6

    const-string v1, "4 AM"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "5 AM"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6 AM"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7 AM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8 AM"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9 AM"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "10 AM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "11 AM"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Noon"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "1 PM"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "2 PM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "3 PM"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "4 PM"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "5 PM"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "6 PM"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "7 PM"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "8 PM"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "9 PM"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "10 PM"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "11 PM"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "12 AM"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/CalendarData;->s12Hours:[Ljava/lang/String;

    .line 36
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AM"

    aput-object v1, v0, v3

    const-string v1, "AM"

    aput-object v1, v0, v4

    const-string v1, "AM"

    aput-object v1, v0, v5

    const-string v1, "AM"

    aput-object v1, v0, v6

    const-string v1, "AM"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "AM"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AM"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "AM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AM"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "AM"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "AM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "AM"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "PM"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "PM"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "PM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PM"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "PM"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "PM"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "PM"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "PM"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "PM"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "PM"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "PM"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "PM"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "AM"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/CalendarData;->s12AmPm:[Ljava/lang/String;

    .line 44
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "12"

    aput-object v1, v0, v3

    const-string v1, "  1"

    aput-object v1, v0, v4

    const-string v1, "  2"

    aput-object v1, v0, v5

    const-string v1, "  3"

    aput-object v1, v0, v6

    const-string v1, "  4"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "  5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "  6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "  7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "  8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "  9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "  1"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "  2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "  3"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "  4"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "  5"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "  6"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "  7"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "  8"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "  9"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "12"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/CalendarData;->s12HoursNoAmPm:[Ljava/lang/String;

    .line 49
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "00"

    aput-object v1, v0, v3

    const-string v1, "01"

    aput-object v1, v0, v4

    const-string v1, "02"

    aput-object v1, v0, v5

    const-string v1, "03"

    aput-object v1, v0, v6

    const-string v1, "04"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "05"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "06"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "08"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "13"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "14"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "15"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "16"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "17"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "18"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "19"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "21"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "22"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "23"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "24"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/CalendarData;->s24Hours:[Ljava/lang/String;

    .line 54
    const/16 v0, 0x3c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ":00"

    aput-object v1, v0, v3

    const-string v1, ":01"

    aput-object v1, v0, v4

    const-string v1, ":02"

    aput-object v1, v0, v5

    const-string v1, ":03"

    aput-object v1, v0, v6

    const-string v1, ":04"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ":05"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ":06"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ":07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ":08"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ":09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ":10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ":11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ":12"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ":13"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ":14"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, ":15"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, ":16"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ":17"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, ":18"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, ":19"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, ":20"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ":21"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, ":22"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, ":23"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, ":24"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, ":25"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, ":26"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, ":27"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, ":28"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, ":29"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, ":30"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, ":31"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, ":32"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, ":33"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, ":34"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, ":35"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, ":36"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, ":37"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, ":38"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, ":39"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, ":40"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, ":41"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, ":42"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, ":43"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, ":44"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, ":45"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, ":46"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, ":47"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, ":48"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, ":49"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, ":50"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, ":51"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, ":52"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, ":53"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, ":54"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, ":55"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, ":56"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, ":57"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, ":58"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, ":59"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/CalendarData;->sMinutes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
