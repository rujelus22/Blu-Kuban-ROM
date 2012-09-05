.class public Lcom/android/exchange/utility/CalendarUtilities;
.super Ljava/lang/Object;
.source "CalendarUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/utility/CalendarUtilities$RRule;,
        Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    }
.end annotation


# static fields
.field private static final UTC_TIMEZONE:Ljava/util/TimeZone;

.field private static mMinutes:I

.field static final sCurrentYear:I

.field static final sDayTokens:[Ljava/lang/String;

.field static final sGmtTimeZone:Ljava/util/TimeZone;

.field private static sTimeZoneCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation
.end field

.field static final sTwoCharacterNumbers:[Ljava/lang/String;

.field static final sTypeToFreq:[Ljava/lang/String;

.field private static sTziStringCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/TimeZone;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTziStringCache:Ljava/util/HashMap;

    .line 174
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->UTC_TIMEZONE:Ljava/util/TimeZone;

    .line 185
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DAILY"

    aput-object v1, v0, v3

    const-string v1, "WEEKLY"

    aput-object v1, v0, v4

    const-string v1, "MONTHLY"

    aput-object v1, v0, v5

    const-string v1, "MONTHLY"

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "YEARLY"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "YEARLY"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTypeToFreq:[Ljava/lang/String;

    .line 189
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SU"

    aput-object v1, v0, v3

    const-string v1, "MO"

    aput-object v1, v0, v4

    const-string v1, "TU"

    aput-object v1, v0, v5

    const-string v1, "WE"

    aput-object v1, v0, v6

    const-string v1, "TH"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "FR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sDayTokens:[Ljava/lang/String;

    .line 193
    const/16 v0, 0xd

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

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTwoCharacterNumbers:[Ljava/lang/String;

    .line 211
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    sput v0, Lcom/android/exchange/utility/CalendarUtilities;->sCurrentYear:I

    .line 213
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    .line 255
    sput v3, Lcom/android/exchange/utility/CalendarUtilities;->mMinutes:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 469
    return-void
.end method

.method private static addAttendeeToMessage(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/utility/SimpleIcsWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Address;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1883
    and-int/lit8 v0, p4, 0x30

    if-eqz v0, :cond_50

    .line 1884
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=TRUE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1885
    and-int/lit8 v1, p4, 0x20

    if-eqz v1, :cond_16

    .line 1886
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ATTENDEE;ROLE=REQ-PARTICIPANT"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1888
    :cond_16
    if-eqz p2, :cond_25

    .line 1889
    const-string v1, ";CN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->quoteParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1891
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAILTO:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    if-nez p2, :cond_4a

    new-instance v0, Lcom/android/emailcommon/mail/Address;

    invoke-direct {v0, p3}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;)V

    :goto_46
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1914
    :cond_49
    :goto_49
    return-void

    .line 1892
    :cond_4a
    new-instance v0, Lcom/android/emailcommon/mail/Address;

    invoke-direct {v0, p3, p2}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 1894
    :cond_50
    iget-object v0, p5, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1895
    const/4 v0, 0x0

    .line 1896
    sparse-switch p4, :sswitch_data_a0

    .line 1907
    :goto_5c
    if-eqz v0, :cond_49

    .line 1908
    if-eqz p2, :cond_6d

    .line 1909
    const-string v1, ";CN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->quoteParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1911
    :cond_6d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAILTO:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 1898
    :sswitch_88
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_5c

    .line 1901
    :sswitch_90
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=DECLINED"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_5c

    .line 1904
    :sswitch_98
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=TENTATIVE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_5c

    .line 1896
    :sswitch_data_a0
    .sparse-switch
        0x40 -> :sswitch_88
        0x80 -> :sswitch_90
        0x100 -> :sswitch_98
    .end sparse-switch
.end method

.method private static addByDay(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V
    .registers 6
    .parameter "byDay"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1354
    if-nez p0, :cond_3

    .line 1370
    :goto_2
    return-void

    .line 1356
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1360
    .local v1, weekOfMonth:I
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_25

    .line 1362
    const/4 v1, 0x5

    .line 1363
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1368
    .local v0, bareByDay:Ljava/lang/String;
    :goto_12
    const/16 v2, 0x122

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1369
    const/16 v2, 0x120

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->generateEasDayOfWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_2

    .line 1365
    .end local v0           #bareByDay:Ljava/lang/String;
    :cond_25
    add-int/lit8 v1, v1, -0x30

    .line 1366
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #bareByDay:Ljava/lang/String;
    goto :goto_12
.end method

.method static addByDay(Ljava/lang/StringBuilder;II)V
    .registers 7
    .parameter "rrule"
    .parameter "dow"
    .parameter "wom"

    .prologue
    .line 1194
    const-string v2, ";BYDAY="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    const/4 v0, 0x0

    .line 1196
    .local v0, addComma:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    const/4 v2, 0x7

    if-ge v1, v2, :cond_2e

    .line 1197
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_27

    .line 1198
    if-eqz v0, :cond_16

    .line 1199
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1201
    :cond_16
    if-lez p2, :cond_1f

    .line 1204
    const/4 v2, 0x5

    if-ne p2, v2, :cond_2c

    const/4 v2, -0x1

    :goto_1c
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1206
    :cond_1f
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sDayTokens:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    const/4 v0, 0x1

    .line 1209
    :cond_27
    shr-int/lit8 p1, p1, 0x1

    .line 1196
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2c
    move v2, p2

    .line 1204
    goto :goto_1c

    .line 1211
    :cond_2e
    return-void
.end method

.method private static addByDaySetpos(Ljava/lang/String;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V
    .registers 6
    .parameter "byDay"
    .parameter "bySetpos"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1375
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1376
    .local v0, weekOfMonth:I
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1d

    .line 1378
    const/4 v0, 0x5

    .line 1382
    :goto_a
    const/16 v1, 0x122

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1383
    const/16 v1, 0x120

    invoke-static {p0}, Lcom/android/exchange/utility/CalendarUtilities;->generateEasDayOfWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1384
    return-void

    .line 1380
    :cond_1d
    add-int/lit8 v0, v0, -0x30

    goto :goto_a
.end method

.method static addByMonthDay(Ljava/lang/StringBuilder;I)V
    .registers 4
    .parameter "rrule"
    .parameter "dom"

    .prologue
    .line 1223
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_5

    .line 1224
    const/4 p1, -0x1

    .line 1226
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ";BYMONTHDAY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    return-void
.end method

.method static addBySetpos(Ljava/lang/StringBuilder;II)V
    .registers 4
    .parameter "rrule"
    .parameter "dow"
    .parameter "wom"

    .prologue
    .line 1216
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    .line 1217
    const-string v0, ";BYSETPOS="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    const/4 v0, 0x5

    if-ne p2, v0, :cond_12

    const-string v0, "-1"

    :goto_e
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1219
    return-void

    .line 1218
    :cond_12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_e
.end method

.method private static addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V
    .registers 7
    .parameter "rrule"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1338
    const-string v3, "COUNT="

    invoke-static {p0, v3}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1339
    .local v0, count:Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 1340
    const/16 v3, 0x11e

    invoke-virtual {p1, v3, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1342
    :cond_d
    const-string v3, "INTERVAL="

    invoke-static {p0, v3}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1343
    .local v1, interval:Ljava/lang/String;
    if-eqz v1, :cond_1a

    .line 1344
    const/16 v3, 0x11f

    invoke-virtual {p1, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1346
    :cond_1a
    const-string v3, "UNTIL="

    invoke-static {p0, v3}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1347
    .local v2, until:Ljava/lang/String;
    if-eqz v2, :cond_2b

    .line 1348
    const/16 v3, 0x11d

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->recurrenceUntilToEasUntil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1350
    :cond_2b
    return-void
.end method

.method static addUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V
    .registers 6
    .parameter "rrule"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1319
    const-string v2, "UNTIL="

    invoke-static {p0, v2}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1320
    .local v1, until:Ljava/lang/String;
    if-eqz v1, :cond_11

    .line 1321
    const/16 v2, 0x11d

    invoke-static {v1}, Lcom/android/exchange/utility/CalendarUtilities;->recurrenceUntilToEasUntil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1325
    :cond_11
    const-string v2, "COUNT="

    invoke-static {p0, v2}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1326
    .local v0, occur:Ljava/lang/String;
    if-nez v1, :cond_20

    if-eqz v0, :cond_20

    .line 1327
    const/16 v2, 0x11e

    invoke-virtual {p1, v2, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1329
    :cond_20
    return-void
.end method

.method static asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 6
    .parameter "uri"
    .parameter "account"
    .parameter "accountType"

    .prologue
    .line 1654
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static attendeeStatusFromBusyStatus(I)I
    .registers 2
    .parameter "busyStatus"

    .prologue
    .line 1712
    packed-switch p0, :pswitch_data_a

    .line 1722
    const/4 v0, 0x0

    .line 1724
    .local v0, attendeeStatus:I
    :goto_4
    return v0

    .line 1714
    .end local v0           #attendeeStatus:I
    :pswitch_5
    const/4 v0, 0x1

    .line 1715
    .restart local v0       #attendeeStatus:I
    goto :goto_4

    .line 1717
    .end local v0           #attendeeStatus:I
    :pswitch_7
    const/4 v0, 0x4

    .line 1718
    .restart local v0       #attendeeStatus:I
    goto :goto_4

    .line 1712
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static buildMessageTextFromEntityValues(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1808
    if-nez p2, :cond_9

    .line 1809
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1811
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1812
    new-instance v3, Ljava/util/Date;

    const-string v0, "dtstart"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1831
    const-string v0, "allDay"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 1832
    const-string v0, "allDay"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1833
    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_9a

    move v0, v1

    .line 1835
    :goto_33
    const-string v4, "original_sync_id"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9c

    const-string v4, "rrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9c

    move v4, v1

    .line 1840
    :goto_44
    if-eqz v0, :cond_a2

    .line 1841
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1842
    if-eqz v4, :cond_9e

    const v0, 0x7f06000c

    .line 1847
    :goto_53
    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-virtual {v5, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1852
    const-string v0, "eventLocation"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1853
    const-string v0, "eventLocation"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1854
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_85

    .line 1855
    const-string v3, "\n"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1856
    const v3, 0x7f060008

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {v5, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1860
    :cond_85
    const-string v0, "description"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1861
    if-eqz v0, :cond_95

    .line 1862
    const-string v1, "\n--\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1863
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1865
    :cond_95
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9a
    move v0, v2

    .line 1833
    goto :goto_33

    :cond_9c
    move v4, v2

    .line 1835
    goto :goto_44

    .line 1842
    :cond_9e
    const v0, 0x7f06000b

    goto :goto_53

    .line 1844
    :cond_a2
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1845
    if-eqz v4, :cond_b0

    const v0, 0x7f060009

    goto :goto_53

    :cond_b0
    const v0, 0x7f060007

    goto :goto_53

    :cond_b4
    move v0, v2

    goto/16 :goto_33
.end method

.method public static busyStatusFromAvailabilityStatus(I)I
    .registers 2
    .parameter "availabilityStatus"

    .prologue
    .line 1784
    packed-switch p0, :pswitch_data_e

    .line 1798
    const/4 v0, 0x2

    .line 1801
    .local v0, busyStatus:I
    :goto_4
    return v0

    .line 1786
    .end local v0           #busyStatus:I
    :pswitch_5
    const/4 v0, 0x0

    .line 1787
    .restart local v0       #busyStatus:I
    goto :goto_4

    .line 1789
    .end local v0           #busyStatus:I
    :pswitch_7
    const/4 v0, 0x1

    .line 1790
    .restart local v0       #busyStatus:I
    goto :goto_4

    .line 1792
    .end local v0           #busyStatus:I
    :pswitch_9
    const/4 v0, 0x2

    .line 1793
    .restart local v0       #busyStatus:I
    goto :goto_4

    .line 1795
    .end local v0           #busyStatus:I
    :pswitch_b
    const/4 v0, 0x3

    .line 1796
    .restart local v0       #busyStatus:I
    goto :goto_4

    .line 1784
    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method public static convertEmailDateTimeToCalendarDateTime(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "date"

    .prologue
    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    const/16 v2, 0xd

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xe

    const/16 v2, 0x10

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x11

    const/16 v2, 0x13

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createCalendar(Lcom/android/exchange/EasSyncService;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)J
    .registers 12
    .parameter "service"
    .parameter "account"
    .parameter "mailbox"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 1592
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1600
    .local v1, cv:Landroid/content/ContentValues;
    const-string v4, "calendar_displayName"

    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    const-string v4, "account_name"

    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    const-string v4, "account_type"

    const-string v5, "com.android.exchange"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    const-string v4, "sync_events"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1608
    const-string v4, "visible"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1612
    const-string v4, "canOrganizerRespond"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1613
    const-string v4, "canModifyTimeZone"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1614
    const-string v4, "maxReminders"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1615
    const-string v4, "allowedReminders"

    const-string v5, "0,1"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    const-string v4, "allowedAttendeeTypes"

    const-string v5, "0,1,2"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    const-string v4, "allowedAvailability"

    const-string v5, "0,1,2"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    const v0, -0xffff01

    .line 1625
    .local v0, color:I
    :try_start_61
    new-instance v4, Lcom/android/emailcommon/service/AccountServiceProxy;

    sget-object v5, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Lcom/android/emailcommon/service/AccountServiceProxy;->getAccountColor(J)I
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_6d} :catch_b8

    move-result v0

    .line 1632
    :goto_6e
    const-string v4, "calendar_color"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1633
    const-string v4, "calendar_timezone"

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    const-string v4, "calendar_access_level"

    const/16 v5, 0x2bc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1636
    const-string v4, "ownerAccount"

    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v5, v6, v7}, Lcom/android/exchange/utility/CalendarUtilities;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1644
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_b5

    .line 1645
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1646
    .local v2, stringId:Ljava/lang/String;
    iput-object v2, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    .line 1647
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1649
    .end local v2           #stringId:Ljava/lang/String;
    :goto_b4
    return-wide v4

    :cond_b5
    const-wide/16 v4, -0x1

    goto :goto_b4

    .line 1626
    .end local v3           #uri:Landroid/net/Uri;
    :catch_b8
    move-exception v4

    goto :goto_6e
.end method

.method public static createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 11
    .parameter "context"
    .parameter "entity"
    .parameter "messageFlag"
    .parameter "uid"
    .parameter "account"

    .prologue
    .line 1930
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method public static createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 13
    .parameter "context"
    .parameter "entity"
    .parameter "messageFlag"
    .parameter "uid"
    .parameter "account"
    .parameter "specifiedAttendee"

    .prologue
    .line 1936
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/exchange/utility/CalendarUtilities;->updateMessageForEntity(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method public static createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 13
    .parameter "context"
    .parameter "eventId"
    .parameter "messageFlag"
    .parameter "uid"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2361
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method public static createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;J)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 19
    .parameter "context"
    .parameter "eventId"
    .parameter "messageFlag"
    .parameter "uid"
    .parameter "account"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2366
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2368
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-static {p1, p2, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getReminder(JLandroid/content/ContentResolver;)V

    .line 2369
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/provider/CalendarContract$EventsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/content/EntityIterator;

    move-result-object v10

    .line 2374
    .local v10, eventIterator:Landroid/content/EntityIterator;
    :try_start_19
    invoke-interface {v10}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2375
    invoke-interface {v10}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Entity;

    .line 2376
    .local v5, entity:Landroid/content/Entity;
    move-wide/from16 v0, p6

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    const/4 v9, 0x0

    move-object v3, p0

    move v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v9}, Lcom/android/exchange/utility/CalendarUtilities;->updateMessageForEntity(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_39

    move-result-object v3

    .line 2380
    invoke-interface {v10}, Landroid/content/EntityIterator;->close()V

    .line 2382
    .end local v5           #entity:Landroid/content/Entity;
    :goto_38
    return-object v3

    .line 2380
    :catchall_39
    move-exception v3

    invoke-interface {v10}, Landroid/content/EntityIterator;->close()V

    throw v3

    :cond_3e
    invoke-interface {v10}, Landroid/content/EntityIterator;->close()V

    .line 2382
    const/4 v3, 0x0

    goto :goto_38
.end method

.method public static createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 15
    .parameter "context"
    .parameter "eventId"
    .parameter "messageFlag"
    .parameter "uid"
    .parameter "account"
    .parameter "specifiedAttendee"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2389
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2391
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {p1, p2, v0}, Lcom/android/exchange/utility/CalendarUtilities;->getReminder(JLandroid/content/ContentResolver;)V

    .line 2399
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/CalendarContract$EventsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/content/EntityIterator;

    move-result-object v7

    .line 2404
    .local v7, eventIterator:Landroid/content/EntityIterator;
    :try_start_19
    invoke-interface {v7}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2405
    invoke-interface {v7}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity;

    .local v2, entity:Landroid/content/Entity;
    move-object v1, p0

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 2406
    invoke-static/range {v1 .. v6}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_32

    move-result-object v2

    .line 2410
    .end local v2           #entity:Landroid/content/Entity;
    :cond_2e
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    .line 2412
    return-object v2

    .line 2410
    :catchall_32
    move-exception v1

    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    throw v1
.end method

.method static findNextTransition(J[Ljava/util/GregorianCalendar;)J
    .registers 10
    .parameter "startingMillis"
    .parameter "transitions"

    .prologue
    .line 773
    move-object v0, p2

    .local v0, arr$:[Ljava/util/GregorianCalendar;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 774
    .local v3, transition:Ljava/util/GregorianCalendar;
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    .line 775
    .local v4, transitionMillis:J
    cmp-long v6, v4, p0

    if-lez v6, :cond_10

    .line 779
    .end local v3           #transition:Ljava/util/GregorianCalendar;
    .end local v4           #transitionMillis:J
    :goto_f
    return-wide v4

    .line 773
    .restart local v3       #transition:Ljava/util/GregorianCalendar;
    .restart local v4       #transitionMillis:J
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 779
    .end local v3           #transition:Ljava/util/GregorianCalendar;
    .end local v4           #transitionMillis:J
    :cond_13
    const-wide/16 v4, 0x0

    goto :goto_f
.end method

.method static findTransitionDate(Ljava/util/TimeZone;JJZ)Ljava/util/GregorianCalendar;
    .registers 18
    .parameter "tz"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "startInDaylightTime"

    .prologue
    .line 416
    move-wide v6, p3

    .line 417
    .local v6, startingEndTime:J
    const/4 v4, 0x0

    .line 420
    .local v4, date:Ljava/util/Date;
    :goto_2
    sub-long v8, p3, p1

    const-wide/32 v10, 0xea60

    cmp-long v8, v8, v10

    if-lez v8, :cond_25

    .line 421
    add-long v8, p1, p3

    const-wide/16 v10, 0x2

    div-long/2addr v8, v10

    const-wide/16 v10, 0x1

    add-long v2, v8, v10

    .line 422
    .local v2, checkTime:J
    new-instance v4, Ljava/util/Date;

    .end local v4           #date:Ljava/util/Date;
    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 423
    .restart local v4       #date:Ljava/util/Date;
    invoke-virtual {p0, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v5

    .line 424
    .local v5, inDaylightTime:Z
    move/from16 v0, p5

    if-eq v5, v0, :cond_23

    .line 425
    move-wide p3, v2

    goto :goto_2

    .line 427
    :cond_23
    move-wide p1, v2

    goto :goto_2

    .line 432
    .end local v2           #checkTime:J
    .end local v5           #inDaylightTime:Z
    :cond_25
    cmp-long v8, p3, v6

    if-nez v8, :cond_2b

    .line 433
    const/4 v1, 0x0

    .line 439
    :goto_2a
    return-object v1

    .line 437
    :cond_2b
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 438
    .local v1, calendar:Ljava/util/GregorianCalendar;
    invoke-virtual {v1, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    goto :goto_2a
.end method

.method public static formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/16 v3, 0x3a

    const/16 v2, 0x2d

    .line 2434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2436
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2437
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2438
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2439
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2440
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2441
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2442
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2443
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2444
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2445
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2446
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2447
    const-string v1, ".000Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2448
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static formatTwo(I)Ljava/lang/String;
    .registers 2
    .parameter "num"

    .prologue
    .line 1057
    const/16 v0, 0xc

    if-gt p0, v0, :cond_9

    .line 1058
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTwoCharacterNumbers:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 1060
    :goto_8
    return-object v0

    :cond_9
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method static generateEasDayOfWeek(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "dow"

    .prologue
    .line 1237
    const/4 v2, 0x0

    .line 1238
    .local v2, bits:I
    const/4 v1, 0x1

    .line 1239
    .local v1, bit:I
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sDayTokens:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_6
    if-ge v3, v4, :cond_16

    aget-object v5, v0, v3

    .line 1242
    .local v5, token:Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_11

    .line 1243
    or-int/2addr v2, v1

    .line 1245
    :cond_11
    shl-int/lit8 v1, v1, 0x1

    .line 1239
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1247
    .end local v5           #token:Ljava/lang/String;
    :cond_16
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method static getDSTCalendars(Ljava/util/TimeZone;[Ljava/util/GregorianCalendar;[Ljava/util/GregorianCalendar;)Z
    .registers 20
    .parameter "tz"
    .parameter "toDaylightCalendars"
    .parameter "toStandardCalendars"

    .prologue
    .line 638
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    .line 639
    .local v16, maxYears:I
    move-object/from16 v0, p2

    array-length v2, v0

    move/from16 v0, v16

    if-eq v2, v0, :cond_e

    .line 640
    const/4 v2, 0x0

    .line 670
    :goto_d
    return v2

    .line 643
    :cond_e
    const/4 v15, 0x0

    .local v15, i:I
    :goto_f
    move/from16 v0, v16

    if-ge v15, v0, :cond_6b

    .line 644
    new-instance v1, Ljava/util/GregorianCalendar;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 645
    .local v1, cal:Ljava/util/GregorianCalendar;
    sget v2, Lcom/android/exchange/utility/CalendarUtilities;->sCurrentYear:I

    add-int/2addr v2, v15

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 646
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    .line 648
    .local v3, startTime:J
    const-wide v8, 0x757b12c00L

    add-long/2addr v8, v3

    const-wide/32 v10, 0x1499700

    add-long v5, v8, v10

    .line 649
    .local v5, endOfYearTime:J
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 650
    .local v14, date:Ljava/util/Date;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v7

    .local v7, startInDaylightTime:Z
    move-object/from16 v2, p0

    .line 652
    invoke-static/range {v2 .. v7}, Lcom/android/exchange/utility/CalendarUtilities;->findTransitionDate(Ljava/util/TimeZone;JJZ)Ljava/util/GregorianCalendar;

    move-result-object v1

    .line 653
    if-nez v1, :cond_49

    .line 654
    const/4 v2, 0x0

    goto :goto_d

    .line 655
    :cond_49
    if-eqz v7, :cond_5c

    .line 656
    aput-object v1, p2, v15

    .line 661
    :goto_4d
    if-nez v7, :cond_5f

    const/4 v13, 0x1

    :goto_50
    move-object/from16 v8, p0

    move-wide v9, v3

    move-wide v11, v5

    invoke-static/range {v8 .. v13}, Lcom/android/exchange/utility/CalendarUtilities;->findTransitionDate(Ljava/util/TimeZone;JJZ)Ljava/util/GregorianCalendar;

    move-result-object v1

    .line 662
    if-nez v1, :cond_61

    .line 663
    const/4 v2, 0x0

    goto :goto_d

    .line 658
    :cond_5c
    aput-object v1, p1, v15

    goto :goto_4d

    .line 661
    :cond_5f
    const/4 v13, 0x0

    goto :goto_50

    .line 664
    :cond_61
    if-eqz v7, :cond_68

    .line 665
    aput-object v1, p1, v15

    .line 643
    :goto_65
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    .line 667
    :cond_68
    aput-object v1, p2, v15

    goto :goto_65

    .line 670
    .end local v1           #cal:Ljava/util/GregorianCalendar;
    .end local v3           #startTime:J
    .end local v5           #endOfYearTime:J
    .end local v7           #startInDaylightTime:Z
    .end local v14           #date:Ljava/util/Date;
    :cond_6b
    const/4 v2, 0x1

    goto :goto_d
.end method

.method public static getIntegerValueAsBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z
    .registers 4
    .parameter "values"
    .parameter "columnName"

    .prologue
    .line 2424
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2425
    .local v0, intValue:Ljava/lang/Integer;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J
    .registers 5
    .parameter "time"
    .parameter "localTimeZone"

    .prologue
    .line 1178
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0, p2}, Lcom/android/exchange/utility/CalendarUtilities;->transposeAllDayTime(JLjava/util/TimeZone;Ljava/util/TimeZone;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getLong([BI)I
    .registers 5
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 261
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 p1, v0, 0x1

    .end local v0           #offset:I
    .restart local p1
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    return v1
.end method

.method static getMillisAtTimeZoneDateTransition(Ljava/util/TimeZone;Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;)J
    .registers 5
    .parameter "timeZone"
    .parameter "tzd"

    .prologue
    .line 392
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 393
    .local v0, testCalendar:Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    sget v2, Lcom/android/exchange/utility/CalendarUtilities;->sCurrentYear:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 394
    const/4 v1, 0x2

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->month:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 395
    const/4 v1, 0x7

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->dayOfWeek:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 396
    const/16 v1, 0x8

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->day:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 397
    const/16 v1, 0xb

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 398
    const/16 v1, 0xc

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 399
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 400
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method private static getReminder(JLandroid/content/ContentResolver;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2311
    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "minutes"

    aput-object v0, v2, v5

    const-string v3, "event_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2318
    if-eqz v1, :cond_5a

    .line 2319
    const/4 v0, 0x0

    :try_start_1d
    sput v0, Lcom/android/exchange/utility/CalendarUtilities;->mMinutes:I

    .line 2320
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2321
    const-string v0, "minutes"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/exchange/utility/CalendarUtilities;->mMinutes:I
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_53

    .line 2332
    :goto_31
    if-eqz v1, :cond_36

    .line 2333
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2337
    :cond_36
    return-void

    .line 2324
    :cond_37
    :try_start_37
    const-string v0, "CalendarUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRemindersCursor is empty for eventId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    const/4 v0, -0x1

    sput v0, Lcom/android/exchange/utility/CalendarUtilities;->mMinutes:I
    :try_end_52
    .catchall {:try_start_37 .. :try_end_52} :catchall_53

    goto :goto_31

    .line 2332
    :catchall_53
    move-exception v0

    if-eqz v1, :cond_59

    .line 2333
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2332
    :cond_59
    throw v0

    .line 2328
    :cond_5a
    :try_start_5a
    const-string v0, "CalendarUtility"

    const-string v2, "mRemindersCursor is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_53

    goto :goto_31
.end method

.method static getTimeZoneDateFromSystemTime([BI)Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    .registers 8
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 347
    new-instance v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;

    invoke-direct {v3}, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;-><init>()V

    .line 350
    .local v3, tzd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    add-int/lit8 v4, p1, 0x0

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v2

    .line 351
    .local v2, num:I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->year:Ljava/lang/String;

    .line 355
    add-int/lit8 v4, p1, 0x2

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v2

    .line 356
    if-nez v2, :cond_1b

    .line 357
    const/4 v3, 0x0

    .line 381
    .end local v3           #tzd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    :goto_1a
    return-object v3

    .line 359
    .restart local v3       #tzd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    :cond_1b
    add-int/lit8 v4, v2, -0x1

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->month:I

    .line 363
    add-int/lit8 v4, p1, 0x4

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->dayOfWeek:I

    .line 366
    add-int/lit8 v4, p1, 0x6

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v2

    .line 368
    const/4 v4, 0x5

    if-ne v2, v4, :cond_51

    .line 369
    const/4 v4, -0x1

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->day:I

    .line 375
    :goto_35
    add-int/lit8 v4, p1, 0x8

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v0

    .line 376
    .local v0, hour:I
    iput v0, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->hour:I

    .line 377
    add-int/lit8 v4, p1, 0xa

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v1

    .line 378
    .local v1, minute:I
    iput v1, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->minute:I

    .line 379
    const v4, 0x36ee80

    mul-int/2addr v4, v0

    const v5, 0xea60

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->time:I

    goto :goto_1a

    .line 371
    .end local v0           #hour:I
    .end local v1           #minute:I
    :cond_51
    iput v2, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->day:I

    goto :goto_35
.end method

.method static getTrueTransitionHour(Ljava/util/GregorianCalendar;)I
    .registers 3
    .parameter "calendar"

    .prologue
    .line 1129
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 1130
    .local v0, hour:I
    add-int/lit8 v0, v0, 0x1

    .line 1131
    const/16 v1, 0x18

    if-ne v0, v1, :cond_d

    .line 1132
    const/4 v0, 0x0

    .line 1134
    :cond_d
    return v0
.end method

.method static getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I
    .registers 3
    .parameter "calendar"

    .prologue
    .line 1114
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 1115
    .local v0, minute:I
    const/16 v1, 0x3b

    if-ne v0, v1, :cond_b

    .line 1116
    const/4 v0, 0x0

    .line 1118
    :cond_b
    return v0
.end method

.method public static getUidFromGlobalObjId(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "globalObjId"

    .prologue
    .line 1668
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1671
    .local v8, sb:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    :try_start_6
    invoke-static {p0, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1672
    .local v4, idBytes:[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 1678
    .local v5, idString:Ljava/lang/String;
    const-string v9, "vCal-Uid"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1679
    .local v6, index:I
    if-lez v6, :cond_24

    .line 1683
    add-int/lit8 v9, v6, 0xc

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1698
    .end local v4           #idBytes:[B
    .end local v5           #idString:Ljava/lang/String;
    .end local v6           #index:I
    .end local p0
    :goto_23
    return-object p0

    .line 1690
    .restart local v4       #idBytes:[B
    .restart local v5       #idString:Ljava/lang/String;
    .restart local v6       #index:I
    .restart local p0
    :cond_24
    move-object v0, v4

    .local v0, arr$:[B
    array-length v7, v0

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_27
    if-ge v3, v7, :cond_31

    aget-byte v1, v0, v3

    .line 1691
    .local v1, b:B
    invoke-static {v8, v1}, Lcom/android/emailcommon/utility/Utility;->byteToHex(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 1690
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 1693
    .end local v1           #b:B
    :cond_31
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_34} :catch_36

    move-result-object p0

    goto :goto_23

    .line 1695
    .end local v0           #arr$:[B
    .end local v3           #i$:I
    .end local v4           #idBytes:[B
    .end local v5           #idString:Ljava/lang/String;
    .end local v6           #index:I
    .end local v7           #len$:I
    :catch_36
    move-exception v2

    .line 1698
    .local v2, e:Ljava/lang/RuntimeException;
    goto :goto_23
.end method

.method public static getUtcAllDayCalendarTime(JLjava/util/TimeZone;)J
    .registers 5
    .parameter "time"
    .parameter "localTimeZone"

    .prologue
    .line 1167
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-static {p0, p1, p2, v0}, Lcom/android/exchange/utility/CalendarUtilities;->transposeAllDayTime(JLjava/util/TimeZone;Ljava/util/TimeZone;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getWord([BI)I
    .registers 5
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 275
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    return v1
.end method

.method static inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .registers 15
    .parameter "calendars"

    .prologue
    .line 537
    const/4 v12, 0x0

    aget-object v1, p0, v12

    .line 538
    .local v1, calendar:Ljava/util/GregorianCalendar;
    if-nez v1, :cond_7

    .line 539
    const/4 v12, 0x0

    .line 590
    :goto_6
    return-object v12

    .line 540
    :cond_7
    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    .line 541
    .local v8, month:I
    const/4 v12, 0x5

    invoke-virtual {v1, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 542
    .local v2, date:I
    const/4 v12, 0x7

    invoke-virtual {v1, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 543
    .local v4, dayOfWeek:I
    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v11

    .line 544
    .local v11, week:I
    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v7

    .line 545
    .local v7, maxWeek:I
    const/4 v3, 0x0

    .line 546
    .local v3, dateRule:Z
    const/4 v5, 0x0

    .line 547
    .local v5, dayOfWeekRule:Z
    const/4 v6, 0x1

    .local v6, i:I
    :goto_25
    array-length v12, p0

    if-ge v6, v12, :cond_6c

    .line 548
    aget-object v0, p0, v6

    .line 549
    .local v0, cal:Ljava/util/GregorianCalendar;
    if-nez v0, :cond_2e

    .line 550
    const/4 v12, 0x0

    goto :goto_6

    .line 552
    :cond_2e
    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v12

    if-eq v12, v8, :cond_37

    .line 553
    const/4 v12, 0x0

    goto :goto_6

    .line 554
    :cond_37
    const/4 v12, 0x7

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v12

    if-ne v4, v12, :cond_5d

    .line 556
    if-eqz v3, :cond_42

    .line 557
    const/4 v12, 0x0

    goto :goto_6

    .line 559
    :cond_42
    const/4 v5, 0x1

    .line 560
    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    .line 561
    .local v10, thisWeek:I
    if-eq v11, v10, :cond_58

    .line 562
    if-ltz v11, :cond_4f

    if-ne v11, v7, :cond_5b

    .line 563
    :cond_4f
    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v9

    .line 564
    .local v9, thisMaxWeek:I
    if-ne v10, v9, :cond_5b

    .line 566
    const/4 v11, -0x1

    .line 547
    .end local v9           #thisMaxWeek:I
    .end local v10           #thisWeek:I
    :cond_58
    :goto_58
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 570
    .restart local v10       #thisWeek:I
    :cond_5b
    const/4 v12, 0x0

    goto :goto_6

    .line 572
    .end local v10           #thisWeek:I
    :cond_5d
    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v12

    if-ne v2, v12, :cond_6a

    .line 574
    if-eqz v5, :cond_68

    .line 575
    const/4 v12, 0x0

    goto :goto_6

    .line 577
    :cond_68
    const/4 v3, 0x1

    goto :goto_58

    .line 579
    :cond_6a
    const/4 v12, 0x0

    goto :goto_6

    .line 583
    .end local v0           #cal:Ljava/util/GregorianCalendar;
    :cond_6c
    if-eqz v3, :cond_76

    .line 584
    new-instance v12, Lcom/android/exchange/utility/CalendarUtilities$RRule;

    add-int/lit8 v13, v8, 0x1

    invoke-direct {v12, v13, v2}, Lcom/android/exchange/utility/CalendarUtilities$RRule;-><init>(II)V

    goto :goto_6

    .line 590
    :cond_76
    new-instance v12, Lcom/android/exchange/utility/CalendarUtilities$RRule;

    add-int/lit8 v13, v8, 0x1

    invoke-direct {v12, v13, v4, v11}, Lcom/android/exchange/utility/CalendarUtilities$RRule;-><init>(III)V

    goto :goto_6
.end method

.method public static millisToEasDateTime(J)Ljava/lang/String;
    .registers 4
    .parameter "millis"

    .prologue
    .line 1068
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;
    .registers 7
    .parameter "millis"
    .parameter "tz"
    .parameter "withTime"

    .prologue
    .line 1083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1084
    .local v1, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1085
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1086
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1087
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    if-eqz p3, :cond_72

    .line 1090
    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1091
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 1095
    :cond_6d
    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1098
    :cond_72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static putRuleIntoTimeZoneInformation([BILcom/android/exchange/utility/CalendarUtilities$RRule;II)V
    .registers 7
    .parameter "bytes"
    .parameter "offset"
    .parameter "rrule"
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 312
    add-int/lit8 v0, p1, 0x2

    iget v1, p2, Lcom/android/exchange/utility/CalendarUtilities$RRule;->month:I

    invoke-static {p0, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 314
    add-int/lit8 v0, p1, 0x4

    iget v1, p2, Lcom/android/exchange/utility/CalendarUtilities$RRule;->dayOfWeek:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 316
    add-int/lit8 v1, p1, 0x6

    iget v0, p2, Lcom/android/exchange/utility/CalendarUtilities$RRule;->week:I

    if-gez v0, :cond_25

    const/4 v0, 0x5

    :goto_17
    invoke-static {p0, v1, v0}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 318
    add-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 319
    add-int/lit8 v0, p1, 0xa

    invoke-static {p0, v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 320
    return-void

    .line 316
    :cond_25
    iget v0, p2, Lcom/android/exchange/utility/CalendarUtilities$RRule;->week:I

    goto :goto_17
.end method

.method static putTransitionMillisIntoSystemTime([BIJ)V
    .registers 8
    .parameter "bytes"
    .parameter "offset"
    .parameter "millis"

    .prologue
    .line 325
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 327
    .local v0, cal:Ljava/util/GregorianCalendar;
    const-wide/16 v2, 0x7530

    add-long/2addr v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 330
    add-int/lit8 v2, p1, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 332
    add-int/lit8 v2, p1, 0x4

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 335
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 337
    .local v1, wom:I
    add-int/lit8 v2, p1, 0x6

    if-gez v1, :cond_32

    const/4 v1, 0x5

    .end local v1           #wom:I
    :cond_32
    invoke-static {p0, v2, v1}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 340
    add-int/lit8 v2, p1, 0x8

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 341
    add-int/lit8 v2, p1, 0xa

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 342
    return-void
.end method

.method public static recurrenceFromRrule(Ljava/lang/String;JLcom/android/exchange/adapter/Serializer;)V
    .registers 14
    .parameter "rrule"
    .parameter "startTime"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1402
    sget-boolean v7, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v7, :cond_1c

    .line 1403
    const-string v7, "CalendarUtility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RRULE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    :cond_1c
    const-string v7, "FREQ="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1410
    .local v6, freq:Ljava/lang/String;
    if-eqz v6, :cond_45

    .line 1411
    const-string v7, "DAILY"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 1412
    const/16 v7, 0x11b

    invoke-virtual {p3, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1413
    const/16 v7, 0x11c

    const-string v8, "0"

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1414
    const/16 v7, 0x11f

    const-string v8, "1"

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1415
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1416
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1502
    :cond_45
    :goto_45
    return-void

    .line 1417
    :cond_46
    const-string v7, "WEEKLY"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 1418
    const/16 v7, 0x11b

    invoke-virtual {p3, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1419
    const/16 v7, 0x11c

    const-string v8, "1"

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1421
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1422
    const-string v7, "BYDAY="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1423
    .local v0, byDay:Ljava/lang/String;
    if-eqz v0, :cond_7d

    .line 1424
    const/16 v7, 0x120

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->generateEasDayOfWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1428
    const-string v7, "-1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_81

    .line 1429
    const/16 v7, 0x122

    const-string v8, "5"

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1437
    :cond_7d
    :goto_7d
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_45

    .line 1431
    :cond_81
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1432
    .local v4, c:C
    const/16 v7, 0x31

    if-lt v4, v7, :cond_7d

    const/16 v7, 0x34

    if-gt v4, v7, :cond_7d

    .line 1433
    const/16 v7, 0x122

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_7d

    .line 1438
    .end local v0           #byDay:Ljava/lang/String;
    .end local v4           #c:C
    :cond_9a
    const-string v7, "MONTHLY"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_104

    .line 1439
    const-string v7, "BYMONTHDAY="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1440
    .local v2, byMonthDay:Ljava/lang/String;
    if-eqz v2, :cond_d9

    .line 1442
    const/16 v7, 0x11b

    invoke-virtual {p3, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1446
    const-string v7, "-1"

    if-ne v2, v7, :cond_c9

    .line 1447
    const/16 v7, 0x11c

    const-string v8, "3"

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1448
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1449
    const/16 v7, 0x120

    const-string v8, "127"

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1457
    :goto_c4
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_45

    .line 1453
    :cond_c9
    const/16 v7, 0x11c

    const-string v8, "2"

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1454
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1455
    const/16 v7, 0x121

    invoke-virtual {p3, v7, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_c4

    .line 1459
    :cond_d9
    const-string v7, "BYDAY="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1460
    .restart local v0       #byDay:Ljava/lang/String;
    const-string v7, "BYSETPOS="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1461
    .local v3, bySetpos:Ljava/lang/String;
    if-eqz v0, :cond_45

    .line 1462
    const/16 v7, 0x11b

    invoke-virtual {p3, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1463
    const/16 v7, 0x11c

    const-string v8, "3"

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1464
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1466
    if-eqz v3, :cond_100

    .line 1467
    invoke-static {v0, v3, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addByDaySetpos(Ljava/lang/String;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1471
    :goto_fb
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_45

    .line 1469
    :cond_100
    invoke-static {v0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    goto :goto_fb

    .line 1474
    .end local v0           #byDay:Ljava/lang/String;
    .end local v2           #byMonthDay:Ljava/lang/String;
    .end local v3           #bySetpos:Ljava/lang/String;
    :cond_104
    const-string v7, "YEARLY"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 1475
    const-string v7, "BYMONTH="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1476
    .local v1, byMonth:Ljava/lang/String;
    const-string v7, "BYMONTHDAY="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1477
    .restart local v2       #byMonthDay:Ljava/lang/String;
    const-string v7, "BYDAY="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1478
    .restart local v0       #byDay:Ljava/lang/String;
    if-nez v1, :cond_145

    if-nez v2, :cond_145

    .line 1480
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-direct {v5}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1481
    .local v5, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v5, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1482
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1483
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1484
    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1486
    .end local v5           #cal:Ljava/util/GregorianCalendar;
    :cond_145
    if-eqz v1, :cond_45

    if-nez v2, :cond_14b

    if-eqz v0, :cond_45

    .line 1487
    :cond_14b
    const/16 v7, 0x11b

    invoke-virtual {p3, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1488
    const/16 v8, 0x11c

    if-nez v0, :cond_16d

    const-string v7, "5"

    :goto_156
    invoke-virtual {p3, v8, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1489
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1490
    const/16 v7, 0x123

    invoke-virtual {p3, v7, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1493
    if-eqz v2, :cond_170

    .line 1494
    const/16 v7, 0x121

    invoke-virtual {p3, v7, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1498
    :goto_168
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_45

    .line 1488
    :cond_16d
    const-string v7, "6"

    goto :goto_156

    .line 1496
    :cond_170
    invoke-static {v0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    goto :goto_168
.end method

.method static recurrenceUntilToEasUntil(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "until"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x6

    const/4 v6, 0x4

    const/4 v4, 0x0

    .line 1287
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1288
    .local v8, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v11, :cond_52

    .line 1290
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1291
    .local v1, year:I
    invoke-virtual {p0, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 1292
    .local v2, month:I
    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1293
    .local v3, day:I
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    .line 1294
    .local v7, localTimeZone:Ljava/util/TimeZone;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v7}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .local v0, localCalendar:Ljava/util/GregorianCalendar;
    move v5, v4

    move v6, v4

    .line 1295
    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 1296
    new-instance v9, Ljava/util/GregorianCalendar;

    sget-object v4, Lcom/android/exchange/utility/CalendarUtilities;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-direct {v9, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1297
    .local v9, utcCalendar:Ljava/util/GregorianCalendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1298
    invoke-virtual {v9}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    sget-object v6, Lcom/android/exchange/utility/CalendarUtilities;->UTC_TIMEZONE:Ljava/util/TimeZone;

    const/4 v10, 0x1

    invoke-static {v4, v5, v6, v10}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v4

    .line 1307
    .end local v0           #localCalendar:Ljava/util/GregorianCalendar;
    .end local v1           #year:I
    .end local v2           #month:I
    .end local v3           #day:I
    .end local v7           #localTimeZone:Ljava/util/TimeZone;
    .end local v9           #utcCalendar:Ljava/util/GregorianCalendar;
    :goto_51
    return-object v4

    .line 1301
    :cond_52
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    invoke-virtual {p0, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    const/16 v4, 0xd

    invoke-virtual {p0, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    const-string v4, "00Z"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_51
.end method

.method public static rruleFromRecurrence(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "type"
    .parameter "occurrences"
    .parameter "interval"
    .parameter "dow"
    .parameter "dom"
    .parameter "wom"
    .parameter "moy"
    .parameter "until"

    .prologue
    .line 1519
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FREQ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sTypeToFreq:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1522
    .local v0, rrule:Ljava/lang/StringBuilder;
    if-lez p1, :cond_34

    .line 1523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";COUNT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    :cond_34
    if-lez p2, :cond_4c

    .line 1526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";INTERVAL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    :cond_4c
    packed-switch p0, :pswitch_data_da

    .line 1574
    :cond_4f
    :goto_4f
    :pswitch_4f
    if-eqz p7, :cond_67

    .line 1575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";UNTIL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    :cond_67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1533
    :pswitch_6c
    if-lez p3, :cond_4f

    .line 1535
    invoke-static {v0, p3, p5}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    goto :goto_4f

    .line 1539
    :pswitch_72
    if-lez p4, :cond_4f

    .line 1540
    invoke-static {v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->addByMonthDay(Ljava/lang/StringBuilder;I)V

    goto :goto_4f

    .line 1545
    :pswitch_78
    const/16 v1, 0x7f

    if-ne p3, v1, :cond_82

    .line 1546
    const-string v1, ";BYMONTHDAY=-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    .line 1548
    :cond_82
    const/4 v1, 0x5

    if-ne p5, v1, :cond_91

    const/16 v1, 0x3e

    if-eq p3, v1, :cond_8d

    const/16 v1, 0x41

    if-ne p3, v1, :cond_91

    .line 1549
    :cond_8d
    invoke-static {v0, p3, p5}, Lcom/android/exchange/utility/CalendarUtilities;->addBySetpos(Ljava/lang/StringBuilder;II)V

    goto :goto_4f

    .line 1550
    :cond_91
    if-lez p3, :cond_4f

    .line 1551
    invoke-static {v0, p3, p5}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    goto :goto_4f

    .line 1554
    :pswitch_97
    if-lez p4, :cond_9c

    .line 1555
    invoke-static {v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->addByMonthDay(Ljava/lang/StringBuilder;I)V

    .line 1556
    :cond_9c
    if-lez p6, :cond_4f

    .line 1557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";BYMONTH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    .line 1561
    :pswitch_b5
    if-lez p3, :cond_ba

    .line 1562
    invoke-static {v0, p3, p5}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    .line 1563
    :cond_ba
    if-lez p4, :cond_bf

    .line 1564
    invoke-static {v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->addByMonthDay(Ljava/lang/StringBuilder;I)V

    .line 1565
    :cond_bf
    if-lez p6, :cond_4f

    .line 1566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";BYMONTH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4f

    .line 1530
    nop

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_6c
        :pswitch_72
        :pswitch_78
        :pswitch_4f
        :pswitch_97
        :pswitch_b5
    .end packed-switch
.end method

.method static setLong([BII)V
    .registers 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 267
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 268
    add-int/lit8 p1, v0, 0x1

    .end local v0           #offset:I
    .restart local p1
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 269
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 270
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 271
    return-void
.end method

.method static setWord([BII)V
    .registers 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 280
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 281
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 282
    return-void
.end method

.method public static timeZoneToTziString(Ljava/util/TimeZone;)Ljava/lang/String;
    .registers 6
    .parameter "tz"

    .prologue
    .line 452
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sTziStringCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 453
    .local v0, tziString:Ljava/lang/String;
    if-eqz v0, :cond_32

    .line 454
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_30

    .line 455
    const-string v2, "CalendarUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TZI string for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " found in cache."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    move-object v1, v0

    .line 462
    .end local v0           #tziString:Ljava/lang/String;
    .local v1, tziString:Ljava/lang/String;
    :goto_31
    return-object v1

    .line 460
    .end local v1           #tziString:Ljava/lang/String;
    .restart local v0       #tziString:Ljava/lang/String;
    :cond_32
    invoke-static {p0}, Lcom/android/exchange/utility/CalendarUtilities;->timeZoneToTziStringImpl(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    .line 461
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sTziStringCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 462
    .end local v0           #tziString:Ljava/lang/String;
    .restart local v1       #tziString:Ljava/lang/String;
    goto :goto_31
.end method

.method static timeZoneToTziStringImpl(Ljava/util/TimeZone;)Ljava/lang/String;
    .registers 22
    .parameter "tz"

    .prologue
    .line 794
    const/16 v18, 0xac

    move/from16 v0, v18

    new-array v15, v0, [B

    .line 795
    .local v15, tziBytes:[B
    invoke-virtual/range {p0 .. p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    move/from16 v0, v18

    neg-int v9, v0

    .line 796
    .local v9, standardBias:I
    const v18, 0xea60

    div-int v9, v9, v18

    .line 797
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v15, v0, v9}, Lcom/android/exchange/utility/CalendarUtilities;->setLong([BII)V

    .line 799
    invoke-virtual/range {p0 .. p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v18

    if-eqz v18, :cond_a2

    .line 800
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v13, v0, [Ljava/util/GregorianCalendar;

    .line 801
    .local v13, toDaylightCalendars:[Ljava/util/GregorianCalendar;
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v14, v0, [Ljava/util/GregorianCalendar;

    .line 805
    .local v14, toStandardCalendars:[Ljava/util/GregorianCalendar;
    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/exchange/utility/CalendarUtilities;->getDSTCalendars(Ljava/util/TimeZone;[Ljava/util/GregorianCalendar;[Ljava/util/GregorianCalendar;)Z

    move-result v18

    if-eqz v18, :cond_8d

    .line 807
    invoke-static {v13}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v3

    .line 808
    .local v3, daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    invoke-static {v14}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v10

    .line 809
    .local v10, standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    if-eqz v3, :cond_b4

    iget v0, v3, Lcom/android/exchange/utility/CalendarUtilities$RRule;->type:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b4

    if-eqz v10, :cond_b4

    iget v0, v10, Lcom/android/exchange/utility/CalendarUtilities$RRule;->type:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b4

    .line 813
    const/16 v18, 0x44

    const/16 v19, 0x0

    aget-object v19, v14, v19

    invoke-static/range {v19 .. v19}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v19

    const/16 v20, 0x0

    aget-object v20, v14, v20

    invoke-static/range {v20 .. v20}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v15, v0, v10, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->putRuleIntoTimeZoneInformation([BILcom/android/exchange/utility/CalendarUtilities$RRule;II)V

    .line 816
    const/16 v18, 0x98

    const/16 v19, 0x0

    aget-object v19, v13, v19

    invoke-static/range {v19 .. v19}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v19

    const/16 v20, 0x0

    aget-object v20, v13, v20

    invoke-static/range {v20 .. v20}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v15, v0, v3, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->putRuleIntoTimeZoneInformation([BILcom/android/exchange/utility/CalendarUtilities$RRule;II)V

    .line 835
    .end local v3           #daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .end local v10           #standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    :cond_8d
    :goto_8d
    invoke-virtual/range {p0 .. p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v6

    .line 836
    .local v6, dstOffset:I
    const/16 v18, 0xa8

    neg-int v0, v6

    move/from16 v19, v0

    const v20, 0xea60

    div-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->setLong([BII)V

    .line 838
    .end local v6           #dstOffset:I
    .end local v13           #toDaylightCalendars:[Ljava/util/GregorianCalendar;
    .end local v14           #toStandardCalendars:[Ljava/util/GregorianCalendar;
    :cond_a2
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v16

    .line 839
    .local v16, tziEncodedBytes:[B
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 840
    .local v17, tziString:Ljava/lang/String;
    return-object v17

    .line 823
    .end local v16           #tziEncodedBytes:[B
    .end local v17           #tziString:Ljava/lang/String;
    .restart local v3       #daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .restart local v10       #standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .restart local v13       #toDaylightCalendars:[Ljava/util/GregorianCalendar;
    .restart local v14       #toStandardCalendars:[Ljava/util/GregorianCalendar;
    :cond_b4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 824
    .local v7, now:J
    invoke-static {v7, v8, v14}, Lcom/android/exchange/utility/CalendarUtilities;->findNextTransition(J[Ljava/util/GregorianCalendar;)J

    move-result-wide v11

    .line 825
    .local v11, standardTransition:J
    invoke-static {v7, v8, v13}, Lcom/android/exchange/utility/CalendarUtilities;->findNextTransition(J[Ljava/util/GregorianCalendar;)J

    move-result-wide v4

    .line 827
    .local v4, daylightTransition:J
    const-wide/16 v18, 0x0

    cmp-long v18, v11, v18

    if-eqz v18, :cond_8d

    const-wide/16 v18, 0x0

    cmp-long v18, v4, v18

    if-eqz v18, :cond_8d

    .line 828
    const/16 v18, 0x44

    move/from16 v0, v18

    invoke-static {v15, v0, v11, v12}, Lcom/android/exchange/utility/CalendarUtilities;->putTransitionMillisIntoSystemTime([BIJ)V

    .line 830
    const/16 v18, 0x98

    move/from16 v0, v18

    invoke-static {v15, v0, v4, v5}, Lcom/android/exchange/utility/CalendarUtilities;->putTransitionMillisIntoSystemTime([BIJ)V

    goto :goto_8d
.end method

.method static timeZoneToVTimezone(Ljava/util/TimeZone;Lcom/android/exchange/utility/SimpleIcsWriter;)V
    .registers 16
    .parameter "tz"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 702
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    const v11, 0xea60

    div-int v5, v10, v11

    .line 703
    .local v5, rawOffsetMinutes:I
    invoke-static {v5}, Lcom/android/exchange/utility/CalendarUtilities;->utcOffsetString(I)Ljava/lang/String;

    move-result-object v6

    .line 706
    .local v6, standardOffsetString:Ljava/lang/String;
    const-string v10, "BEGIN"

    const-string v11, "VTIMEZONE"

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v10, "TZID"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v10, "X-LIC-LOCATION"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v10

    if-nez v10, :cond_30

    .line 712
    invoke-static {p1, p0, v6}, Lcom/android/exchange/utility/CalendarUtilities;->writeNoDST(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/TimeZone;Ljava/lang/String;)V

    .line 764
    :goto_2f
    return-void

    .line 716
    :cond_30
    const/4 v4, 0x3

    .line 717
    .local v4, maxYears:I
    new-array v8, v4, [Ljava/util/GregorianCalendar;

    .line 718
    .local v8, toDaylightCalendars:[Ljava/util/GregorianCalendar;
    new-array v9, v4, [Ljava/util/GregorianCalendar;

    .line 719
    .local v9, toStandardCalendars:[Ljava/util/GregorianCalendar;
    invoke-static {p0, v8, v9}, Lcom/android/exchange/utility/CalendarUtilities;->getDSTCalendars(Ljava/util/TimeZone;[Ljava/util/GregorianCalendar;[Ljava/util/GregorianCalendar;)Z

    move-result v10

    if-nez v10, :cond_3f

    .line 720
    invoke-static {p1, p0, v6}, Lcom/android/exchange/utility/CalendarUtilities;->writeNoDST(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/TimeZone;Ljava/lang/String;)V

    goto :goto_2f

    .line 724
    :cond_3f
    invoke-static {v8}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v1

    .line 725
    .local v1, daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    invoke-static {v9}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v7

    .line 726
    .local v7, standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v10

    const v11, 0xea60

    div-int/2addr v10, v11

    add-int/2addr v10, v5

    invoke-static {v10}, Lcom/android/exchange/utility/CalendarUtilities;->utcOffsetString(I)Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, daylightOffsetString:Ljava/lang/String;
    if-eqz v1, :cond_ca

    if-eqz v7, :cond_ca

    const/4 v2, 0x1

    .line 733
    .local v2, hasRule:Z
    :goto_59
    const-string v10, "BEGIN"

    const-string v11, "DAYLIGHT"

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v10, "TZOFFSETFROM"

    invoke-virtual {p1, v10, v6}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v10, "TZOFFSETTO"

    invoke-virtual {p1, v10, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v10, "DTSTART"

    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-static {v11, v12, p0, v13}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    if-eqz v2, :cond_cc

    .line 739
    const-string v10, "RRULE"

    invoke-virtual {v1}, Lcom/android/exchange/utility/CalendarUtilities$RRule;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :cond_86
    const-string v10, "END"

    const-string v11, "DAYLIGHT"

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v10, "BEGIN"

    const-string v11, "STANDARD"

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v10, "TZOFFSETFROM"

    invoke-virtual {p1, v10, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string v10, "TZOFFSETTO"

    invoke-virtual {p1, v10, v6}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-string v10, "DTSTART"

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v11

    const/4 v13, 0x0

    invoke-static {v11, v12, p0, v13}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    if-eqz v2, :cond_e2

    .line 754
    const-string v10, "RRULE"

    invoke-virtual {v7}, Lcom/android/exchange/utility/CalendarUtilities$RRule;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :cond_ba
    const-string v10, "END"

    const-string v11, "STANDARD"

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v10, "END"

    const-string v11, "VTIMEZONE"

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 730
    .end local v2           #hasRule:Z
    :cond_ca
    const/4 v2, 0x0

    goto :goto_59

    .line 741
    .restart local v2       #hasRule:Z
    :cond_cc
    const/4 v3, 0x1

    .local v3, i:I
    :goto_cd
    if-ge v3, v4, :cond_86

    .line 742
    const-string v10, "RDATE"

    aget-object v11, v8, v3

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-static {v11, v12, p0, v13}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    add-int/lit8 v3, v3, 0x1

    goto :goto_cd

    .line 756
    .end local v3           #i:I
    :cond_e2
    const/4 v3, 0x1

    .restart local v3       #i:I
    :goto_e3
    if-ge v3, v4, :cond_ba

    .line 757
    const-string v10, "RDATE"

    aget-object v11, v9, v3

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-static {v11, v12, p0, v13}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    add-int/lit8 v3, v3, 0x1

    goto :goto_e3
.end method

.method static tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "rrule"
    .parameter "token"

    .prologue
    .line 1258
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1259
    .local v4, start:I
    if-gez v4, :cond_8

    .line 1260
    const/4 v5, 0x0

    .line 1270
    :goto_7
    return-object v5

    .line 1261
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1262
    .local v3, len:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 1263
    move v1, v4

    .line 1266
    .local v1, end:I
    :goto_12
    add-int/lit8 v2, v1, 0x1

    .end local v1           #end:I
    .local v2, end:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1267
    .local v0, c:C
    const/16 v5, 0x3b

    if-eq v0, v5, :cond_1e

    if-ne v2, v3, :cond_2b

    .line 1268
    :cond_1e
    if-ne v2, v3, :cond_29

    .line 1269
    add-int/lit8 v1, v2, 0x1

    .line 1270
    .end local v2           #end:I
    .restart local v1       #end:I
    :goto_22
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .end local v1           #end:I
    .restart local v2       #end:I
    :cond_29
    move v1, v2

    .end local v2           #end:I
    .restart local v1       #end:I
    goto :goto_22

    .end local v1           #end:I
    .restart local v2       #end:I
    :cond_2b
    move v1, v2

    .end local v2           #end:I
    .restart local v1       #end:I
    goto :goto_12
.end method

.method static transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;
    .registers 7
    .parameter "millis"
    .parameter "tz"
    .parameter "dst"

    .prologue
    .line 1146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1147
    .local v1, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1148
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1149
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1150
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1153
    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static transposeAllDayTime(JLjava/util/TimeZone;Ljava/util/TimeZone;)J
    .registers 12
    .parameter "time"
    .parameter "fromTimeZone"
    .parameter "toTimeZone"

    .prologue
    const/4 v4, 0x0

    .line 1182
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1183
    .local v7, fromCalendar:Ljava/util/GregorianCalendar;
    invoke-virtual {v7, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1184
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1187
    .local v0, toCalendar:Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v7, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 1189
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1190
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static tziStringToTimeZone(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 3
    .parameter "context"
    .parameter "timeZoneString"

    .prologue
    .line 879
    const v0, 0xea60

    invoke-static {p0, p1, v0}, Lcom/android/exchange/utility/CalendarUtilities;->tziStringToTimeZone(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method static tziStringToTimeZone(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/TimeZone;
    .registers 7
    .parameter "context"
    .parameter "timeZoneString"
    .parameter "precision"

    .prologue
    .line 853
    sget-object v1, Lcom/android/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    .line 854
    .local v0, timeZone:Ljava/util/TimeZone;
    if-eqz v0, :cond_47

    .line 855
    sget-boolean v1, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v1, :cond_46

    .line 856
    const-string v1, "CalendarUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Using cached TimeZone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v1, "CalendarUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Using cached TimeZone -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    :cond_46
    :goto_46
    return-object v0

    .line 861
    :cond_47
    invoke-static {p0, p1, p2}, Lcom/android/exchange/utility/CalendarUtilities;->tziStringToTimeZoneImpl(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/TimeZone;

    move-result-object v0

    .line 862
    if-nez v0, :cond_67

    .line 866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeZone not found using default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 867
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 869
    :cond_67
    sget-object v1, Lcom/android/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46
.end method

.method static tziStringToTimeZoneImpl(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/TimeZone;
    .registers 32
    .parameter "context"
    .parameter "timeZoneString"
    .parameter "precision"

    .prologue
    .line 892
    const/16 v20, 0x0

    .line 894
    .local v20, timeZone:Ljava/util/TimeZone;
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v21

    .line 895
    .local v21, timeZoneBytes:[B
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const/high16 v27, 0x7f05

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    .line 904
    .local v23, timeZoneIds:[Ljava/lang/String;
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->getLong([BI)I

    move-result v26

    mul-int/lit8 v26, v26, -0x1

    const v27, 0xea60

    mul-int v7, v26, v27

    .line 909
    .local v7, bias:I
    invoke-static {v7}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v25

    .line 910
    .local v25, zoneIds:[Ljava/lang/String;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    if-lez v26, :cond_21d

    .line 913
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v17

    .line 914
    .local v17, localTimeZone:Ljava/util/TimeZone;
    if-eqz v17, :cond_7a

    .line 915
    move-object/from16 v4, v25

    .local v4, arr$:[Ljava/lang/String;
    array-length v14, v4

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_3c
    if-ge v12, v14, :cond_7a

    aget-object v24, v4, v12

    .line 916
    .local v24, zoneId:Ljava/lang/String;
    if-eqz v24, :cond_77

    invoke-virtual/range {v17 .. v17}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_77

    .line 917
    sget-boolean v26, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v26, :cond_70

    .line 918
    const-string v26, "CalendarUtility"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "TimeZone is "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    :cond_70
    invoke-static/range {v24 .. v24}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v20

    move-object/from16 v26, v20

    .line 1046
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .end local v17           #localTimeZone:Ljava/util/TimeZone;
    .end local v24           #zoneId:Ljava/lang/String;
    :goto_76
    return-object v26

    .line 915
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v12       #i$:I
    .restart local v14       #len$:I
    .restart local v17       #localTimeZone:Ljava/util/TimeZone;
    .restart local v24       #zoneId:Ljava/lang/String;
    :cond_77
    add-int/lit8 v12, v12, 0x1

    goto :goto_3c

    .line 929
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .end local v24           #zoneId:Ljava/lang/String;
    :cond_7a
    const/16 v26, 0x44

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->getTimeZoneDateFromSystemTime([BI)Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;

    move-result-object v8

    .line 931
    .local v8, dstEnd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    if-nez v8, :cond_e2

    .line 937
    move-object/from16 v4, v25

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v14, v4

    .restart local v14       #len$:I
    const/4 v12, 0x0

    .restart local v12       #i$:I
    move v13, v12

    .end local v4           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .local v13, i$:I
    :goto_8b
    if-ge v13, v14, :cond_bd

    aget-object v24, v4, v13

    .line 938
    .restart local v24       #zoneId:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v20

    .line 939
    if-eqz v20, :cond_b9

    .line 940
    invoke-virtual/range {v20 .. v20}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v26

    if-nez v26, :cond_b9

    .line 941
    move-object/from16 v5, v23

    .local v5, arr$:[Ljava/lang/String;
    array-length v15, v5

    .local v15, len$:I
    const/4 v12, 0x0

    .end local v13           #i$:I
    .restart local v12       #i$:I
    :goto_9f
    if-ge v12, v15, :cond_b9

    aget-object v22, v5, v12

    .line 942
    .local v22, timeZoneId:Ljava/lang/String;
    if-eqz v22, :cond_b6

    invoke-virtual/range {v20 .. v20}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b6

    move-object/from16 v26, v20

    .line 943
    goto :goto_76

    .line 941
    :cond_b6
    add-int/lit8 v12, v12, 0x1

    goto :goto_9f

    .line 937
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v15           #len$:I
    .end local v22           #timeZoneId:Ljava/lang/String;
    :cond_b9
    add-int/lit8 v12, v13, 0x1

    .restart local v12       #i$:I
    move v13, v12

    .end local v12           #i$:I
    .restart local v13       #i$:I
    goto :goto_8b

    .line 949
    .end local v24           #zoneId:Ljava/lang/String;
    :cond_bd
    sget-boolean v26, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v26, :cond_df

    if-eqz v20, :cond_df

    .line 950
    const-string v26, "CalendarUtility"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "TimeZone without DST found by offset: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v20 .. v20}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_df
    move-object/from16 v26, v20

    .line 953
    goto :goto_76

    .line 955
    .end local v13           #i$:I
    :cond_e2
    const/16 v26, 0x98

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->getTimeZoneDateFromSystemTime([BI)Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;

    move-result-object v11

    .line 957
    .local v11, dstStart:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    if-nez v11, :cond_f1

    .line 959
    const/16 v26, 0x0

    goto :goto_76

    .line 962
    :cond_f1
    const/16 v26, 0xa8

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->getLong([BI)I

    move-result v26

    mul-int/lit8 v26, v26, -0x1

    const v27, 0xea60

    mul-int v26, v26, v27

    move/from16 v0, v26

    int-to-long v9, v0

    .line 968
    .local v9, dstSavings:J
    move-object/from16 v4, v25

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v14, v4

    .restart local v14       #len$:I
    const/4 v12, 0x0

    .restart local v12       #i$:I
    move v13, v12

    .end local v4           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .restart local v13       #i$:I
    :goto_10a
    if-ge v13, v14, :cond_1aa

    aget-object v24, v4, v13

    .line 970
    .restart local v24       #zoneId:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v20

    .line 983
    if-eqz v20, :cond_13e

    .line 985
    move-object/from16 v0, v20

    invoke-static {v0, v11}, Lcom/android/exchange/utility/CalendarUtilities;->getMillisAtTimeZoneDateTransition(Ljava/util/TimeZone;Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;)J

    move-result-wide v18

    .line 989
    .local v18, millisAtTransition:J
    new-instance v6, Ljava/util/Date;

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v26, v0

    sub-long v26, v18, v26

    move-wide/from16 v0, v26

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 990
    .local v6, before:Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v26, v26, v18

    move-wide/from16 v0, v26

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 991
    .local v3, after:Ljava/util/Date;
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v26

    if-eqz v26, :cond_142

    .line 968
    .end local v3           #after:Ljava/util/Date;
    .end local v6           #before:Ljava/util/Date;
    .end local v13           #i$:I
    .end local v18           #millisAtTransition:J
    :cond_13e
    add-int/lit8 v12, v13, 0x1

    .restart local v12       #i$:I
    move v13, v12

    .end local v12           #i$:I
    .restart local v13       #i$:I
    goto :goto_10a

    .line 993
    .restart local v3       #after:Ljava/util/Date;
    .restart local v6       #before:Ljava/util/Date;
    .restart local v18       #millisAtTransition:J
    :cond_142
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v26

    if-eqz v26, :cond_13e

    .line 997
    move-object/from16 v0, v20

    invoke-static {v0, v8}, Lcom/android/exchange/utility/CalendarUtilities;->getMillisAtTimeZoneDateTransition(Ljava/util/TimeZone;Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;)J

    move-result-wide v18

    .line 1004
    new-instance v6, Ljava/util/Date;

    .end local v6           #before:Ljava/util/Date;
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v26, v26, v9

    sub-long v26, v18, v26

    move-wide/from16 v0, v26

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1005
    .restart local v6       #before:Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    .end local v3           #after:Ljava/util/Date;
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v26, v26, v18

    move-wide/from16 v0, v26

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1006
    .restart local v3       #after:Ljava/util/Date;
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v26

    if-eqz v26, :cond_13e

    .line 1008
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v26

    if-nez v26, :cond_13e

    .line 1012
    invoke-virtual/range {v20 .. v20}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v26, v9, v26

    if-nez v26, :cond_13e

    .line 1014
    move-object/from16 v5, v23

    .restart local v5       #arr$:[Ljava/lang/String;
    array-length v15, v5

    .restart local v15       #len$:I
    const/4 v12, 0x0

    .end local v13           #i$:I
    .restart local v12       #i$:I
    :goto_18f
    if-ge v12, v15, :cond_13e

    aget-object v22, v5, v12

    .line 1016
    .restart local v22       #timeZoneId:Ljava/lang/String;
    if-eqz v22, :cond_1a7

    invoke-virtual/range {v20 .. v20}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1a7

    move-object/from16 v26, v20

    .line 1017
    goto/16 :goto_76

    .line 1014
    :cond_1a7
    add-int/lit8 v12, v12, 0x1

    goto :goto_18f

    .line 1029
    .end local v3           #after:Ljava/util/Date;
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v6           #before:Ljava/util/Date;
    .end local v12           #i$:I
    .end local v15           #len$:I
    .end local v18           #millisAtTransition:J
    .end local v22           #timeZoneId:Ljava/lang/String;
    .end local v24           #zoneId:Ljava/lang/String;
    .restart local v13       #i$:I
    :cond_1aa
    const/16 v16, 0x0

    .line 1030
    .local v16, lenient:Z
    iget v0, v11, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->hour:I

    move/from16 v26, v0

    iget v0, v8, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->hour:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_214

    const v26, 0xea60

    move/from16 v0, p2

    move/from16 v1, v26

    if-ne v0, v1, :cond_214

    .line 1031
    const v26, 0xdbba00

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->tziStringToTimeZoneImpl(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/TimeZone;

    move-result-object v20

    .line 1032
    const/16 v16, 0x1

    .line 1037
    :goto_1d2
    sget-boolean v26, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v26, :cond_210

    if-eqz v20, :cond_210

    .line 1038
    const-string v26, "CalendarUtility"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "No TimeZone with correct DST settings; using first: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v20 .. v20}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    const-string v26, "CalendarUtility"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "No TimeZone with correct DST settings; using first:-> "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v20 .. v20}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_210
    move-object/from16 v26, v20

    .line 1043
    goto/16 :goto_76

    .line 1034
    :cond_214
    const/16 v26, 0x0

    aget-object v26, v25, v26

    invoke-static/range {v26 .. v26}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v20

    goto :goto_1d2

    .line 1046
    .end local v8           #dstEnd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    .end local v9           #dstSavings:J
    .end local v11           #dstStart:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    .end local v13           #i$:I
    .end local v16           #lenient:Z
    .end local v17           #localTimeZone:Ljava/util/TimeZone;
    :cond_21d
    const/16 v26, 0x0

    goto/16 :goto_76
.end method

.method public static updateMessageForEntity(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 25
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1944
    invoke-virtual/range {p2 .. p2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v8

    .line 1945
    invoke-virtual/range {p2 .. p2}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v9

    .line 1947
    const-string v2, "original_sync_id"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    .line 1948
    const/4 v3, 0x0

    .line 1951
    if-nez p1, :cond_1b

    .line 1952
    new-instance p1, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct/range {p1 .. p1}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 1953
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    .line 1955
    :cond_1b
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int v2, v2, p3

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 1957
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 1960
    and-int/lit8 v2, p3, 0x10

    if-eqz v2, :cond_2b5

    .line 1961
    const-string v2, "REQUEST"

    move-object v11, v2

    move v12, v3

    .line 1971
    :goto_35
    :try_start_35
    new-instance v2, Lcom/android/exchange/utility/SimpleIcsWriter;

    invoke-direct {v2}, Lcom/android/exchange/utility/SimpleIcsWriter;-><init>()V

    .line 1972
    const-string v3, "BEGIN"

    const-string v4, "VCALENDAR"

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    const-string v3, "METHOD"

    invoke-virtual {v2, v3, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    const-string v3, "PRODID"

    const-string v4, "AndroidEmail"

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    const-string v3, "VERSION"

    const-string v4, "2.0"

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    sget-object v4, Lcom/android/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    .line 1981
    const-string v5, ""

    .line 1984
    const/4 v3, 0x0

    .line 1985
    const-string v6, "allDay"

    invoke-virtual {v8, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_500

    .line 1986
    const-string v3, "allDay"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1987
    if-eqz v3, :cond_2c6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2c6

    const/4 v3, 0x1

    .line 1988
    :goto_71
    if-eqz v3, :cond_500

    .line 1990
    const-string v5, ";VALUE=DATE"

    move v7, v3

    move-object v3, v5

    .line 2001
    :goto_77
    if-nez v12, :cond_4fc

    if-nez v7, :cond_4fc

    const-string v5, "rrule"

    invoke-virtual {v8, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8b

    const-string v5, "original_sync_id"

    invoke-virtual {v8, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4fc

    .line 2005
    :cond_8b
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    .line 2007
    invoke-static {v4, v2}, Lcom/android/exchange/utility/CalendarUtilities;->timeZoneToVTimezone(Ljava/util/TimeZone;Lcom/android/exchange/utility/SimpleIcsWriter;)V

    .line 2009
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ";TZID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move-object v6, v4

    .line 2012
    :goto_ab
    const-string v3, "BEGIN"

    const-string v4, "VEVENT"

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    if-nez p4, :cond_ba

    .line 2015
    const-string v3, "sync_data2"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2017
    :cond_ba
    if-eqz p4, :cond_c3

    .line 2018
    const-string v3, "UID"

    move-object/from16 v0, p4

    invoke-virtual {v2, v3, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    :cond_c3
    const-string v3, "DTSTAMP"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c9

    .line 2022
    const-string v3, "DTSTAMP"

    const-string v4, "DTSTAMP"

    invoke-virtual {v8, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    :goto_d6
    const-string v3, "dtstart"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 2028
    const-wide/16 v3, 0x0

    cmp-long v3, v14, v3

    if-eqz v3, :cond_103

    .line 2029
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DTSTART"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v7, :cond_2e3

    const/4 v3, 0x1

    :goto_fc
    invoke-static {v14, v15, v6, v3}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    :cond_103
    if-eqz v13, :cond_12e

    .line 2037
    const-string v3, "originalInstanceTime"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 2038
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RECURRENCE-ID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v7, :cond_2e6

    const/4 v3, 0x1

    :goto_125
    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6, v3}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    :cond_12e
    const-string v3, "duration"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2ec

    .line 2043
    const-string v3, "dtend"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_165

    .line 2044
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DTEND"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "dtend"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    if-nez v7, :cond_2e9

    const/4 v3, 0x1

    :goto_15e
    invoke-static {v14, v15, v6, v3}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    :cond_165
    :goto_165
    const-string v3, "eventLocation"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_178

    .line 2064
    const-string v3, "eventLocation"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2065
    const-string v4, "LOCATION"

    invoke-virtual {v2, v4, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    :cond_178
    const-string v3, "sync_data4"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2070
    if-nez v3, :cond_4f9

    .line 2071
    const-string v3, "0"

    move-object v10, v3

    .line 2075
    :goto_183
    const/4 v3, 0x0

    .line 2076
    sparse-switch p3, :sswitch_data_504

    :cond_187
    move v4, v3

    .line 2095
    :goto_188
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2096
    const-string v3, "title"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2097
    if-nez v3, :cond_196

    .line 2098
    const-string v3, ""

    .line 2100
    :cond_196
    const-string v6, "SUMMARY"

    invoke-virtual {v2, v6, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-nez v6, :cond_1a7

    .line 2105
    if-nez v4, :cond_34f

    .line 2106
    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 2115
    :cond_1a7
    :goto_1a7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2116
    if-eqz v13, :cond_1e1

    if-nez v12, :cond_1e1

    .line 2119
    new-instance v6, Ljava/util/Date;

    const-string v7, "originalInstanceTime"

    invoke-virtual {v8, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-direct {v6, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 2120
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 2121
    const v7, 0x7f060005

    if-ne v4, v7, :cond_35f

    .line 2122
    const v4, 0x7f06000f

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v7, v13

    invoke-virtual {v5, v4, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2126
    :goto_1dc
    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2128
    :cond_1e1
    move-object/from16 v0, p0

    invoke-static {v0, v8, v3}, Lcom/android/exchange/utility/CalendarUtilities;->buildMessageTextFromEntityValues(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 2131
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1f2

    .line 2132
    const-string v4, "DESCRIPTION"

    invoke-virtual {v2, v4, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    :cond_1f2
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 2137
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v4, :cond_371

    .line 2138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 2139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 2144
    :goto_23a
    const-string v3, ""

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    .line 2147
    if-nez v12, :cond_26a

    .line 2148
    const-string v3, "allDay"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25d

    .line 2149
    const-string v3, "allDay"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 2150
    const-string v4, "X-MICROSOFT-CDO-ALLDAYEVENT"

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_377

    const-string v3, "FALSE"

    :goto_25a
    invoke-virtual {v2, v4, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    :cond_25d
    const-string v3, "rrule"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2154
    if-eqz v3, :cond_26a

    .line 2155
    const-string v4, "RRULE"

    invoke-virtual {v2, v4, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    :cond_26a
    const/4 v5, 0x0

    .line 2166
    const/4 v4, 0x0

    .line 2167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2168
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v8, v4

    move-object v9, v5

    :cond_277
    :goto_277
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Entity$NamedContentValues;

    .line 2169
    iget-object v5, v4, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 2170
    iget-object v4, v4, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 2171
    sget-object v6, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_277

    .line 2172
    const-string v5, "attendeeRelationship"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 2175
    if-eqz v5, :cond_277

    const-string v6, "attendeeEmail"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_277

    .line 2177
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_37b

    .line 2178
    const-string v5, "attendeeName"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2179
    const-string v6, "attendeeEmail"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2b1
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_2b1} :catch_2d8

    move-result-object v4

    move-object v8, v4

    move-object v9, v5

    .line 2180
    goto :goto_277

    .line 1962
    :cond_2b5
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_2bf

    .line 1963
    const-string v2, "CANCEL"

    move-object v11, v2

    move v12, v3

    goto/16 :goto_35

    .line 1965
    :cond_2bf
    const-string v2, "REPLY"

    .line 1966
    const/4 v3, 0x1

    move-object v11, v2

    move v12, v3

    goto/16 :goto_35

    .line 1987
    :cond_2c6
    const/4 v3, 0x0

    goto/16 :goto_71

    .line 2024
    :cond_2c9
    :try_start_2c9
    const-string v3, "DTSTAMP"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d6
    .catch Ljava/io/IOException; {:try_start_2c9 .. :try_end_2d6} :catch_2d8

    goto/16 :goto_d6

    .line 2291
    :catch_2d8
    move-exception v2

    .line 2292
    const-string v2, "CalendarUtility"

    const-string v3, "IOException in createMessageForEntity"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    const/16 p1, 0x0

    .line 2297
    :goto_2e2
    return-object p1

    .line 2029
    :cond_2e3
    const/4 v3, 0x0

    goto/16 :goto_fc

    .line 2038
    :cond_2e6
    const/4 v3, 0x0

    goto/16 :goto_125

    .line 2044
    :cond_2e9
    const/4 v3, 0x0

    goto/16 :goto_15e

    .line 2050
    :cond_2ec
    const-wide/32 v3, 0x36ee80

    .line 2051
    :try_start_2ef
    new-instance v10, Lcom/android/exchange/utility/Duration;

    invoke-direct {v10}, Lcom/android/exchange/utility/Duration;-><init>()V
    :try_end_2f4
    .catch Ljava/io/IOException; {:try_start_2ef .. :try_end_2f4} :catch_2d8

    .line 2053
    :try_start_2f4
    const-string v16, "duration"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/android/exchange/utility/Duration;->parse(Ljava/lang/String;)V

    .line 2054
    invoke-virtual {v10}, Lcom/android/exchange/utility/Duration;->getMillis()J
    :try_end_304
    .catch Ljava/text/ParseException; {:try_start_2f4 .. :try_end_304} :catch_4f6
    .catch Ljava/io/IOException; {:try_start_2f4 .. :try_end_304} :catch_2d8

    move-result-wide v3

    .line 2058
    :goto_305
    :try_start_305
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DTEND"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-long/2addr v14, v3

    if-nez v7, :cond_327

    const/4 v3, 0x1

    :goto_31e
    invoke-static {v14, v15, v6, v3}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_165

    :cond_327
    const/4 v3, 0x0

    goto :goto_31e

    .line 2078
    :sswitch_329
    const-string v4, "0"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_187

    .line 2079
    const v3, 0x7f060006

    move v4, v3

    goto/16 :goto_188

    .line 2083
    :sswitch_337
    const v3, 0x7f060002

    move v4, v3

    .line 2084
    goto/16 :goto_188

    .line 2086
    :sswitch_33d
    const v3, 0x7f060003

    move v4, v3

    .line 2087
    goto/16 :goto_188

    .line 2089
    :sswitch_343
    const v3, 0x7f060004

    move v4, v3

    .line 2090
    goto/16 :goto_188

    .line 2092
    :sswitch_349
    const v3, 0x7f060005

    move v4, v3

    goto/16 :goto_188

    .line 2109
    :cond_34f
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto/16 :goto_1a7

    .line 2124
    :cond_35f
    const v4, 0x7f060010

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v7, v13

    invoke-virtual {v5, v4, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1dc

    .line 2141
    :cond_371
    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    goto/16 :goto_23a

    .line 2150
    :cond_377
    const-string v3, "TRUE"

    goto/16 :goto_25a

    .line 2182
    :cond_37b
    const-string v5, "attendeeEmail"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2183
    const-string v6, "attendeeName"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2186
    if-eqz v5, :cond_277

    .line 2190
    if-eqz p6, :cond_393

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_277

    :cond_393
    move/from16 v6, p3

    move-object/from16 v7, p5

    .line 2195
    invoke-static/range {v2 .. v7}, Lcom/android/exchange/utility/CalendarUtilities;->addAttendeeToMessage(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    goto/16 :goto_277

    .line 2203
    :cond_39c
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3ae

    if-eqz p6, :cond_3ae

    .line 2204
    const/4 v4, 0x0

    move-object/from16 v5, p6

    move/from16 v6, p3

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/exchange/utility/CalendarUtilities;->addAttendeeToMessage(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 2209
    :cond_3ae
    if-eqz v8, :cond_3ec

    .line 2210
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "ORGANIZER"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2214
    if-eqz v9, :cond_3c6

    .line 2215
    const-string v5, ";CN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {v9}, Lcom/android/exchange/utility/SimpleIcsWriter;->quoteParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2217
    :cond_3c6
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MAILTO:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    if-eqz v12, :cond_3ec

    .line 2219
    if-nez v9, :cond_3f6

    new-instance v4, Lcom/android/emailcommon/mail/Address;

    invoke-direct {v4, v8}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;)V

    :goto_3e9
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2225
    :cond_3ec
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3fc

    .line 2226
    const/16 p1, 0x0

    goto/16 :goto_2e2

    .line 2219
    :cond_3f6
    new-instance v4, Lcom/android/emailcommon/mail/Address;

    invoke-direct {v4, v8, v9}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e9

    .line 2229
    :cond_3fc
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v6, v4, [Lcom/android/emailcommon/mail/Address;

    .line 2230
    const/4 v4, 0x0

    .line 2231
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_407
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_419

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/mail/Address;

    .line 2232
    add-int/lit8 v5, v4, 0x1

    aput-object v3, v6, v4

    move v4, v5

    goto :goto_407

    .line 2235
    :cond_419
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    if-nez v3, :cond_427

    .line 2237
    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 2246
    :cond_427
    const-string v4, "STATUS"

    const/16 v3, 0x20

    move/from16 v0, p3

    if-ne v0, v3, :cond_4c9

    const-string v3, "CANCELLED"

    :goto_431
    invoke-virtual {v2, v4, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    const-string v3, "TRANSP"

    const-string v4, "OPAQUE"

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    if-nez v3, :cond_4cd

    .line 2252
    const-string v3, "PRIORITY"

    const-string v4, "9"

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    :cond_448
    :goto_448
    const-string v3, "SEQUENCE"

    invoke-virtual {v2, v3, v10}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    sget v3, Lcom/android/exchange/utility/CalendarUtilities;->mMinutes:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4ed

    .line 2262
    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->writeVAlarm(Lcom/android/exchange/utility/SimpleIcsWriter;)V

    .line 2266
    :goto_455
    const-string v3, "END"

    const-string v4, "VEVENT"

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    const-string v3, "END"

    const-string v4, "VCALENDAR"

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2271
    const-string v3, "CalendarUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encoded iCalendar follows below. \n "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    new-instance v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 2276
    invoke-virtual {v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->getBytes()[B

    move-result-object v2

    iput-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    .line 2277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "text/calendar; method="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 2278
    const-string v2, "invite.ics"

    iput-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 2279
    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    array-length v2, v2

    int-to-long v4, v2

    iput-wide v4, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 2281
    const/4 v2, 0x1

    iput v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 2285
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-nez v2, :cond_4bb

    .line 2286
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 2289
    :cond_4bb
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2290
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    goto/16 :goto_2e2

    .line 2246
    :cond_4c9
    const-string v3, "CONFIRMED"

    goto/16 :goto_431

    .line 2253
    :cond_4cd
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4dd

    .line 2254
    const-string v3, "PRIORITY"

    const-string v4, "5"

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_448

    .line 2255
    :cond_4dd
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_448

    .line 2256
    const-string v3, "PRIORITY"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_448

    .line 2264
    :cond_4ed
    const-string v3, "CalendarUtility"

    const-string v4, "None selected for Alarm"

    invoke-static {v3, v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f4
    .catch Ljava/io/IOException; {:try_start_305 .. :try_end_4f4} :catch_2d8

    goto/16 :goto_455

    .line 2055
    :catch_4f6
    move-exception v10

    goto/16 :goto_305

    :cond_4f9
    move-object v10, v3

    goto/16 :goto_183

    :cond_4fc
    move-object v5, v3

    move-object v6, v4

    goto/16 :goto_ab

    :cond_500
    move v7, v3

    move-object v3, v5

    goto/16 :goto_77

    .line 2076
    :sswitch_data_504
    .sparse-switch
        0x10 -> :sswitch_329
        0x20 -> :sswitch_349
        0x40 -> :sswitch_337
        0x80 -> :sswitch_33d
        0x100 -> :sswitch_343
    .end sparse-switch
.end method

.method static utcOffsetString(I)Ljava/lang/String;
    .registers 7
    .parameter "offsetMinutes"

    .prologue
    const/16 v5, 0x30

    const/16 v4, 0xa

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 603
    .local v2, sb:Ljava/lang/StringBuilder;
    div-int/lit8 v0, p0, 0x3c

    .line 604
    .local v0, hours:I
    if-gez v0, :cond_2b

    .line 605
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 606
    rsub-int/lit8 v0, v0, 0x0

    .line 610
    :goto_14
    rem-int/lit8 v1, p0, 0x3c

    .line 611
    .local v1, minutes:I
    if-ge v0, v4, :cond_1b

    .line 612
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 614
    :cond_1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 615
    if-ge v1, v4, :cond_23

    .line 616
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 618
    :cond_23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 608
    .end local v1           #minutes:I
    :cond_2b
    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14
.end method

.method private static writeNoDST(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/TimeZone;Ljava/lang/String;)V
    .registers 6
    .parameter "writer"
    .parameter "tz"
    .parameter "offsetString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    const-string v0, "BEGIN"

    const-string v1, "STANDARD"

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v0, "TZOFFSETFROM"

    invoke-virtual {p0, v0, p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string v0, "TZOFFSETTO"

    invoke-virtual {p0, v0, p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v0, "DTSTART"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v0, "END"

    const-string v1, "STANDARD"

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v0, "END"

    const-string v1, "VTIMEZONE"

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    return-void
.end method

.method private static writeVAlarm(Lcom/android/exchange/utility/SimpleIcsWriter;)V
    .registers 4
    .parameter

    .prologue
    .line 2303
    const-string v0, "BEGIN"

    const-string v1, "VALARM"

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2304
    const-string v0, "ACTION"

    const-string v1, "DISPLAY"

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    const-string v0, "DESCRIPTION"

    const-string v1, "REMINDER"

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    const-string v0, "TRIGGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-PT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/exchange/utility/CalendarUtilities;->mMinutes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    const-string v0, "END"

    const-string v1, "VALARM"

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    return-void
.end method
