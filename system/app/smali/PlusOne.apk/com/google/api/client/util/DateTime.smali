.class public final Lcom/google/api/client/util/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final GMT:Ljava/util/TimeZone; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final dateOnly:Z

.field private final tzShift:Ljava/lang/Integer;

.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/util/DateTime;->GMT:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 5
    .parameter "value"

    .prologue
    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/api/client/util/DateTime;-><init>(ZJLjava/lang/Integer;)V

    .line 68
    return-void
.end method

.method public constructor <init>(ZJLjava/lang/Integer;)V
    .registers 5
    .parameter "dateOnly"
    .parameter "value"
    .parameter "tzShift"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean p1, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    .line 80
    iput-wide p2, p0, Lcom/google/api/client/util/DateTime;->value:J

    .line 81
    iput-object p4, p0, Lcom/google/api/client/util/DateTime;->tzShift:Ljava/lang/Integer;

    .line 82
    return-void
.end method

.method private static appendInt(Ljava/lang/StringBuilder;II)V
    .registers 6
    .parameter "sb"
    .parameter "num"
    .parameter "numDigits"

    .prologue
    .line 246
    if-gez p1, :cond_8

    .line 247
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    neg-int p1, p1

    .line 250
    :cond_8
    move v1, p1

    .line 251
    .local v1, x:I
    :goto_9
    if-lez v1, :cond_10

    .line 252
    div-int/lit8 v1, v1, 0xa

    .line 253
    add-int/lit8 p2, p2, -0x1

    goto :goto_9

    .line 255
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    if-ge v0, p2, :cond_1b

    .line 256
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 258
    :cond_1b
    if-eqz p1, :cond_20

    .line 259
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    :cond_20
    return-void
.end method

