.class public Lcom/android/calendar/util/DateFormat;
.super Ljava/lang/Object;
.source "DateFormat.java"


# static fields
.field private static sIs24Hour:Z

.field private static sIs24HourLocale:Ljava/util/Locale;

.field private static final sLocaleLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 315
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/calendar/util/DateFormat;->sLocaleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 161
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final appendQuotedText(Landroid/text/SpannableStringBuilder;II)I
    .registers 7
    .parameter "s"
    .parameter "i"
    .parameter "len"

    .prologue
    const/16 v3, 0x27

    .line 1301
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_15

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_15

    .line 1303
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1305
    const/4 v1, 0x1

    .line 1367
    :cond_14
    :goto_14
    return v1

    .line 1311
    :cond_15
    const/4 v1, 0x0

    .line 1317
    .local v1, count:I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1319
    add-int/lit8 p2, p2, -0x1

    .line 1323
    :goto_1d
    if-ge p1, p2, :cond_14

    .line 1325
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 1329
    .local v0, c:C
    if-ne v0, v3, :cond_43

    .line 1333
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_3d

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_3d

    .line 1337
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1339
    add-int/lit8 p2, p2, -0x1

    .line 1341
    add-int/lit8 v1, v1, 0x1

    .line 1343
    add-int/lit8 p1, p1, 0x1

    goto :goto_1d

    .line 1349
    :cond_3d
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_14

    .line 1357
    :cond_43
    add-int/lit8 p1, p1, 0x1

    .line 1359
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d
.end method

