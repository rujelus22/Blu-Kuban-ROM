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

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTziStringCache:Ljava/util/HashMap;

    .line 130
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->UTC_TIMEZONE:Ljava/util/TimeZone;

    .line 139
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DAILY"

    aput-object v1, v0, v4

    const-string v1, "WEEKLY"

    aput-object v1, v0, v3

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

    .line 142
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SU"

    aput-object v1, v0, v4

    const-string v1, "MO"

    aput-object v1, v0, v3

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

    .line 145
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "00"

    aput-object v1, v0, v4

    const-string v1, "01"

    aput-object v1, v0, v3

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

    .line 160
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    sput v0, Lcom/android/exchange/utility/CalendarUtilities;->sCurrentYear:I

    .line 161
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    return-void
.end method

.method private static addAttendeeToMessage(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/android/emailcommon/provider/Account;)V
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
            "Lcom/android/emailcommon/provider/Account;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1554
    and-int/lit8 v0, p4, 0x30

    if-eqz v0, :cond_50

    .line 1555
    const-string v0, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=TRUE"

    .line 1556
    and-int/lit8 v1, p4, 0x20

    if-eqz v1, :cond_c

    .line 1557
    const-string v0, "ATTENDEE;ROLE=REQ-PARTICIPANT"

    .line 1559
    :cond_c
    if-eqz p2, :cond_29

    .line 1560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";CN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->quoteParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1562
    :cond_29
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

    .line 1563
    if-nez p2, :cond_4a

    new-instance v0, Lcom/android/emailcommon/mail/Address;

    invoke-direct {v0, p3}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;)V

    :goto_46
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1586
    :cond_49
    :goto_49
    return-void

    .line 1563
    :cond_4a
    new-instance v0, Lcom/android/emailcommon/mail/Address;

    invoke-direct {v0, p3, p2}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 1565
    :cond_50
    iget-object v0, p5, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1566
    const/4 v0, 0x0

    .line 1567
    sparse-switch p4, :sswitch_data_9c

    .line 1578
    :goto_5c
    if-eqz v0, :cond_49

    .line 1579
    if-eqz p2, :cond_7b

    .line 1580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";CN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->quoteParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1583
    :cond_7b
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

    .line 1569
    :sswitch_92
    const-string v0, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED"

    goto :goto_5c

    .line 1572
    :sswitch_95
    const-string v0, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=DECLINED"

    goto :goto_5c

    .line 1575
    :sswitch_98
    const-string v0, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=TENTATIVE"

    goto :goto_5c

    .line 1567
    nop

    :sswitch_data_9c
    .sparse-switch
        0x40 -> :sswitch_92
        0x80 -> :sswitch_95
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
    .line 1132
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1134
    .local v1, weekOfMonth:I
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_22

    .line 1136
    const/4 v1, 0x5

    .line 1137
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1142
    .local v0, bareByDay:Ljava/lang/String;
    :goto_f
    const/16 v2, 0x122

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1143
    const/16 v2, 0x120

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->generateEasDayOfWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1144
    return-void

    .line 1139
    .end local v0           #bareByDay:Ljava/lang/String;
    :cond_22
    add-int/lit8 v1, v1, -0x30

    .line 1140
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #bareByDay:Ljava/lang/String;
    goto :goto_f
.end method

.method static addByDay(Ljava/lang/StringBuilder;II)V
    .registers 7
    .parameter "rrule"
    .parameter "dow"
    .parameter "wom"

    .prologue
    .line 1018
    const-string v2, ";BYDAY="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    const/4 v0, 0x0

    .line 1020
    .local v0, addComma:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    const/4 v2, 0x7

    if-ge v1, v2, :cond_2e

    .line 1021
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_27

    .line 1022
    if-eqz v0, :cond_16

    .line 1023
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1025
    :cond_16
    if-lez p2, :cond_1f

    .line 1028
    const/4 v2, 0x5

    if-ne p2, v2, :cond_2c

    const/4 v2, -0x1

    :goto_1c
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1030
    :cond_1f
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sDayTokens:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    const/4 v0, 0x1

    .line 1033
    :cond_27
    shr-int/lit8 p1, p1, 0x1

    .line 1020
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2c
    move v2, p2

    .line 1028
    goto :goto_1c

    .line 1035
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
    .line 1148
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1149
    .local v0, weekOfMonth:I
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1d

    .line 1151
    const/4 v0, 0x5

    .line 1155
    :goto_a
    const/16 v1, 0x122

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1156
    const/16 v1, 0x120

    invoke-static {p0}, Lcom/android/exchange/utility/CalendarUtilities;->generateEasDayOfWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1157
    return-void

    .line 1153
    :cond_1d
    add-int/lit8 v0, v0, -0x30

    goto :goto_a
.end method

.method static addByMonthDay(Ljava/lang/StringBuilder;I)V
    .registers 4
    .parameter "rrule"
    .parameter "dom"

    .prologue
    .line 1046
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_5

    .line 1047
    const/4 p1, -0x1

    .line 1049
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

    .line 1050
    return-void
.end method

