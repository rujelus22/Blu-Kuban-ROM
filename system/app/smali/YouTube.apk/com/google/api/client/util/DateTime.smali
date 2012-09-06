.class public final Lcom/google/api/client/util/DateTime;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/api/client/util/DateTime;-><init>(ZJLjava/lang/Integer;)V

    .line 68
    return-void
.end method

.method public constructor <init>(JLjava/lang/Integer;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/api/client/util/DateTime;-><init>(ZJLjava/lang/Integer;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .registers 4
    .parameter

    .prologue
    .line 71
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/api/client/util/DateTime;-><init>(J)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/TimeZone;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 61
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    .line 62
    iput-wide v0, p0, Lcom/google/api/client/util/DateTime;->value:J

    .line 63
    invoke-virtual {p2, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/DateTime;->tzShift:Ljava/lang/Integer;

    .line 64
    return-void
.end method

.method public constructor <init>(ZJLjava/lang/Integer;)V
    .registers 5
    .parameter
    .parameter
    .parameter

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
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    if-gez p1, :cond_8

    .line 248
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    neg-int p1, p1

    :cond_8
    move v0, p1

    .line 252
    :goto_9
    if-lez v0, :cond_10

    .line 253
    div-int/lit8 v0, v0, 0xa

    .line 254
    add-int/lit8 p2, p2, -0x1

    goto :goto_9

    .line 256
    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-ge v0, p2, :cond_1b

    .line 257
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 259
    :cond_1b
    if-eqz p1, :cond_20

    .line 260
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    :cond_20
    return-void
.end method

.method public static parseRfc3339(Ljava/lang/String;)Lcom/google/api/client/util/DateTime;
    .registers 16
    .parameter

    .prologue
    const/16 v8, 0x17

    const/16 v9, 0x13

    const/16 v4, 0xa

    const/4 v7, 0x0

    .line 199
    :try_start_7
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lcom/google/api/client/util/DateTime;->GMT:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 200
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 201
    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 202
    const/16 v3, 0x8

    const/16 v5, 0xa

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    .line 205
    if-le v11, v4, :cond_44

    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    const/16 v6, 0x54

    if-eq v5, v6, :cond_6b

    :cond_44
    const/4 v5, 0x1

    move v10, v5

    .line 206
    :goto_46
    if-eqz v10, :cond_6d

    .line 207
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 223
    :goto_4b
    const/4 v3, 0x0

    .line 224
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 225
    if-le v11, v4, :cond_f1

    .line 227
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/16 v3, 0x5a

    if-ne v0, v3, :cond_b9

    move-wide v13, v1

    move-wide v0, v13

    move v2, v7

    .line 237
    :goto_61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 239
    :goto_65
    new-instance v3, Lcom/google/api/client/util/DateTime;

    invoke-direct {v3, v10, v0, v1, v2}, Lcom/google/api/client/util/DateTime;-><init>(ZJLjava/lang/Integer;)V

    return-object v3

    :cond_6b
    move v10, v7

    .line 205
    goto :goto_46

    .line 210
    :cond_6d
    const/16 v4, 0xb

    const/16 v5, 0xd

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 211
    const/16 v5, 0xe

    const/16 v6, 0x10

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 212
    const/16 v6, 0x11

    const/16 v12, 0x13

    invoke-virtual {p0, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 213
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 214
    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_b1

    .line 215
    const/16 v1, 0x14

    const/16 v2, 0x17

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 216
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    move v4, v8

    .line 218
    goto :goto_4b

    .line 219
    :cond_b1
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    move v4, v9

    .line 220
    goto :goto_4b

    .line 230
    :cond_b9
    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v3, v4, 0x3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    add-int/lit8 v3, v4, 0x4

    add-int/lit8 v5, v4, 0x6

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    .line 232
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_d7
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_7 .. :try_end_d7} :catch_e8

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_dd

    .line 233
    neg-int v0, v0

    .line 235
    :cond_dd
    const v3, 0xea60

    mul-int/2addr v3, v0

    int-to-long v3, v3

    sub-long/2addr v1, v3

    move-wide v13, v1

    move v2, v0

    move-wide v0, v13

    goto/16 :goto_61

    .line 241
    :catch_e8
    move-exception v0

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Invalid date/time format."

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f1
    move-wide v13, v1

    move-wide v0, v13

    move-object v2, v3

    goto/16 :goto_65
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 184
    if-ne p1, p0, :cond_5

    .line 191
    :cond_4
    :goto_4
    return v0

    .line 187
    :cond_5
    instance-of v2, p1, Lcom/google/api/client/util/DateTime;

    if-nez v2, :cond_b

    move v0, v1

    .line 188
    goto :goto_4

    .line 190
    :cond_b
    check-cast p1, Lcom/google/api/client/util/DateTime;

    .line 191
    iget-boolean v2, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    iget-boolean v3, p1, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    if-ne v2, v3, :cond_1b

    iget-wide v2, p0, Lcom/google/api/client/util/DateTime;->value:J

    iget-wide v4, p1, Lcom/google/api/client/util/DateTime;->value:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    :cond_1b
    move v0, v1

    goto :goto_4
.end method

.method public final getTimeZoneShift()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/api/client/util/DateTime;->tzShift:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getValue()J
    .registers 3

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/google/api/client/util/DateTime;->value:J

    return-wide v0
.end method

.method public final isDateOnly()Z
    .registers 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/api/client/util/DateTime;->toStringRfc3339()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toStringRfc3339()Ljava/lang/String;
    .registers 14

    .prologue
    const/16 v12, 0xe

    const/16 v11, 0x3a

    const/16 v10, 0x2d

    const/4 v9, 0x2

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    new-instance v3, Ljava/util/GregorianCalendar;

    sget-object v0, Lcom/google/api/client/util/DateTime;->GMT:Ljava/util/TimeZone;

    invoke-direct {v3, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 122
    iget-wide v0, p0, Lcom/google/api/client/util/DateTime;->value:J

    .line 123
    iget-object v4, p0, Lcom/google/api/client/util/DateTime;->tzShift:Ljava/lang/Integer;

    .line 124
    if-eqz v4, :cond_22

    .line 125
    invoke-virtual {v4}, Ljava/lang/Integer;->longValue()J

    move-result-wide v5

    const-wide/32 v7, 0xea60

    mul-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 127
    :cond_22
    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 129
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v2, v0, v1}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 130
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2, v0, v9}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 132
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    const/4 v0, 0x5

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v2, v0, v9}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 135
    iget-boolean v0, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    if-nez v0, :cond_82

    .line 137
    const/16 v0, 0x54

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    const/16 v0, 0xb

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v2, v0, v9}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 139
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v2, v0, v9}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 141
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v2, v0, v9}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 144
    invoke-virtual {v3, v12}, Ljava/util/Calendar;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 145
    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v2, v0, v1}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 150
    :cond_82
    if-eqz v4, :cond_8f

    .line 152
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_94

    .line 154
    const/16 v0, 0x5a

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    :cond_8f
    :goto_8f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 158
    :cond_94
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 159
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_b1

    .line 160
    const/16 v1, 0x2b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    :goto_a3
    div-int/lit8 v1, v0, 0x3c

    .line 167
    rem-int/lit8 v0, v0, 0x3c

    .line 168
    invoke-static {v2, v1, v9}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 169
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {v2, v0, v9}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    goto :goto_8f

    .line 162
    :cond_b1
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    neg-int v0, v0

    goto :goto_a3
.end method