.method public static parseRfc3339(Ljava/lang/String;)Lcom/google/api/client/util/DateTime;
    .registers 24
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 199
    :try_start_0
    new-instance v4, Ljava/util/GregorianCalendar;

    sget-object v20, Lcom/google/api/client/util/DateTime;->GMT:Ljava/util/TimeZone;

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 200
    .local v4, dateTime:Ljava/util/Calendar;
    const/16 v20, 0x0

    const/16 v21, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 201
    .local v5, year:I
    const/16 v20, 0x5

    const/16 v21, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    add-int/lit8 v6, v20, -0x1

    .line 202
    .local v6, month:I
    const/16 v20, 0x8

    const/16 v21, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 204
    .local v7, day:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    .line 205
    .local v13, length:I
    const/16 v20, 0xa

    move/from16 v0, v20

    if-le v13, v0, :cond_61

    const/16 v20, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v20

    const/16 v21, 0x54

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_95

    :cond_61
    const/4 v11, 0x1

    .line 206
    .local v11, dateOnly:Z
    :goto_62
    if-eqz v11, :cond_97

    .line 207
    invoke-virtual {v4, v5, v6, v7}, Ljava/util/Calendar;->set(III)V

    .line 208
    const/16 v15, 0xa

    .line 222
    .local v15, tzIndex:I
    :goto_69
    const/16 v17, 0x0

    .line 223
    .local v17, tzShiftInteger:Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    .line 224
    .local v18, value:J
    if-le v13, v15, :cond_89

    .line 226
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v20

    const/16 v21, 0x5a

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_103

    .line 227
    const/16 v16, 0x0

    .line 236
    .local v16, tzShift:I
    :goto_85
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 238
    .end local v16           #tzShift:I
    :cond_89
    new-instance v20, Lcom/google/api/client/util/DateTime;

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    move-object/from16 v3, v17

    invoke-direct {v0, v11, v1, v2, v3}, Lcom/google/api/client/util/DateTime;-><init>(ZJLjava/lang/Integer;)V

    return-object v20

    .line 205
    .end local v11           #dateOnly:Z
    .end local v15           #tzIndex:I
    .end local v17           #tzShiftInteger:Ljava/lang/Integer;
    .end local v18           #value:J
    :cond_95
    const/4 v11, 0x0

    goto :goto_62

    .line 210
    .restart local v11       #dateOnly:Z
    :cond_97
    const/16 v20, 0xb

    const/16 v21, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 211
    .local v8, hourOfDay:I
    const/16 v20, 0xe

    const/16 v21, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 212
    .local v9, minute:I
    const/16 v20, 0x11

    const/16 v21, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 213
    .local v10, second:I
    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    .line 214
    const/16 v20, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x2e

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_ff

    .line 215
    const/16 v20, 0x14

    const/16 v21, 0x17

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 216
    .local v14, milliseconds:I
    const/16 v20, 0xe

    move/from16 v0, v20

    invoke-virtual {v4, v0, v14}, Ljava/util/Calendar;->set(II)V

    .line 217
    const/16 v15, 0x17

    .line 218
    .restart local v15       #tzIndex:I
    goto/16 :goto_69

    .line 219
    .end local v14           #milliseconds:I
    .end local v15           #tzIndex:I
    :cond_ff
    const/16 v15, 0x13

    .restart local v15       #tzIndex:I
    goto/16 :goto_69

    .line 229
    .end local v8           #hourOfDay:I
    .end local v9           #minute:I
    .end local v10           #second:I
    .restart local v17       #tzShiftInteger:Ljava/lang/Integer;
    .restart local v18       #value:J
    :cond_103
    add-int/lit8 v20, v15, 0x1

    add-int/lit8 v21, v15, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    mul-int/lit8 v20, v20, 0x3c

    add-int/lit8 v21, v15, 0x4

    add-int/lit8 v22, v15, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    add-int v16, v20, v21

    .line 231
    .restart local v16       #tzShift:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C
    :try_end_130
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_130} :catch_14c

    move-result v20

    const/16 v21, 0x2d

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13e

    .line 232
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    .line 234
    :cond_13e
    const v20, 0xea60

    mul-int v20, v20, v16

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    goto/16 :goto_85

    .line 239
    .end local v4           #dateTime:Ljava/util/Calendar;
    .end local v5           #year:I
    .end local v6           #month:I
    .end local v7           #day:I
    .end local v11           #dateOnly:Z
    .end local v13           #length:I
    .end local v15           #tzIndex:I
    .end local v16           #tzShift:I
    .end local v17           #tzShiftInteger:Ljava/lang/Integer;
    .end local v18           #value:J
    :catch_14c
    move-exception v12

    .line 240
    .local v12, e:Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v20, Ljava/lang/NumberFormatException;

    const-string v21, "Invalid date/time format."

    invoke-direct/range {v20 .. v21}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v20
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 184
    if-ne p1, p0, :cond_5

    .line 191
    :cond_4
    :goto_4
    return v1

    .line 187
    :cond_5
    instance-of v3, p1, Lcom/google/api/client/util/DateTime;

    if-nez v3, :cond_b

    move v1, v2

    .line 188
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 190
    check-cast v0, Lcom/google/api/client/util/DateTime;

    .line 191
    .local v0, other:Lcom/google/api/client/util/DateTime;
    iget-boolean v3, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    iget-boolean v4, v0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    if-ne v3, v4, :cond_1c

    iget-wide v3, p0, Lcom/google/api/client/util/DateTime;->value:J

    iget-wide v5, v0, Lcom/google/api/client/util/DateTime;->value:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    :cond_1c
    move v1, v2

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/api/client/util/DateTime;->toStringRfc3339()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringRfc3339()Ljava/lang/String;
    .registers 13

    .prologue
    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v4, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/GregorianCalendar;

    sget-object v8, Lcom/google/api/client/util/DateTime;->GMT:Ljava/util/TimeZone;

    invoke-direct {v1, v8}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 122
    .local v1, dateTime:Ljava/util/Calendar;
    iget-wide v2, p0, Lcom/google/api/client/util/DateTime;->value:J

    .line 123
    .local v2, localTime:J
    iget-object v7, p0, Lcom/google/api/client/util/DateTime;->tzShift:Ljava/lang/Integer;

    .line 124
    .local v7, tzShift:Ljava/lang/Integer;
    if-eqz v7, :cond_1b

    .line 125
    invoke-virtual {v7}, Ljava/lang/Integer;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0xea60

    mul-long/2addr v8, v10

    add-long/2addr v2, v8

    .line 127
    :cond_1b
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 129
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x4

    invoke-static {v4, v8, v9}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 130
    const/16 v8, 0x2d

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x2

    invoke-static {v4, v8, v9}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 132
    const/16 v8, 0x2d

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    const/4 v8, 0x5

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v4, v8, v9}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 135
    iget-boolean v8, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    if-nez v8, :cond_8d

    .line 137
    const/16 v8, 0x54

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    const/16 v8, 0xb

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v4, v8, v9}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 139
    const/16 v8, 0x3a

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v4, v8, v9}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 141
    const/16 v8, 0x3a

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    const/16 v8, 0xd

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v4, v8, v9}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 144
    const/16 v8, 0xe

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->isSet(I)Z

    move-result v8

    if-eqz v8, :cond_8d

    .line 145
    const/16 v8, 0x2e

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    const/16 v8, 0xe

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x3

    invoke-static {v4, v8, v9}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 150
    :cond_8d
    if-eqz v7, :cond_9a

    .line 152
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_9f

    .line 154
    const/16 v8, 0x5a

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    :cond_9a
    :goto_9a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 158
    :cond_9f
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 159
    .local v0, absTzShift:I
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_c0

    .line 160
    const/16 v8, 0x2b

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    :goto_ae
    div-int/lit8 v5, v0, 0x3c

    .line 167
    .local v5, tzHours:I
    rem-int/lit8 v6, v0, 0x3c

    .line 168
    .local v6, tzMinutes:I
    const/4 v8, 0x2

    invoke-static {v4, v5, v8}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 169
    const/16 v8, 0x3a

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    const/4 v8, 0x2

    invoke-static {v4, v6, v8}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    goto :goto_9a

    .line 162
    .end local v5           #tzHours:I
    .end local v6           #tzMinutes:I
    :cond_c0
    const/16 v8, 0x2d

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    neg-int v0, v0

    goto :goto_ae
.end method