.method public static final format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "inFormat"
    .parameter "inTimeInMillis"
    .parameter "timezone"

    .prologue
    .line 939
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0, p3}, Lcom/android/calendar/util/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .registers 12
    .parameter "inFormat"
    .parameter "inDate"

    .prologue
    const/16 v8, 0xa

    const/16 v9, 0x9

    .line 1009
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1017
    .local v5, s:Landroid/text/SpannableStringBuilder;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 1021
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-ge v2, v3, :cond_b0

    .line 1027
    const/4 v1, 0x1

    .line 1029
    .local v1, count:I
    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 1033
    .local v0, c:I
    const/16 v7, 0x27

    if-ne v0, v7, :cond_23

    .line 1035
    invoke-static {v5, v2, v3}, Lcom/android/calendar/util/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;II)I

    move-result v1

    .line 1037
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 1021
    :cond_21
    :goto_21
    add-int/2addr v2, v1

    goto :goto_e

    .line 1045
    :cond_23
    :goto_23
    add-int v7, v2, v1

    if-ge v7, v3, :cond_32

    add-int v7, v2, v1

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v0, :cond_32

    .line 1047
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1057
    :cond_32
    sparse-switch v0, :sswitch_data_c0

    .line 1165
    const/4 v4, 0x0

    .line 1173
    .local v4, replacement:Ljava/lang/String;
    :goto_36
    if-eqz v4, :cond_21

    .line 1175
    add-int v7, v2, v1

    invoke-virtual {v5, v2, v7, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1177
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 1181
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    goto :goto_21

    .line 1061
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_46
    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    .line 1063
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 1071
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_4f
    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    .line 1073
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 1079
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_58
    const/4 v7, 0x5

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Lcom/android/calendar/util/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 1081
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 1087
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_62
    const/4 v7, 0x7

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1089
    .local v6, temp:I
    const/4 v7, 0x4

    if-ge v1, v7, :cond_71

    const/16 v7, 0x14

    :goto_6c
    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v4

    .line 1093
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .end local v4           #replacement:Ljava/lang/String;
    :cond_71
    move v7, v8

    .line 1089
    goto :goto_6c

    .line 1099
    .end local v6           #temp:I
    :sswitch_73
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1103
    .restart local v6       #temp:I
    if-nez v6, :cond_7b

    .line 1105
    const/16 v6, 0xc

    .line 1109
    :cond_7b
    invoke-static {v6, v1}, Lcom/android/calendar/util/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 1111
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 1117
    .end local v4           #replacement:Ljava/lang/String;
    .end local v6           #temp:I
    :sswitch_80
    const/16 v7, 0xb

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Lcom/android/calendar/util/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 1119
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 1125
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_8b
    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Lcom/android/calendar/util/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 1127
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 1133
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_96
    invoke-static {p1, v1}, Lcom/android/calendar/util/DateFormat;->getMonthString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    .line 1135
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 1141
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_9b
    const/16 v7, 0xd

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Lcom/android/calendar/util/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 1143
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 1149
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_a6
    invoke-static {p1, v1}, Lcom/android/calendar/util/DateFormat;->getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    .line 1151
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 1157
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_ab
    invoke-static {p1, v1}, Lcom/android/calendar/util/DateFormat;->getYearString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    .line 1159
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 1189
    .end local v0           #c:I
    .end local v1           #count:I
    .end local v4           #replacement:Ljava/lang/String;
    :cond_b0
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_ba

    .line 1191
    new-instance v7, Landroid/text/SpannedString;

    invoke-direct {v7, v5}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 1195
    :goto_b9
    return-object v7

    :cond_ba
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_b9

    .line 1057
    nop

    :sswitch_data_c0
    .sparse-switch
        0x41 -> :sswitch_4f
        0x45 -> :sswitch_62
        0x4d -> :sswitch_96
        0x61 -> :sswitch_46
        0x64 -> :sswitch_58
        0x68 -> :sswitch_73
        0x6b -> :sswitch_80
        0x6d -> :sswitch_8b
        0x73 -> :sswitch_9b
        0x79 -> :sswitch_ab
        0x7a -> :sswitch_a6
    .end sparse-switch
.end method

.method public static final format(Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "inFormat"
    .parameter "inDate"
    .parameter "timezone"

    .prologue
    .line 967
    if-nez p2, :cond_f

    .line 969
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 979
    .local v0, c:Ljava/util/Calendar;
    :goto_7
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 983
    invoke-static {p0, v0}, Lcom/android/calendar/util/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 973
    .end local v0           #c:Ljava/util/Calendar;
    :cond_f
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .restart local v0       #c:Ljava/util/Calendar;
    goto :goto_7
.end method

.method private static final formatZoneOffset(II)Ljava/lang/String;
    .registers 8
    .parameter "offset"
    .parameter "count"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1253
    div-int/lit16 p0, p0, 0x3e8

    .line 1255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1259
    .local v2, tb:Ljava/lang/StringBuilder;
    if-gez p0, :cond_2a

    .line 1261
    const-string v3, "-"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    neg-int p0, p0

    .line 1273
    :goto_11
    div-int/lit16 v0, p0, 0xe10

    .line 1275
    .local v0, hours:I
    rem-int/lit16 v3, p0, 0xe10

    div-int/lit8 v1, v3, 0x3c

    .line 1279
    .local v1, minutes:I
    invoke-static {v0, v5}, Lcom/android/calendar/util/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    invoke-static {v1, v5}, Lcom/android/calendar/util/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1267
    .end local v0           #hours:I
    .end local v1           #minutes:I
    :cond_2a
    const-string v3, "+"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11
.end method

.method private static final getMonthString(Ljava/util/Calendar;I)Ljava/lang/String;
    .registers 4
    .parameter "inDate"
    .parameter "count"

    .prologue
    .line 1203
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1207
    .local v0, month:I
    const/4 v1, 0x4

    if-lt p1, v1, :cond_f

    .line 1209
    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v1

    .line 1219
    :goto_e
    return-object v1

    .line 1211
    :cond_f
    const/4 v1, 0x3

    if-ne p1, v1, :cond_19

    .line 1213
    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 1219
    :cond_19
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1, p1}, Lcom/android/calendar/util/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method

.method private static final getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;
    .registers 7
    .parameter "inDate"
    .parameter "count"

    .prologue
    const/16 v4, 0x10

    const/4 v2, 0x0

    .line 1229
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 1233
    .local v1, tz:Ljava/util/TimeZone;
    const/4 v3, 0x2

    if-ge p1, v3, :cond_1a

    .line 1235
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, p1}, Lcom/android/calendar/util/DateFormat;->formatZoneOffset(II)Ljava/lang/String;

    move-result-object v2

    .line 1243
    :goto_19
    return-object v2

    .line 1241
    :cond_1a
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eqz v3, :cond_26

    const/4 v0, 0x1

    .line 1243
    .local v0, dst:Z
    :goto_21
    invoke-virtual {v1, v0, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    .end local v0           #dst:Z
    :cond_26
    move v0, v2

    .line 1241
    goto :goto_21
.end method

.method private static final getYearString(Ljava/util/Calendar;I)Ljava/lang/String;
    .registers 5
    .parameter "inDate"
    .parameter "count"

    .prologue
    const/4 v2, 0x2

    .line 1291
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1293
    .local v0, year:I
    if-gt p1, v2, :cond_f

    rem-int/lit8 v1, v0, 0x64

    invoke-static {v1, v2}, Lcom/android/calendar/util/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    :goto_e
    return-object v1

    :cond_f
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method

.method public static is24HourFormat(Landroid/content/Context;)Z
    .registers 10
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "time_12_24"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 363
    .local v5, value:Ljava/lang/String;
    if-nez v5, :cond_56

    .line 365
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v1, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 369
    .local v1, locale:Ljava/util/Locale;
    sget-object v7, Lcom/android/calendar/util/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v7

    .line 371
    :try_start_1b
    sget-object v8, Lcom/android/calendar/util/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    if-eqz v8, :cond_2b

    sget-object v8, Lcom/android/calendar/util/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    invoke-virtual {v8, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 373
    sget-boolean v0, Lcom/android/calendar/util/DateFormat;->sIs24Hour:Z

    monitor-exit v7

    .line 427
    .end local v1           #locale:Ljava/util/Locale;
    :goto_2a
    return v0

    .line 377
    .restart local v1       #locale:Ljava/util/Locale;
    :cond_2b
    monitor-exit v7
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_61

    .line 381
    invoke-static {v0, v1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    .line 387
    .local v2, natural:Ljava/text/DateFormat;
    instance-of v7, v2, Ljava/text/SimpleDateFormat;

    if-eqz v7, :cond_67

    move-object v4, v2

    .line 389
    check-cast v4, Ljava/text/SimpleDateFormat;

    .line 391
    .local v4, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, pattern:Ljava/lang/String;
    const/16 v7, 0x48

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_64

    .line 397
    const-string v5, "24"

    .line 413
    .end local v3           #pattern:Ljava/lang/String;
    .end local v4           #sdf:Ljava/text/SimpleDateFormat;
    :goto_45
    sget-object v8, Lcom/android/calendar/util/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 415
    :try_start_48
    sput-object v1, Lcom/android/calendar/util/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    .line 417
    const-string v7, "12"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6a

    move v7, v0

    :goto_53
    sput-boolean v7, Lcom/android/calendar/util/DateFormat;->sIs24Hour:Z

    .line 419
    monitor-exit v8
    :try_end_56
    .catchall {:try_start_48 .. :try_end_56} :catchall_6c

    .line 425
    .end local v1           #locale:Ljava/util/Locale;
    .end local v2           #natural:Ljava/text/DateFormat;
    :cond_56
    if-eqz v5, :cond_6f

    const-string v7, "12"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6f

    .line 427
    .local v0, b24:Z
    :goto_60
    goto :goto_2a

    .line 377
    .end local v0           #b24:Z
    .restart local v1       #locale:Ljava/util/Locale;
    :catchall_61
    move-exception v6

    :try_start_62
    monitor-exit v7
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v6

    .line 401
    .restart local v2       #natural:Ljava/text/DateFormat;
    .restart local v3       #pattern:Ljava/lang/String;
    .restart local v4       #sdf:Ljava/text/SimpleDateFormat;
    :cond_64
    const-string v5, "12"

    goto :goto_45

    .line 407
    .end local v3           #pattern:Ljava/lang/String;
    .end local v4           #sdf:Ljava/text/SimpleDateFormat;
    :cond_67
    const-string v5, "12"

    goto :goto_45

    :cond_6a
    move v7, v6

    .line 417
    goto :goto_53

    .line 419
    :catchall_6c
    move-exception v6

    :try_start_6d
    monitor-exit v8
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v6

    .end local v1           #locale:Ljava/util/Locale;
    .end local v2           #natural:Ljava/text/DateFormat;
    :cond_6f
    move v0, v6

    .line 425
    goto :goto_60
.end method

.method private static final zeroPad(II)Ljava/lang/String;
    .registers 8
    .parameter "inValue"
    .parameter "inMinDigits"

    .prologue
    .line 1375
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1379
    .local v2, val:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, p1, :cond_29

    .line 1381
    new-array v0, p1, [C

    .line 1385
    .local v0, buf:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, p1, :cond_16

    .line 1387
    const/16 v3, 0x30

    aput-char v3, v0, v1

    .line 1385
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1391
    :cond_16
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {v2, v3, v4, v0, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 1393
    new-instance v2, Ljava/lang/String;

    .end local v2           #val:Ljava/lang/String;
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    .line 1397
    .end local v0           #buf:[C
    .end local v1           #i:I
    .restart local v2       #val:Ljava/lang/String;
    :cond_29
    return-object v2
.end method
