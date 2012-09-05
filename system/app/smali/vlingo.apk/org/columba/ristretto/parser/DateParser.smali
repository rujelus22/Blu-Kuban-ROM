.class public Lorg/columba/ristretto/parser/DateParser;
.super Ljava/lang/Object;
.source "DateParser.java"


# static fields
.field private static final monthOffset:[J

.field private static final numberPattern:Ljava/util/regex/Pattern;

.field private static final stringPattern:Ljava/util/regex/Pattern;

.field private static final timePattern:Ljava/util/regex/Pattern;

.field private static final timezonePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const/16 v0, 0xc

    new-array v0, v0, [J

    fill-array-data v0, :array_2a

    sput-object v0, Lorg/columba/ristretto/parser/DateParser;->monthOffset:[J

    .line 63
    const-string v0, "(\\w{3})\\w*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/parser/DateParser;->stringPattern:Ljava/util/regex/Pattern;

    .line 66
    const-string v0, "(\\d{1,4})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/parser/DateParser;->numberPattern:Ljava/util/regex/Pattern;

    .line 69
    const-string v0, "(\\d\\d):(\\d\\d)(:(\\d\\d))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/parser/DateParser;->timePattern:Ljava/util/regex/Pattern;

    .line 72
    const-string v0, "((\\+|-)(\\d\\d)(\\d\\d))|(\\\"?(\\w+)\\\"?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/parser/DateParser;->timezonePattern:Ljava/util/regex/Pattern;

    return-void

    .line 49
    :array_2a
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x24t 0xa5t 0x9ft 0x0t 0x0t 0x0t 0x0t
        0x0t 0x34t 0xd7t 0x2ft 0x1t 0x0t 0x0t 0x0t
        0x0t 0x58t 0x7ct 0xcft 0x1t 0x0t 0x0t 0x0t
        0x0t 0x20t 0xfbt 0x69t 0x2t 0x0t 0x0t 0x0t
        0x0t 0x44t 0xa0t 0x9t 0x3t 0x0t 0x0t 0x0t
        0x0t 0xct 0x1ft 0xa4t 0x3t 0x0t 0x0t 0x0t
        0x0t 0x30t 0xc4t 0x43t 0x4t 0x0t 0x0t 0x0t
        0x0t 0x54t 0x69t 0xe3t 0x4t 0x0t 0x0t 0x0t
        0x0t 0x1ct 0xe8t 0x7dt 0x5t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x8dt 0x1dt 0x6t 0x0t 0x0t 0x0t
        0x0t 0x8t 0xct 0xb8t 0x6t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method private static getLeapYearCorrection(III)J
    .registers 9
    .parameter "day"
    .parameter "month"
    .parameter "year"

    .prologue
    .line 129
    add-int/lit16 v1, p2, -0x7b4

    .line 130
    .local v1, normalizedYear:I
    const/16 v2, 0x1d

    if-gt p0, v2, :cond_b

    const/4 v2, 0x2

    if-ge p1, v2, :cond_b

    .line 131
    add-int/lit8 v1, v1, -0x1

    .line 133
    :cond_b
    div-int/lit8 v0, v1, 0x4

    .line 135
    .local v0, leapYears:I
    const-wide/32 v2, 0x5265c00

    int-to-long v4, v0

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method private static getMonth(Ljava/lang/String;)I
    .registers 5
    .parameter "month"

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, loweredMonth:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 82
    .local v1, startChar:C
    packed-switch v1, :pswitch_data_88

    .line 125
    :cond_c
    :pswitch_c
    const/4 v2, -0x1

    :cond_d
    :goto_d
    return v2

    .line 84
    :pswitch_e
    const-string v3, "jan"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 86
    const-string v2, "jun"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 87
    const/4 v2, 0x5

    goto :goto_d

    .line 88
    :cond_20
    const-string v2, "jul"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 89
    const/4 v2, 0x6

    goto :goto_d

    .line 92
    :cond_2a
    :pswitch_2a
    const-string v2, "feb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 93
    const/4 v2, 0x1

    goto :goto_d

    .line 96
    :cond_34
    :pswitch_34
    const-string v2, "mar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 97
    const/4 v2, 0x2

    goto :goto_d

    .line 98
    :cond_3e
    const-string v2, "may"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 99
    const/4 v2, 0x4

    goto :goto_d

    .line 102
    :cond_48
    :pswitch_48
    const-string v2, "apr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 103
    const/4 v2, 0x3

    goto :goto_d

    .line 104
    :cond_52
    const-string v2, "aug"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 105
    const/4 v2, 0x7

    goto :goto_d

    .line 108
    :cond_5c
    :pswitch_5c
    const-string v2, "sep"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 109
    const/16 v2, 0x8

    goto :goto_d

    .line 112
    :cond_67
    :pswitch_67
    const-string v2, "oct"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 113
    const/16 v2, 0x9

    goto :goto_d

    .line 116
    :cond_72
    :pswitch_72
    const-string v2, "nov"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 117
    const/16 v2, 0xa

    goto :goto_d

    .line 120
    :cond_7d
    :pswitch_7d
    const-string v2, "dec"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 121
    const/16 v2, 0xb

    goto :goto_d

    .line 82
    :pswitch_data_88
    .packed-switch 0x61
        :pswitch_48
        :pswitch_c
        :pswitch_c
        :pswitch_7d
        :pswitch_c
        :pswitch_2a
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_34
        :pswitch_72
        :pswitch_67
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_5c
    .end packed-switch
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/util/Date;
    .registers 22
    .parameter "dateString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 152
    .local v10, temp:Ljava/lang/String;
    sget-object v15, Lorg/columba/ristretto/parser/DateParser;->stringPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 153
    .local v6, matcher:Ljava/util/regex/Matcher;
    const/4 v8, -0x1

    .line 154
    .local v8, month:I
    :goto_b
    const/4 v15, -0x1

    if-ne v8, v15, :cond_4d

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_4d

    .line 155
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/columba/ristretto/parser/DateParser;->getMonth(Ljava/lang/String;)I

    move-result v8

    .line 156
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v16, 0x0

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 158
    sget-object v15, Lorg/columba/ristretto/parser/DateParser;->stringPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    goto :goto_b

    .line 160
    :cond_4d
    const/4 v15, -0x1

    if-ne v8, v15, :cond_6d

    .line 161
    new-instance v15, Lorg/columba/ristretto/parser/ParserException;

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v17, "Invalid Date: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/columba/ristretto/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 164
    :cond_6d
    sget-object v15, Lorg/columba/ristretto/parser/DateParser;->timePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 165
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-nez v15, :cond_96

    .line 166
    new-instance v15, Lorg/columba/ristretto/parser/ParserException;

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v17, "Invalid Date: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/columba/ristretto/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 167
    :cond_96
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v16, 0x0

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 170
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 171
    .local v5, hours:I
    const/4 v15, 0x2

    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 172
    .local v7, minutes:I
    const/4 v9, 0x0

    .line 173
    .local v9, seconds:I
    const/4 v15, 0x3

    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_e2

    .line 174
    const/4 v15, 0x4

    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 179
    :cond_e2
    sget-object v15, Lorg/columba/ristretto/parser/DateParser;->numberPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 181
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-nez v15, :cond_10b

    .line 182
    new-instance v15, Lorg/columba/ristretto/parser/ParserException;

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v17, "Invalid Date: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/columba/ristretto/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 183
    :cond_10b
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 184
    .local v4, day:I
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v16, 0x0

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 186
    sget-object v15, Lorg/columba/ristretto/parser/DateParser;->numberPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 187
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-nez v15, :cond_165

    .line 188
    new-instance v15, Lorg/columba/ristretto/parser/ParserException;

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v17, "Invalid Date: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/columba/ristretto/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 189
    :cond_165
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 190
    .local v12, year:I
    const/16 v15, 0x63

    if-ge v12, v15, :cond_177

    .line 191
    const/16 v15, 0x31

    if-ge v12, v15, :cond_232

    .line 192
    add-int/lit16 v12, v12, 0x7d0

    .line 196
    :cond_177
    :goto_177
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v16, 0x0

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 199
    int-to-long v15, v9

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    int-to-long v0, v7

    move-wide/from16 v17, v0

    const-wide/32 v19, 0xea60

    mul-long v17, v17, v19

    add-long v15, v15, v17

    int-to-long v0, v5

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x36ee80

    mul-long v17, v17, v19

    add-long v15, v15, v17

    int-to-long v0, v4

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x5265c00

    mul-long v17, v17, v19

    add-long v15, v15, v17

    sget-object v17, Lorg/columba/ristretto/parser/DateParser;->monthOffset:[J

    aget-wide v17, v17, v8

    add-long v15, v15, v17

    add-int/lit16 v0, v12, -0x7b2

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    const-wide v19, 0x757b12c00L

    mul-long v17, v17, v19

    add-long v15, v15, v17

    invoke-static {v4, v8, v12}, Lorg/columba/ristretto/parser/DateParser;->getLeapYearCorrection(III)J

    move-result-wide v17

    add-long v2, v15, v17

    .line 204
    .local v2, date:J
    sget-object v15, Lorg/columba/ristretto/parser/DateParser;->timezonePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 205
    const-wide/16 v13, 0x0

    .line 206
    .local v13, zoneoffset:J
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_22b

    .line 207
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_236

    .line 208
    const/4 v15, 0x4

    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    int-to-long v15, v15

    const-wide/32 v17, 0xea60

    mul-long v15, v15, v17

    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x36ee80

    mul-long v17, v17, v19

    add-long v13, v15, v17

    .line 210
    const/4 v15, 0x2

    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "+"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_22b

    .line 211
    neg-long v13, v13

    .line 218
    :cond_22b
    :goto_22b
    add-long/2addr v2, v13

    .line 221
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v15

    .line 194
    .end local v2           #date:J
    .end local v13           #zoneoffset:J
    :cond_232
    add-int/lit16 v12, v12, 0x76c

    goto/16 :goto_177

    .line 213
    .restart local v2       #date:J
    .restart local v13       #zoneoffset:J
    :cond_236
    const/4 v15, 0x6

    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_22b

    .line 214
    const/4 v15, 0x6

    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    .line 215
    .local v11, timezone:Ljava/util/TimeZone;
    invoke-virtual {v11, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v15

    int-to-long v13, v15

    goto :goto_22b
.end method
