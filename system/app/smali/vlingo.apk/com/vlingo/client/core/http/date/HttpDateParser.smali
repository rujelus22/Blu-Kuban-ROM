.class public Lcom/vlingo/client/core/http/date/HttpDateParser;
.super Ljava/lang/Object;
.source "HttpDateParser.java"


# static fields
.field private static final months:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 26
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Jan"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Feb"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Mar"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Apr"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "May"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Dec"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vlingo/client/core/http/date/HttpDateParser;->months:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)J
    .registers 16
    .parameter "date"

    .prologue
    .line 32
    const-wide/16 v4, 0x0

    .line 34
    .local v4, expires:J
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x1a

    if-ge v13, v14, :cond_f

    .line 36
    :cond_c
    const-wide/16 v13, 0x0

    .line 111
    :goto_e
    return-wide v13

    .line 38
    :cond_f
    const/4 v13, 0x5

    const/4 v14, 0x7

    invoke-virtual {p0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, day:Ljava/lang/String;
    const/16 v13, 0x8

    const/16 v14, 0xb

    invoke-virtual {p0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 40
    .local v9, month:Ljava/lang/String;
    const/16 v13, 0xc

    const/16 v14, 0x10

    invoke-virtual {p0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 41
    .local v12, year:Ljava/lang/String;
    const/16 v13, 0x11

    const/16 v14, 0x13

    invoke-virtual {p0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 42
    .local v6, hour:Ljava/lang/String;
    const/16 v13, 0x14

    const/16 v14, 0x16

    invoke-virtual {p0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 43
    .local v8, minute:Ljava/lang/String;
    const/16 v13, 0x17

    const/16 v14, 0x19

    invoke-virtual {p0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 45
    .local v11, second:Ljava/lang/String;
    const-string v13, "GMT"

    invoke-static {v13}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 48
    .local v0, cal:Ljava/util/Calendar;
    const/4 v13, 0x5

    :try_start_48
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v0, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 49
    const/4 v13, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v0, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 50
    const/16 v13, 0xb

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v0, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 51
    const/16 v13, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v0, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 52
    const/16 v13, 0xd

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v0, v13, v14}, Ljava/util/Calendar;->set(II)V
    :try_end_72
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_72} :catch_8b

    .line 58
    const/4 v10, -0x1

    .line 59
    .local v10, numMonth:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_74
    sget-object v13, Lcom/vlingo/client/core/http/date/HttpDateParser;->months:[Ljava/lang/String;

    array-length v13, v13

    if-ge v7, v13, :cond_84

    .line 60
    sget-object v13, Lcom/vlingo/client/core/http/date/HttpDateParser;->months:[Ljava/lang/String;

    aget-object v13, v13, v7

    invoke-virtual {v13, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8f

    .line 61
    move v10, v7

    .line 66
    :cond_84
    const/4 v1, -0x1

    .line 67
    .local v1, calMonth:I
    packed-switch v10, :pswitch_data_bc

    .line 106
    const-wide/16 v13, 0x0

    goto :goto_e

    .line 53
    .end local v1           #calMonth:I
    .end local v7           #i:I
    .end local v10           #numMonth:I
    :catch_8b
    move-exception v3

    .line 55
    .local v3, ex:Ljava/lang/NumberFormatException;
    const-wide/16 v13, 0x0

    goto :goto_e

    .line 59
    .end local v3           #ex:Ljava/lang/NumberFormatException;
    .restart local v7       #i:I
    .restart local v10       #numMonth:I
    :cond_8f
    add-int/lit8 v7, v7, 0x1

    goto :goto_74

    .line 69
    .restart local v1       #calMonth:I
    :pswitch_92
    const/4 v1, 0x0

    .line 108
    :goto_93
    const/4 v13, 0x2

    invoke-virtual {v0, v13, v1}, Ljava/util/Calendar;->set(II)V

    .line 109
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    move-wide v13, v4

    .line 111
    goto/16 :goto_e

    .line 72
    :pswitch_a2
    const/4 v1, 0x1

    .line 73
    goto :goto_93

    .line 75
    :pswitch_a4
    const/4 v1, 0x2

    .line 76
    goto :goto_93

    .line 78
    :pswitch_a6
    const/4 v1, 0x3

    .line 79
    goto :goto_93

    .line 81
    :pswitch_a8
    const/4 v1, 0x4

    .line 82
    goto :goto_93

    .line 84
    :pswitch_aa
    const/4 v1, 0x5

    .line 85
    goto :goto_93

    .line 87
    :pswitch_ac
    const/4 v1, 0x6

    .line 88
    goto :goto_93

    .line 90
    :pswitch_ae
    const/4 v1, 0x7

    .line 91
    goto :goto_93

    .line 93
    :pswitch_b0
    const/16 v1, 0x8

    .line 94
    goto :goto_93

    .line 96
    :pswitch_b3
    const/16 v1, 0x9

    .line 97
    goto :goto_93

    .line 99
    :pswitch_b6
    const/16 v1, 0xa

    .line 100
    goto :goto_93

    .line 102
    :pswitch_b9
    const/16 v1, 0xb

    .line 103
    goto :goto_93

    .line 67
    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_92
        :pswitch_a2
        :pswitch_a4
        :pswitch_a6
        :pswitch_a8
        :pswitch_aa
        :pswitch_ac
        :pswitch_ae
        :pswitch_b0
        :pswitch_b3
        :pswitch_b6
        :pswitch_b9
    .end packed-switch
.end method
