.class public Lcom/android/email/ViewPatternMatching;
.super Ljava/lang/Object;
.source "ViewPatternMatching.java"


# static fields
.field private static final OWN_WEB_URL:Ljava/util/regex/Pattern;

.field private static final WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

.field private static enablePatternCalendar:Z

.field private static enablePatternCalendarKeyword:Z

.field private static enablePatternLocation:Z

.field private static enablePatternPhone:Z

.field private static mCurrentPos:I


# instance fields
.field private final PATTERN_MATCHING_TIMEOUT:I

.field private mContext:Landroid/content/Context;

.field private mTimeOfMessage:J

.field final nDatePostLen:I

.field final nMatchingPostPos:I

.field final nTimePostLen:I

.field private nTimeout:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 37
    sput-boolean v0, Lcom/android/email/ViewPatternMatching;->enablePatternPhone:Z

    .line 38
    sput-boolean v0, Lcom/android/email/ViewPatternMatching;->enablePatternCalendar:Z

    .line 39
    sput-boolean v1, Lcom/android/email/ViewPatternMatching;->enablePatternLocation:Z

    .line 40
    sput-boolean v0, Lcom/android/email/ViewPatternMatching;->enablePatternCalendarKeyword:Z

    .line 45
    sput v1, Lcom/android/email/ViewPatternMatching;->mCurrentPos:I

    .line 49
    const-string v0, "(?i)http|https|rtsp://"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/ViewPatternMatching;->WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

    .line 78
    const-string v0, "(?:(?:(?:http|https|Http|Https|rtsp|Rtsp):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?(?:(?:(?:[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnoruvxyz])|d[ejkmoz]|(?:edu|e[cegrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:org|om)|(?:pro|p[aefghklmnrstwy])|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agksyz]|v[aceginu]|w[fs]|(?:\u03b4\u03bf\u03ba\u03b9\u03bc\u03ae|\u0438\u0441\u043f\u044b\u0442\u0430\u043d\u0438\u0435|\u0440\u0444|\u0441\u0440\u0431|\u05d8\u05e2\u05e1\u05d8|\u0622\u0632\u0645\u0627\u06cc\u0634\u06cc|\u0625\u062e\u062a\u0628\u0627\u0631|\u0627\u0644\u0627\u0631\u062f\u0646|\u0627\u0644\u062c\u0632\u0627\u0626\u0631|\u0627\u0644\u0633\u0639\u0648\u062f\u064a\u0629|\u0627\u0644\u0645\u063a\u0631\u0628|\u0627\u0645\u0627\u0631\u0627\u062a|\u0628\u06be\u0627\u0631\u062a|\u062a\u0648\u0646\u0633|\u0633\u0648\u0631\u064a\u0629|\u0641\u0644\u0633\u0637\u064a\u0646|\u0642\u0637\u0631|\u0645\u0635\u0631|\u092a\u0930\u0940\u0915\u094d\u0937\u093e|\u092d\u093e\u0930\u0924|\u09ad\u09be\u09b0\u09a4|\u0a2d\u0a3e\u0a30\u0a24|\u0aad\u0abe\u0ab0\u0aa4|\u0b87\u0ba8\u0bcd\u0ba4\u0bbf\u0baf\u0bbe|\u0b87\u0bb2\u0b99\u0bcd\u0b95\u0bc8|\u0b9a\u0bbf\u0b99\u0bcd\u0b95\u0baa\u0bcd\u0baa\u0bc2\u0bb0\u0bcd|\u0baa\u0bb0\u0bbf\u0b9f\u0bcd\u0b9a\u0bc8|\u0c2d\u0c3e\u0c30\u0c24\u0c4d|\u0dbd\u0d82\u0d9a\u0dcf|\u0e44\u0e17\u0e22|\u30c6\u30b9\u30c8|\u4e2d\u56fd|\u4e2d\u570b|\u53f0\u6e7e|\u53f0\u7063|\u65b0\u52a0\u5761|\u6d4b\u8bd5|\u6e2c\u8a66|\u9999\u6e2f|\ud14c\uc2a4\ud2b8|\ud55c\uad6d|xn\\-\\-0zwm56d|xn\\-\\-11b5bs3a9aj6g|xn\\-\\-3e0b707e|xn\\-\\-45brj9c|xn\\-\\-80akhbyknj4f|xn\\-\\-90a3ac|xn\\-\\-9t4b11yi5a|xn\\-\\-clchc0ea0b2g2a9gcd|xn\\-\\-deba0ad|xn\\-\\-fiqs8s|xn\\-\\-fiqz9s|xn\\-\\-fpcrj9c3d|xn\\-\\-fzc2c9e2c|xn\\-\\-g6w251d|xn\\-\\-gecrj9c|xn\\-\\-h2brj9c|xn\\-\\-hgbk6aj7f53bba|xn\\-\\-hlcj6aya9esc7a|xn\\-\\-j6w193g|xn\\-\\-jxalpdlp|xn\\-\\-kgbechtv|xn\\-\\-kprw13d|xn\\-\\-kpry57d|xn\\-\\-lgbbat1ad8j|xn\\-\\-mgbaam7a8h|xn\\-\\-mgbayh7gpa|xn\\-\\-mgbbh1a71e|xn\\-\\-mgbc0a9azcg|xn\\-\\-mgberp4a5d4ar|xn\\-\\-o3cw4h|xn\\-\\-ogbpf8fl|xn\\-\\-p1ai|xn\\-\\-pgbs0dh|xn\\-\\-s9brj9c|xn\\-\\-wgbh1c|xn\\-\\-wgbl6a|xn\\-\\-xkc2al3hye2a|xn\\-\\-xkc2dl3a5ee0h|xn\\-\\-yfro4i67o|xn\\-\\-ygbi2ammx|xn\\-\\-zckzah|xxx)|y[et]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)(?:[\\/\\?](?:(?:[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/ViewPatternMatching;->OWN_WEB_URL:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v0, 0xfa0

    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/android/email/ViewPatternMatching;->PATTERN_MATCHING_TIMEOUT:I

    .line 32
    iput v0, p0, Lcom/android/email/ViewPatternMatching;->nTimeout:I

    .line 33
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/email/ViewPatternMatching;->nDatePostLen:I

    .line 34
    const/16 v0, 0x12

    iput v0, p0, Lcom/android/email/ViewPatternMatching;->nTimePostLen:I

    .line 35
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/email/ViewPatternMatching;->nMatchingPostPos:I

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/ViewPatternMatching;->mTimeOfMessage:J

    return-void
.end method

.method private calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .parameter "tempinfo"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1478
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v5

    const-string v2, ""

    aput-object v2, v1, v4

    .line 1481
    .local v1, outResult:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1483
    .local v0, mHasDateInfo:Z
    invoke-direct {p0, p1}, Lcom/android/email/ViewPatternMatching;->convertStandardRemoveDayofWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1484
    invoke-direct {p0, p1}, Lcom/android/email/ViewPatternMatching;->convertLocalDateToTime(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1485
    aget-object p1, v1, v5

    .line 1486
    aget-object v2, v1, v4

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1487
    const/4 v0, 0x1

    .line 1488
    :cond_23
    invoke-direct {p0, p1}, Lcom/android/email/ViewPatternMatching;->convertStandardDateToTime(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1489
    aget-object p1, v1, v5

    .line 1490
    aget-object v2, v1, v4

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1491
    const/4 v0, 0x1

    .line 1492
    :cond_34
    const-string v2, ","

    const-string v3, " "

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1493
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 1494
    if-eqz v0, :cond_49

    .line 1495
    const-string v2, "true"

    aput-object v2, v1, v4

    .line 1498
    :goto_48
    return-object v1

    .line 1497
    :cond_49
    const-string v2, "false"

    aput-object v2, v1, v4

    goto :goto_48
.end method

.method private calnendarGetTime(Ljava/lang/String;J)J
    .registers 13
    .parameter
    .parameter

    .prologue
    .line 1503
    .line 1504
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "false"

    aput-object v2, v0, v1

    .line 1507
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1510
    const/4 v1, -0x1

    .line 1511
    const/4 v0, 0x0

    :goto_15
    array-length v2, v4

    if-ge v0, v2, :cond_196

    .line 1512
    const-string v2, "MessageView P-matching>>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calnendarGetTime:schinfo["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    aget-object v2, v4, v0

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 1515
    :try_start_46
    aget-object v2, v4, v0

    .line 1516
    const-string v3, "am"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 1518
    const-string v3, "am"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1519
    const/4 v1, 0x1

    .line 1521
    :cond_59
    const-string v3, "pm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 1522
    const-string v3, "pm"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1523
    const/4 v1, 0x2

    .line 1525
    :cond_6a
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1527
    const/4 v2, 0x0

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v6, 0x3c

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    add-long/2addr p2, v2

    .line 1530
    const/4 v2, 0x0

    .line 1531
    array-length v3, v5

    const/4 v6, 0x1

    if-le v3, v6, :cond_89

    .line 1532
    const/4 v2, 0x1

    aget-object v2, v5, v2

    .line 1535
    :cond_89
    add-int/lit8 v3, v0, 0x1

    array-length v6, v4

    if-ge v3, v6, :cond_9b

    .line 1536
    add-int/lit8 v3, v0, 0x1

    aget-object v3, v4, v3

    const-string v6, "pm"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 1537
    const/4 v1, 0x2

    .line 1539
    :cond_9b
    if-eqz v2, :cond_1a6

    .line 1540
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_a0} :catch_c2

    move-result-wide v2

    const-wide/16 v6, 0x3c

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    add-long/2addr v2, p2

    .line 1542
    :goto_a8
    const/4 v6, 0x0

    :try_start_a9
    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ae} :catch_1a1

    move-result-wide v5

    const-wide/16 v7, 0xc

    cmp-long v5, v5, v7

    if-gez v5, :cond_bd

    const/4 v5, 0x2

    if-ne v1, v5, :cond_bd

    .line 1543
    const-wide/32 v5, 0x2932e00

    add-long/2addr v2, v5

    .line 1544
    const/4 v1, 0x2

    :cond_bd
    :goto_bd
    move-wide p2, v2

    .line 1511
    :cond_be
    :goto_be
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_15

    .line 1546
    :catch_c2
    move-exception v2

    move-wide v2, p2

    .line 1547
    :goto_c4
    const-string v5, "MessageView P-matching>>"

    const-string v6, "calnendarGetTime: #3 timeinfo \'>>:\' parse err!!!!!!!!!!!!!!!!"

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bd

    .line 1555
    :cond_cc
    const-string v2, "MessageView P-matching>>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calnendarGetTime: calc tonight keyword info :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    :try_start_e8
    aget-object v2, v4, v0

    const-string v3, "am"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_117

    .line 1560
    aget-object v2, v4, v0

    const-string v3, "am"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1561
    const/4 v1, 0x1

    .line 1563
    const-string v3, ""

    if-eq v2, v3, :cond_be

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    if-lt v3, v5, :cond_be

    .line 1565
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v5, 0x3c

    mul-long/2addr v2, v5

    const-wide/16 v5, 0x3c

    mul-long/2addr v2, v5

    const-wide/16 v5, 0x3e8

    mul-long/2addr v2, v5

    add-long/2addr p2, v2

    .line 1569
    goto :goto_be

    .line 1571
    :cond_117
    aget-object v2, v4, v0

    const-string v3, "pm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_158

    .line 1573
    aget-object v2, v4, v0

    const-string v3, "pm"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_12a} :catch_18c

    move-result-object v5

    .line 1574
    const/4 v3, 0x2

    .line 1576
    :try_start_12c
    const-string v1, ""

    if-eq v5, v1, :cond_137

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_139

    :cond_137
    move v1, v3

    .line 1577
    goto :goto_be

    .line 1578
    :cond_139
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_13c} :catch_197

    move-result-wide v1

    const-wide/16 v6, 0x3c

    mul-long/2addr v1, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v1, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v1, v6

    add-long/2addr v1, p2

    .line 1579
    :try_start_147
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_14a} :catch_19a

    move-result-wide v5

    long-to-int v5, v5

    .line 1580
    const/16 v6, 0xc

    if-ge v5, v6, :cond_154

    .line 1581
    const-wide/32 v5, 0x2932e00

    add-long/2addr v1, v5

    :cond_154
    move-wide p2, v1

    move v1, v3

    .line 1586
    goto/16 :goto_be

    .line 1587
    :cond_158
    add-int/lit8 v2, v0, 0x1

    :try_start_15a
    array-length v3, v4

    if-ge v2, v3, :cond_1a4

    .line 1589
    aget-object v2, v4, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_162} :catch_18c

    move-result-wide v2

    const-wide/16 v5, 0x3c

    mul-long/2addr v2, v5

    const-wide/16 v5, 0x3c

    mul-long/2addr v2, v5

    const-wide/16 v5, 0x3e8

    mul-long/2addr v2, v5

    add-long/2addr v2, p2

    .line 1590
    add-int/lit8 v5, v0, 0x1

    :try_start_16f
    aget-object v5, v4, v5

    const-string v6, "pm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_189

    .line 1591
    const/4 v1, 0x2

    .line 1592
    aget-object v5, v4, v0

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_17f} :catch_19e

    move-result-wide v5

    long-to-int v5, v5

    .line 1593
    const/16 v6, 0xc

    if-ge v5, v6, :cond_189

    .line 1594
    const-wide/32 v5, 0x2932e00

    add-long/2addr v2, v5

    :cond_189
    :goto_189
    move-wide p2, v2

    .line 1600
    goto/16 :goto_be

    .line 1598
    :catch_18c
    move-exception v2

    .line 1599
    :goto_18d
    const-string v2, "MessageView P-matching>>"

    const-string v3, "calnendarGetTime: #4 timeinfo \':>>\' parse err!!!!!!!!!!!!!!!!"

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_be

    .line 1603
    :cond_196
    return-wide p2

    .line 1598
    :catch_197
    move-exception v1

    move v1, v3

    goto :goto_18d

    :catch_19a
    move-exception v5

    move-wide p2, v1

    move v1, v3

    goto :goto_18d

    :catch_19e
    move-exception v5

    move-wide p2, v2

    goto :goto_18d

    .line 1546
    :catch_1a1
    move-exception v5

    goto/16 :goto_c4

    :cond_1a4
    move-wide v2, p2

    goto :goto_189

    :cond_1a6
    move-wide v2, p2

    goto/16 :goto_a8
.end method