.method static addBySetpos(Ljava/lang/StringBuilder;II)V
    .registers 4
    .parameter "rrule"
    .parameter "dow"
    .parameter "wom"

    .prologue
    .line 1039
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    .line 1040
    const-string v0, ";BYSETPOS="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    const/4 v0, 0x5

    if-ne p2, v0, :cond_12

    const-string v0, "-1"

    :goto_e
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1042
    return-void

    .line 1041
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
    .line 1116
    const-string v3, "COUNT="

    invoke-static {p0, v3}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1117
    .local v0, count:Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 1118
    const/16 v3, 0x11e

    invoke-virtual {p1, v3, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1120
    :cond_d
    const-string v3, "INTERVAL="

    invoke-static {p0, v3}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1121
    .local v1, interval:Ljava/lang/String;
    if-eqz v1, :cond_1a

    .line 1122
    const/16 v3, 0x11f

    invoke-virtual {p1, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1124
    :cond_1a
    const-string v3, "UNTIL="

    invoke-static {p0, v3}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1125
    .local v2, until:Ljava/lang/String;
    if-eqz v2, :cond_2b

    .line 1126
    const/16 v3, 0x11d

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->recurrenceUntilToEasUntil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1128
    :cond_2b
    return-void
.end method

.method static asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 6
    .parameter "uri"
    .parameter "account"
    .parameter "accountType"

    .prologue
    .line 1376
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
    .line 1427
    packed-switch p0, :pswitch_data_a

    .line 1437
    const/4 v0, 0x0

    .line 1439
    .local v0, attendeeStatus:I
    :goto_4
    return v0

    .line 1429
    .end local v0           #attendeeStatus:I
    :pswitch_5
    const/4 v0, 0x1

    .line 1430
    .restart local v0       #attendeeStatus:I
    goto :goto_4

    .line 1432
    .end local v0           #attendeeStatus:I
    :pswitch_7
    const/4 v0, 0x4

    .line 1433
    .restart local v0       #attendeeStatus:I
    goto :goto_4

    .line 1427
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static attendeeStatusFromResponseType(I)I
    .registers 2
    .parameter "responseType"

    .prologue
    .line 1450
    packed-switch p0, :pswitch_data_e

    .line 1464
    const/4 v0, 0x0

    .line 1466
    .local v0, attendeeStatus:I
    :goto_4
    return v0

    .line 1452
    .end local v0           #attendeeStatus:I
    :pswitch_5
    const/4 v0, 0x0

    .line 1453
    .restart local v0       #attendeeStatus:I
    goto :goto_4

    .line 1455
    .end local v0           #attendeeStatus:I
    :pswitch_7
    const/4 v0, 0x1

    .line 1456
    .restart local v0       #attendeeStatus:I
    goto :goto_4

    .line 1458
    .end local v0           #attendeeStatus:I
    :pswitch_9
    const/4 v0, 0x4

    .line 1459
    .restart local v0       #attendeeStatus:I
    goto :goto_4

    .line 1461
    .end local v0           #attendeeStatus:I
    :pswitch_b
    const/4 v0, 0x2

    .line 1462
    .restart local v0       #attendeeStatus:I
    goto :goto_4

    .line 1450
    nop

    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_9
        :pswitch_7
        :pswitch_b
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

    .line 1495
    if-nez p2, :cond_9

    .line 1496
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1498
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1499
    new-instance v3, Ljava/util/Date;

    const-string v0, "dtstart"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1508
    const-string v0, "allDay"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 1509
    const-string v0, "allDay"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1510
    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_9a

    move v0, v1

    .line 1512
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

    .line 1517
    :goto_44
    if-eqz v0, :cond_a2

    .line 1518
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1519
    if-eqz v4, :cond_9e

    const v0, 0x7f06000b

    .line 1524
    :goto_53
    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-virtual {v5, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    const-string v0, "eventLocation"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1528
    const-string v0, "eventLocation"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1529
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_85

    .line 1530
    const-string v3, "\n"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1531
    const v3, 0x7f060008

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {v5, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    :cond_85
    const-string v0, "description"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1536
    if-eqz v0, :cond_95

    .line 1537
    const-string v1, "\n--\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1538
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    :cond_95
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9a
    move v0, v2

    .line 1510
    goto :goto_33

    :cond_9c
    move v4, v2

    .line 1512
    goto :goto_44

    .line 1519
    :cond_9e
    const v0, 0x7f06000a

    goto :goto_53

    .line 1521
    :cond_a2
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1522
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

.method public static busyStatusFromAttendeeStatus(I)I
    .registers 2
    .parameter "selfAttendeeStatus"

    .prologue
    .line 1476
    packed-switch p0, :pswitch_data_a

    .line 1487
    :pswitch_3
    const/4 v0, 0x2

    .line 1490
    .local v0, busyStatus:I
    :goto_4
    return v0

    .line 1480
    .end local v0           #busyStatus:I
    :pswitch_5
    const/4 v0, 0x0

    .line 1481
    .restart local v0       #busyStatus:I
    goto :goto_4

    .line 1483
    .end local v0           #busyStatus:I
    :pswitch_7
    const/4 v0, 0x1

    .line 1484
    .restart local v0       #busyStatus:I
    goto :goto_4

    .line 1476
    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method static clearTimeZoneCache()V
    .registers 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 232
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 233
    return-void
.end method

.method public static convertEmailDateTimeToCalendarDateTime(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "date"

    .prologue
    .line 886
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

.method public static createCalendar(Lcom/android/exchange/EasSyncService;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)J
    .registers 12
    .parameter "service"
    .parameter "account"
    .parameter "mailbox"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 1341
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1343
    .local v1, cv:Landroid/content/ContentValues;
    const-string v4, "calendar_displayName"

    iget-object v5, p1, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    const-string v4, "account_name"

    iget-object v5, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    const-string v4, "account_type"

    const-string v5, "com.android.exchange"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    const-string v4, "sync_events"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1347
    const-string v4, "visible"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1349
    const-string v4, "canOrganizerRespond"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1350
    const-string v4, "canModifyTimeZone"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1351
    const-string v4, "maxReminders"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1352
    const-string v4, "allowedReminders"

    const-string v5, "0,1"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    const-string v4, "allowedAttendeeTypes"

    const-string v5, "0,1,2"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    const-string v4, "allowedAvailability"

    const-string v5, "0,1,2"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    new-instance v4, Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-wide v5, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v4, v5, v6}, Lcom/android/emailcommon/service/AccountServiceProxy;->getAccountColor(J)I

    move-result v0

    .line 1358
    .local v0, color:I
    const-string v4, "calendar_color"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1359
    const-string v4, "calendar_timezone"

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    const-string v4, "calendar_access_level"

    const/16 v5, 0x2bc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1361
    const-string v4, "ownerAccount"

    iget-object v5, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v5, v6, v7}, Lcom/android/exchange/utility/CalendarUtilities;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1367
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_b2

    .line 1368
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1369
    .local v2, stringId:Ljava/lang/String;
    iput-object v2, p2, Lcom/android/emailcommon/provider/Mailbox;->mSyncStatus:Ljava/lang/String;

    .line 1370
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1372
    .end local v2           #stringId:Ljava/lang/String;
    :goto_b1
    return-wide v4

    :cond_b2
    const-wide/16 v4, -0x1

    goto :goto_b1
.end method

.method public static createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 11
    .parameter "context"
    .parameter "entity"
    .parameter "messageFlag"
    .parameter "uid"
    .parameter "account"

    .prologue
    .line 1598
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method public static createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 25
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1604
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v9

    .line 1605
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v10

    .line 1606
    const-string v2, "original_sync_id"

    invoke-virtual {v9, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    .line 1607
    const/4 v3, 0x0

    .line 1609
    new-instance v8, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v8}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 1610
    move/from16 v0, p2

    iput v0, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 1611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 1614
    and-int/lit8 v2, p2, 0x10

    if-eqz v2, :cond_254

    .line 1615
    const-string v2, "REQUEST"

    move-object v12, v2

    move v13, v3

    .line 1625
    :goto_26
    :try_start_26
    new-instance v2, Lcom/android/exchange/utility/SimpleIcsWriter;

    invoke-direct {v2}, Lcom/android/exchange/utility/SimpleIcsWriter;-><init>()V

    .line 1626
    const-string v3, "BEGIN"

    const-string v4, "VCALENDAR"

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    const-string v3, "METHOD"

    invoke-virtual {v2, v3, v12}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    const-string v3, "PRODID"

    const-string v4, "AndroidEmail"

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    const-string v3, "VERSION"

    const-string v4, "2.0"

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    sget-object v4, Lcom/android/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    .line 1634
    const-string v5, ""

    .line 1637
    const/4 v3, 0x0

    .line 1638
    const-string v6, "allDay"

    invoke-virtual {v9, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_438

    .line 1639
    const-string v3, "allDay"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1640
    if-eqz v3, :cond_265

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_265

    const/4 v3, 0x1

    .line 1641
    :goto_62
    if-eqz v3, :cond_438

    .line 1643
    const-string v5, ";VALUE=DATE"

    move v7, v3

    move-object v3, v5

    .line 1651
    :goto_68
    if-nez v13, :cond_434

    if-nez v7, :cond_434

    const-string v5, "rrule"

    invoke-virtual {v9, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7c

    const-string v5, "original_sync_id"

    invoke-virtual {v9, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_434

    .line 1654
    :cond_7c
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    .line 1656
    invoke-static {v4, v2}, Lcom/android/exchange/utility/CalendarUtilities;->timeZoneToVTimezone(Ljava/util/TimeZone;Lcom/android/exchange/utility/SimpleIcsWriter;)V

    .line 1658
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

    .line 1661
    :goto_9c
    const-string v3, "BEGIN"

    const-string v4, "VEVENT"

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    if-nez p3, :cond_ab

    .line 1663
    const-string v3, "sync_data2"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1665
    :cond_ab
    if-eqz p3, :cond_b4

    .line 1666
    const-string v3, "UID"

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    :cond_b4
    const-string v3, "DTSTAMP"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_268

    .line 1670
    const-string v3, "DTSTAMP"

    const-string v4, "DTSTAMP"

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    :goto_c7
    const-string v3, "dtstart"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 1676
    const-wide/16 v3, 0x0

    cmp-long v3, v15, v3

    if-eqz v3, :cond_f5

    .line 1677
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DTSTART"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v7, :cond_281

    const/4 v3, 0x1

    :goto_ed
    move-wide v0, v15

    invoke-static {v0, v1, v6, v3}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    :cond_f5
    if-eqz v14, :cond_120

    .line 1684
    const-string v3, "originalInstanceTime"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 1685
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RECURRENCE-ID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v7, :cond_284

    const/4 v3, 0x1

    :goto_117
    move-wide/from16 v0, v17

    invoke-static {v0, v1, v6, v3}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    :cond_120
    const-string v3, "duration"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28a

    .line 1690
    const-string v3, "dtend"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_158

    .line 1691
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

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    if-nez v7, :cond_287

    const/4 v3, 0x1

    :goto_150
    move-wide v0, v15

    invoke-static {v0, v1, v6, v3}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    :cond_158
    :goto_158
    const-string v3, "eventLocation"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16b

    .line 1714
    const-string v3, "eventLocation"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1715
    const-string v4, "LOCATION"

    invoke-virtual {v2, v4, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    :cond_16b
    const-string v3, "sync_data4"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1719
    if-nez v3, :cond_431

    .line 1720
    const-string v3, "0"

    move-object v11, v3

    .line 1724
    :goto_176
    const/4 v3, 0x0

    .line 1725
    sparse-switch p2, :sswitch_data_43c

    :cond_17a
    move v4, v3

    .line 1744
    :goto_17b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1745
    const-string v3, "title"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1746
    if-nez v3, :cond_189

    .line 1747
    const-string v3, ""

    .line 1749
    :cond_189
    const-string v6, "SUMMARY"

    invoke-virtual {v2, v6, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    if-nez v4, :cond_2ee

    .line 1752
    iput-object v3, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 1760
    :goto_192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1761
    if-eqz v14, :cond_1cc

    if-nez v13, :cond_1cc

    .line 1763
    new-instance v6, Ljava/util/Date;

    const-string v7, "originalInstanceTime"

    invoke-virtual {v9, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v6, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 1764
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1765
    const v7, 0x7f060005

    if-ne v4, v7, :cond_2fc

    .line 1766
    const v4, 0x7f06000e

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v7, v14

    invoke-virtual {v5, v4, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1770
    :goto_1c7
    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    :cond_1cc
    move-object/from16 v0, p0

    invoke-static {v0, v9, v3}, Lcom/android/exchange/utility/CalendarUtilities;->buildMessageTextFromEntityValues(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 1775
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1dd

    .line 1776
    const-string v4, "DESCRIPTION"

    invoke-virtual {v2, v4, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    :cond_1dd
    iput-object v3, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 1780
    if-nez v13, :cond_209

    .line 1781
    const-string v3, "allDay"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1fc

    .line 1782
    const-string v3, "allDay"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1783
    const-string v4, "X-MICROSOFT-CDO-ALLDAYEVENT"

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_30e

    const-string v3, "FALSE"

    :goto_1f9
    invoke-virtual {v2, v4, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    :cond_1fc
    const-string v3, "rrule"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1787
    if-eqz v3, :cond_209

    .line 1788
    const-string v4, "RRULE"

    invoke-virtual {v2, v4, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    :cond_209
    const/4 v5, 0x0

    .line 1797
    const/4 v4, 0x0

    .line 1798
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1799
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v9, v4

    move-object v10, v5

    :cond_216
    :goto_216
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_333

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Entity$NamedContentValues;

    .line 1800
    iget-object v5, v4, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 1801
    iget-object v4, v4, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1802
    sget-object v6, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_216

    .line 1803
    const-string v5, "attendeeRelationship"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 1807
    if-eqz v5, :cond_216

    const-string v6, "attendeeEmail"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_216

    .line 1810
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_312

    .line 1811
    const-string v5, "attendeeName"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1812
    const-string v6, "attendeeEmail"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_250
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_250} :catch_277

    move-result-object v4

    move-object v9, v4

    move-object v10, v5

    .line 1813
    goto :goto_216

    .line 1616
    :cond_254
    and-int/lit8 v2, p2, 0x20

    if-eqz v2, :cond_25e

    .line 1617
    const-string v2, "CANCEL"

    move-object v12, v2

    move v13, v3

    goto/16 :goto_26

    .line 1619
    :cond_25e
    const-string v2, "REPLY"

    .line 1620
    const/4 v3, 0x1

    move-object v12, v2

    move v13, v3

    goto/16 :goto_26

    .line 1640
    :cond_265
    const/4 v3, 0x0

    goto/16 :goto_62

    .line 1672
    :cond_268
    :try_start_268
    const-string v3, "DTSTAMP"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_275
    .catch Ljava/io/IOException; {:try_start_268 .. :try_end_275} :catch_277

    goto/16 :goto_c7

    .line 1884
    :catch_277
    move-exception v2

    .line 1885
    const-string v2, "CalendarUtility"

    const-string v3, "IOException in createMessageForEntity"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    const/4 v2, 0x0

    .line 1890
    :goto_280
    return-object v2

    .line 1677
    :cond_281
    const/4 v3, 0x0

    goto/16 :goto_ed

    .line 1685
    :cond_284
    const/4 v3, 0x0

    goto/16 :goto_117

    .line 1691
    :cond_287
    const/4 v3, 0x0

    goto/16 :goto_150

    .line 1699
    :cond_28a
    const-wide/32 v3, 0x36ee80

    .line 1700
    :try_start_28d
    new-instance v11, Lcom/android/exchange/utility/Duration;

    invoke-direct {v11}, Lcom/android/exchange/utility/Duration;-><init>()V
    :try_end_292
    .catch Ljava/io/IOException; {:try_start_28d .. :try_end_292} :catch_277

    .line 1702
    :try_start_292
    const-string v17, "duration"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/exchange/utility/Duration;->parse(Ljava/lang/String;)V

    .line 1703
    invoke-virtual {v11}, Lcom/android/exchange/utility/Duration;->getMillis()J
    :try_end_2a2
    .catch Ljava/text/ParseException; {:try_start_292 .. :try_end_2a2} :catch_42e
    .catch Ljava/io/IOException; {:try_start_292 .. :try_end_2a2} :catch_277

    move-result-wide v3

    .line 1707
    :goto_2a3
    :try_start_2a3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "DTEND"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-long/2addr v15, v3

    if-nez v7, :cond_2c6

    const/4 v3, 0x1

    :goto_2bc
    move-wide v0, v15

    invoke-static {v0, v1, v6, v3}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_158

    :cond_2c6
    const/4 v3, 0x0

    goto :goto_2bc

    .line 1727
    :sswitch_2c8
    const-string v4, "0"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17a

    .line 1728
    const v3, 0x7f060006

    move v4, v3

    goto/16 :goto_17b

    .line 1732
    :sswitch_2d6
    const v3, 0x7f060002

    move v4, v3

    .line 1733
    goto/16 :goto_17b

    .line 1735
    :sswitch_2dc
    const v3, 0x7f060003

    move v4, v3

    .line 1736
    goto/16 :goto_17b

    .line 1738
    :sswitch_2e2
    const v3, 0x7f060004

    move v4, v3

    .line 1739
    goto/16 :goto_17b

    .line 1741
    :sswitch_2e8
    const v3, 0x7f060005

    move v4, v3

    goto/16 :goto_17b

    .line 1755
    :cond_2ee
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto/16 :goto_192

    .line 1768
    :cond_2fc
    const v4, 0x7f06000f

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v7, v14

    invoke-virtual {v5, v4, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1c7

    .line 1783
    :cond_30e
    const-string v3, "TRUE"

    goto/16 :goto_1f9

    .line 1815
    :cond_312
    const-string v5, "attendeeEmail"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1816
    const-string v6, "attendeeName"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1819
    if-eqz v5, :cond_216

    .line 1821
    if-eqz p5, :cond_32a

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_216

    :cond_32a
    move/from16 v6, p2

    move-object/from16 v7, p4

    .line 1826
    invoke-static/range {v2 .. v7}, Lcom/android/exchange/utility/CalendarUtilities;->addAttendeeToMessage(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/android/emailcommon/provider/Account;)V

    goto/16 :goto_216

    .line 1833
    :cond_333
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_345

    if-eqz p5, :cond_345

    .line 1834
    const/4 v4, 0x0

    move-object/from16 v5, p5

    move/from16 v6, p2

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/exchange/utility/CalendarUtilities;->addAttendeeToMessage(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/android/emailcommon/provider/Account;)V

    .line 1838
    :cond_345
    if-eqz v9, :cond_388

    .line 1839
    const-string v4, "ORGANIZER"

    .line 1842
    if-eqz v10, :cond_366

    .line 1843
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";CN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v10}, Lcom/android/exchange/utility/SimpleIcsWriter;->quoteParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1845
    :cond_366
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MAILTO:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    if-eqz v13, :cond_388

    .line 1847
    if-nez v10, :cond_391

    new-instance v4, Lcom/android/emailcommon/mail/Address;

    invoke-direct {v4, v9}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;)V

    :goto_385
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1853
    :cond_388
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_397

    const/4 v2, 0x0

    goto/16 :goto_280

    .line 1847
    :cond_391
    new-instance v4, Lcom/android/emailcommon/mail/Address;

    invoke-direct {v4, v9, v10}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_385

    .line 1856
    :cond_397
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v6, v4, [Lcom/android/emailcommon/mail/Address;

    .line 1857
    const/4 v4, 0x0

    .line 1858
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3a2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/mail/Address;

    .line 1859
    add-int/lit8 v5, v4, 0x1

    aput-object v3, v6, v4

    move v4, v5

    goto :goto_3a2

    .line 1861
    :cond_3b4
    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 1863
    const-string v3, "CLASS"

    const-string v4, "PUBLIC"

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    const-string v4, "STATUS"

    const/16 v3, 0x20

    move/from16 v0, p2

    if-ne v0, v3, :cond_42b

    const-string v3, "CANCELLED"

    :goto_3cb
    invoke-virtual {v2, v4, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    const-string v3, "TRANSP"

    const-string v4, "OPAQUE"

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    const-string v3, "PRIORITY"

    const-string v4, "5"

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    const-string v3, "SEQUENCE"

    invoke-virtual {v2, v3, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    const-string v3, "END"

    const-string v4, "VEVENT"

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    const-string v3, "END"

    const-string v4, "VCALENDAR"

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    new-instance v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 1874
    invoke-virtual {v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->getBytes()[B

    move-result-object v2

    iput-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    .line 1875
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "text/calendar; method="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 1876
    const-string v2, "invite.ics"

    iput-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 1877
    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    array-length v2, v2

    int-to-long v4, v2

    iput-wide v4, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 1879
    const/4 v2, 0x1

    iput v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 1882
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 1883
    iget-object v2, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v8

    .line 1890
    goto/16 :goto_280

    .line 1864
    :cond_42b
    const-string v3, "CONFIRMED"
    :try_end_42d
    .catch Ljava/io/IOException; {:try_start_2a3 .. :try_end_42d} :catch_277

    goto :goto_3cb

    .line 1704
    :catch_42e
    move-exception v11

    goto/16 :goto_2a3

    :cond_431
    move-object v11, v3

    goto/16 :goto_176

    :cond_434
    move-object v5, v3

    move-object v6, v4

    goto/16 :goto_9c

    :cond_438
    move v7, v3

    move-object v3, v5

    goto/16 :goto_68

    .line 1725
    :sswitch_data_43c
    .sparse-switch
        0x10 -> :sswitch_2c8
        0x20 -> :sswitch_2e8
        0x40 -> :sswitch_2d6
        0x80 -> :sswitch_2dc
        0x100 -> :sswitch_2e2
    .end sparse-switch
.end method

.method public static createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;
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
    .line 1913
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method public static createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;
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

    .line 1920
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1921
    .local v0, cr:Landroid/content/ContentResolver;
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

    .line 1925
    .local v7, eventIterator:Landroid/content/EntityIterator;
    :try_start_16
    invoke-interface {v7}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1926
    invoke-interface {v7}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity;

    .local v2, entity:Landroid/content/Entity;
    move-object v1, p0

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1927
    invoke-static/range {v1 .. v6}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_2f

    move-result-object v2

    .line 1931
    .end local v2           #entity:Landroid/content/Entity;
    :cond_2b
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    .line 1933
    return-object v2

    .line 1931
    :catchall_2f
    move-exception v1

    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    throw v1
.end method

.method static findNextTransition(J[Ljava/util/GregorianCalendar;)J
    .registers 10
    .parameter "startingMillis"
    .parameter "transitions"

    .prologue
    .line 670
    move-object v0, p2

    .local v0, arr$:[Ljava/util/GregorianCalendar;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 671
    .local v3, transition:Ljava/util/GregorianCalendar;
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    .line 672
    .local v4, transitionMillis:J
    cmp-long v6, v4, p0

    if-lez v6, :cond_10

    .line 676
    .end local v3           #transition:Ljava/util/GregorianCalendar;
    .end local v4           #transitionMillis:J
    :goto_f
    return-wide v4

    .line 670
    .restart local v3       #transition:Ljava/util/GregorianCalendar;
    .restart local v4       #transitionMillis:J
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 676
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
    .line 337
    move-wide v6, p3

    .line 338
    .local v6, startingEndTime:J
    const/4 v4, 0x0

    .line 341
    .local v4, date:Ljava/util/Date;
    :goto_2
    sub-long v8, p3, p1

    const-wide/32 v10, 0xea60

    cmp-long v8, v8, v10

    if-lez v8, :cond_25

    .line 342
    add-long v8, p1, p3

    const-wide/16 v10, 0x2

    div-long/2addr v8, v10

    const-wide/16 v10, 0x1

    add-long v2, v8, v10

    .line 343
    .local v2, checkTime:J
    new-instance v4, Ljava/util/Date;

    .end local v4           #date:Ljava/util/Date;
    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 344
    .restart local v4       #date:Ljava/util/Date;
    invoke-virtual {p0, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v5

    .line 345
    .local v5, inDaylightTime:Z
    move/from16 v0, p5

    if-eq v5, v0, :cond_23

    .line 346
    move-wide p3, v2

    goto :goto_2

    .line 348
    :cond_23
    move-wide p1, v2

    goto :goto_2

    .line 353
    .end local v2           #checkTime:J
    .end local v5           #inDaylightTime:Z
    :cond_25
    cmp-long v8, p3, v6

    if-nez v8, :cond_2b

    .line 354
    const/4 v1, 0x0

    .line 360
    :goto_2a
    return-object v1

    .line 358
    :cond_2b
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 359
    .local v1, calendar:Ljava/util/GregorianCalendar;
    invoke-virtual {v1, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    goto :goto_2a
.end method

.method static formatTwo(I)Ljava/lang/String;
    .registers 2
    .parameter "num"

    .prologue
    .line 891
    const/16 v0, 0xc

    if-gt p0, v0, :cond_9

    .line 892
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTwoCharacterNumbers:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 894
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
    .line 1058
    const/4 v2, 0x0

    .line 1059
    .local v2, bits:I
    const/4 v1, 0x1

    .line 1060
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

    .line 1062
    .local v5, token:Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_11

    .line 1063
    or-int/2addr v2, v1

    .line 1065
    :cond_11
    shl-int/lit8 v1, v1, 0x1

    .line 1060
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1067
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
    .line 537
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    .line 538
    .local v16, maxYears:I
    move-object/from16 v0, p2

    array-length v2, v0

    move/from16 v0, v16

    if-eq v2, v0, :cond_e

    .line 539
    const/4 v2, 0x0

    .line 569
    :goto_d
    return v2

    .line 542
    :cond_e
    const/4 v15, 0x0

    .local v15, i:I
    :goto_f
    move/from16 v0, v16

    if-ge v15, v0, :cond_6b

    .line 543
    new-instance v1, Ljava/util/GregorianCalendar;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 544
    .local v1, cal:Ljava/util/GregorianCalendar;
    sget v2, Lcom/android/exchange/utility/CalendarUtilities;->sCurrentYear:I

    add-int/2addr v2, v15

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 545
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    .line 547
    .local v3, startTime:J
    const-wide v8, 0x757b12c00L

    add-long/2addr v8, v3

    const-wide/32 v10, 0x1499700

    add-long v5, v8, v10

    .line 548
    .local v5, endOfYearTime:J
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 549
    .local v14, date:Ljava/util/Date;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v7

    .local v7, startInDaylightTime:Z
    move-object/from16 v2, p0

    .line 551
    invoke-static/range {v2 .. v7}, Lcom/android/exchange/utility/CalendarUtilities;->findTransitionDate(Ljava/util/TimeZone;JJZ)Ljava/util/GregorianCalendar;

    move-result-object v1

    .line 552
    if-nez v1, :cond_49

    .line 553
    const/4 v2, 0x0

    goto :goto_d

    .line 554
    :cond_49
    if-eqz v7, :cond_5c

    .line 555
    aput-object v1, p2, v15

    .line 560
    :goto_4d
    if-nez v7, :cond_5f

    const/4 v13, 0x1

    :goto_50
    move-object/from16 v8, p0

    move-wide v9, v3

    move-wide v11, v5

    invoke-static/range {v8 .. v13}, Lcom/android/exchange/utility/CalendarUtilities;->findTransitionDate(Ljava/util/TimeZone;JJZ)Ljava/util/GregorianCalendar;

    move-result-object v1

    .line 561
    if-nez v1, :cond_61

    .line 562
    const/4 v2, 0x0

    goto :goto_d

    .line 557
    :cond_5c
    aput-object v1, p1, v15

    goto :goto_4d

    .line 560
    :cond_5f
    const/4 v13, 0x0

    goto :goto_50

    .line 563
    :cond_61
    if-eqz v7, :cond_68

    .line 564
    aput-object v1, p1, v15

    .line 542
    :goto_65
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    .line 566
    :cond_68
    aput-object v1, p2, v15

    goto :goto_65

    .line 569
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
    .line 1944
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1945
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
    .line 1001
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
    .line 195
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
    .line 315
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 316
    .local v0, testCalendar:Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    sget v2, Lcom/android/exchange/utility/CalendarUtilities;->sCurrentYear:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 317
    const/4 v1, 0x2

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->month:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 318
    const/4 v1, 0x7

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->dayOfWeek:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 319
    const/16 v1, 0x8

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->day:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 320
    const/16 v1, 0xb

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 321
    const/16 v1, 0xc

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 322
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 323
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method static getTimeZoneDateFromSystemTime([BI)Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    .registers 8
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 271
    new-instance v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;

    invoke-direct {v3}, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;-><init>()V

    .line 274
    .local v3, tzd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    add-int/lit8 v4, p1, 0x0

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v2

    .line 275
    .local v2, num:I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->year:Ljava/lang/String;

    .line 279
    add-int/lit8 v4, p1, 0x2

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v2

    .line 280
    if-nez v2, :cond_1b

    .line 281
    const/4 v3, 0x0

    .line 305
    .end local v3           #tzd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    :goto_1a
    return-object v3

    .line 283
    .restart local v3       #tzd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    :cond_1b
    add-int/lit8 v4, v2, -0x1

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->month:I

    .line 287
    add-int/lit8 v4, p1, 0x4

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->dayOfWeek:I

    .line 290
    add-int/lit8 v4, p1, 0x6

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v2

    .line 292
    const/4 v4, 0x5

    if-ne v2, v4, :cond_51

    .line 293
    const/4 v4, -0x1

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->day:I

    .line 299
    :goto_35
    add-int/lit8 v4, p1, 0x8

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v0

    .line 300
    .local v0, hour:I
    iput v0, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->hour:I

    .line 301
    add-int/lit8 v4, p1, 0xa

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v1

    .line 302
    .local v1, minute:I
    iput v1, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->minute:I

    .line 303
    const v4, 0x36ee80

    mul-int/2addr v4, v0

    const v5, 0xea60

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->time:I

    goto :goto_1a

    .line 295
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
    .line 957
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 958
    .local v0, hour:I
    add-int/lit8 v0, v0, 0x1

    .line 959
    const/16 v1, 0x18

    if-ne v0, v1, :cond_d

    .line 960
    const/4 v0, 0x0

    .line 962
    :cond_d
    return v0
.end method

.method static getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I
    .registers 3
    .parameter "calendar"

    .prologue
    .line 943
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 944
    .local v0, minute:I
    const/16 v1, 0x3b

    if-ne v0, v1, :cond_b

    .line 945
    const/4 v0, 0x0

    .line 947
    :cond_b
    return v0
.end method

.method public static getUidFromGlobalObjId(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "globalObjId"

    .prologue
    .line 1389
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1392
    .local v8, sb:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    :try_start_6
    invoke-static {p0, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1393
    .local v4, idBytes:[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 1397
    .local v5, idString:Ljava/lang/String;
    const-string v9, "vCal-Uid"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1398
    .local v6, index:I
    if-lez v6, :cond_24

    .line 1401
    add-int/lit8 v9, v6, 0xc

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1413
    .end local v4           #idBytes:[B
    .end local v5           #idString:Ljava/lang/String;
    .end local v6           #index:I
    .end local p0
    :goto_23
    return-object p0

    .line 1406
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

    .line 1407
    .local v1, b:B
    invoke-static {v8, v1}, Lcom/android/emailcommon/utility/Utility;->byteToHex(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 1406
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 1409
    .end local v1           #b:B
    :cond_31
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_34} :catch_36

    move-result-object p0

    goto :goto_23

    .line 1411
    .end local v0           #arr$:[B
    .end local v3           #i$:I
    .end local v4           #idBytes:[B
    .end local v5           #idString:Ljava/lang/String;
    .end local v6           #index:I
    .end local v7           #len$:I
    :catch_36
    move-exception v2

    .line 1413
    .local v2, e:Ljava/lang/RuntimeException;
    goto :goto_23
.end method

.method public static getUtcAllDayCalendarTime(JLjava/util/TimeZone;)J
    .registers 5
    .parameter "time"
    .parameter "localTimeZone"

    .prologue
    .line 992
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
    .line 209
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
    .line 444
    const/4 v12, 0x0

    aget-object v1, p0, v12

    .line 445
    .local v1, calendar:Ljava/util/GregorianCalendar;
    if-nez v1, :cond_7

    const/4 v12, 0x0

    .line 494
    :goto_6
    return-object v12

    .line 446
    :cond_7
    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    .line 447
    .local v8, month:I
    const/4 v12, 0x5

    invoke-virtual {v1, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 448
    .local v2, date:I
    const/4 v12, 0x7

    invoke-virtual {v1, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 449
    .local v4, dayOfWeek:I
    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v11

    .line 450
    .local v11, week:I
    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v7

    .line 451
    .local v7, maxWeek:I
    const/4 v3, 0x0

    .line 452
    .local v3, dateRule:Z
    const/4 v5, 0x0

    .line 453
    .local v5, dayOfWeekRule:Z
    const/4 v6, 0x1

    .local v6, i:I
    :goto_25
    array-length v12, p0

    if-ge v6, v12, :cond_6c

    .line 454
    aget-object v0, p0, v6

    .line 455
    .local v0, cal:Ljava/util/GregorianCalendar;
    if-nez v0, :cond_2e

    const/4 v12, 0x0

    goto :goto_6

    .line 457
    :cond_2e
    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v12

    if-eq v12, v8, :cond_37

    .line 458
    const/4 v12, 0x0

    goto :goto_6

    .line 459
    :cond_37
    const/4 v12, 0x7

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v12

    if-ne v4, v12, :cond_5d

    .line 461
    if-eqz v3, :cond_42

    .line 462
    const/4 v12, 0x0

    goto :goto_6

    .line 464
    :cond_42
    const/4 v5, 0x1

    .line 465
    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    .line 466
    .local v10, thisWeek:I
    if-eq v11, v10, :cond_58

    .line 467
    if-ltz v11, :cond_4f

    if-ne v11, v7, :cond_5b

    .line 468
    :cond_4f
    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v9

    .line 469
    .local v9, thisMaxWeek:I
    if-ne v10, v9, :cond_5b

    .line 471
    const/4 v11, -0x1

    .line 453
    .end local v9           #thisMaxWeek:I
    .end local v10           #thisWeek:I
    :cond_58
    :goto_58
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 475
    .restart local v10       #thisWeek:I
    :cond_5b
    const/4 v12, 0x0

    goto :goto_6

    .line 477
    .end local v10           #thisWeek:I
    :cond_5d
    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v12

    if-ne v2, v12, :cond_6a

    .line 479
    if-eqz v5, :cond_68

    .line 480
    const/4 v12, 0x0

    goto :goto_6

    .line 482
    :cond_68
    const/4 v3, 0x1

    goto :goto_58

    .line 484
    :cond_6a
    const/4 v12, 0x0

    goto :goto_6

    .line 488
    .end local v0           #cal:Ljava/util/GregorianCalendar;
    :cond_6c
    if-eqz v3, :cond_76

    .line 489
    new-instance v12, Lcom/android/exchange/utility/CalendarUtilities$RRule;

    add-int/lit8 v13, v8, 0x1

    invoke-direct {v12, v13, v2}, Lcom/android/exchange/utility/CalendarUtilities$RRule;-><init>(II)V

    goto :goto_6

    .line 494
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
    .line 901
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
    .line 913
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 914
    .local v1, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 915
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 916
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 917
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    if-eqz p3, :cond_66

    .line 920
    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 921
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    if-ne p2, v2, :cond_66

    .line 925
    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 928
    :cond_66
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
    .line 238
    add-int/lit8 v0, p1, 0x2

    iget v1, p2, Lcom/android/exchange/utility/CalendarUtilities$RRule;->month:I

    invoke-static {p0, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 240
    add-int/lit8 v0, p1, 0x4

    iget v1, p2, Lcom/android/exchange/utility/CalendarUtilities$RRule;->dayOfWeek:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 242
    add-int/lit8 v1, p1, 0x6

    iget v0, p2, Lcom/android/exchange/utility/CalendarUtilities$RRule;->week:I

    if-gez v0, :cond_25

    const/4 v0, 0x5

    :goto_17
    invoke-static {p0, v1, v0}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 244
    add-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 245
    add-int/lit8 v0, p1, 0xa

    invoke-static {p0, v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 246
    return-void

    .line 242
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
    .line 250
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 252
    .local v0, cal:Ljava/util/GregorianCalendar;
    const-wide/16 v2, 0x7530

    add-long/2addr v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 255
    add-int/lit8 v2, p1, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 257
    add-int/lit8 v2, p1, 0x4

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 260
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 262
    .local v1, wom:I
    add-int/lit8 v2, p1, 0x6

    if-gez v1, :cond_32

    const/4 v1, 0x5

    .end local v1           #wom:I
    :cond_32
    invoke-static {p0, v2, v1}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 265
    add-int/lit8 v2, p1, 0x8

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 266
    add-int/lit8 v2, p1, 0xa

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 267
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
    .line 1171
    sget-boolean v7, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v7, :cond_1c

    .line 1172
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

    .line 1174
    :cond_1c
    const-string v7, "FREQ="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1178
    .local v6, freq:Ljava/lang/String;
    if-eqz v6, :cond_3e

    .line 1179
    const-string v7, "DAILY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 1180
    const/16 v7, 0x11b

    invoke-virtual {p3, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1181
    const/16 v7, 0x11c

    const-string v8, "0"

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1182
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1183
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1261
    :cond_3e
    :goto_3e
    return-void

    .line 1184
    :cond_3f
    const-string v7, "WEEKLY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_93

    .line 1185
    const/16 v7, 0x11b

    invoke-virtual {p3, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1186
    const/16 v7, 0x11c

    const-string v8, "1"

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1188
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1189
    const-string v7, "BYDAY="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1190
    .local v0, byDay:Ljava/lang/String;
    if-eqz v0, :cond_76

    .line 1191
    const/16 v7, 0x120

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->generateEasDayOfWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1193
    const-string v7, "-1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 1194
    const/16 v7, 0x122

    const-string v8, "5"

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1202
    :cond_76
    :goto_76
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_3e

    .line 1196
    :cond_7a
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1197
    .local v4, c:C
    const/16 v7, 0x31

    if-lt v4, v7, :cond_76

    const/16 v7, 0x34

    if-gt v4, v7, :cond_76

    .line 1198
    const/16 v7, 0x122

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_76

    .line 1203
    .end local v0           #byDay:Ljava/lang/String;
    .end local v4           #c:C
    :cond_93
    const-string v7, "MONTHLY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_fd

    .line 1204
    const-string v7, "BYMONTHDAY="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1205
    .local v2, byMonthDay:Ljava/lang/String;
    if-eqz v2, :cond_d2

    .line 1206
    const/16 v7, 0x11b

    invoke-virtual {p3, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1208
    const-string v7, "-1"

    if-ne v2, v7, :cond_c2

    .line 1209
    const/16 v7, 0x11c

    const-string v8, "3"

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1210
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1211
    const/16 v7, 0x120

    const-string v8, "127"

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1218
    :goto_bd
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_3e

    .line 1214
    :cond_c2
    const/16 v7, 0x11c

    const-string v8, "2"

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1215
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1216
    const/16 v7, 0x121

    invoke-virtual {p3, v7, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_bd

    .line 1220
    :cond_d2
    const-string v7, "BYDAY="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1221
    .restart local v0       #byDay:Ljava/lang/String;
    const-string v7, "BYSETPOS="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1222
    .local v3, bySetpos:Ljava/lang/String;
    if-eqz v0, :cond_3e

    .line 1223
    const/16 v7, 0x11b

    invoke-virtual {p3, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1224
    const/16 v7, 0x11c

    const-string v8, "3"

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1225
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1226
    if-eqz v3, :cond_f9

    .line 1227
    invoke-static {v0, v3, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addByDaySetpos(Ljava/lang/String;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1231
    :goto_f4
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_3e

    .line 1229
    :cond_f9
    invoke-static {v0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    goto :goto_f4

    .line 1234
    .end local v0           #byDay:Ljava/lang/String;
    .end local v2           #byMonthDay:Ljava/lang/String;
    .end local v3           #bySetpos:Ljava/lang/String;
    :cond_fd
    const-string v7, "YEARLY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 1235
    const-string v7, "BYMONTH="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1236
    .local v1, byMonth:Ljava/lang/String;
    const-string v7, "BYMONTHDAY="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1237
    .restart local v2       #byMonthDay:Ljava/lang/String;
    const-string v7, "BYDAY="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1238
    .restart local v0       #byDay:Ljava/lang/String;
    if-nez v1, :cond_13e

    if-nez v2, :cond_13e

    .line 1240
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-direct {v5}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1241
    .local v5, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v5, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1242
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1243
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1244
    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1246
    .end local v5           #cal:Ljava/util/GregorianCalendar;
    :cond_13e
    if-eqz v1, :cond_3e

    if-nez v2, :cond_144

    if-eqz v0, :cond_3e

    .line 1247
    :cond_144
    const/16 v7, 0x11b

    invoke-virtual {p3, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1248
    const/16 v8, 0x11c

    if-nez v0, :cond_166

    const-string v7, "5"

    :goto_14f
    invoke-virtual {p3, v8, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1249
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1250
    const/16 v7, 0x123

    invoke-virtual {p3, v7, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1252
    if-eqz v2, :cond_169

    .line 1253
    const/16 v7, 0x121

    invoke-virtual {p3, v7, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1257
    :goto_161
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_3e

    .line 1248
    :cond_166
    const-string v7, "6"

    goto :goto_14f

    .line 1255
    :cond_169
    invoke-static {v0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    goto :goto_161
.end method

.method static recurrenceUntilToEasUntil(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "until"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1098
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1100
    .local v0, localCalendar:Ljava/util/GregorianCalendar;
    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1103
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1104
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    const-string v2, "T000000Z"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static rruleFromRecurrence(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "type"
    .parameter "occurrences"
    .parameter "interval"
    .parameter "dow"
    .parameter "dom"
    .parameter "wom"
    .parameter "moy"
    .parameter "until"

    .prologue
    .line 1277
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

    .line 1279
    .local v0, rrule:Ljava/lang/StringBuilder;
    if-lez p1, :cond_34

    .line 1280
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

    .line 1282
    :cond_34
    if-lez p2, :cond_4c

    .line 1283
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

    .line 1287
    :cond_4c
    packed-switch p0, :pswitch_data_f6

    .line 1322
    :cond_4f
    :goto_4f
    :pswitch_4f
    if-eqz p7, :cond_67

    .line 1323
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

    .line 1326
    :cond_67
    sget-boolean v1, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v1, :cond_83

    .line 1327
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created rrule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1290
    :pswitch_88
    if-lez p3, :cond_4f

    invoke-static {v0, p3, p5}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    goto :goto_4f

    .line 1293
    :pswitch_8e
    if-lez p4, :cond_4f

    invoke-static {v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->addByMonthDay(Ljava/lang/StringBuilder;I)V

    goto :goto_4f

    .line 1297
    :pswitch_94
    const/16 v1, 0x7f

    if-ne p3, v1, :cond_9e

    .line 1298
    const-string v1, ";BYMONTHDAY=-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    .line 1300
    :cond_9e
    const/4 v1, 0x5

    if-ne p5, v1, :cond_ad

    const/16 v1, 0x3e

    if-eq p3, v1, :cond_a9

    const/16 v1, 0x41

    if-ne p3, v1, :cond_ad

    .line 1301
    :cond_a9
    invoke-static {v0, p3, p5}, Lcom/android/exchange/utility/CalendarUtilities;->addBySetpos(Ljava/lang/StringBuilder;II)V

    goto :goto_4f

    .line 1302
    :cond_ad
    if-lez p3, :cond_4f

    invoke-static {v0, p3, p5}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    goto :goto_4f

    .line 1305
    :pswitch_b3
    if-lez p4, :cond_b8

    invoke-static {v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->addByMonthDay(Ljava/lang/StringBuilder;I)V

    .line 1306
    :cond_b8
    if-lez p6, :cond_4f

    .line 1307
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

    .line 1311
    :pswitch_d2
    if-lez p3, :cond_d7

    invoke-static {v0, p3, p5}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    .line 1312
    :cond_d7
    if-lez p4, :cond_dc

    invoke-static {v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->addByMonthDay(Ljava/lang/StringBuilder;I)V

    .line 1313
    :cond_dc
    if-lez p6, :cond_4f

    .line 1314
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

    .line 1287
    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_88
        :pswitch_88
        :pswitch_8e
        :pswitch_94
        :pswitch_4f
        :pswitch_b3
        :pswitch_d2
    .end packed-switch
.end method

.method static setLong([BII)V
    .registers 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 201
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 202
    add-int/lit8 p1, v0, 0x1

    .end local v0           #offset:I
    .restart local p1
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 203
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 204
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 205
    return-void
.end method

.method static setWord([BII)V
    .registers 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 214
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 215
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 216
    return-void
.end method

.method public static timeZoneToTziString(Ljava/util/TimeZone;)Ljava/lang/String;
    .registers 6
    .parameter "tz"

    .prologue
    .line 370
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sTziStringCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 371
    .local v0, tziString:Ljava/lang/String;
    if-eqz v0, :cond_32

    .line 372
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_30

    .line 373
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

    .line 380
    .end local v0           #tziString:Ljava/lang/String;
    .local v1, tziString:Ljava/lang/String;
    :goto_31
    return-object v1

    .line 378
    .end local v1           #tziString:Ljava/lang/String;
    .restart local v0       #tziString:Ljava/lang/String;
    :cond_32
    invoke-static {p0}, Lcom/android/exchange/utility/CalendarUtilities;->timeZoneToTziStringImpl(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    .line 379
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sTziStringCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 380
    .end local v0           #tziString:Ljava/lang/String;
    .restart local v1       #tziString:Ljava/lang/String;
    goto :goto_31
.end method

.method static timeZoneToTziStringImpl(Ljava/util/TimeZone;)Ljava/lang/String;
    .registers 22
    .parameter "tz"

    .prologue
    .line 688
    const/16 v18, 0xac

    move/from16 v0, v18

    new-array v15, v0, [B

    .line 689
    .local v15, tziBytes:[B
    invoke-virtual/range {p0 .. p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    move/from16 v0, v18

    neg-int v9, v0

    .line 690
    .local v9, standardBias:I
    const v18, 0xea60

    div-int v9, v9, v18

    .line 691
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v15, v0, v9}, Lcom/android/exchange/utility/CalendarUtilities;->setLong([BII)V

    .line 693
    invoke-virtual/range {p0 .. p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v18

    if-eqz v18, :cond_a2

    .line 694
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v13, v0, [Ljava/util/GregorianCalendar;

    .line 695
    .local v13, toDaylightCalendars:[Ljava/util/GregorianCalendar;
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v14, v0, [Ljava/util/GregorianCalendar;

    .line 698
    .local v14, toStandardCalendars:[Ljava/util/GregorianCalendar;
    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/exchange/utility/CalendarUtilities;->getDSTCalendars(Ljava/util/TimeZone;[Ljava/util/GregorianCalendar;[Ljava/util/GregorianCalendar;)Z

    move-result v18

    if-eqz v18, :cond_8d

    .line 700
    invoke-static {v13}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v3

    .line 701
    .local v3, daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    invoke-static {v14}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v10

    .line 702
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

    .line 706
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

    .line 710
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

    .line 729
    .end local v3           #daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .end local v10           #standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    :cond_8d
    :goto_8d
    invoke-virtual/range {p0 .. p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v6

    .line 730
    .local v6, dstOffset:I
    const/16 v18, 0xa8

    neg-int v0, v6

    move/from16 v19, v0

    const v20, 0xea60

    div-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->setLong([BII)V

    .line 732
    .end local v6           #dstOffset:I
    .end local v13           #toDaylightCalendars:[Ljava/util/GregorianCalendar;
    .end local v14           #toStandardCalendars:[Ljava/util/GregorianCalendar;
    :cond_a2
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v16

    .line 733
    .local v16, tziEncodedBytes:[B
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 734
    .local v17, tziString:Ljava/lang/String;
    return-object v17

    .line 717
    .end local v16           #tziEncodedBytes:[B
    .end local v17           #tziString:Ljava/lang/String;
    .restart local v3       #daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .restart local v10       #standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .restart local v13       #toDaylightCalendars:[Ljava/util/GregorianCalendar;
    .restart local v14       #toStandardCalendars:[Ljava/util/GregorianCalendar;
    :cond_b4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 718
    .local v7, now:J
    invoke-static {v7, v8, v14}, Lcom/android/exchange/utility/CalendarUtilities;->findNextTransition(J[Ljava/util/GregorianCalendar;)J

    move-result-wide v11

    .line 719
    .local v11, standardTransition:J
    invoke-static {v7, v8, v13}, Lcom/android/exchange/utility/CalendarUtilities;->findNextTransition(J[Ljava/util/GregorianCalendar;)J

    move-result-wide v4

    .line 721
    .local v4, daylightTransition:J
    const-wide/16 v18, 0x0

    cmp-long v18, v11, v18

    if-eqz v18, :cond_8d

    const-wide/16 v18, 0x0

    cmp-long v18, v4, v18

    if-eqz v18, :cond_8d

    .line 722
    const/16 v18, 0x44

    move/from16 v0, v18

    invoke-static {v15, v0, v11, v12}, Lcom/android/exchange/utility/CalendarUtilities;->putTransitionMillisIntoSystemTime([BIJ)V

    .line 724
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
    .line 598
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    const v11, 0xea60

    div-int v5, v10, v11

    .line 599
    .local v5, rawOffsetMinutes:I
    invoke-static {v5}, Lcom/android/exchange/utility/CalendarUtilities;->utcOffsetString(I)Ljava/lang/String;

    move-result-object v6

    .line 602
    .local v6, standardOffsetString:Ljava/lang/String;
    const-string v10, "BEGIN"

    const-string v11, "VTIMEZONE"

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v10, "TZID"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v10, "X-LIC-LOCATION"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v10

    if-nez v10, :cond_30

    .line 608
    invoke-static {p1, p0, v6}, Lcom/android/exchange/utility/CalendarUtilities;->writeNoDST(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/TimeZone;Ljava/lang/String;)V

    .line 662
    :goto_2f
    return-void

    .line 612
    :cond_30
    const/4 v4, 0x3

    .line 613
    .local v4, maxYears:I
    new-array v8, v4, [Ljava/util/GregorianCalendar;

    .line 614
    .local v8, toDaylightCalendars:[Ljava/util/GregorianCalendar;
    new-array v9, v4, [Ljava/util/GregorianCalendar;

    .line 615
    .local v9, toStandardCalendars:[Ljava/util/GregorianCalendar;
    invoke-static {p0, v8, v9}, Lcom/android/exchange/utility/CalendarUtilities;->getDSTCalendars(Ljava/util/TimeZone;[Ljava/util/GregorianCalendar;[Ljava/util/GregorianCalendar;)Z

    move-result v10

    if-nez v10, :cond_3f

    .line 616
    invoke-static {p1, p0, v6}, Lcom/android/exchange/utility/CalendarUtilities;->writeNoDST(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/TimeZone;Ljava/lang/String;)V

    goto :goto_2f

    .line 620
    :cond_3f
    invoke-static {v8}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v1

    .line 621
    .local v1, daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    invoke-static {v9}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v7

    .line 622
    .local v7, standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v10

    const v11, 0xea60

    div-int/2addr v10, v11

    add-int/2addr v10, v5

    invoke-static {v10}, Lcom/android/exchange/utility/CalendarUtilities;->utcOffsetString(I)Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, daylightOffsetString:Ljava/lang/String;
    if-eqz v1, :cond_ca

    if-eqz v7, :cond_ca

    const/4 v2, 0x1

    .line 629
    .local v2, hasRule:Z
    :goto_59
    const-string v10, "BEGIN"

    const-string v11, "DAYLIGHT"

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v10, "TZOFFSETFROM"

    invoke-virtual {p1, v10, v6}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v10, "TZOFFSETTO"

    invoke-virtual {p1, v10, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v10, "DTSTART"

    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-static {v11, v12, p0, v13}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    if-eqz v2, :cond_cc

    .line 636
    const-string v10, "RRULE"

    invoke-virtual {v1}, Lcom/android/exchange/utility/CalendarUtilities$RRule;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :cond_86
    const-string v10, "END"

    const-string v11, "DAYLIGHT"

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v10, "BEGIN"

    const-string v11, "STANDARD"

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v10, "TZOFFSETFROM"

    invoke-virtual {p1, v10, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v10, "TZOFFSETTO"

    invoke-virtual {p1, v10, v6}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v10, "DTSTART"

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v11

    const/4 v13, 0x0

    invoke-static {v11, v12, p0, v13}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    if-eqz v2, :cond_e2

    .line 652
    const-string v10, "RRULE"

    invoke-virtual {v7}, Lcom/android/exchange/utility/CalendarUtilities$RRule;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    :cond_ba
    const-string v10, "END"

    const-string v11, "STANDARD"

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v10, "END"

    const-string v11, "VTIMEZONE"

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 626
    .end local v2           #hasRule:Z
    :cond_ca
    const/4 v2, 0x0

    goto :goto_59

    .line 638
    .restart local v2       #hasRule:Z
    :cond_cc
    const/4 v3, 0x1

    .local v3, i:I
    :goto_cd
    if-ge v3, v4, :cond_86

    .line 639
    const-string v10, "RDATE"

    aget-object v11, v8, v3

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-static {v11, v12, p0, v13}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    add-int/lit8 v3, v3, 0x1

    goto :goto_cd

    .line 654
    .end local v3           #i:I
    :cond_e2
    const/4 v3, 0x1

    .restart local v3       #i:I
    :goto_e3
    if-ge v3, v4, :cond_ba

    .line 655
    const-string v10, "RDATE"

    aget-object v11, v9, v3

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-static {v11, v12, p0, v13}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    add-int/lit8 v3, v3, 0x1

    goto :goto_e3
.end method

.method static tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "rrule"
    .parameter "token"

    .prologue
    .line 1077
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1078
    .local v4, start:I
    if-gez v4, :cond_8

    const/4 v5, 0x0

    .line 1087
    :goto_7
    return-object v5

    .line 1079
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1080
    .local v3, len:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 1081
    move v1, v4

    .line 1084
    .local v1, end:I
    :goto_12
    add-int/lit8 v2, v1, 0x1

    .end local v1           #end:I
    .local v2, end:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1085
    .local v0, c:C
    const/16 v5, 0x3b

    if-eq v0, v5, :cond_1e

    if-ne v2, v3, :cond_2b

    .line 1086
    :cond_1e
    if-ne v2, v3, :cond_29

    add-int/lit8 v1, v2, 0x1

    .line 1087
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
    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 974
    .local v1, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 975
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 976
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 977
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 980
    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
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

    .line 1006
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1007
    .local v7, fromCalendar:Ljava/util/GregorianCalendar;
    invoke-virtual {v7, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1008
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1010
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

    .line 1013
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1014
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static tziStringToTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 2
    .parameter "timeZoneString"

    .prologue
    .line 768
    const v0, 0xea60

    invoke-static {p0, v0}, Lcom/android/exchange/utility/CalendarUtilities;->tziStringToTimeZone(Ljava/lang/String;I)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method static tziStringToTimeZone(Ljava/lang/String;I)Ljava/util/TimeZone;
    .registers 6
    .parameter "timeZoneString"
    .parameter "precision"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 746
    sget-object v1, Lcom/android/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    .line 747
    .local v0, timeZone:Ljava/util/TimeZone;
    if-eqz v0, :cond_2b

    .line 748
    sget-boolean v1, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v1, :cond_2a

    .line 749
    const-string v1, "CalendarUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Using cached TimeZone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :cond_2a
    :goto_2a
    return-object v0

    .line 752
    :cond_2b
    invoke-static {p0, p1}, Lcom/android/exchange/utility/CalendarUtilities;->tziStringToTimeZoneImpl(Ljava/lang/String;I)Ljava/util/TimeZone;

    move-result-object v0

    .line 753
    if-nez v0, :cond_4b

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeZone not found using default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 757
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 759
    :cond_4b
    sget-object v1, Lcom/android/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a
.end method

.method static tziStringToTimeZoneImpl(Ljava/lang/String;I)Ljava/util/TimeZone;
    .registers 25
    .parameter "timeZoneString"
    .parameter "precision"

    .prologue
    .line 780
    const/16 v16, 0x0

    .line 782
    .local v16, timeZone:Ljava/util/TimeZone;
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v17

    .line 788
    .local v17, timeZoneBytes:[B
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->getLong([BI)I

    move-result v20

    mul-int/lit8 v20, v20, -0x1

    const v21, 0xea60

    mul-int v5, v20, v21

    .line 792
    .local v5, bias:I
    invoke-static {v5}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v19

    .line 793
    .local v19, zoneIds:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_1bd

    .line 796
    const/16 v20, 0x44

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->getTimeZoneDateFromSystemTime([BI)Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;

    move-result-object v7

    .line 798
    .local v7, dstEnd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    if-nez v7, :cond_a3

    .line 800
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    .line 801
    .local v6, defaultTimeZone:Ljava/util/TimeZone;
    invoke-virtual {v6}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v20

    if-nez v20, :cond_69

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_69

    .line 803
    sget-boolean v20, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v20, :cond_68

    .line 804
    const-string v20, "CalendarUtility"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "TimeZone without DST found to be default: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    .end local v6           #defaultTimeZone:Ljava/util/TimeZone;
    .end local v7           #dstEnd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    :cond_68
    :goto_68
    return-object v6

    .line 812
    .restart local v6       #defaultTimeZone:Ljava/util/TimeZone;
    .restart local v7       #dstEnd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    :cond_69
    move-object/from16 v3, v19

    .local v3, arr$:[Ljava/lang/String;
    array-length v12, v3

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_6d
    if-ge v11, v12, :cond_a1

    aget-object v18, v3, v11

    .line 813
    .local v18, zoneId:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v16

    .line 814
    invoke-virtual/range {v16 .. v16}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v20

    if-nez v20, :cond_9e

    .line 815
    sget-boolean v20, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v20, :cond_9b

    .line 816
    const-string v20, "CalendarUtility"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "TimeZone without DST found by offset: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v16 .. v16}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9b
    move-object/from16 v6, v16

    .line 819
    goto :goto_68

    .line 812
    :cond_9e
    add-int/lit8 v11, v11, 0x1

    goto :goto_6d

    .line 823
    .end local v18           #zoneId:Ljava/lang/String;
    :cond_a1
    const/4 v6, 0x0

    goto :goto_68

    .line 825
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #defaultTimeZone:Ljava/util/TimeZone;
    .end local v11           #i$:I
    .end local v12           #len$:I
    :cond_a3
    const/16 v20, 0x98

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->getTimeZoneDateFromSystemTime([BI)Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;

    move-result-object v10

    .line 828
    .local v10, dstStart:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    const/16 v20, 0xa8

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->getLong([BI)I

    move-result v20

    mul-int/lit8 v20, v20, -0x1

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v8, v0

    .line 833
    .local v8, dstSavings:J
    move-object/from16 v3, v19

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v12, v3

    .restart local v12       #len$:I
    const/4 v11, 0x0

    .restart local v11       #i$:I
    :goto_c5
    if-ge v11, v12, :cond_147

    aget-object v18, v3, v11

    .line 835
    .restart local v18       #zoneId:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v16

    .line 844
    move-object/from16 v0, v16

    invoke-static {v0, v10}, Lcom/android/exchange/utility/CalendarUtilities;->getMillisAtTimeZoneDateTransition(Ljava/util/TimeZone;Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;)J

    move-result-wide v14

    .line 845
    .local v14, millisAtTransition:J
    new-instance v4, Ljava/util/Date;

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v20, v14, v20

    move-wide/from16 v0, v20

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 846
    .local v4, before:Ljava/util/Date;
    new-instance v2, Ljava/util/Date;

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v20, v20, v14

    move-wide/from16 v0, v20

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 847
    .local v2, after:Ljava/util/Date;
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v20

    if-eqz v20, :cond_fa

    .line 833
    :cond_f7
    add-int/lit8 v11, v11, 0x1

    goto :goto_c5

    .line 848
    :cond_fa
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v20

    if-eqz v20, :cond_f7

    .line 851
    move-object/from16 v0, v16

    invoke-static {v0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->getMillisAtTimeZoneDateTransition(Ljava/util/TimeZone;Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;)J

    move-result-wide v14

    .line 854
    new-instance v4, Ljava/util/Date;

    .end local v4           #before:Ljava/util/Date;
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v20, v20, v8

    sub-long v20, v14, v20

    move-wide/from16 v0, v20

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 855
    .restart local v4       #before:Ljava/util/Date;
    new-instance v2, Ljava/util/Date;

    .end local v2           #after:Ljava/util/Date;
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v20, v20, v14

    move-wide/from16 v0, v20

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 856
    .restart local v2       #after:Ljava/util/Date;
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v20

    if-eqz v20, :cond_f7

    .line 857
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v20

    if-nez v20, :cond_f7

    .line 860
    invoke-virtual/range {v16 .. v16}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v8, v20

    if-nez v20, :cond_f7

    move-object/from16 v6, v16

    .line 861
    goto/16 :goto_68

    .line 865
    .end local v2           #after:Ljava/util/Date;
    .end local v4           #before:Ljava/util/Date;
    .end local v14           #millisAtTransition:J
    .end local v18           #zoneId:Ljava/lang/String;
    :cond_147
    const/4 v13, 0x0

    .line 866
    .local v13, lenient:Z
    iget v0, v10, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->hour:I

    move/from16 v20, v0

    iget v0, v7, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->hour:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1b1

    const v20, 0xea60

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_1b1

    .line 867
    const v20, 0xdbba00

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->tziStringToTimeZoneImpl(Ljava/lang/String;I)Ljava/util/TimeZone;

    move-result-object v16

    .line 868
    const/4 v13, 0x1

    .line 872
    :goto_16b
    sget-boolean v20, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v20, :cond_1ad

    .line 873
    const-string v21, "CalendarUtility"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "No TimeZone with correct DST settings; using "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    if-eqz v13, :cond_1ba

    const-string v20, "lenient"

    :goto_184
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, ": "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ad
    move-object/from16 v6, v16

    .line 877
    goto/16 :goto_68

    .line 870
    :cond_1b1
    const/16 v20, 0x0

    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v16

    goto :goto_16b

    .line 873
    :cond_1ba
    const-string v20, "first"

    goto :goto_184

    .line 880
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #dstEnd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    .end local v8           #dstSavings:J
    .end local v10           #dstStart:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #lenient:Z
    :cond_1bd
    const/4 v6, 0x0

    goto/16 :goto_68
.end method

.method static utcOffsetString(I)Ljava/lang/String;
    .registers 7
    .parameter "offsetMinutes"

    .prologue
    const/16 v5, 0x30

    const/16 v4, 0xa

    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 505
    .local v2, sb:Ljava/lang/StringBuilder;
    div-int/lit8 v0, p0, 0x3c

    .line 506
    .local v0, hours:I
    if-gez v0, :cond_2b

    .line 507
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    rsub-int/lit8 v0, v0, 0x0

    .line 512
    :goto_14
    rem-int/lit8 v1, p0, 0x3c

    .line 513
    .local v1, minutes:I
    if-ge v0, v4, :cond_1b

    .line 514
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 516
    :cond_1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 517
    if-ge v1, v4, :cond_23

    .line 518
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    :cond_23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 510
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
    .line 581
    const-string v0, "BEGIN"

    const-string v1, "STANDARD"

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v0, "TZOFFSETFROM"

    invoke-virtual {p0, v0, p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v0, "TZOFFSETTO"

    invoke-virtual {p0, v0, p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v0, "DTSTART"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v0, "END"

    const-string v1, "STANDARD"

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v0, "END"

    const-string v1, "VTIMEZONE"

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    return-void
.end method
