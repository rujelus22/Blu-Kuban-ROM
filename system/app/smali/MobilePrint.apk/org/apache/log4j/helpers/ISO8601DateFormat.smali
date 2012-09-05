.class public Lorg/apache/log4j/helpers/ISO8601DateFormat;
.super Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;
.source "ISO8601DateFormat.java"


# static fields
.field private static lastTime:J

.field private static lastTimeString:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const/16 v0, 0x14

    new-array v0, v0, [C

    sput-object v0, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTimeString:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .registers 2
    .parameter "timeZone"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;-><init>(Ljava/util/TimeZone;)V

    .line 50
    return-void
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 19
    .parameter "date"
    .parameter "sbuf"
    .parameter "fieldPosition"

    .prologue
    .line 65
    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 66
    .local v6, now:J
    const-wide/16 v11, 0x3e8

    rem-long v11, v6, v11

    long-to-int v3, v11

    .line 68
    .local v3, millis:I
    int-to-long v11, v3

    sub-long v11, v6, v11

    sget-wide v13, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTime:J

    cmp-long v11, v11, v13

    if-eqz v11, :cond_112

    .line 73
    iget-object v11, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    .line 77
    .local v9, start:I
    iget-object v11, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 78
    .local v10, year:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 81
    iget-object v11, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    packed-switch v11, :pswitch_data_11a

    .line 94
    const-string v5, "-NA-"

    .line 96
    .local v5, month:Ljava/lang/String;
    :goto_35
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    iget-object v11, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 99
    .local v1, day:I
    const/16 v11, 0xa

    if-ge v1, v11, :cond_4c

    .line 100
    const/16 v11, 0x30

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 101
    :cond_4c
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 103
    const/16 v11, 0x20

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 105
    iget-object v11, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v12, 0xb

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 106
    .local v2, hour:I
    const/16 v11, 0xa

    if-ge v2, v11, :cond_6b

    .line 107
    const/16 v11, 0x30

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 109
    :cond_6b
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 110
    const/16 v11, 0x3a

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 112
    iget-object v11, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 113
    .local v4, mins:I
    const/16 v11, 0xa

    if-ge v4, v11, :cond_8a

    .line 114
    const/16 v11, 0x30

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    :cond_8a
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 117
    const/16 v11, 0x3a

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 119
    iget-object v11, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v12, 0xd

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 120
    .local v8, secs:I
    const/16 v11, 0xa

    if-ge v8, v11, :cond_a9

    .line 121
    const/16 v11, 0x30

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 123
    :cond_a9
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 125
    const/16 v11, 0x2c

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 128
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    sget-object v12, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTimeString:[C

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v11, v12, v13}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 129
    int-to-long v11, v3

    sub-long v11, v6, v11

    sput-wide v11, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTime:J

    .line 136
    .end local v1           #day:I
    .end local v2           #hour:I
    .end local v4           #mins:I
    .end local v5           #month:Ljava/lang/String;
    .end local v8           #secs:I
    .end local v9           #start:I
    .end local v10           #year:I
    :goto_c6
    const/16 v11, 0x64

    if-ge v3, v11, :cond_d1

    .line 137
    const/16 v11, 0x30

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 138
    :cond_d1
    const/16 v11, 0xa

    if-ge v3, v11, :cond_dc

    .line 139
    const/16 v11, 0x30

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    :cond_dc
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 142
    return-object p2

    .line 82
    .restart local v9       #start:I
    .restart local v10       #year:I
    :pswitch_e2
    const-string v5, "-01-"

    .restart local v5       #month:Ljava/lang/String;
    goto/16 :goto_35

    .line 83
    .end local v5           #month:Ljava/lang/String;
    :pswitch_e6
    const-string v5, "-02-"

    .restart local v5       #month:Ljava/lang/String;
    goto/16 :goto_35

    .line 84
    .end local v5           #month:Ljava/lang/String;
    :pswitch_ea
    const-string v5, "-03-"

    .restart local v5       #month:Ljava/lang/String;
    goto/16 :goto_35

    .line 85
    .end local v5           #month:Ljava/lang/String;
    :pswitch_ee
    const-string v5, "-04-"

    .restart local v5       #month:Ljava/lang/String;
    goto/16 :goto_35

    .line 86
    .end local v5           #month:Ljava/lang/String;
    :pswitch_f2
    const-string v5, "-05-"

    .restart local v5       #month:Ljava/lang/String;
    goto/16 :goto_35

    .line 87
    .end local v5           #month:Ljava/lang/String;
    :pswitch_f6
    const-string v5, "-06-"

    .restart local v5       #month:Ljava/lang/String;
    goto/16 :goto_35

    .line 88
    .end local v5           #month:Ljava/lang/String;
    :pswitch_fa
    const-string v5, "-07-"

    .restart local v5       #month:Ljava/lang/String;
    goto/16 :goto_35

    .line 89
    .end local v5           #month:Ljava/lang/String;
    :pswitch_fe
    const-string v5, "-08-"

    .restart local v5       #month:Ljava/lang/String;
    goto/16 :goto_35

    .line 90
    .end local v5           #month:Ljava/lang/String;
    :pswitch_102
    const-string v5, "-09-"

    .restart local v5       #month:Ljava/lang/String;
    goto/16 :goto_35

    .line 91
    .end local v5           #month:Ljava/lang/String;
    :pswitch_106
    const-string v5, "-10-"

    .restart local v5       #month:Ljava/lang/String;
    goto/16 :goto_35

    .line 92
    .end local v5           #month:Ljava/lang/String;
    :pswitch_10a
    const-string v5, "-11-"

    .restart local v5       #month:Ljava/lang/String;
    goto/16 :goto_35

    .line 93
    .end local v5           #month:Ljava/lang/String;
    :pswitch_10e
    const-string v5, "-12-"

    .restart local v5       #month:Ljava/lang/String;
    goto/16 :goto_35

    .line 132
    .end local v5           #month:Ljava/lang/String;
    .end local v9           #start:I
    .end local v10           #year:I
    :cond_112
    sget-object v11, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTimeString:[C

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_c6

    .line 81
    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_e2
        :pswitch_e6
        :pswitch_ea
        :pswitch_ee
        :pswitch_f2
        :pswitch_f6
        :pswitch_fa
        :pswitch_fe
        :pswitch_102
        :pswitch_106
        :pswitch_10a
        :pswitch_10e
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 4
    .parameter "s"
    .parameter "pos"

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method