.method private convertDateReplace(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "inputText"
    .parameter "nType"
    .parameter "inputSeper1"
    .parameter "inputSeper2"

    .prologue
    const/16 v10, 0xc

    const/4 v8, 0x2

    const/4 v9, 0x1

    .line 947
    move-object v2, p1

    .line 950
    .local v2, result:Ljava/lang/String;
    const-string v3, ""

    .line 951
    .local v3, strFirst:Ljava/lang/String;
    const-string v4, ""

    .line 952
    .local v4, strSec:Ljava/lang/String;
    const-string v5, ""

    .line 953
    .local v5, strThr:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x0

    .local v1, nCnt:I
    :goto_d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_68

    .line 954
    const/16 v6, 0x2f

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_20

    .line 955
    add-int/lit8 v1, v1, 0x1

    .line 953
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 958
    :cond_20
    if-nez v1, :cond_38

    .line 959
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    .line 960
    :cond_38
    if-ne v1, v9, :cond_50

    .line 961
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1d

    .line 962
    :cond_50
    if-ne v1, v8, :cond_68

    .line 963
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1d

    .line 967
    :cond_68
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v9, :cond_81

    .line 968
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 969
    :cond_81
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v9, :cond_9a

    .line 970
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 971
    :cond_9a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v9, :cond_b3

    .line 972
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 974
    :cond_b3
    if-ne p2, v9, :cond_13b

    .line 976
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v0, v6

    .line 977
    const-string v6, "MessageView P-matching>>"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CALENDAR1: matchedText = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    if-lt v0, v9, :cond_d6

    if-le v0, v10, :cond_11d

    .line 979
    :cond_d6
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v1, v6

    .line 980
    if-lt v1, v9, :cond_df

    if-le v1, v10, :cond_ff

    .line 981
    :cond_df
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "01"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 994
    :goto_fe
    return-object v2

    .line 983
    :cond_ff
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_fe

    .line 985
    :cond_11d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_fe

    .line 986
    :cond_13b
    if-ne p2, v8, :cond_15b

    .line 988
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_fe

    .line 991
    :cond_15b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_fe
.end method

.method private convertKeywordToDateTime(Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 43
    .parameter "info"
    .parameter "mHasDateInfo"

    .prologue
    .line 998
    const/4 v3, 0x7

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v39, v0

    const/4 v3, 0x0

    const-string v4, "(su\\w+)"

    aput-object v4, v39, v3

    const/4 v3, 0x1

    const-string v4, "(mo\\w+)"

    aput-object v4, v39, v3

    const/4 v3, 0x2

    const-string v4, "(tu\\w+)"

    aput-object v4, v39, v3

    const/4 v3, 0x3

    const-string v4, "(we\\w+)"

    aput-object v4, v39, v3

    const/4 v3, 0x4

    const-string v4, "(th\\w+)"

    aput-object v4, v39, v3

    const/4 v3, 0x5

    const-string v4, "(fr\\w+)"

    aput-object v4, v39, v3

    const/4 v3, 0x6

    const-string v4, "(sa\\w+)"

    aput-object v4, v39, v3

    .line 1001
    .local v39, strUsWeekend:[Ljava/lang/String;
    const/4 v3, 0x6

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/4 v3, 0x0

    const-string v4, "(dawn)"

    aput-object v4, v38, v3

    const/4 v3, 0x1

    const-string v4, "(mor\\w+)"

    aput-object v4, v38, v3

    const/4 v3, 0x2

    const-string v4, "(mor\\w+)"

    aput-object v4, v38, v3

    const/4 v3, 0x3

    const-string v4, "(\\w+noon)"

    aput-object v4, v38, v3

    const/4 v3, 0x4

    const-string v4, "(eve\\w+)"

    aput-object v4, v38, v3

    const/4 v3, 0x5

    const-string v4, "(nig\\w+)"

    aput-object v4, v38, v3

    .line 1004
    .local v38, strUSMoment:[Ljava/lang/String;
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v37, v0

    const/4 v3, 0x0

    const-string v4, "(tod\\w+)"

    aput-object v4, v37, v3

    const/4 v3, 0x1

    const-string v4, "(tom\\w+)"

    aput-object v4, v37, v3

    const/4 v3, 0x2

    const-string v4, "(ton\\w+)"

    aput-object v4, v37, v3

    .line 1008
    .local v37, strUSKeyword:[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, bFind:Z
    const/4 v12, 0x0

    .line 1009
    .local v12, bFind2:Z
    const/4 v10, 0x1

    .line 1015
    .local v10, bAm:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    const v4, 0x7f08001a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1016
    .local v28, strLocalKeywordT1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    const v4, 0x7f08001b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1017
    .local v29, strLocalKeywordT2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    const v4, 0x7f08001c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1019
    .local v30, strLocalKeywordT3:Ljava/lang/String;
    move-object/from16 v26, p1

    .line 1020
    .local v26, result:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v25, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v25, v3

    .line 1023
    .local v25, outResult:[Ljava/lang/String;
    const/16 v34, 0x0

    .line 1024
    .local v34, strOutMon:Ljava/lang/String;
    const/16 v35, 0x0

    .line 1025
    .local v35, strPattern:Ljava/lang/String;
    const/16 v18, 0x0

    .line 1026
    .local v18, matchedText:Ljava/lang/String;
    const/16 v36, 0x0

    .line 1027
    .local v36, strToday:Ljava/lang/String;
    const/16 v27, 0x0

    .line 1030
    .local v27, strAllDay:Ljava/lang/String;
    const-wide/16 v22, 0x0

    .local v22, nMonth:J
    const-wide/16 v20, 0x0

    .line 1031
    .local v20, nDay:J
    const/16 v19, 0x0

    .local v19, nCnt:I
    const/4 v14, 0x1

    .line 1032
    .local v14, day_of_week:I
    const/4 v9, 0x0

    .local v9, addDay:I
    const/16 v24, 0x0

    .line 1033
    .local v24, nTomorrow:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1038
    .local v2, cal:Ljava/util/Calendar;
    :try_start_ac
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/ViewPatternMatching;->mTimeOfMessage:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2d8

    .line 1039
    new-instance v13, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/ViewPatternMatching;->mTimeOfMessage:J

    invoke-direct {v13, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 1040
    .local v13, date:Ljava/util/Date;
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_c6} :catch_2fb

    .line 1055
    .end local v13           #date:Ljava/util/Date;
    :goto_c6
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1057
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 1059
    const-string v3, "|\\."

    const-string v4, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    .line 1062
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v32, v0

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v32, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v32, v3

    .line 1065
    .local v32, strLocalWeekend:[Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v31, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v31, v3

    .line 1068
    .local v31, strLocalMoment:[Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v33, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v33, v3

    .line 1072
    .local v33, strLocalkeyword:[Ljava/lang/String;
    :try_start_10b
    const-string v3, "z/z"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31f

    .line 1073
    move-object/from16 v33, v37

    .line 1078
    :goto_117
    const-string v3, "z/z"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_333

    .line 1079
    move-object/from16 v31, v38

    .line 1084
    :goto_123
    const-string v3, "z/z"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_12a} :catch_3b1

    move-result v3

    if-eqz v3, :cond_347

    .line 1085
    move-object/from16 v32, v39

    .line 1097
    :goto_12f
    const-string v3, "."

    const-string v4, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    .line 1098
    const-string v3, ","

    const-string v4, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    .line 1099
    const-string v3, "  "

    const-string v4, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    .line 1100
    const-string v27, "false"

    .line 1102
    const/16 v16, 0x0

    .local v16, i:I
    :goto_151
    const/4 v3, 0x3

    move/from16 v0, v16

    if-ge v0, v3, :cond_1ab

    .line 1103
    :try_start_156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(?i)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v37, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v33, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1107
    invoke-static/range {v35 .. v35}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 1108
    .local v17, mMatKeyword:Ljava/util/regex/Matcher;
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_35b

    .line 1109
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v18

    .line 1110
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_192

    .line 1111
    const/16 v24, 0x1

    .line 1113
    :cond_192
    const-string v3, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    .line 1114
    const/4 v3, 0x2

    move/from16 v0, v16

    if-eq v0, v3, :cond_1a3

    .line 1115
    const-string v27, "true"

    .line 1116
    :cond_1a3
    const/4 v3, 0x2

    move/from16 v0, v16

    if-ne v0, v3, :cond_1aa

    .line 1117
    const-string v27, "special"
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_1aa} :catch_37c

    .line 1118
    :cond_1aa
    const/4 v11, 0x1

    .line 1126
    .end local v17           #mMatKeyword:Ljava/util/regex/Matcher;
    :cond_1ab
    const/16 v16, 0x6

    :goto_1ad
    const/4 v3, -0x1

    move/from16 v0, v16

    if-le v0, v3, :cond_1fb

    .line 1127
    :try_start_1b2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(?i)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v39, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v32, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1128
    invoke-static/range {v35 .. v35}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 1131
    .restart local v17       #mMatKeyword:Ljava/util/regex/Matcher;
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_36e

    .line 1132
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v18

    .line 1133
    add-int/lit8 v3, v16, 0x1

    if-ge v14, v3, :cond_35f

    .line 1134
    add-int/lit8 v3, v16, 0x1

    sub-int v9, v3, v14

    .line 1139
    :goto_1ef
    const-string v3, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1f8
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_1f8} :catch_372

    move-result-object v26

    .line 1145
    const/4 v12, 0x1

    .line 1146
    const/4 v11, 0x1

    .line 1155
    .end local v17           #mMatKeyword:Ljava/util/regex/Matcher;
    :cond_1fb
    :goto_1fb
    const/16 v16, 0x0

    :goto_1fd
    const/4 v3, 0x6

    move/from16 v0, v16

    if-ge v0, v3, :cond_24e

    .line 1156
    :try_start_202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(?i)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v38, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v31, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1160
    invoke-static/range {v35 .. v35}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 1161
    .restart local v17       #mMatKeyword:Ljava/util/regex/Matcher;
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3a3

    .line 1162
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->end()I

    move-result v19

    .line 1163
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v18

    .line 1167
    const/4 v3, 0x3

    move/from16 v0, v16

    if-ge v0, v3, :cond_386

    .line 1168
    const/4 v10, 0x1

    .line 1171
    :goto_241
    if-eqz v10, :cond_389

    .line 1172
    const-string v3, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    .line 1180
    :goto_24d
    const/4 v11, 0x1

    .line 1186
    .end local v17           #mMatKeyword:Ljava/util/regex/Matcher;
    :cond_24e
    if-nez p2, :cond_291

    .line 1187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v9

    add-int v4, v4, v24

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1191
    :cond_291
    const-string v3, "  "

    const-string v4, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_29a
    .catch Ljava/lang/Exception; {:try_start_202 .. :try_end_29a} :catch_37c

    move-result-object v26

    .line 1195
    :goto_29b
    if-nez v11, :cond_29f

    if-nez p2, :cond_3a7

    .line 1196
    :cond_29f
    const/4 v3, 0x0

    aput-object v26, v25, v3

    .line 1197
    const/4 v3, 0x1

    aput-object v27, v25, v3

    .line 1202
    :goto_2a5
    const-string v3, "MessageView P-matching>>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertKeywordToDateTime: convertKeywordToDate, out(DMY) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",rst="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",allday"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    return-object v25

    .line 1045
    .end local v16           #i:I
    .end local v31           #strLocalMoment:[Ljava/lang/String;
    .end local v32           #strLocalWeekend:[Ljava/lang/String;
    .end local v33           #strLocalkeyword:[Ljava/lang/String;
    :cond_2d8
    :try_start_2d8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V
    :try_end_2f9
    .catch Ljava/lang/Exception; {:try_start_2d8 .. :try_end_2f9} :catch_2fb

    goto/16 :goto_c6

    .line 1050
    :catch_2fb
    move-exception v15

    .line 1051
    .local v15, e:Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    goto/16 :goto_c6

    .line 1075
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v31       #strLocalMoment:[Ljava/lang/String;
    .restart local v32       #strLocalWeekend:[Ljava/lang/String;
    .restart local v33       #strLocalkeyword:[Ljava/lang/String;
    :cond_31f
    :try_start_31f
    const-string v3, "|"

    const-string v4, " "

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v30

    .line 1076
    const-string v3, " "

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_117

    .line 1081
    :cond_333
    const-string v3, "|"

    const-string v4, " "

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    .line 1082
    const-string v3, " "

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_123

    .line 1087
    :cond_347
    const-string v3, "|"

    const-string v4, " "

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    .line 1088
    const-string v3, " "

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_358
    .catch Ljava/lang/Exception; {:try_start_31f .. :try_end_358} :catch_3b1

    move-result-object v32

    goto/16 :goto_12f

    .line 1102
    .restart local v16       #i:I
    .restart local v17       #mMatKeyword:Ljava/util/regex/Matcher;
    :cond_35b
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_151

    .line 1135
    :cond_35f
    add-int/lit8 v3, v16, 0x1

    if-le v14, v3, :cond_36b

    .line 1136
    add-int/lit8 v3, v16, 0x7

    add-int/lit8 v3, v3, 0x1

    sub-int v9, v3, v14

    goto/16 :goto_1ef

    .line 1138
    :cond_36b
    const/4 v9, 0x0

    goto/16 :goto_1ef

    .line 1126
    :cond_36e
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_1ad

    .line 1150
    .end local v17           #mMatKeyword:Ljava/util/regex/Matcher;
    :catch_372
    move-exception v15

    .line 1151
    .restart local v15       #e:Ljava/lang/Exception;
    :try_start_373
    const-string v3, "MessageView P-matching>>"

    const-string v4, "convertKeywordToDateTime: parse error - index ?"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37a
    .catch Ljava/lang/Exception; {:try_start_373 .. :try_end_37a} :catch_37c

    goto/16 :goto_1fb

    .line 1192
    .end local v15           #e:Ljava/lang/Exception;
    :catch_37c
    move-exception v15

    .line 1193
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v3, "MessageView P-matching>>"

    const-string v4, "convertKeywordToDateTime: parse error"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29b

    .line 1170
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v17       #mMatKeyword:Ljava/util/regex/Matcher;
    :cond_386
    const/4 v10, 0x0

    goto/16 :goto_241

    .line 1173
    :cond_389
    if-eqz v12, :cond_397

    .line 1174
    :try_start_38b
    const-string v3, "pm"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_24d

    .line 1176
    :cond_397
    const-string v3, "pm"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_3a0
    .catch Ljava/lang/Exception; {:try_start_38b .. :try_end_3a0} :catch_37c

    move-result-object v26

    goto/16 :goto_24d

    .line 1155
    :cond_3a3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1fd

    .line 1199
    .end local v17           #mMatKeyword:Ljava/util/regex/Matcher;
    :cond_3a7
    const/4 v3, 0x0

    aput-object p1, v25, v3

    .line 1200
    const/4 v3, 0x1

    const-string v4, "false"

    aput-object v4, v25, v3

    goto/16 :goto_2a5

    .line 1090
    .end local v16           #i:I
    :catch_3b1
    move-exception v3

    goto/16 :goto_12f
.end method

.method private convertLocalDateToTime(Ljava/lang/String;)[Ljava/lang/String;
    .registers 22
    .parameter "info"

    .prologue
    .line 1209
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, ""

    aput-object v18, v6, v17

    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v6, v17

    .line 1213
    .local v6, outResult:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f08001d

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1214
    .local v11, strReplaceSetIn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f08001e

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1215
    .local v12, strReplaceSetOut:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f08001b

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1216
    .local v7, strLocalKeywordMoment:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f08001f

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1217
    .local v9, strReplaceConfIn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f080020

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1220
    .local v10, strReplaceConfOut:Ljava/lang/String;
    const-string v17, "|"

    const-string v18, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 1221
    const-string v17, "|"

    const-string v18, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 1222
    const-string v17, "|"

    const-string v18, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1223
    const-string v17, "|"

    const-string v18, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1226
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e0

    .line 1227
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1228
    .local v15, strReplaceSplitIn:[Ljava/lang/String;
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1230
    .local v16, strReplaceSplitOut:[Ljava/lang/String;
    array-length v4, v15

    .line 1231
    .local v4, lenIn:I
    move-object/from16 v0, v16

    array-length v5, v0

    .line 1232
    .local v5, lenOut:I
    if-eq v4, v5, :cond_cc

    .line 1233
    const-string v17, "MessageView P-matching>>"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "convertLocalDateToTime: something wrong inlen="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",lenout="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    if-le v4, v5, :cond_cc

    .line 1236
    move v4, v5

    .line 1238
    :cond_cc
    const/4 v3, 0x0

    .local v3, i:I
    :goto_cd
    if-ge v3, v4, :cond_e0

    .line 1241
    aget-object v17, v15, v3

    aget-object v18, v16, v3

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1238
    add-int/lit8 v3, v3, 0x1

    goto :goto_cd

    .line 1245
    .end local v3           #i:I
    .end local v4           #lenIn:I
    .end local v5           #lenOut:I
    .end local v15           #strReplaceSplitIn:[Ljava/lang/String;
    .end local v16           #strReplaceSplitOut:[Ljava/lang/String;
    :cond_e0
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_14f

    .line 1246
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1247
    .local v13, strReplaceSplitConfIn:[Ljava/lang/String;
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1248
    .local v14, strReplaceSplitConfOut:[Ljava/lang/String;
    array-length v4, v13

    .line 1249
    .restart local v4       #lenIn:I
    array-length v5, v14

    .line 1250
    .restart local v5       #lenOut:I
    if-eq v4, v5, :cond_127

    .line 1251
    const-string v17, "MessageView P-matching>>"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "convertLocalDateToTime: something wrong inlen="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",lenout="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    if-le v4, v5, :cond_127

    .line 1254
    move v4, v5

    .line 1256
    :cond_127
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v4, v0, :cond_14f

    const/16 v17, 0x0

    aget-object v17, v13, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_14f

    .line 1257
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_13c
    if-ge v3, v4, :cond_14f

    .line 1261
    aget-object v17, v13, v3

    aget-object v18, v14, v3

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1257
    add-int/lit8 v3, v3, 0x1

    goto :goto_13c

    .line 1268
    .end local v3           #i:I
    .end local v4           #lenIn:I
    .end local v5           #lenOut:I
    .end local v13           #strReplaceSplitConfIn:[Ljava/lang/String;
    .end local v14           #strReplaceSplitConfOut:[Ljava/lang/String;
    :cond_14f
    const/16 v17, 0x2

    :try_start_151
    move/from16 v0, v17

    new-array v8, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, ""

    aput-object v18, v8, v17

    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v8, v17

    .line 1271
    .local v8, strLocalMoment:[Ljava/lang/String;
    const-string v17, "z/z"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1bb

    .line 1272
    const-string v17, "|"

    const-string v18, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1273
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1274
    array-length v0, v8

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1bb

    .line 1275
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_18b
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v3, v0, :cond_1a2

    .line 1276
    aget-object v17, v8, v3

    const-string v18, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1275
    add-int/lit8 v3, v3, 0x1

    goto :goto_18b

    .line 1278
    :cond_1a2
    const/4 v3, 0x3

    :goto_1a3
    const/16 v17, 0x6

    move/from16 v0, v17

    if-ge v3, v0, :cond_1bb

    .line 1279
    aget-object v17, v8, v3

    const-string v18, "pm"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_1b6} :catch_1ba

    move-result-object p1

    .line 1278
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a3

    .line 1283
    .end local v3           #i:I
    .end local v8           #strLocalMoment:[Ljava/lang/String;
    :catch_1ba
    move-exception v17

    .line 1285
    :cond_1bb
    const-string v17, "  "

    const-string v18, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1286
    const-string v17, "^"

    const-string v18, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1287
    const-string v17, "/ "

    const-string v18, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1288
    const-string v17, "//"

    const-string v18, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1289
    const-string v17, " :"

    const-string v18, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1290
    const-string v17, ": "

    const-string v18, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1292
    const-string v17, "MessageView P-matching>>"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "convertLocalDateToTime: rst="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    const/16 v17, 0x0

    aput-object p1, v6, v17

    .line 1295
    const/16 v17, 0x1

    const-string v18, "false"

    aput-object v18, v6, v17

    .line 1296
    return-object v6
.end method

.method private convertStandardDateToTime(Ljava/lang/String;)[Ljava/lang/String;
    .registers 18
    .parameter

    .prologue
    .line 1331
    const-string v1, "(\\.|\\/|\\s|\\-)"

    .line 1332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "([0-3]?\\d)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "([0-3]?\\d)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "([1-2]\\d\\d\\d)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "([0-3]?\\d)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "([0-3]?\\d)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "([0-3]?\\d)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(([1-2]\\d\\d\\d))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "([0-3]?\\d)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "([0-3]?\\d)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1339
    const/16 v1, 0xc

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "(jan(\\w+)?)"

    aput-object v2, v7, v1

    const/4 v1, 0x1

    const-string v2, "(feb(\\w+)?)"

    aput-object v2, v7, v1

    const/4 v1, 0x2

    const-string v2, "(mar(\\w+)?)"

    aput-object v2, v7, v1

    const/4 v1, 0x3

    const-string v2, "(apr(\\w+)?)"

    aput-object v2, v7, v1

    const/4 v1, 0x4

    const-string v2, "(may(\\w+)?)"

    aput-object v2, v7, v1

    const/4 v1, 0x5

    const-string v2, "(jun(\\w+)?)"

    aput-object v2, v7, v1

    const/4 v1, 0x6

    const-string v2, "(jul(\\w+)?)"

    aput-object v2, v7, v1

    const/4 v1, 0x7

    const-string v2, "(aug(\\w+)?)"

    aput-object v2, v7, v1

    const/16 v1, 0x8

    const-string v2, "(sep(\\w+)?)"

    aput-object v2, v7, v1

    const/16 v1, 0x9

    const-string v2, "(oct(\\w+)?)"

    aput-object v2, v7, v1

    const/16 v1, 0xa

    const-string v2, "(nov(\\w+)?)"

    aput-object v2, v7, v1

    const/16 v1, 0xb

    const-string v2, "(dec(\\w+)?)"

    aput-object v2, v7, v1

    .line 1344
    const-string v8, "(\\w+)(\\.)?[\\s\\,]{1,2}([0-3]?\\d)(th|st|nd|rd|,)?[\\s\\,]{1,2}([1-2]\\d\\d\\d)"

    .line 1345
    const-string v9, "([0-3]?\\d)(th|st|nd|rd|,)?(\\s)(\\w+)(\\.)?[\\s\\,]{1,2}([1-2]\\d\\d\\d)"

    .line 1349
    const-string v1, ""

    .line 1350
    const/4 v1, 0x2

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v10, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v10, v1

    .line 1355
    const/4 v1, 0x1

    const-string v2, "false"

    aput-object v2, v10, v1

    .line 1357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1360
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 1362
    const-string v1, "MessageView P-matching>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertStandardDateToTime: orignal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    :goto_120
    :try_start_120
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2fd

    .line 1366
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 1368
    const/4 v1, 0x1

    const-string v3, "true"

    aput-object v3, v10, v1

    .line 1371
    invoke-static {v4, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15c

    .line 1374
    const-string v1, "."

    const-string v3, "/"

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1375
    const-string v3, " "

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1376
    const-string v3, "-"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1377
    const-string v3, "//"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1464
    :goto_155
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_120

    .line 1380
    :cond_15c
    invoke-static {v5, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 1383
    const-string v1, "."

    const-string v3, "/"

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1384
    const-string v3, " "

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1385
    const-string v3, "-"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1386
    const-string v3, "//"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1387
    const/4 v3, 0x0

    const-string v12, "/"

    const-string v13, "/20"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v12, v13}, Lcom/android/email/ViewPatternMatching;->convertDateReplace(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_155

    .line 1390
    :cond_18e
    invoke-static {v6, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c0

    .line 1395
    const-string v1, "."

    const-string v3, "/"

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1396
    const-string v3, " "

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1397
    const-string v3, "-"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1398
    const-string v3, "//"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1399
    const/4 v3, 0x2

    const-string v12, "/"

    const-string v13, "/"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v12, v13}, Lcom/android/email/ViewPatternMatching;->convertDateReplace(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_155

    .line 1402
    :cond_1c0
    invoke-static {v8, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24d

    .line 1408
    const-string v1, "."

    const-string v3, "/"

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1409
    const-string v3, " "

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1410
    const-string v3, "-"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1411
    const-string v3, "//"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1412
    const-string v3, "st"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1413
    const-string v3, "nd"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1414
    const-string v3, "rd"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1415
    const-string v3, "th"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1416
    const-string v3, ","

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1420
    const/4 v1, 0x0

    :goto_20f
    const/16 v12, 0xc

    if-ge v1, v12, :cond_31d

    .line 1421
    aget-object v12, v7, v1

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 1422
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_24a

    .line 1423
    const-string v13, "%02d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1424
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1430
    :goto_23d
    const/4 v3, 0x1

    const-string v12, "/"

    const-string v13, "/"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v12, v13}, Lcom/android/email/ViewPatternMatching;->convertDateReplace(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_155

    .line 1420
    :cond_24a
    add-int/lit8 v1, v1, 0x1

    goto :goto_20f

    .line 1433
    :cond_24d
    invoke-static {v9, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2da

    .line 1438
    const-string v1, "."

    const-string v3, "/"

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1439
    const-string v3, " "

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1440
    const-string v3, "-"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1441
    const-string v3, "//"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1442
    const-string v3, "st"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1443
    const-string v3, "nd"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1444
    const-string v3, "rd"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1445
    const-string v3, "th"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1446
    const-string v3, ","

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1448
    const/4 v1, 0x0

    :goto_29c
    const/16 v12, 0xc

    if-ge v1, v12, :cond_31b

    .line 1449
    aget-object v12, v7, v1

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 1450
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_2d7

    .line 1451
    const-string v13, "%02d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1452
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1458
    :goto_2ca
    const/4 v3, 0x0

    const-string v12, "/"

    const-string v13, "/"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v12, v13}, Lcom/android/email/ViewPatternMatching;->convertDateReplace(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_155

    .line 1448
    :cond_2d7
    add-int/lit8 v1, v1, 0x1

    goto :goto_29c

    .line 1462
    :cond_2da
    const-string v1, "MessageView P-matching>>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "convertStandardDateToTime:error? = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f2
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_2f2} :catch_2f5

    move-object v1, v2

    goto/16 :goto_155

    .line 1466
    :catch_2f5
    move-exception v1

    .line 1467
    const-string v1, "MessageView P-matching>>"

    const-string v2, "convertStandardDateToTime: parse error"

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    :cond_2fd
    const-string v1, "MessageView P-matching>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertStandardDateToTime: out(DMY) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    const/4 v1, 0x0

    aput-object p1, v10, v1

    .line 1472
    return-object v10

    :cond_31b
    move-object v1, v3

    goto :goto_2ca

    :cond_31d
    move-object v1, v3

    goto/16 :goto_23d
.end method

.method private convertStandardRemoveDayofWeek(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "info"

    .prologue
    .line 1300
    iget-object v8, p0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    const v9, 0x7f080015

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1301
    .local v7, strUSkeywordT1:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    const v9, 0x7f08001a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1302
    .local v5, strLocalKeywordT1:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1303
    .local v3, matchedText:Ljava/lang/String;
    move-object v4, p1

    .line 1305
    .local v4, result:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1307
    .local v6, strPattern:Ljava/lang/String;
    const-string v8, "z/z"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_65

    .line 1308
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(?i)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1313
    :goto_30
    :try_start_30
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1314
    .local v1, mMatKeyword:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_4c

    .line 1315
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 1316
    const-string v8, "\\d"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1317
    .local v2, matchedLay:[Ljava/lang/String;
    array-length v8, v2
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_49} :catch_8a

    const/4 v9, 0x1

    if-le v8, v9, :cond_83

    .line 1325
    .end local v1           #mMatKeyword:Ljava/util/regex/Matcher;
    .end local v2           #matchedLay:[Ljava/lang/String;
    :cond_4c
    :goto_4c
    const-string v8, "MessageView P-matching>>"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "convertStandardRemoveDayofWeek: strPattern = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    return-object v4

    .line 1310
    :cond_65
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(?i)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_30

    .line 1320
    .restart local v1       #mMatKeyword:Ljava/util/regex/Matcher;
    .restart local v2       #matchedLay:[Ljava/lang/String;
    :cond_83
    :try_start_83
    const-string v8, ""

    invoke-virtual {p1, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_88} :catch_8a

    move-result-object v4

    goto :goto_4c

    .line 1322
    .end local v1           #mMatKeyword:Ljava/util/regex/Matcher;
    .end local v2           #matchedLay:[Ljava/lang/String;
    :catch_8a
    move-exception v0

    .line 1323
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "MessageView P-matching>>"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "convertStandardRemoveDayofWeek: error? = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c
.end method


# virtual methods
.method public addToCalendarPeriod(Ljava/lang/String;C)Landroid/content/Intent;
    .registers 30
    .parameter
    .parameter

    .prologue
    .line 1669
    const-string v20, ""

    .line 1670
    const-string v11, "~"

    .line 1671
    const-wide/16 v13, 0x0

    .line 1672
    const-wide/16 v18, 0x0

    const-wide/16 v9, 0x0

    .line 1675
    const/4 v15, 0x0

    .line 1676
    const/4 v12, 0x0

    .line 1677
    const/16 v17, 0x0

    .line 1678
    const/16 v16, 0x0

    .line 1681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    if-nez v2, :cond_18

    .line 1682
    const/4 v2, 0x0

    .line 2094
    :goto_17
    return-object v2

    .line 1684
    :cond_18
    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1685
    new-instance v22, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1686
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "false"

    aput-object v4, v2, v3

    .line 1689
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1692
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1695
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v23

    .line 1696
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int v24, v3, v4

    .line 1698
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1699
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1700
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1703
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1704
    const-string v4, "&nbsp;"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1705
    const-string v4, "\u00a0"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1706
    const-string v4, "&ndash;"

    const-string v5, "-"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1707
    const-string v4, "\u2013"

    const-string v5, "-"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1708
    const-string v4, "\\. "

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1709
    const-string v4, "\\."

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1710
    const-string v4, "\\("

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1711
    const-string v4, "\\)"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1712
    const-string v4, "  "

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1713
    packed-switch p2, :pswitch_data_938

    .line 1990
    const/4 v2, 0x0

    goto/16 :goto_17

    .line 1720
    :pswitch_e3
    const-string v11, "~"

    .line 1721
    const-string v3, "~"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3f9

    .line 1723
    const/4 v4, 0x0

    .line 1724
    const/4 v3, 0x5

    :try_start_ef
    new-array v7, v3, [I

    fill-array-data v7, :array_94a

    .line 1727
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    .line 1728
    const/4 v3, 0x0

    move v6, v3

    :goto_fa
    if-ge v6, v8, :cond_934

    .line 1729
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v3, v0, :cond_364

    .line 1730
    add-int/lit8 v3, v4, 0x1

    aput v6, v7, v4

    .line 1731
    const/4 v4, 0x4

    if-le v3, v4, :cond_365

    .line 1735
    :goto_10d
    const/4 v4, 0x1

    if-ne v3, v4, :cond_36b

    .line 1736
    const-string v3, "-"

    const-string v4, "~"

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_117} :catch_3e0

    move-result-object v3

    :goto_118
    move-object v6, v3

    .line 1755
    :goto_119
    :try_start_119
    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1756
    move-object/from16 v0, v20

    array-length v3, v0

    if-eqz v3, :cond_92c

    .line 1757
    const/4 v3, 0x0

    aget-object v3, v20, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/email/ViewPatternMatching;->calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1758
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v20, v4

    .line 1759
    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_13d} :catch_3fc

    move-result v3

    if-eqz v3, :cond_929

    .line 1760
    const/4 v3, 0x1

    .line 1761
    :goto_141
    const/4 v4, 0x0

    :try_start_142
    aget-object v4, v20, v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1762
    const/4 v5, 0x0

    aget-object v5, v4, v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_156} :catch_8de

    move-result-wide v7

    .line 1763
    const/4 v5, 0x0

    :try_start_158
    aget-object v5, v20, v5

    const/4 v12, 0x0

    aget-object v4, v4, v12

    const-string v12, ""

    invoke-virtual {v5, v4, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1765
    :goto_163
    move-object/from16 v0, v20

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_926

    .line 1766
    const/4 v4, 0x1

    aget-object v4, v20, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/email/ViewPatternMatching;->calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1767
    const/4 v5, 0x1

    const/4 v12, 0x0

    aget-object v12, v4, v12

    aput-object v12, v20, v5

    .line 1768
    const/4 v5, 0x1

    aget-object v4, v4, v5

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_184

    .line 1769
    const/4 v3, 0x1

    .line 1770
    :cond_184
    const/4 v4, 0x1

    aget-object v4, v20, v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1771
    const/4 v4, 0x0

    aget-object v4, v12, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_199} :catch_8e4

    move-result-wide v4

    .line 1772
    :try_start_19a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "~"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v20, v10

    const/16 v18, 0x0

    aget-object v12, v12, v18

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v10, v12, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1bf
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_1bf} :catch_8ec

    move-result-object v6

    .line 1774
    :goto_1c0
    const/4 v15, 0x1

    move-wide v9, v4

    move/from16 v4, v17

    move v5, v3

    move/from16 v3, v16

    move-wide/from16 v25, v7

    move-object v8, v6

    move-wide v6, v13

    move-wide/from16 v13, v25

    .line 1993
    :goto_1cd
    const-string v12, "MessageView P-matching>>"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "addToCalendarPeriod: inputdata="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", CType["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    const-string v12, ","

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v8, v12, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1996
    if-eqz v15, :cond_906

    .line 1998
    :try_start_209
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/email/ViewPatternMatching;->convertLocalDateToTime(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1999
    const/16 v16, 0x0

    aget-object v12, v12, v16

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 2000
    const-string v12, " "

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v8, v12, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2001
    const-string v12, "MessageView P-matching>>"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "addToCalendarPeriod: mHasTimeInfo="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    const-string v12, "-"

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_247

    .line 2004
    const-string v11, "-"

    .line 2005
    :cond_247
    const-string v12, "~"

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_251

    .line 2006
    const-string v11, "~"

    .line 2007
    :cond_251
    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2008
    move-object/from16 v0, v16

    array-length v11, v0

    if-eqz v11, :cond_268

    .line 2009
    const/4 v11, 0x0

    aget-object v11, v16, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13, v14}, Lcom/android/email/ViewPatternMatching;->calnendarGetTime(Ljava/lang/String;J)J

    move-result-wide v11

    .line 2010
    cmp-long v17, v11, v13

    if-lez v17, :cond_268

    move-wide v13, v11

    .line 2014
    :cond_268
    move-object/from16 v0, v16

    array-length v11, v0

    const/4 v12, 0x1

    if-le v11, v12, :cond_27c

    .line 2015
    const/4 v11, 0x1

    aget-object v11, v16, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9, v10}, Lcom/android/email/ViewPatternMatching;->calnendarGetTime(Ljava/lang/String;J)J
    :try_end_276
    .catch Ljava/lang/Exception; {:try_start_209 .. :try_end_276} :catch_859

    move-result-wide v11

    .line 2016
    cmp-long v16, v11, v9

    if-lez v16, :cond_27c

    move-wide v9, v11

    :cond_27c
    move-object v12, v8

    move-wide/from16 v25, v9

    move-wide/from16 v10, v25

    move-wide v8, v13

    .line 2023
    :goto_282
    if-eqz v5, :cond_8ff

    if-nez v15, :cond_8ff

    .line 2024
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v12, " "

    const-string v13, ""

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2025
    const-string v12, "~"

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2026
    array-length v12, v4

    if-eqz v12, :cond_2a8

    .line 2028
    const/4 v12, 0x0

    :try_start_29c
    aget-object v12, v4, v12

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J
    :try_end_2a7
    .catch Ljava/lang/Exception; {:try_start_29c .. :try_end_2a7} :catch_8bd

    move-result-wide v8

    .line 2032
    :cond_2a8
    :goto_2a8
    array-length v12, v4

    const/4 v13, 0x1

    if-le v12, v13, :cond_2b9

    .line 2034
    const/4 v12, 0x1

    :try_start_2ad
    aget-object v4, v4, v12

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J
    :try_end_2b8
    .catch Ljava/lang/Exception; {:try_start_2ad .. :try_end_2b8} :catch_8ba

    move-result-wide v10

    .line 2038
    :cond_2b9
    :goto_2b9
    const/4 v4, 0x1

    move-wide/from16 v25, v10

    move-wide v10, v8

    move-wide/from16 v8, v25

    .line 2040
    :goto_2bf
    if-nez v4, :cond_2c6

    if-nez v15, :cond_2c6

    if-eqz v5, :cond_2c6

    .line 2041
    const/4 v4, 0x1

    .line 2042
    :cond_2c6
    const-string v12, "MessageView P-matching>>"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addToCalendarPeriod: hasTime="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", hasDate="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    if-nez v4, :cond_8f8

    if-eqz v3, :cond_8f8

    if-nez v15, :cond_8f8

    .line 2045
    const-wide/32 v12, 0x44aa200

    add-long/2addr v10, v12

    .line 2046
    const-wide/32 v12, 0x44aa200

    add-long/2addr v8, v12

    move-wide/from16 v25, v8

    move-wide v8, v10

    move-wide/from16 v11, v25

    .line 2048
    :goto_2fb
    if-eqz v4, :cond_8f5

    if-eqz v15, :cond_8f5

    .line 2049
    const/4 v4, 0x0

    move v10, v4

    .line 2052
    :goto_301
    if-eqz v10, :cond_862

    .line 2054
    const-wide/32 v2, 0x25c3f80

    add-long/2addr v2, v11

    .line 2073
    :goto_307
    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-nez v4, :cond_8a5

    .line 2074
    const-wide/16 v2, 0x0

    .line 2077
    :cond_30f
    :goto_30f
    const-string v4, "MessageView P-matching>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addToCalendarPeriod time info : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", allday="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    :try_start_335
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2082
    const-string v5, "android.intent.action.EDIT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2083
    const-string v5, "vnd.android.cursor.item/event"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2084
    const-string v5, "beginTime"

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2085
    const-string v5, "endTime"

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2086
    const-string v2, "allDay"

    invoke-virtual {v4, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2087
    const-string v2, "title"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2088
    const-string v2, "description"

    const-string v3, "Email"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_361
    .catch Ljava/lang/Exception; {:try_start_335 .. :try_end_361} :catch_8af

    move-object v2, v4

    .line 2090
    goto/16 :goto_17

    :cond_364
    move v3, v4

    .line 1728
    :cond_365
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v3

    goto/16 :goto_fa

    .line 1737
    :cond_36b
    const/4 v4, 0x5

    if-ne v3, v4, :cond_399

    .line 1738
    const/4 v3, 0x2

    :try_start_36f
    aget v3, v7, v3

    .line 1739
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ~ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_118

    .line 1741
    :cond_399
    const/4 v4, 0x3

    if-ne v3, v4, :cond_931

    .line 1742
    div-int/lit8 v3, v8, 0x2

    .line 1743
    const/4 v4, 0x0

    aget v4, v7, v4

    sub-int v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v6, 0x2

    aget v6, v7, v6

    sub-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v4, v3, :cond_3dc

    .line 1744
    const/4 v3, 0x2

    aget v3, v7, v3

    .line 1747
    :goto_3b4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ~ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_118

    .line 1746
    :cond_3dc
    const/4 v3, 0x0

    aget v3, v7, v3
    :try_end_3df
    .catch Ljava/lang/Exception; {:try_start_36f .. :try_end_3df} :catch_3e0

    goto :goto_3b4

    .line 1750
    :catch_3e0
    move-exception v3

    .line 1751
    const-string v3, "MessageView P-matching>>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToCalendarPeriod:T3 split error"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f9
    move-object v6, v5

    goto/16 :goto_119

    .line 1775
    :catch_3fc
    move-exception v3

    move v3, v12

    move-object v5, v6

    move-wide/from16 v6, v18

    .line 1776
    :goto_401
    const-string v4, "MessageView P-matching>>"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addToCalendarPeriod:T3 parse error"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v4, v17

    move-object v8, v5

    move v5, v3

    move/from16 v3, v16

    move-wide/from16 v25, v13

    move-wide v13, v6

    move-wide/from16 v6, v25

    .line 1779
    goto/16 :goto_1cd

    .line 1782
    :pswitch_426
    const-string v11, "~"

    .line 1783
    const-string v3, "~"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_55e

    .line 1785
    const/4 v4, 0x0

    .line 1786
    const/4 v3, 0x5

    :try_start_432
    new-array v7, v3, [I

    fill-array-data v7, :array_958

    .line 1789
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    .line 1790
    const/4 v3, 0x0

    move v6, v3

    :goto_43d
    if-ge v6, v8, :cond_923

    .line 1791
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v3, v0, :cond_4c9

    .line 1792
    add-int/lit8 v3, v4, 0x1

    aput v6, v7, v4

    .line 1793
    const/4 v4, 0x4

    if-le v3, v4, :cond_4ca

    .line 1797
    :goto_450
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4d0

    .line 1798
    const-string v3, "-"

    const-string v4, "~"

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_45a
    .catch Ljava/lang/Exception; {:try_start_432 .. :try_end_45a} :catch_545

    move-result-object v5

    :cond_45b
    :goto_45b
    move-object v4, v5

    .line 1817
    :goto_45c
    :try_start_45c
    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1818
    array-length v3, v5

    if-eqz v3, :cond_920

    .line 1819
    const/4 v3, 0x0

    aget-object v3, v5, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/email/ViewPatternMatching;->calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1820
    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, v3, v7

    aput-object v7, v5, v6

    .line 1821
    const/4 v6, 0x1

    aget-object v3, v3, v6

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_47a
    .catch Ljava/lang/Exception; {:try_start_45c .. :try_end_47a} :catch_561

    move-result v3

    if-eqz v3, :cond_91d

    .line 1822
    const/4 v3, 0x1

    .line 1823
    :goto_47e
    const/4 v6, 0x0

    :try_start_47f
    aget-object v4, v5, v6

    .line 1825
    :goto_481
    array-length v6, v5

    const/4 v7, 0x1

    if-le v6, v7, :cond_4bd

    .line 1826
    const/4 v6, 0x1

    aget-object v6, v5, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/email/ViewPatternMatching;->calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1827
    const/4 v7, 0x1

    const/4 v8, 0x0

    aget-object v8, v6, v8

    aput-object v8, v5, v7

    .line 1828
    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a0

    .line 1829
    const/4 v3, 0x1

    .line 1830
    :cond_4a0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4bc
    .catch Ljava/lang/Exception; {:try_start_47f .. :try_end_4bc} :catch_8da

    move-result-object v4

    .line 1832
    :cond_4bd
    const/4 v15, 0x0

    move v5, v3

    move-wide v6, v13

    move-object v8, v4

    move-wide/from16 v13, v18

    move/from16 v4, v17

    move/from16 v3, v16

    .line 1835
    goto/16 :goto_1cd

    :cond_4c9
    move v3, v4

    .line 1790
    :cond_4ca
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v3

    goto/16 :goto_43d

    .line 1799
    :cond_4d0
    const/4 v4, 0x5

    if-ne v3, v4, :cond_4fe

    .line 1800
    const/4 v3, 0x2

    :try_start_4d4
    aget v3, v7, v3

    .line 1801
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ~ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_45b

    .line 1803
    :cond_4fe
    const/4 v4, 0x3

    if-ne v3, v4, :cond_45b

    .line 1804
    div-int/lit8 v3, v8, 0x2

    .line 1805
    const/4 v4, 0x0

    aget v4, v7, v4

    sub-int v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v6, 0x2

    aget v6, v7, v6

    sub-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v4, v3, :cond_541

    .line 1806
    const/4 v3, 0x2

    aget v3, v7, v3

    .line 1809
    :goto_519
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ~ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_45b

    .line 1808
    :cond_541
    const/4 v3, 0x0

    aget v3, v7, v3
    :try_end_544
    .catch Ljava/lang/Exception; {:try_start_4d4 .. :try_end_544} :catch_545

    goto :goto_519

    .line 1812
    :catch_545
    move-exception v3

    .line 1813
    const-string v3, "MessageView P-matching>>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToCalendarPeriod:T2 split error"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55e
    move-object v4, v5

    goto/16 :goto_45c

    .line 1833
    :catch_561
    move-exception v3

    move v3, v12

    move-object v5, v4

    .line 1834
    :goto_564
    const-string v4, "MessageView P-matching>>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addToCalendarPeriod:T2 parse error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v4, v17

    move-wide v6, v13

    move-object v8, v5

    move-wide/from16 v13, v18

    move v5, v3

    move/from16 v3, v16

    .line 1837
    goto/16 :goto_1cd

    .line 1841
    :pswitch_587
    const-string v3, "-"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_91a

    .line 1842
    const-string v3, "-"

    .line 1843
    :goto_591
    const-string v4, "~"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_59b

    .line 1844
    const-string v3, "~"

    .line 1845
    :cond_59b
    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1847
    const-string v4, ""

    const-string v4, ""

    .line 1848
    array-length v4, v6

    const/4 v7, 0x1

    if-le v4, v7, :cond_65c

    .line 1849
    const/4 v4, 0x1

    aget-object v4, v6, v4

    .line 1850
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/email/ViewPatternMatching;->calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1851
    const/4 v5, 0x0

    aget-object v5, v4, v5

    .line 1852
    const/4 v7, 0x1

    aget-object v4, v4, v7

    const-string v7, "true"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_917

    .line 1853
    const/4 v4, 0x1

    .line 1854
    :goto_5bf
    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1855
    array-length v8, v7

    const/4 v11, 0x3

    if-eq v8, v11, :cond_5eb

    .line 1856
    const-string v8, "MessageView P-matching>>"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addToCalendarPeriod:T6 incorrect date=["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] or parse err="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    :cond_5eb
    const/4 v8, 0x0

    aget-object v6, v6, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/email/ViewPatternMatching;->convertStandardRemoveDayofWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1861
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1862
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/email/ViewPatternMatching;->convertLocalDateToTime(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1864
    const/4 v7, 0x0

    aget-object v7, v6, v7

    .line 1865
    const/4 v8, 0x1

    aget-object v6, v6, v8

    const-string v8, "true"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_623

    .line 1866
    const/4 v4, 0x1

    .line 1867
    :cond_623
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/email/ViewPatternMatching;->convertStandardDateToTime(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1869
    const/4 v7, 0x0

    aget-object v6, v6, v7

    .line 1870
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1871
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1876
    :goto_64f
    const/4 v15, 0x0

    move-wide v6, v13

    move-object v11, v3

    move-object v8, v5

    move-wide/from16 v13, v18

    move/from16 v3, v16

    move v5, v4

    move/from16 v4, v17

    .line 1878
    goto/16 :goto_1cd

    .line 1873
    :cond_65c
    const-string v4, "MessageView P-matching>>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addToCalendarPeriod:T6 incorrect type=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] or date="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v12

    goto :goto_64f

    .line 1880
    :pswitch_682
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/email/ViewPatternMatching;->calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1881
    const/4 v4, 0x0

    aget-object v5, v3, v4

    .line 1882
    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_697

    .line 1883
    const/4 v12, 0x1

    .line 1884
    :cond_697
    if-eqz v12, :cond_914

    .line 1886
    :try_start_699
    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1887
    const/4 v4, 0x0

    aget-object v6, v3, v4
    :try_end_6a2
    .catch Ljava/lang/Exception; {:try_start_699 .. :try_end_6a2} :catch_6bf

    .line 1888
    :try_start_6a2
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J
    :try_end_6ab
    .catch Ljava/lang/Exception; {:try_start_6a2 .. :try_end_6ab} :catch_8d3

    move-result-wide v3

    .line 1889
    :try_start_6ac
    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6b1
    .catch Ljava/lang/Exception; {:try_start_6ac .. :try_end_6b1} :catch_8d7

    move-result-object v5

    .line 1896
    :goto_6b2
    const/4 v15, 0x1

    .line 1897
    const/4 v6, 0x0

    move-wide v9, v3

    move-wide v13, v3

    move-object v8, v5

    move v5, v6

    move-wide v6, v3

    move/from16 v4, v17

    move/from16 v3, v16

    .line 1898
    goto/16 :goto_1cd

    .line 1890
    :catch_6bf
    move-exception v3

    move-wide v3, v13

    move-object/from16 v6, v20

    .line 1891
    :goto_6c3
    const-string v7, "MessageView P-matching>>"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addToCalendarPeriod:T7 parse err="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b2

    .line 1900
    :pswitch_6dc
    const/4 v3, 0x0

    .line 1901
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/email/ViewPatternMatching;->convertKeywordToDateTime(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v6

    .line 1902
    const/4 v3, 0x1

    aget-object v3, v6, v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72d

    .line 1903
    const/16 v17, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    .line 1907
    :goto_6f4
    const/4 v7, 0x0

    :try_start_6f5
    aget-object v6, v6, v7

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1908
    const/4 v6, 0x0

    aget-object v20, v9, v6

    .line 1909
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J
    :try_end_70b
    .catch Ljava/lang/Exception; {:try_start_6f5 .. :try_end_70b} :catch_755

    move-result-wide v7

    .line 1910
    :try_start_70c
    array-length v6, v9

    const/4 v10, 0x1

    if-le v6, v10, :cond_74e

    .line 1911
    const/4 v6, 0x1

    aget-object v6, v9, v6
    :try_end_713
    .catch Ljava/lang/Exception; {:try_start_70c .. :try_end_713} :catch_8c3

    .line 1912
    const/4 v5, 0x2

    :goto_714
    :try_start_714
    array-length v10, v9

    if-ge v5, v10, :cond_73f

    .line 1913
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v12, v9, v5

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_729
    .catch Ljava/lang/Exception; {:try_start_714 .. :try_end_729} :catch_8cb

    move-result-object v6

    .line 1912
    add-int/lit8 v5, v5, 0x1

    goto :goto_714

    .line 1904
    :cond_72d
    const/4 v3, 0x1

    aget-object v3, v6, v3

    const-string v4, "special"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90e

    .line 1905
    const/16 v16, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    goto :goto_6f4

    .line 1915
    :cond_73f
    const/4 v5, 0x1

    .line 1916
    const/4 v3, 0x0

    .line 1917
    const/4 v4, 0x0

    :goto_742
    move-wide/from16 v25, v7

    move-object v8, v6

    move-wide/from16 v6, v25

    .line 1925
    :goto_747
    const/4 v9, 0x0

    move v15, v5

    move-wide v13, v6

    move v5, v9

    move-wide v9, v6

    .line 1926
    goto/16 :goto_1cd

    .line 1919
    :cond_74e
    const/4 v6, 0x0

    move/from16 v25, v6

    move-object v6, v5

    move/from16 v5, v25

    goto :goto_742

    .line 1920
    :catch_755
    move-exception v6

    move-object v7, v5

    move-wide v5, v13

    .line 1921
    :goto_758
    const-string v8, "MessageView P-matching>>"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addToCalendarPeriod:T5 parse err="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v7

    move-wide/from16 v25, v5

    move-wide/from16 v6, v25

    move v5, v15

    goto :goto_747

    .line 1928
    :pswitch_779
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/email/ViewPatternMatching;->calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1929
    const/4 v3, 0x0

    aget-object v3, v4, v3

    .line 1930
    const/4 v5, 0x1

    aget-object v4, v4, v5

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_78e

    .line 1931
    const/4 v12, 0x1

    .line 1932
    :cond_78e
    if-eqz v12, :cond_7af

    .line 1934
    :try_start_790
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1935
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v20, v4, v5

    .line 1936
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    .line 1937
    const-string v4, ""

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7ae
    .catch Ljava/lang/Exception; {:try_start_790 .. :try_end_7ae} :catch_7bb

    move-result-object v3

    .line 1944
    :cond_7af
    :goto_7af
    const/4 v15, 0x1

    .line 1945
    const/4 v4, 0x0

    move v5, v4

    move-wide v9, v13

    move-wide v6, v13

    move-object v8, v3

    move/from16 v3, v16

    move/from16 v4, v17

    .line 1946
    goto/16 :goto_1cd

    .line 1938
    :catch_7bb
    move-exception v4

    .line 1939
    const-string v4, "MessageView P-matching>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToCalendarPeriod:T4 parse err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7af

    .line 1953
    :pswitch_7d7
    :try_start_7d7
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/ViewPatternMatching;->mTimeOfMessage:J

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-eqz v3, :cond_7f1

    .line 1954
    new-instance v3, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/ViewPatternMatching;->mTimeOfMessage:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1955
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_7f1
    .catch Ljava/lang/Exception; {:try_start_7d7 .. :try_end_7f1} :catch_8c0

    .line 1976
    :cond_7f1
    :goto_7f1
    :try_start_7f1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1978
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J
    :try_end_832
    .catch Ljava/lang/Exception; {:try_start_7f1 .. :try_end_832} :catch_83f

    move-result-wide v13

    .line 1984
    :goto_833
    const/4 v15, 0x1

    .line 1985
    const/4 v3, 0x0

    move/from16 v4, v17

    move-wide v9, v13

    move-wide v6, v13

    move-object v8, v5

    move v5, v3

    move/from16 v3, v16

    .line 1986
    goto/16 :goto_1cd

    .line 1979
    :catch_83f
    move-exception v3

    .line 1980
    const-string v3, "MessageView P-matching>>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToCalendarPeriod:T1 parse err="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_833

    .line 2020
    :catch_859
    move-exception v11

    move-object v12, v8

    move-wide/from16 v25, v9

    move-wide/from16 v10, v25

    move-wide v8, v13

    goto/16 :goto_282

    .line 2057
    :cond_862
    :try_start_862
    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2058
    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2059
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I
    :try_end_875
    .catch Ljava/lang/Exception; {:try_start_862 .. :try_end_875} :catch_895

    move-result v4

    add-int/2addr v3, v4

    int-to-long v3, v3

    sub-long v4, v8, v3

    .line 2065
    :goto_87a
    :try_start_87a
    invoke-virtual {v2, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2066
    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2067
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v8, 0x10

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I
    :try_end_88d
    .catch Ljava/lang/Exception; {:try_start_87a .. :try_end_88d} :catch_89c

    move-result v2

    add-int/2addr v2, v3

    int-to-long v2, v2

    sub-long v2, v11, v2

    move-wide v8, v4

    .line 2071
    goto/16 :goto_307

    .line 2061
    :catch_895
    move-exception v3

    .line 2062
    move/from16 v0, v24

    int-to-long v3, v0

    sub-long v4, v8, v3

    goto :goto_87a

    .line 2069
    :catch_89c
    move-exception v2

    .line 2070
    move/from16 v0, v24

    int-to-long v2, v0

    sub-long v2, v11, v2

    move-wide v8, v4

    goto/16 :goto_307

    .line 2075
    :cond_8a5
    cmp-long v4, v8, v2

    if-lez v4, :cond_30f

    .line 2076
    const-wide/32 v2, 0x36ee80

    add-long/2addr v2, v8

    goto/16 :goto_30f

    .line 2091
    :catch_8af
    move-exception v2

    .line 2092
    const-string v2, "MessageView P-matching>>"

    const-string v3, "addToCalendarPeriod #11 calendar intent err !!!!!"

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    const/4 v2, 0x0

    goto/16 :goto_17

    .line 2035
    :catch_8ba
    move-exception v4

    goto/16 :goto_2b9

    .line 2029
    :catch_8bd
    move-exception v12

    goto/16 :goto_2a8

    .line 1964
    :catch_8c0
    move-exception v3

    goto/16 :goto_7f1

    .line 1920
    :catch_8c3
    move-exception v6

    move-wide/from16 v25, v7

    move-object v7, v5

    move-wide/from16 v5, v25

    goto/16 :goto_758

    :catch_8cb
    move-exception v5

    move-wide/from16 v25, v7

    move-object v7, v6

    move-wide/from16 v5, v25

    goto/16 :goto_758

    .line 1890
    :catch_8d3
    move-exception v3

    move-wide v3, v13

    goto/16 :goto_6c3

    :catch_8d7
    move-exception v7

    goto/16 :goto_6c3

    .line 1833
    :catch_8da
    move-exception v5

    move-object v5, v4

    goto/16 :goto_564

    .line 1775
    :catch_8de
    move-exception v4

    move-object v5, v6

    move-wide/from16 v6, v18

    goto/16 :goto_401

    :catch_8e4
    move-exception v4

    move-object v5, v6

    move-wide/from16 v25, v7

    move-wide/from16 v6, v25

    goto/16 :goto_401

    :catch_8ec
    move-exception v9

    move-wide v9, v4

    move-object v5, v6

    move-wide/from16 v25, v7

    move-wide/from16 v6, v25

    goto/16 :goto_401

    :cond_8f5
    move v10, v4

    goto/16 :goto_301

    :cond_8f8
    move-wide/from16 v25, v8

    move-wide v8, v10

    move-wide/from16 v11, v25

    goto/16 :goto_2fb

    :cond_8ff
    move-wide/from16 v25, v10

    move-wide v10, v8

    move-wide/from16 v8, v25

    goto/16 :goto_2bf

    :cond_906
    move-object v12, v8

    move-wide/from16 v25, v9

    move-wide/from16 v10, v25

    move-wide v8, v13

    goto/16 :goto_282

    :cond_90e
    move/from16 v3, v16

    move/from16 v4, v17

    goto/16 :goto_6f4

    :cond_914
    move-wide v3, v13

    goto/16 :goto_6b2

    :cond_917
    move v4, v12

    goto/16 :goto_5bf

    :cond_91a
    move-object v3, v11

    goto/16 :goto_591

    :cond_91d
    move v3, v12

    goto/16 :goto_47e

    :cond_920
    move v3, v12

    goto/16 :goto_481

    :cond_923
    move v3, v4

    goto/16 :goto_450

    :cond_926
    move-wide v4, v9

    goto/16 :goto_1c0

    :cond_929
    move v3, v12

    goto/16 :goto_141

    :cond_92c
    move v3, v12

    move-wide/from16 v7, v18

    goto/16 :goto_163

    :cond_931
    move-object v3, v5

    goto/16 :goto_118

    :cond_934
    move v3, v4

    goto/16 :goto_10d

    .line 1713
    nop

    :pswitch_data_938
    .packed-switch 0x31
        :pswitch_7d7
        :pswitch_426
        :pswitch_e3
        :pswitch_779
        :pswitch_6dc
        :pswitch_587
        :pswitch_682
    .end packed-switch

    .line 1724
    :array_94a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1786
    :array_958
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public pmDataMatching(Ljava/lang/String;II)Ljava/lang/String;
    .registers 87
    .parameter "text"
    .parameter "nType"
    .parameter "nStartPosition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 143
    move/from16 v16, p3

    .line 144
    .local v16, nFindStart:I
    const/4 v4, 0x0

    .line 147
    .local v4, bTimeOut:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v79, v0

    if-nez v79, :cond_13

    .line 148
    new-instance v79, Lcom/android/email/mail/MessagingException;

    const-string v80, "Uninitialized. call first init"

    invoke-direct/range {v79 .. v80}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v79

    .line 150
    :cond_13
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v79

    move/from16 v0, p3

    move/from16 v1, v79

    if-gt v0, v1, :cond_1f

    if-gez p3, :cond_27

    .line 151
    :cond_1f
    new-instance v79, Lcom/android/email/mail/MessagingException;

    const-string v80, "invalid agument"

    invoke-direct/range {v79 .. v80}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v79

    .line 154
    :cond_27
    const-string v33, "[\\/\\s\\-]"

    .line 155
    .local v33, strDateSeperate:Ljava/lang/String;
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "(?:(?:[0-3]?\\d)|(?:[1-2]\\d\\d\\d))"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, "(?:[0-3]?\\d)"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, "(?:(?:[1-2]\\d\\d\\d)|(?:[0-3]?[\\d]))"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    .line 158
    .local v62, strStandardDate:Ljava/lang/String;
    const/16 v64, 0x0

    .line 159
    .local v64, strUSDate:Ljava/lang/String;
    const/16 v65, 0x0

    .line 160
    .local v65, strUSDateExceptYear:Ljava/lang/String;
    const/16 v66, 0x0

    .line 161
    .local v66, strUSKeyword:Ljava/lang/String;
    const/16 v67, 0x0

    .line 163
    .local v67, strUSTime:Ljava/lang/String;
    const/16 v38, 0x0

    .line 164
    .local v38, strLocalDate:Ljava/lang/String;
    const/16 v45, 0x0

    .line 165
    .local v45, strLocalTime:Ljava/lang/String;
    const/16 v40, 0x0

    .line 167
    .local v40, strLocalKeyword:Ljava/lang/String;
    const/16 v34, 0x0

    .line 168
    .local v34, strGeneralDate:Ljava/lang/String;
    const/16 v35, 0x0

    .line 169
    .local v35, strGeneralDateExceptYear:Ljava/lang/String;
    const/16 v37, 0x0

    .line 170
    .local v37, strGeneralTime:Ljava/lang/String;
    const/16 v36, 0x0

    .line 172
    .local v36, strGeneralKeyword:Ljava/lang/String;
    const-wide/16 v73, 0x0

    .local v73, time:J
    const-wide/16 v75, 0x0

    .line 173
    .local v75, time2:J
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v22

    .line 174
    .local v22, nTextLen:I
    const/4 v15, 0x0

    .local v15, memail:Ljava/util/regex/Matcher;
    const/4 v13, 0x0

    .line 175
    .local v13, matchPostMail:Ljava/util/regex/Matcher;
    const/16 v25, 0x0

    .local v25, patPostDate:Ljava/util/regex/Pattern;
    const/16 v26, 0x0

    .line 176
    .local v26, patPostTime:Ljava/util/regex/Pattern;
    const/4 v12, 0x0

    .line 177
    .local v12, mPhoneOrWebOrEmail:Ljava/lang/String;
    const/16 v23, 0x0

    .line 178
    .local v23, outText:Ljava/lang/String;
    const/16 v57, 0x0

    .line 180
    .local v57, strPhonePattern:Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuffer;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuffer;-><init>()V

    .line 181
    .local v29, sb:Ljava/lang/StringBuffer;
    new-instance v30, Ljava/lang/StringBuffer;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuffer;-><init>()V

    .line 193
    .local v30, sbTemp:Ljava/lang/StringBuffer;
    const-string v57, "(?:(?:[\\+]|(?:\\&\\#43\\;))[0-9]{1,4}[\\-\\.\\s]*)?(?:[0-9\\s]{1,6}[\\-\\s\\.]?|(?:\\([0-9]{1,4}\\)[\\s]?))?(?:[0-9]{2,4}[\\-\\.\\s]?[0-9]{2,4}[\\-\\.\\s]?[0-9]{2,12})"

    .line 201
    const-string v78, "(?:<[aA][\\s][hH][rR][eE][fF]=[^>]+>)"

    .line 203
    .local v78, urlRefPattern:Ljava/lang/String;
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v79

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, "|(?:<[^>]+>)"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    .line 207
    .local v77, urlPattern:Ljava/lang/String;
    const-string v54, "(?:(?:[a-zA-Z][a-zA-Z]?[0-9][\\-\\s][0-9][a-zA-Z][a-zA-Z])|(?:[a-zA-Z][0-9][a-zA-Z][\\-\\s][0-9][a-zA-Z][0-9])|(?:[\\d]{5}(?:[\\-\\s][\\d]{4})?))"

    .line 208
    .local v54, strLocationPostalCode:Ljava/lang/String;
    const-string v47, "(?:[a-zA-Z\\s]{2,20}(?:\\s|\\,|(?:\\&nbsp;)){1,3}[a-zA-Z]{2,10})"

    .line 209
    .local v47, strLocationCityStates:Ljava/lang/String;
    const-string v48, "(?:[\\s\\,][\\s]?(?:[Uu]nited\\s)?[\\w]+)?"

    .line 210
    .local v48, strLocationCountry:Ljava/lang/String;
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "(?:(?:[\\w]?[\\d]{1,4}[\\-\\s](?:\\d[0-9a-zA-Z]{0,3})?)|(?:\\d[0-9a-zA-Z]{0,3}))(?:[\\w\\s#@\\,]{1,40})"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, "(?:\\s|\\,|(?:\\&nbsp;)){1,3}"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    .line 215
    .local v55, strLocationUS:Ljava/lang/String;
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "(?:[Pp](?:ost)?[\\s\\.]*[Oo](?:ffice)?[\\s\\.]*(?:[Bb][Oo][Xx])?[\\s]*[0-9]{0,10})(?:(?:\\s|\\,|(?:\\&nbsp;)){1,3}"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, "(?:(?:\\s|\\,|(?:\\&nbsp;)){1,3}"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")?)?"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    .line 222
    .local v56, strLocationUS2:Ljava/lang/String;
    const-string v49, "(?:[\\f\\n\\r\\t\\>][#\\w\\s\\(\\)\\-]{0,30}[\\,\\-]?[\\w\\s\\#\\(\\)\\-]{0,30})?@[\\-0-9]{1,3}[\\.][0-9]{1,7}[\\s\\,]{1,2}[\\-0-9]{1,4}[\\.][0-9]{1,7}"

    .line 225
    .local v49, strLocationGeo:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v79, v0

    const v80, 0x7f080021

    invoke-virtual/range {v79 .. v80}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 228
    .local v51, strLocationLocalE:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v79, v0

    const v80, 0x7f080022

    invoke-virtual/range {v79 .. v80}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v52

    .line 231
    .local v52, strLocationLocalL:Ljava/lang/String;
    const/16 v50, 0x0

    .line 232
    .local v50, strLocationLocal:Ljava/lang/String;
    const/16 v53, 0x0

    .line 234
    .local v53, strLocationPatern:Ljava/lang/String;
    const-string v79, "z/z"

    move-object/from16 v0, v79

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v79

    if-nez v79, :cond_136

    .line 235
    move-object/from16 v50, v51

    .line 237
    :cond_136
    const-string v79, "z/z"

    move-object/from16 v0, v79

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v79

    if-nez v79, :cond_146

    .line 238
    if-nez v50, :cond_65a

    .line 239
    move-object/from16 v50, v52

    .line 243
    :cond_146
    :goto_146
    if-nez v50, :cond_67b

    .line 244
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v79

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, "|"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, "|"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    .line 250
    :goto_175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v79, v0

    const v80, 0x7f080014

    invoke-virtual/range {v79 .. v80}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v63

    .line 252
    .local v63, strStandardTime:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v79, v0

    const v80, 0x7f080015

    invoke-virtual/range {v79 .. v80}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v68

    .line 253
    .local v68, strUSkeywordT1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v79, v0

    const v80, 0x7f080016

    invoke-virtual/range {v79 .. v80}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v69

    .line 254
    .local v69, strUSkeywordT2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v79, v0

    const v80, 0x7f080017

    invoke-virtual/range {v79 .. v80}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v70

    .line 256
    .local v70, strUSkeywordT3:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v79, v0

    const v80, 0x7f080012

    invoke-virtual/range {v79 .. v80}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v65

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v79, v0

    const v80, 0x7f080013

    invoke-virtual/range {v79 .. v80}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v64

    .line 258
    move-object/from16 v67, v63

    .line 259
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "(?:(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")[\\s\\,]{1,2}(?:(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")[\\s\\,]{1,2})?"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")|(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, "(?:[\\s\\,]{1,2}"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")?)"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v79, v0

    const v80, 0x7f08001a

    invoke-virtual/range {v79 .. v80}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 268
    .local v42, strLocalKeywordT1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v79, v0

    const v80, 0x7f08001c

    invoke-virtual/range {v79 .. v80}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 269
    .local v43, strLocalKeywordT2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v79, v0

    const v80, 0x7f08001b

    invoke-virtual/range {v79 .. v80}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 270
    .local v44, strLocalKeywordT3:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v79, v0

    const v80, 0x7f080018

    invoke-virtual/range {v79 .. v80}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 271
    .local v39, strLocalDateRsc:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v79, v0

    const v80, 0x7f080019

    invoke-virtual/range {v79 .. v80}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v46

    .line 273
    .local v46, strLocalTimeRsc:Ljava/lang/String;
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "(?:(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, "|"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")[\\.]?[\\s\\,]{0,2}(?:(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")?[\\s\\,]{1,2})(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, "|"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, "))|(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")[\\s]?(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, "|"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 278
    .local v41, strLocalKeywordRsc:Ljava/lang/String;
    move-object/from16 v38, v39

    .line 279
    move-object/from16 v45, v46

    .line 280
    const-string v79, "z/z"

    move-object/from16 v0, v79

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v79

    if-eqz v79, :cond_2ec

    .line 281
    move-object/from16 v44, v70

    .line 282
    :cond_2ec
    const-string v79, "z/z"

    move-object/from16 v0, v79

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v79

    if-nez v79, :cond_304

    const-string v79, "z/z"

    move-object/from16 v0, v79

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v79

    if-eqz v79, :cond_6b8

    .line 283
    :cond_304
    const-string v40, "z/z"

    .line 291
    :goto_306
    const-string v79, ""

    move-object/from16 v0, v38

    move-object/from16 v1, v79

    if-eq v0, v1, :cond_31a

    const-string v79, "z/z"

    move-object/from16 v0, v79

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v79

    if-eqz v79, :cond_6bc

    .line 292
    :cond_31a
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")|(?:(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")[\\s\\,\\.]{0,2})?(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 299
    :goto_353
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "(?:(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")[\\s\\,\\.]{0,2})?(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")(?:[\\.\\,\\s]|(?:\\&nbsp;)){1,2}(?:(?:\\&ndash;)|[\\-\\~\u2013])"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 306
    const-string v79, ""

    move-object/from16 v0, v45

    move-object/from16 v1, v79

    if-eq v0, v1, :cond_392

    const-string v79, "z/z"

    move-object/from16 v0, v79

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v79

    if-eqz v79, :cond_705

    .line 307
    :cond_392
    move-object/from16 v37, v63

    .line 311
    :goto_394
    const-string v79, "z/z"

    move-object/from16 v0, v79

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v79

    if-eqz v79, :cond_732

    .line 312
    move-object/from16 v36, v66

    .line 317
    :goto_3a2
    const/16 v79, 0x1

    move/from16 v0, p2

    move/from16 v1, v79

    if-ne v0, v1, :cond_753

    .line 319
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 320
    sget-boolean v79, Lcom/android/email/ViewPatternMatching;->enablePatternLocation:Z

    if-eqz v79, :cond_3ee

    .line 321
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "|(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    move-object/from16 v0, v79

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 324
    :cond_3ee
    sget-boolean v79, Lcom/android/email/ViewPatternMatching;->enablePatternCalendar:Z

    if-eqz v79, :cond_431

    .line 325
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "|(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")|(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")|(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    move-object/from16 v0, v79

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 329
    :cond_431
    sget-boolean v79, Lcom/android/email/ViewPatternMatching;->enablePatternCalendarKeyword:Z

    if-eqz v79, :cond_458

    .line 330
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "|(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    move-object/from16 v0, v79

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 333
    :cond_458
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "|(?i)(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    sget-object v80, Lcom/android/email/ViewPatternMatching;->OWN_WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual/range {v80 .. v80}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v80

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")|(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    sget-object v80, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual/range {v80 .. v80}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v80

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    move-object/from16 v0, v79

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 337
    sget-boolean v79, Lcom/android/email/ViewPatternMatching;->enablePatternPhone:Z

    if-eqz v79, :cond_4b4

    .line 338
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "|(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    move-object/from16 v0, v79

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 367
    :cond_4b4
    :goto_4b4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v73

    .line 368
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 370
    const-string v61, ".*(?:(?:\\&ndash;)|[\\-\\~\u2013]).*"

    .line 371
    .local v61, strPostPatternSeparate:Ljava/lang/String;
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "(?:(?:\\&nbsp;)|\\s){0,2}(?:(?:\\&ndash;)|[\\-\\~\u2013])[\\s]?(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")?"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, "(?:[\\.\\,\\s]|(?:\\&nbsp;)){0,2}(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 377
    .local v60, strPostGeneralTime:Ljava/lang/String;
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "(?:(?:\\&nbsp;)|\\s){0,2}(?:(?:\\&ndash;)|[\\-\\~\u2013])[\\s]?"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    .line 380
    .local v59, strPostGeneralDate:Ljava/lang/String;
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "(?:[\\.\\,\\s]|(?:\\&nbsp;)){1,2}(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    invoke-static/range {v79 .. v79}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v25

    .line 382
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "(?:[\\.\\,\\s]|(?:\\&nbsp;)){1,2}(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")?"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, "(?:[\\.\\,\\s]|(?:\\&nbsp;)){0,2}(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    invoke-static/range {v79 .. v79}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v26

    .line 388
    const/16 v79, 0x1

    move/from16 v0, p2

    move/from16 v1, v79

    if-ne v0, v1, :cond_598

    .line 389
    const/16 v21, 0x0

    .line 390
    .local v21, nTempPosition:I
    const-string v79, "<body>"

    move-object/from16 v0, p1

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    .line 391
    if-nez v21, :cond_584

    .line 392
    const-string v79, "<Body>"

    move-object/from16 v0, p1

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    .line 393
    :cond_584
    if-nez v21, :cond_590

    .line 394
    const-string v79, "<BODY>"

    move-object/from16 v0, p1

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    .line 395
    :cond_590
    move/from16 v0, v21

    move/from16 v1, v16

    if-le v0, v1, :cond_598

    .line 396
    move/from16 v16, v21

    .line 398
    .end local v21           #nTempPosition:I
    :cond_598
    :goto_598
    invoke-virtual/range {v15 .. v16}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v79

    if-eqz v79, :cond_5ef

    .line 400
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v14

    .line 402
    .local v14, matchedText:Ljava/lang/String;
    move-object v11, v14

    .line 403
    .local v11, linkText:Ljava/lang/String;
    const/16 v28, 0x0

    .line 405
    .local v28, protoType:Ljava/lang/String;
    const/16 v31, 0x0

    .line 406
    .local v31, stPos:I
    const/16 v20, 0x0

    .line 407
    .local v20, nRemoveCheck:I
    const/4 v3, 0x0

    .line 409
    .local v3, bErr:Z
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v16

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v75

    .line 412
    sub-long v79, v75, v73

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/ViewPatternMatching;->nTimeout:I

    move/from16 v81, v0

    move/from16 v0, v81

    int-to-long v0, v0

    move-wide/from16 v81, v0

    cmp-long v79, v79, v81

    if-lez v79, :cond_859

    .line 413
    const-string v79, "Email"

    new-instance v80, Ljava/lang/StringBuilder;

    invoke-direct/range {v80 .. v80}, Ljava/lang/StringBuilder;-><init>()V

    const-string v81, "reloadUiFromBody : timeout="

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    move-object/from16 v0, v80

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v79 .. v80}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const/4 v4, 0x1

    .line 415
    move-object/from16 v0, v29

    invoke-virtual {v15, v0, v14}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 416
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->length()I

    move-result v79

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v80

    sub-int v79, v79, v80

    sput v79, Lcom/android/email/ViewPatternMatching;->mCurrentPos:I

    .line 927
    .end local v3           #bErr:Z
    .end local v11           #linkText:Ljava/lang/String;
    .end local v14           #matchedText:Ljava/lang/String;
    .end local v20           #nRemoveCheck:I
    .end local v28           #protoType:Ljava/lang/String;
    .end local v31           #stPos:I
    :cond_5ef
    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 928
    const/16 v79, 0x0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->length()I

    move-result v80

    move-object/from16 v0, v30

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 929
    const-string v79, "Email"

    new-instance v80, Ljava/lang/StringBuilder;

    invoke-direct/range {v80 .. v80}, Ljava/lang/StringBuilder;-><init>()V

    const-string v81, "reloadUiFromBody : time1=["

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v81

    sub-long v81, v81, v73

    invoke-virtual/range {v80 .. v82}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v80

    const-string v81, "]"

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v81

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v79 .. v80}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string v79, "</body></html>"

    move-object/from16 v0, v29

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 933
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    .line 934
    const/16 v79, 0x0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->length()I

    move-result v80

    move-object/from16 v0, v29

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 935
    if-eqz v4, :cond_655

    sget v79, Lcom/android/email/ViewPatternMatching;->mCurrentPos:I

    move/from16 v0, v79

    move/from16 v1, p3

    if-gt v0, v1, :cond_659

    .line 936
    :cond_655
    const/16 v79, 0x0

    sput v79, Lcom/android/email/ViewPatternMatching;->mCurrentPos:I

    .line 938
    :cond_659
    return-object v23

    .line 241
    .end local v39           #strLocalDateRsc:Ljava/lang/String;
    .end local v41           #strLocalKeywordRsc:Ljava/lang/String;
    .end local v42           #strLocalKeywordT1:Ljava/lang/String;
    .end local v43           #strLocalKeywordT2:Ljava/lang/String;
    .end local v44           #strLocalKeywordT3:Ljava/lang/String;
    .end local v46           #strLocalTimeRsc:Ljava/lang/String;
    .end local v59           #strPostGeneralDate:Ljava/lang/String;
    .end local v60           #strPostGeneralTime:Ljava/lang/String;
    .end local v61           #strPostPatternSeparate:Ljava/lang/String;
    .end local v63           #strStandardTime:Ljava/lang/String;
    .end local v68           #strUSkeywordT1:Ljava/lang/String;
    .end local v69           #strUSkeywordT2:Ljava/lang/String;
    .end local v70           #strUSkeywordT3:Ljava/lang/String;
    :cond_65a
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "|"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    move-object/from16 v0, v50

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    goto/16 :goto_146

    .line 246
    :cond_67b
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v79

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, "|"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, "|"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, "|"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    goto/16 :goto_175

    .line 285
    .restart local v39       #strLocalDateRsc:Ljava/lang/String;
    .restart local v41       #strLocalKeywordRsc:Ljava/lang/String;
    .restart local v42       #strLocalKeywordT1:Ljava/lang/String;
    .restart local v43       #strLocalKeywordT2:Ljava/lang/String;
    .restart local v44       #strLocalKeywordT3:Ljava/lang/String;
    .restart local v46       #strLocalTimeRsc:Ljava/lang/String;
    .restart local v63       #strStandardTime:Ljava/lang/String;
    .restart local v68       #strUSkeywordT1:Ljava/lang/String;
    .restart local v69       #strUSkeywordT2:Ljava/lang/String;
    .restart local v70       #strUSkeywordT3:Ljava/lang/String;
    :cond_6b8
    move-object/from16 v40, v41

    goto/16 :goto_306

    .line 295
    :cond_6bc
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")|(?:(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")[\\s\\,\\.]{0,2})?(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")|(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_353

    .line 309
    :cond_705
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")|(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_394

    .line 314
    :cond_732
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v79

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, "|"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_3a2

    .line 347
    :cond_753
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "(?i)(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    sget-object v80, Lcom/android/email/ViewPatternMatching;->OWN_WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual/range {v80 .. v80}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v80

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 348
    sget-boolean v79, Lcom/android/email/ViewPatternMatching;->enablePatternLocation:Z

    if-eqz v79, :cond_799

    .line 349
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "|(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    move-object/from16 v0, v79

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 350
    :cond_799
    sget-boolean v79, Lcom/android/email/ViewPatternMatching;->enablePatternCalendar:Z

    if-eqz v79, :cond_7dc

    .line 351
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "|(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")|(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")|(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    move-object/from16 v0, v79

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 353
    :cond_7dc
    sget-boolean v79, Lcom/android/email/ViewPatternMatching;->enablePatternCalendarKeyword:Z

    if-eqz v79, :cond_803

    .line 354
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "|(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    move-object/from16 v0, v79

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 355
    :cond_803
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "|(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    sget-object v80, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual/range {v80 .. v80}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v80

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    move-object/from16 v0, v79

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 357
    sget-boolean v79, Lcom/android/email/ViewPatternMatching;->enablePatternPhone:Z

    if-eqz v79, :cond_84f

    .line 358
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "|(?:"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, ")"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    move-object/from16 v0, v79

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 359
    :cond_84f
    const-string v79, "|(?=[\\w]{512,})"

    move-object/from16 v0, v79

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_4b4

    .line 423
    .restart local v3       #bErr:Z
    .restart local v11       #linkText:Ljava/lang/String;
    .restart local v14       #matchedText:Ljava/lang/String;
    .restart local v20       #nRemoveCheck:I
    .restart local v28       #protoType:Ljava/lang/String;
    .restart local v31       #stPos:I
    .restart local v59       #strPostGeneralDate:Ljava/lang/String;
    .restart local v60       #strPostGeneralTime:Ljava/lang/String;
    .restart local v61       #strPostPatternSeparate:Ljava/lang/String;
    :cond_859
    move-object/from16 v0, v78

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v79

    if-eqz v79, :cond_899

    .line 425
    const/16 v17, 0x0

    .local v17, nLocalFindA:I
    const/16 v18, 0x0

    .line 426
    .local v18, nLocalFindB:I
    const-string v79, "</a>"

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, p1

    move-object/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v17

    .line 427
    const-string v79, "</A>"

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, p1

    move-object/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v18

    .line 428
    if-lez v18, :cond_88f

    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_88f

    .line 429
    move/from16 v17, v18

    .line 430
    :cond_88f
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_598

    .line 431
    add-int/lit8 v16, v17, 0x4

    goto/16 :goto_598

    .line 435
    .end local v17           #nLocalFindA:I
    .end local v18           #nLocalFindB:I
    :cond_899
    move-object/from16 v0, v77

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v79

    if-nez v79, :cond_598

    .line 438
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "(?i)"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    sget-object v80, Lcom/android/email/ViewPatternMatching;->OWN_WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual/range {v80 .. v80}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v80

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    move-object/from16 v0, v79

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v79

    if-nez v79, :cond_8d0

    sget-object v79, Lcom/android/email/ViewPatternMatching;->OWN_WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual/range {v79 .. v79}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v79

    move-object/from16 v0, v79

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v79

    if-eqz v79, :cond_99c

    .line 444
    :cond_8d0
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    .line 446
    .local v7, endPos:I
    add-int/lit8 v79, v7, 0x1

    move/from16 v0, v79

    move/from16 v1, v22

    if-ge v0, v1, :cond_8f2

    .line 447
    add-int/lit8 v79, v7, 0x1

    :try_start_8de
    move-object/from16 v0, p1

    move/from16 v1, v79

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v58

    .line 448
    .local v58, strPost:Ljava/lang/String;
    const-string v79, "[\\.]"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_8ef
    .catch Ljava/lang/Exception; {:try_start_8de .. :try_end_8ef} :catch_12cc

    move-result v79

    if-nez v79, :cond_598

    .line 454
    .end local v58           #strPost:Ljava/lang/String;
    :cond_8f2
    :goto_8f2
    sget-object v79, Lcom/android/email/ViewPatternMatching;->WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

    move-object/from16 v0, v79

    invoke-virtual {v0, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v27

    .line 455
    .local v27, proto:Ljava/util/regex/Matcher;
    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->find()Z

    move-result v79

    if-eqz v79, :cond_998

    .line 457
    const-string v28, ""

    .line 883
    .end local v7           #endPos:I
    .end local v27           #proto:Ljava/util/regex/Matcher;
    :cond_902
    :goto_902
    if-eqz v28, :cond_941

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v79

    if-nez v79, :cond_941

    if-eqz v11, :cond_941

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v79

    if-lez v79, :cond_941

    .line 885
    const-string v79, ":"

    move-object/from16 v0, v79

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 886
    .local v10, index:I
    const/16 v79, -0x1

    move/from16 v0, v79

    if-eq v10, v0, :cond_941

    .line 887
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v80, 0x0

    move/from16 v0, v80

    invoke-virtual {v11, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v80

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual {v11, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v80

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 892
    .end local v10           #index:I
    :cond_941
    if-nez v3, :cond_975

    .line 893
    const-string v79, "<a href=\"%s\">%s</a>"

    const/16 v80, 0x2

    move/from16 v0, v80

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v80, v0

    const/16 v81, 0x0

    new-instance v82, Ljava/lang/StringBuilder;

    invoke-direct/range {v82 .. v82}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v82

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v82

    move-object/from16 v0, v82

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v82

    invoke-virtual/range {v82 .. v82}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v82

    aput-object v82, v80, v81

    const/16 v81, 0x1

    aput-object v14, v80, v81

    invoke-static/range {v79 .. v80}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 895
    .local v8, href:Ljava/lang/String;
    move-object/from16 v0, v29

    invoke-virtual {v15, v0, v8}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 897
    .end local v8           #href:Ljava/lang/String;
    :cond_975
    if-lez v20, :cond_12ab

    .line 898
    const/16 v72, 0x0

    .line 899
    .local v72, tempend:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_97a
    move/from16 v0, v20

    if-ge v9, v0, :cond_12ab

    .line 900
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v79

    if-eqz v79, :cond_1271

    .line 901
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v14

    .line 902
    const-string v79, "test"

    move-object/from16 v0, v30

    move-object/from16 v1, v79

    invoke-virtual {v15, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 903
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v72

    .line 899
    :cond_995
    :goto_995
    add-int/lit8 v9, v9, 0x1

    goto :goto_97a

    .line 459
    .end local v9           #i:I
    .end local v72           #tempend:I
    .restart local v7       #endPos:I
    .restart local v27       #proto:Ljava/util/regex/Matcher;
    :cond_998
    const-string v28, "http://"

    goto/16 :goto_902

    .line 461
    .end local v7           #endPos:I
    .end local v27           #proto:Ljava/util/regex/Matcher;
    :cond_99c
    sget-boolean v79, Lcom/android/email/ViewPatternMatching;->enablePatternCalendar:Z

    if-eqz v79, :cond_a19

    move-object/from16 v0, v35

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v79

    if-eqz v79, :cond_a19

    .line 464
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v31

    .line 465
    add-int/lit8 v7, v31, 0x1e

    .line 466
    .restart local v7       #endPos:I
    move/from16 v0, v22

    if-ge v0, v7, :cond_9b4

    .line 467
    add-int/lit8 v7, v22, -0x1

    .line 470
    :cond_9b4
    :try_start_9b4
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v58

    .line 472
    .restart local v58       #strPost:Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 473
    const/16 v19, 0x0

    .line 474
    .local v19, nRefPos:I
    const-string v79, "&n"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v79

    if-eqz v79, :cond_9d4

    .line 475
    const/16 v19, 0x8

    .line 476
    :cond_9d4
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v79

    if-eqz v79, :cond_598

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v79

    add-int/lit8 v80, v19, 0x4

    move/from16 v0, v79

    move/from16 v1, v80

    if-ge v0, v1, :cond_598

    .line 477
    add-int/lit8 v20, v20, 0x1

    .line 478
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v79

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const/16 v80, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v81

    move-object/from16 v0, v58

    move/from16 v1, v80

    move/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v80

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 479
    move-object v11, v14

    .line 481
    const-string v28, "calendar:T6:"

    .line 482
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I
    :try_end_a11
    .catch Ljava/lang/Exception; {:try_start_9b4 .. :try_end_a11} :catch_a16

    move-result v79

    add-int v16, v31, v79

    goto/16 :goto_902

    .line 485
    .end local v19           #nRefPos:I
    .end local v58           #strPost:Ljava/lang/String;
    :catch_a16
    move-exception v6

    .line 486
    .local v6, e:Ljava/lang/Exception;
    goto/16 :goto_598

    .line 488
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #endPos:I
    :cond_a19
    sget-boolean v79, Lcom/android/email/ViewPatternMatching;->enablePatternCalendar:Z

    if-eqz v79, :cond_dc3

    move-object/from16 v0, v34

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v79

    if-eqz v79, :cond_dc3

    .line 490
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v31

    .line 493
    const/16 v79, 0x5

    move/from16 v0, v31

    move/from16 v1, v79

    if-lt v0, v1, :cond_598

    .line 496
    const/16 v79, 0x8

    move/from16 v0, v31

    move/from16 v1, v79

    if-ge v0, v1, :cond_a7f

    .line 497
    const/16 v79, 0x0

    const/16 v80, 0x2

    :try_start_a3d
    move/from16 v0, v79

    move/from16 v1, v80

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v58

    .line 500
    .restart local v58       #strPost:Ljava/lang/String;
    const-string v79, "0(\\s|\\/|\\-)"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v79

    if-nez v79, :cond_598

    const-string v79, "00"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v79

    if-nez v79, :cond_598

    .line 502
    add-int/lit8 v79, v31, -0x2

    move/from16 v0, v79

    move/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v58

    .line 505
    const-string v79, "(\\s|\\/|\\-)0"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v79

    if-nez v79, :cond_598

    const-string v79, "00"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v79

    if-nez v79, :cond_598

    .line 508
    .end local v58           #strPost:Ljava/lang/String;
    :cond_a7f
    const/16 v79, 0xa

    move/from16 v0, v31

    move/from16 v1, v79

    if-ge v0, v1, :cond_acd

    .line 509
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    .line 510
    .restart local v7       #endPos:I
    add-int/lit8 v79, v7, 0x1

    move/from16 v0, v79

    move/from16 v1, v22

    if-ge v0, v1, :cond_aa9

    .line 511
    add-int/lit8 v79, v7, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v79

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v58

    .line 512
    .restart local v58       #strPost:Ljava/lang/String;
    const-string v79, "\\d"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v79

    if-nez v79, :cond_598

    .line 515
    .end local v58           #strPost:Ljava/lang/String;
    :cond_aa9
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    .line 516
    add-int/lit8 v79, v7, -0x1

    const/16 v80, 0x1

    move/from16 v0, v79

    move/from16 v1, v80

    if-le v0, v1, :cond_acd

    .line 517
    add-int/lit8 v79, v7, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v79

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v58

    .line 518
    .restart local v58       #strPost:Ljava/lang/String;
    const-string v79, "\\w"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v79

    if-nez v79, :cond_598

    .line 522
    .end local v7           #endPos:I
    .end local v58           #strPost:Ljava/lang/String;
    :cond_acd
    move-object/from16 v58, v14

    .line 523
    .restart local v58       #strPost:Ljava/lang/String;
    invoke-virtual/range {v58 .. v58}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v79

    if-eqz v79, :cond_b0f

    .line 524
    const/4 v10, 0x0

    .restart local v10       #index:I
    const/4 v5, 0x0

    .line 525
    .local v5, ct:I
    const/4 v10, 0x0

    :goto_ae0
    invoke-virtual/range {v58 .. v58}, Ljava/lang/String;->length()I

    move-result v79

    move/from16 v0, v79

    if-ge v10, v0, :cond_b09

    .line 526
    move-object/from16 v0, v58

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v79

    const/16 v80, 0x39

    move/from16 v0, v79

    move/from16 v1, v80

    if-gt v0, v1, :cond_b06

    move-object/from16 v0, v58

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v79

    const/16 v80, 0x30

    move/from16 v0, v79

    move/from16 v1, v80

    if-lt v0, v1, :cond_b06

    .line 527
    add-int/lit8 v5, v5, 0x1

    .line 525
    :cond_b06
    add-int/lit8 v10, v10, 0x1

    goto :goto_ae0

    .line 529
    :cond_b09
    const/16 v79, 0x6

    move/from16 v0, v79

    if-lt v5, v0, :cond_598

    .line 532
    .end local v5           #ct:I
    .end local v10           #index:I
    :cond_b0f
    const-string v79, " 0 "

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v79

    if-nez v79, :cond_598

    const-string v79, "/0/"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v79

    if-nez v79, :cond_598

    const-string v79, "-0-"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v79

    if-nez v79, :cond_598

    .line 535
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I
    :try_end_b36
    .catch Ljava/lang/Exception; {:try_start_a3d .. :try_end_b36} :catch_12c6

    move-result v31

    .line 536
    add-int/lit8 v7, v31, 0x12

    .line 538
    .restart local v7       #endPos:I
    move/from16 v0, v22

    if-ge v0, v7, :cond_b3f

    .line 539
    add-int/lit8 v7, v22, -0x1

    .line 540
    :cond_b3f
    :try_start_b3f
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v58

    .line 541
    const/16 v79, 0x0

    move-object/from16 v0, v58

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v79

    const/16 v80, 0x3a

    move/from16 v0, v79

    move/from16 v1, v80

    if-eq v0, v1, :cond_598

    const/16 v79, 0x0

    move-object/from16 v0, v58

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v79

    const/16 v80, 0x2d

    move/from16 v0, v79

    move/from16 v1, v80

    if-eq v0, v1, :cond_598

    .line 548
    const-string v28, "calendar:T2:"

    .line 551
    move-object/from16 v0, v26

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 552
    const/16 v19, 0x0

    .line 553
    .restart local v19       #nRefPos:I
    const-string v79, "&n"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v79

    if-eqz v79, :cond_b85

    .line 554
    const/16 v19, 0x8

    .line 555
    :cond_b85
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v79

    if-eqz v79, :cond_d52

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v79

    add-int/lit8 v80, v19, 0x4

    move/from16 v0, v79

    move/from16 v1, v80

    if-ge v0, v1, :cond_d52

    .line 557
    add-int/lit8 v20, v20, 0x1

    .line 558
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v79

    add-int v16, v31, v79

    .line 559
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v79

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const/16 v80, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v81

    move-object/from16 v0, v58

    move/from16 v1, v80

    move/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v80

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 560
    move-object v11, v14

    .line 561
    const-string v28, "calendar:T7:"

    .line 563
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v79

    add-int v31, v31, v79

    .line 564
    add-int/lit8 v7, v31, 0x1e

    .line 565
    move/from16 v0, v22

    if-ge v0, v7, :cond_bd3

    .line 566
    add-int/lit8 v7, v22, -0x1

    .line 567
    :cond_bd3
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v58

    .line 568
    const/16 v32, 0x0

    .line 569
    .local v32, strCheck:Ljava/lang/String;
    sub-int v79, v7, v31

    const/16 v80, 0x3

    move/from16 v0, v79

    move/from16 v1, v80

    if-le v0, v1, :cond_bf5

    .line 570
    const/16 v79, 0x0

    const/16 v80, 0x2

    move-object/from16 v0, v58

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 571
    :cond_bf5
    const-string v79, "&"

    move-object/from16 v0, v32

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v79

    if-eqz v79, :cond_c19

    sub-int v79, v7, v31

    const/16 v80, 0xa

    move/from16 v0, v79

    move/from16 v1, v80

    if-le v0, v1, :cond_c19

    .line 572
    const/16 v79, 0x0

    const/16 v80, 0x9

    move-object/from16 v0, v58

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 573
    :cond_c19
    if-eqz v32, :cond_902

    move-object/from16 v0, v32

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v79

    if-eqz v79, :cond_902

    .line 574
    const/16 v24, 0x0

    .line 575
    .local v24, patPost3:Ljava/util/regex/Pattern;
    invoke-static/range {v60 .. v60}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v24

    .line 576
    move-object/from16 v0, v24

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 577
    const-string v79, "&n"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v79

    if-eqz v79, :cond_c99

    .line 578
    const/16 v19, 0x8

    .line 581
    :goto_c41
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v79

    if-eqz v79, :cond_c9c

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v79

    add-int/lit8 v80, v19, 0x4

    move/from16 v0, v79

    move/from16 v1, v80

    if-ge v0, v1, :cond_c9c

    .line 583
    add-int/lit8 v20, v20, 0x1

    .line 584
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v79

    add-int v16, v31, v79

    .line 585
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v79

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const/16 v80, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v81

    move-object/from16 v0, v58

    move/from16 v1, v80

    move/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v80

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 587
    move-object v11, v14

    .line 589
    const-string v28, "calendar:T7:"

    .line 590
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v79

    add-int v31, v31, v79

    .line 591
    add-int/lit8 v7, v31, 0x1e

    .line 592
    move/from16 v0, v22

    if-ge v0, v7, :cond_c8f

    .line 593
    add-int/lit8 v7, v22, -0x1

    .line 594
    :cond_c8f
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v58

    goto/16 :goto_902

    .line 580
    :cond_c99
    const/16 v19, 0x0

    goto :goto_c41

    .line 596
    :cond_c9c
    const/16 v71, 0x0

    .line 597
    .local v71, tempMatched:Ljava/lang/String;
    invoke-static/range {v59 .. v59}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v24

    .line 598
    move-object/from16 v0, v24

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 599
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v79

    if-eqz v79, :cond_902

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v79

    add-int/lit8 v80, v19, 0x4

    move/from16 v0, v79

    move/from16 v1, v80

    if-ge v0, v1, :cond_902

    .line 602
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v79

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const/16 v80, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v81

    move-object/from16 v0, v58

    move/from16 v1, v80

    move/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v80

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    .line 605
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v79

    add-int v31, v31, v79

    .line 606
    add-int/lit8 v7, v31, 0x1e

    .line 607
    move/from16 v0, v22

    if-ge v0, v7, :cond_ced

    .line 608
    add-int/lit8 v7, v22, -0x1

    .line 609
    :cond_ced
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v58

    .line 610
    move-object/from16 v0, v26

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 611
    const-string v79, "&n"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v79

    if-eqz v79, :cond_d4f

    .line 612
    const/16 v19, 0x8

    .line 615
    :goto_d0b
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v79

    if-eqz v79, :cond_902

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v79

    add-int/lit8 v80, v19, 0x4

    move/from16 v0, v79

    move/from16 v1, v80

    if-ge v0, v1, :cond_902

    .line 618
    add-int/lit8 v20, v20, 0x2

    .line 619
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v79

    add-int v16, v31, v79

    .line 620
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v79

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const/16 v80, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v81

    move-object/from16 v0, v58

    move/from16 v1, v80

    move/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v80

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 622
    move-object v11, v14

    .line 627
    const-string v28, "calendar:T3:"

    goto/16 :goto_902

    .line 614
    :cond_d4f
    const/16 v19, 0x0

    goto :goto_d0b

    .line 633
    .end local v24           #patPost3:Ljava/util/regex/Pattern;
    .end local v32           #strCheck:Ljava/lang/String;
    .end local v71           #tempMatched:Ljava/lang/String;
    :cond_d52
    const/16 v24, 0x0

    .line 634
    .restart local v24       #patPost3:Ljava/util/regex/Pattern;
    invoke-static/range {v59 .. v59}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v24

    .line 635
    add-int/lit8 v7, v31, 0x1e

    .line 636
    move/from16 v0, v22

    if-ge v0, v7, :cond_d60

    .line 637
    add-int/lit8 v7, v22, -0x1

    .line 638
    :cond_d60
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v58

    .line 639
    move-object/from16 v0, v24

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 640
    const-string v79, "&n"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v79

    if-eqz v79, :cond_dc0

    .line 641
    const/16 v19, 0x8

    .line 644
    :goto_d7e
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v79

    if-eqz v79, :cond_902

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v79

    add-int/lit8 v80, v19, 0x4

    move/from16 v0, v79

    move/from16 v1, v80

    if-ge v0, v1, :cond_902

    .line 646
    add-int/lit8 v20, v20, 0x1

    .line 647
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v79

    add-int v16, v31, v79

    .line 648
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v79

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const/16 v80, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v81

    move-object/from16 v0, v58

    move/from16 v1, v80

    move/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v80

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 650
    move-object v11, v14

    .line 652
    const-string v28, "calendar:T2:"
    :try_end_dbe
    .catch Ljava/lang/Exception; {:try_start_b3f .. :try_end_dbe} :catch_12c9

    goto/16 :goto_902

    .line 643
    :cond_dc0
    const/16 v19, 0x0

    goto :goto_d7e

    .line 662
    .end local v7           #endPos:I
    .end local v19           #nRefPos:I
    .end local v24           #patPost3:Ljava/util/regex/Pattern;
    .end local v58           #strPost:Ljava/lang/String;
    :cond_dc3
    sget-boolean v79, Lcom/android/email/ViewPatternMatching;->enablePatternCalendar:Z

    if-eqz v79, :cond_f46

    move-object/from16 v0, v37

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v79

    if-eqz v79, :cond_f46

    .line 665
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->start()I

    move-result v31

    .line 666
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    .line 668
    .restart local v7       #endPos:I
    const/16 v79, 0x2

    move/from16 v0, v31

    move/from16 v1, v79

    if-le v0, v1, :cond_df7

    .line 669
    add-int/lit8 v79, v31, -0x1

    :try_start_de1
    move-object/from16 v0, p1

    move/from16 v1, v79

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v58

    .line 670
    .restart local v58       #strPost:Ljava/lang/String;
    const-string v79, "[\\w\\d\\-@#:]"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v79

    if-nez v79, :cond_598

    .line 674
    .end local v58           #strPost:Ljava/lang/String;
    :cond_df7
    add-int/lit8 v79, v7, 0x2

    move/from16 v0, v79

    move/from16 v1, v22

    if-ge v0, v1, :cond_e15

    .line 675
    add-int/lit8 v79, v7, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v79

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v58

    .line 676
    .restart local v58       #strPost:Ljava/lang/String;
    const-string v79, "([\\.:]\\d)|(\\d.)"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_e12
    .catch Ljava/lang/Exception; {:try_start_de1 .. :try_end_e12} :catch_12c3

    move-result v79

    if-nez v79, :cond_598

    .line 682
    .end local v58           #strPost:Ljava/lang/String;
    :cond_e15
    :goto_e15
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v31

    .line 683
    add-int/lit8 v7, v31, 0x1e

    .line 684
    move/from16 v0, v22

    if-ge v0, v7, :cond_e21

    .line 685
    add-int/lit8 v7, v22, -0x1

    .line 686
    :cond_e21
    move-object v11, v14

    .line 687
    const-string v28, "calendar:T1:"

    .line 689
    :try_start_e24
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v58

    .line 691
    .restart local v58       #strPost:Ljava/lang/String;
    const/16 v32, 0x0

    .line 692
    .restart local v32       #strCheck:Ljava/lang/String;
    const/16 v19, 0x0

    .line 693
    .restart local v19       #nRefPos:I
    sub-int v79, v7, v31

    const/16 v80, 0x3

    move/from16 v0, v79

    move/from16 v1, v80

    if-le v0, v1, :cond_e48

    .line 694
    const/16 v79, 0x0

    const/16 v80, 0x2

    move-object/from16 v0, v58

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 695
    :cond_e48
    const-string v79, "&"

    move-object/from16 v0, v32

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v79

    if-eqz v79, :cond_e6c

    sub-int v79, v7, v31

    const/16 v80, 0xa

    move/from16 v0, v79

    move/from16 v1, v80

    if-le v0, v1, :cond_e6c

    .line 696
    const/16 v79, 0x0

    const/16 v80, 0x9

    move-object/from16 v0, v58

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 697
    :cond_e6c
    if-eqz v32, :cond_eeb

    move-object/from16 v0, v32

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v79

    if-eqz v79, :cond_eeb

    .line 698
    const/16 v24, 0x0

    .line 699
    .restart local v24       #patPost3:Ljava/util/regex/Pattern;
    const/4 v13, 0x0

    .line 700
    invoke-static/range {v60 .. v60}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v24

    .line 701
    move-object/from16 v0, v24

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 702
    const-string v79, "&n"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v79

    if-eqz v79, :cond_e95

    .line 703
    const/16 v19, 0x8

    .line 704
    :cond_e95
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v79

    if-eqz v79, :cond_eeb

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v79

    add-int/lit8 v80, v19, 0x4

    move/from16 v0, v79

    move/from16 v1, v80

    if-ge v0, v1, :cond_eeb

    .line 706
    add-int/lit8 v20, v20, 0x1

    .line 707
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v79

    add-int v16, v31, v79

    .line 708
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v79

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const/16 v80, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v81

    move-object/from16 v0, v58

    move/from16 v1, v80

    move/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v80

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 709
    move-object v11, v14

    .line 710
    const-string v28, "calendar:T1:"

    .line 711
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v79

    add-int v31, v31, v79

    .line 712
    add-int/lit8 v7, v31, 0x1e

    .line 713
    move/from16 v0, v22

    if-ge v0, v7, :cond_ee3

    .line 714
    add-int/lit8 v7, v22, -0x1

    .line 715
    :cond_ee3
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v58

    .line 720
    .end local v24           #patPost3:Ljava/util/regex/Pattern;
    :cond_eeb
    move-object/from16 v0, v25

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 721
    const-string v79, "&n"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v79

    if-eqz v79, :cond_f43

    .line 722
    const/16 v19, 0x8

    .line 725
    :goto_f01
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v79

    if-eqz v79, :cond_902

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v79

    add-int/lit8 v80, v19, 0x4

    move/from16 v0, v79

    move/from16 v1, v80

    if-ge v0, v1, :cond_902

    .line 726
    add-int/lit8 v20, v20, 0x1

    .line 727
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v79

    add-int v16, v31, v79

    .line 728
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v79

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const/16 v80, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v81

    move-object/from16 v0, v58

    move/from16 v1, v80

    move/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v80

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 729
    move-object v11, v14

    .line 730
    const-string v28, "calendar:T4:"
    :try_end_f41
    .catch Ljava/lang/Exception; {:try_start_e24 .. :try_end_f41} :catch_12c0

    goto/16 :goto_902

    .line 724
    :cond_f43
    const/16 v19, 0x0

    goto :goto_f01

    .line 737
    .end local v7           #endPos:I
    .end local v19           #nRefPos:I
    .end local v32           #strCheck:Ljava/lang/String;
    .end local v58           #strPost:Ljava/lang/String;
    :cond_f46
    sget-boolean v79, Lcom/android/email/ViewPatternMatching;->enablePatternCalendarKeyword:Z

    if-eqz v79, :cond_10d2

    move-object/from16 v0, v36

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v79

    if-eqz v79, :cond_10d2

    .line 741
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v31

    .line 742
    add-int/lit8 v7, v31, 0x12

    .line 743
    .restart local v7       #endPos:I
    move/from16 v0, v22

    if-ge v0, v7, :cond_f5e

    .line 744
    add-int/lit8 v7, v22, -0x1

    .line 745
    :cond_f5e
    const-string v28, "calendar:T5:"

    .line 746
    move-object v11, v14

    .line 748
    :try_start_f61
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v58

    .line 749
    .restart local v58       #strPost:Ljava/lang/String;
    const/16 v32, 0x0

    .line 750
    .restart local v32       #strCheck:Ljava/lang/String;
    const/16 v19, 0x0

    .line 751
    .restart local v19       #nRefPos:I
    sub-int v79, v7, v31

    const/16 v80, 0x3

    move/from16 v0, v79

    move/from16 v1, v80

    if-le v0, v1, :cond_f85

    .line 752
    const/16 v79, 0x0

    const/16 v80, 0x2

    move-object/from16 v0, v58

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 753
    :cond_f85
    const-string v79, "&"

    move-object/from16 v0, v32

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v79

    if-eqz v79, :cond_fa9

    sub-int v79, v7, v31

    const/16 v80, 0xa

    move/from16 v0, v79

    move/from16 v1, v80

    if-le v0, v1, :cond_fa9

    .line 754
    const/16 v79, 0x0

    const/16 v80, 0x9

    move-object/from16 v0, v58

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 755
    :cond_fa9
    if-eqz v32, :cond_1081

    move-object/from16 v0, v32

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v79

    if-nez v79, :cond_1081

    .line 757
    move-object/from16 v0, v26

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 758
    const-string v79, "&n"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v79

    if-eqz v79, :cond_fcb

    .line 759
    const/16 v19, 0x8

    .line 760
    :cond_fcb
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v79

    if-eqz v79, :cond_101f

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v79

    add-int/lit8 v80, v19, 0x4

    move/from16 v0, v79

    move/from16 v1, v80

    if-ge v0, v1, :cond_101f

    .line 762
    add-int/lit8 v20, v20, 0x1

    .line 763
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v79

    add-int v16, v31, v79

    .line 764
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v79

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const/16 v80, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v81

    move-object/from16 v0, v58

    move/from16 v1, v80

    move/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v80

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 765
    move-object v11, v14

    .line 766
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v79

    add-int v31, v31, v79

    .line 767
    add-int/lit8 v7, v31, 0x1e

    .line 768
    move/from16 v0, v22

    if-ge v0, v7, :cond_1017

    .line 769
    add-int/lit8 v7, v22, -0x1

    .line 770
    :cond_1017
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v58

    .line 773
    :cond_101f
    const/16 v24, 0x0

    .line 774
    .restart local v24       #patPost3:Ljava/util/regex/Pattern;
    const/4 v13, 0x0

    .line 775
    invoke-static/range {v60 .. v60}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v24

    .line 776
    move-object/from16 v0, v24

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 777
    const-string v79, "&n"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v79

    if-eqz v79, :cond_107e

    .line 778
    const/16 v19, 0x8

    .line 781
    :goto_103c
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v79

    if-eqz v79, :cond_902

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v79

    add-int/lit8 v80, v19, 0x4

    move/from16 v0, v79

    move/from16 v1, v80

    if-ge v0, v1, :cond_902

    .line 783
    add-int/lit8 v20, v20, 0x1

    .line 784
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v79

    add-int v16, v31, v79

    .line 785
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v79

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const/16 v80, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v81

    move-object/from16 v0, v58

    move/from16 v1, v80

    move/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v80

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 786
    move-object v11, v14

    .line 787
    const-string v28, "calendar:T5:"

    goto/16 :goto_902

    .line 780
    :cond_107e
    const/16 v19, 0x0

    goto :goto_103c

    .line 790
    .end local v24           #patPost3:Ljava/util/regex/Pattern;
    :cond_1081
    const/16 v24, 0x0

    .line 791
    .restart local v24       #patPost3:Ljava/util/regex/Pattern;
    const/4 v13, 0x0

    .line 792
    invoke-static/range {v60 .. v60}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v24

    .line 793
    move-object/from16 v0, v24

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 794
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v79

    if-eqz v79, :cond_902

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v79

    const/16 v80, 0x4

    move/from16 v0, v79

    move/from16 v1, v80

    if-ge v0, v1, :cond_902

    .line 795
    add-int/lit8 v20, v20, 0x1

    .line 796
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v79

    add-int v16, v31, v79

    .line 797
    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v79

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    const/16 v80, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v81

    move-object/from16 v0, v58

    move/from16 v1, v80

    move/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v80

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 798
    move-object v11, v14

    .line 799
    const-string v28, "calendar:T5:"
    :try_end_10d0
    .catch Ljava/lang/Exception; {:try_start_f61 .. :try_end_10d0} :catch_12bd

    goto/16 :goto_902

    .line 805
    .end local v7           #endPos:I
    .end local v19           #nRefPos:I
    .end local v24           #patPost3:Ljava/util/regex/Pattern;
    .end local v32           #strCheck:Ljava/lang/String;
    .end local v58           #strPost:Ljava/lang/String;
    :cond_10d2
    sget-object v79, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual/range {v79 .. v79}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v79

    move-object/from16 v0, v79

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v79

    if-eqz v79, :cond_10e4

    .line 808
    const-string v28, "mailto:"

    goto/16 :goto_902

    .line 809
    :cond_10e4
    sget-boolean v79, Lcom/android/email/ViewPatternMatching;->enablePatternPhone:Z

    if-eqz v79, :cond_11c8

    move-object/from16 v0, v57

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v79

    if-eqz v79, :cond_11c8

    .line 810
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->start()I

    move-result v31

    .line 811
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    .line 813
    .restart local v7       #endPos:I
    :try_start_10f8
    const-string v79, ".0."

    move-object/from16 v0, v79

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v79

    if-nez v79, :cond_598

    const/16 v79, 0x0

    move/from16 v0, v79

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v79

    const/16 v80, 0x2d

    move/from16 v0, v79

    move/from16 v1, v80

    if-eq v0, v1, :cond_598

    .line 816
    move-object/from16 v58, v14

    .line 817
    .restart local v58       #strPost:Ljava/lang/String;
    invoke-virtual/range {v58 .. v58}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v79

    move-object/from16 v0, v79

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v79

    if-nez v79, :cond_598

    .line 820
    const/4 v10, 0x0

    .restart local v10       #index:I
    const/4 v5, 0x0

    .line 821
    .restart local v5       #ct:I
    const/4 v10, 0x0

    :goto_1125
    invoke-virtual/range {v58 .. v58}, Ljava/lang/String;->length()I

    move-result v79

    move/from16 v0, v79

    if-ge v10, v0, :cond_114e

    .line 822
    move-object/from16 v0, v58

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v79

    const/16 v80, 0x39

    move/from16 v0, v79

    move/from16 v1, v80

    if-gt v0, v1, :cond_114b

    move-object/from16 v0, v58

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v79

    const/16 v80, 0x30

    move/from16 v0, v79

    move/from16 v1, v80

    if-lt v0, v1, :cond_114b

    .line 823
    add-int/lit8 v5, v5, 0x1

    .line 821
    :cond_114b
    add-int/lit8 v10, v10, 0x1

    goto :goto_1125

    .line 825
    :cond_114e
    const/16 v79, 0x7

    move/from16 v0, v79

    if-lt v5, v0, :cond_598

    .line 827
    const/16 v79, 0x2

    move/from16 v0, v31

    move/from16 v1, v79

    if-le v0, v1, :cond_118e

    add-int/lit8 v79, v31, 0x1

    move/from16 v0, v79

    if-gt v0, v7, :cond_118e

    .line 828
    add-int/lit8 v79, v31, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v79

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v58

    .line 831
    add-int/lit8 v79, v31, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    const-string v80, "\\s"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v79

    if-nez v79, :cond_118e

    const-string v79, "[\\w\\d\\-@#]"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v79

    if-nez v79, :cond_598

    .line 836
    :cond_118e
    add-int/lit8 v79, v7, 0x1

    move/from16 v0, v79

    move/from16 v1, v22

    if-ge v0, v1, :cond_11c4

    .line 837
    add-int/lit8 v79, v7, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v79

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v58

    .line 840
    const-string v79, "\\w|\\d"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v79

    if-nez v79, :cond_598

    .line 843
    const-string v79, "<"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v79

    if-nez v79, :cond_11c4

    const-string v79, "[\\w\\d\\-:@]"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_11c1
    .catch Ljava/lang/Exception; {:try_start_10f8 .. :try_end_11c1} :catch_12ba

    move-result v79

    if-nez v79, :cond_598

    .line 849
    .end local v5           #ct:I
    .end local v10           #index:I
    .end local v58           #strPost:Ljava/lang/String;
    :cond_11c4
    :goto_11c4
    const-string v28, "tel:"

    goto/16 :goto_902

    .line 850
    .end local v7           #endPos:I
    :cond_11c8
    move-object/from16 v0, v52

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v79

    if-eqz v79, :cond_11d8

    .line 851
    const-string v28, "geo:0,0?q="

    .line 852
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_902

    .line 853
    :cond_11d8
    move-object/from16 v0, v53

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v79

    if-eqz v79, :cond_126e

    .line 854
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v79

    const/16 v80, 0x10

    move/from16 v0, v79

    move/from16 v1, v80

    if-lt v0, v1, :cond_598

    .line 856
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->start()I

    move-result v31

    .line 857
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    .line 859
    .restart local v7       #endPos:I
    if-eqz v31, :cond_122a

    const/16 v79, 0x0

    :try_start_11f8
    move/from16 v0, v79

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v79

    const/16 v80, 0x20

    move/from16 v0, v79

    move/from16 v1, v80

    if-eq v0, v1, :cond_122a

    .line 860
    add-int/lit8 v79, v31, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v79

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v58

    .line 861
    .restart local v58       #strPost:Ljava/lang/String;
    const-string v79, ">"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v79

    if-nez v79, :cond_122a

    const-string v79, "[\\w\\d]"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v79

    if-nez v79, :cond_598

    .line 865
    .end local v58           #strPost:Ljava/lang/String;
    :cond_122a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v79

    add-int/lit8 v79, v79, -0x2

    move/from16 v0, v79

    if-ge v7, v0, :cond_1266

    add-int/lit8 v79, v7, -0x1

    move/from16 v0, v79

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v79

    const/16 v80, 0x20

    move/from16 v0, v79

    move/from16 v1, v80

    if-eq v0, v1, :cond_1266

    .line 866
    add-int/lit8 v79, v7, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v79

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v58

    .line 867
    .restart local v58       #strPost:Ljava/lang/String;
    const-string v79, "<"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v79

    if-nez v79, :cond_1266

    const-string v79, "[\\w\\d]"

    move-object/from16 v0, v58

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_1263
    .catch Ljava/lang/Exception; {:try_start_11f8 .. :try_end_1263} :catch_12b8

    move-result v79

    if-nez v79, :cond_598

    .line 873
    .end local v58           #strPost:Ljava/lang/String;
    :cond_1266
    :goto_1266
    const-string v28, "geo:0,0?q="

    .line 874
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_902

    .line 880
    .end local v7           #endPos:I
    :cond_126e
    const/4 v3, 0x1

    goto/16 :goto_902

    .line 904
    .restart local v9       #i:I
    .restart local v72       #tempend:I
    :cond_1271
    move/from16 v0, v72

    move/from16 v1, v16

    if-eq v0, v1, :cond_995

    const/16 v79, 0x5

    move/from16 v0, v16

    move/from16 v1, v79

    if-le v0, v1, :cond_995

    .line 906
    :try_start_127f
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 907
    add-int/lit8 v79, v16, -0x5

    move/from16 v0, v79

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v79

    if-eqz v79, :cond_995

    .line 908
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v72

    .line 909
    sub-int v79, v72, v16

    invoke-static/range {v79 .. v79}, Ljava/lang/Math;->abs(I)I

    move-result v79

    const/16 v80, 0x2

    move/from16 v0, v79

    move/from16 v1, v80

    if-ge v0, v1, :cond_995

    .line 910
    const-string v79, "test"

    move-object/from16 v0, v30

    move-object/from16 v1, v79

    invoke-virtual {v15, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    :try_end_12a7
    .catch Ljava/lang/Exception; {:try_start_127f .. :try_end_12a7} :catch_12b5

    .line 911
    move/from16 v16, v72

    goto/16 :goto_995

    .line 919
    .end local v9           #i:I
    .end local v72           #tempend:I
    :cond_12ab
    const/16 v20, 0x0

    .line 920
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->length()I

    move-result v79

    sput v79, Lcom/android/email/ViewPatternMatching;->mCurrentPos:I

    goto/16 :goto_598

    .line 914
    .restart local v9       #i:I
    .restart local v72       #tempend:I
    :catch_12b5
    move-exception v79

    goto/16 :goto_995

    .line 871
    .end local v9           #i:I
    .end local v72           #tempend:I
    .restart local v7       #endPos:I
    :catch_12b8
    move-exception v79

    goto :goto_1266

    .line 847
    :catch_12ba
    move-exception v79

    goto/16 :goto_11c4

    .line 802
    :catch_12bd
    move-exception v79

    goto/16 :goto_902

    .line 732
    :catch_12c0
    move-exception v79

    goto/16 :goto_902

    .line 680
    :catch_12c3
    move-exception v79

    goto/16 :goto_e15

    .line 658
    .end local v7           #endPos:I
    :catch_12c6
    move-exception v79

    goto/16 :goto_902

    .line 655
    .restart local v7       #endPos:I
    .restart local v58       #strPost:Ljava/lang/String;
    :catch_12c9
    move-exception v79

    goto/16 :goto_902

    .line 452
    .end local v58           #strPost:Ljava/lang/String;
    :catch_12cc
    move-exception v79

    goto/16 :goto_8f2
.end method

.method public pmFindPos()I
    .registers 2

    .prologue
    .line 133
    sget v0, Lcom/android/email/ViewPatternMatching;->mCurrentPos:I

    return v0
.end method

.method public pmInit(Landroid/content/Context;IJ)V
    .registers 8
    .parameter "ct"
    .parameter "nOption"
    .parameter "nLocalTimeOfMessage"

    .prologue
    const/4 v2, 0x1

    .line 103
    iput-object p1, p0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    .line 104
    if-gez p2, :cond_6

    .line 105
    const/4 p2, 0x7

    .line 106
    :cond_6
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v2, :cond_c

    .line 107
    sput-boolean v2, Lcom/android/email/ViewPatternMatching;->enablePatternPhone:Z

    .line 108
    :cond_c
    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 109
    sput-boolean v2, Lcom/android/email/ViewPatternMatching;->enablePatternCalendar:Z

    .line 110
    :cond_13
    and-int/lit8 v0, p2, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    .line 111
    sput-boolean v2, Lcom/android/email/ViewPatternMatching;->enablePatternCalendarKeyword:Z

    .line 112
    :cond_1a
    and-int/lit8 v0, p2, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_22

    .line 113
    sput-boolean v2, Lcom/android/email/ViewPatternMatching;->enablePatternLocation:Z

    .line 114
    :cond_22
    iput-wide p3, p0, Lcom/android/email/ViewPatternMatching;->mTimeOfMessage:J

    .line 115
    const/4 v0, 0x0

    sput v0, Lcom/android/email/ViewPatternMatching;->mCurrentPos:I

    .line 116
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/email/ViewPatternMatching;->nTimeout:I

    .line 117
    return-void
.end method

.method public pmSettimeout(I)V
    .registers 2
    .parameter "timeout"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/email/ViewPatternMatching;->nTimeout:I

    .line 138
    return-void
.end method
