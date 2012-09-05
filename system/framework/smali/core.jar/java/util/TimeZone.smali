.class public abstract Ljava/util/TimeZone;
.super Ljava/lang/Object;
.source "TimeZone.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final GMT:Ljava/util/TimeZone; = null

.field public static final LONG:I = 0x1

.field public static final SHORT:I = 0x0

.field private static defaultTimeZone:Ljava/util/TimeZone; = null

.field private static final serialVersionUID:J = 0x31b3e9f57744aca1L


# instance fields
.field private ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 79
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "GMT"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendNumber(Ljava/lang/StringBuilder;II)V
    .registers 7
    .parameter "builder"
    .parameter "count"
    .parameter "value"

    .prologue
    .line 201
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, string:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p2, v2

    if-ge v0, v2, :cond_15

    .line 203
    const/16 v2, 0x30

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 205
    :cond_15
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    return-void
.end method

.method private static formatTimeZoneName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .parameter "name"
    .parameter "offset"

    .prologue
    const/4 v6, -0x1

    const/16 v5, 0x3a

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .local v0, buf:Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, index:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 335
    .local v2, length:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :goto_15
    if-ge v1, v2, :cond_41

    .line 338
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-eq v3, v6, :cond_37

    .line 339
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    add-int/lit8 v3, v1, 0x1

    sub-int v3, v2, v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_34

    .line 341
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    :cond_34
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 343
    :cond_37
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_34

    .line 344
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 349
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_55

    .line 350
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :cond_55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_68

    .line 355
    const/4 v3, 0x4

    const/16 v4, 0x30

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 358
    :cond_68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized getAvailableIDs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    const-class v0, Ljava/util/TimeZone;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getAvailableIDs()[Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getAvailableIDs(I)[Ljava/lang/String;
    .registers 3
    .parameter "offsetMillis"

    .prologue
    .line 116
    const-class v0, Ljava/util/TimeZone;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Llibcore/util/ZoneInfoDB;->getAvailableIDs(I)[Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getCustomTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 14
    .parameter "id"

    .prologue
    const/16 v12, 0x2d

    const/4 v9, 0x4

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 302
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 303
    .local v6, sign:C
    const/16 v8, 0x2b

    if-eq v6, v8, :cond_12

    if-eq v6, v12, :cond_12

    .line 329
    :cond_11
    :goto_11
    return-object v7

    .line 306
    :cond_12
    const/4 v8, 0x1

    new-array v4, v8, [I

    .line 307
    .local v4, position:[I
    invoke-static {p0, v9}, Ljava/util/TimeZone;->formatTimeZoneName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, formattedName:Ljava/lang/String;
    invoke-static {v0, v9, v4}, Ljava/util/TimeZone;->parseNumber(Ljava/lang/String;I[I)I

    move-result v1

    .line 309
    .local v1, hour:I
    if-ltz v1, :cond_11

    const/16 v8, 0x17

    if-gt v1, v8, :cond_11

    .line 312
    aget v2, v4, v11

    .line 313
    .local v2, index:I
    if-eq v2, v10, :cond_11

    .line 316
    const v8, 0x36ee80

    mul-int v5, v1, v8

    .line 317
    .local v5, raw:I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_58

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_58

    .line 318
    add-int/lit8 v8, v2, 0x1

    invoke-static {v0, v8, v4}, Ljava/util/TimeZone;->parseNumber(Ljava/lang/String;I[I)I

    move-result v3

    .line 319
    .local v3, minute:I
    aget v8, v4, v11

    if-eq v8, v10, :cond_11

    if-ltz v3, :cond_11

    const/16 v8, 0x3b

    if-gt v3, v8, :cond_11

    .line 322
    const v7, 0xea60

    mul-int/2addr v7, v3

    add-int/2addr v5, v7

    .line 326
    .end local v3           #minute:I
    :cond_4f
    :goto_4f
    if-ne v6, v12, :cond_52

    .line 327
    neg-int v5, v5

    .line 329
    :cond_52
    new-instance v7, Ljava/util/SimpleTimeZone;

    invoke-direct {v7, v5, v0}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    goto :goto_11

    .line 323
    :cond_58
    const/16 v7, 0x1e

    if-ge v1, v7, :cond_5f

    const/4 v7, 0x6

    if-le v2, v7, :cond_4f

    .line 324
    :cond_5f
    div-int/lit8 v7, v1, 0x64

    const v8, 0x36ee80

    mul-int/2addr v7, v8

    rem-int/lit8 v8, v1, 0x64

    const v9, 0xea60

    mul-int/2addr v8, v9

    add-int v5, v7, v8

    goto :goto_4f
.end method

.method public static declared-synchronized getDefault()Ljava/util/TimeZone;
    .registers 2

    .prologue
    .line 127
    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    if-nez v0, :cond_d

    .line 128
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getSystemDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    .line 130
    :cond_d
    sget-object v0, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-object v0

    .line 127
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 6
    .parameter "id"

    .prologue
    .line 285
    const-class v3, Ljava/util/TimeZone;

    monitor-enter v3

    :try_start_3
    invoke-static {p0}, Llibcore/util/ZoneInfoDB;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2d

    move-result-object v0

    .line 286
    .local v0, zone:Ljava/util/TimeZone;
    if-eqz v0, :cond_c

    move-object v1, v0

    .line 295
    .end local v0           #zone:Ljava/util/TimeZone;
    .local v1, zone:Ljava/util/TimeZone;
    :goto_a
    monitor-exit v3

    return-object v1

    .line 289
    .end local v1           #zone:Ljava/util/TimeZone;
    .restart local v0       #zone:Ljava/util/TimeZone;
    :cond_c
    if-nez v0, :cond_21

    :try_start_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x3

    if-le v2, v4, :cond_21

    const-string v2, "GMT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 290
    invoke-static {p0}, Ljava/util/TimeZone;->getCustomTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 292
    :cond_21
    if-nez v0, :cond_2b

    .line 293
    sget-object v2, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #zone:Ljava/util/TimeZone;
    check-cast v0, Ljava/util/TimeZone;
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_2d

    .restart local v0       #zone:Ljava/util/TimeZone;
    :cond_2b
    move-object v1, v0

    .line 295
    .end local v0           #zone:Ljava/util/TimeZone;
    .restart local v1       #zone:Ljava/util/TimeZone;
    goto :goto_a

    .line 285
    .end local v1           #zone:Ljava/util/TimeZone;
    :catchall_2d
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static parseNumber(Ljava/lang/String;I[I)I
    .registers 10
    .parameter "string"
    .parameter "offset"
    .parameter "position"

    .prologue
    const/4 v4, -0x1

    .line 381
    move v1, p1

    .local v1, index:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, length:I
    const/4 v3, 0x0

    .line 383
    .local v3, result:I
    :goto_7
    if-ge v1, v2, :cond_1c

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .local v0, digit:I
    if-eq v0, v4, :cond_1c

    .line 384
    add-int/lit8 v1, v1, 0x1

    .line 385
    mul-int/lit8 v5, v3, 0xa

    add-int v3, v5, v0

    goto :goto_7

    .line 387
    .end local v0           #digit:I
    :cond_1c
    const/4 v5, 0x0

    if-ne v1, p1, :cond_20

    move v1, v4

    .end local v1           #index:I
    :cond_20
    aput v1, p2, v5

    .line 388
    return v3
.end method

.method public static declared-synchronized setDefault(Ljava/util/TimeZone;)V
    .registers 3
    .parameter "timeZone"

    .prologue
    .line 403
    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    if-eqz p0, :cond_f

    :try_start_5
    invoke-virtual {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    :goto_b
    sput-object v0, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    .line 404
    monitor-exit v1

    return-void

    .line 403
    :cond_f
    const/4 v0, 0x0

    goto :goto_b

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 93
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 94
    :catch_5
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getDSTSavings()I
    .registers 2

    .prologue
    .line 229
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x36ee80

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final getDisplayName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 138
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .parameter "locale"

    .prologue
    .line 145
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(ZI)Ljava/lang/String;
    .registers 4
    .parameter "daylightTime"
    .parameter "style"

    .prologue
    .line 153
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;
    .registers 12
    .parameter "daylightTime"
    .parameter "style"
    .parameter "locale"

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    .line 167
    if-eqz p2, :cond_c

    if-eq p2, v4, :cond_c

    .line 168
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 171
    :cond_c
    if-eqz p1, :cond_23

    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 173
    .local v4, useDaylight:Z
    :goto_14
    invoke-static {p3}, Llibcore/icu/TimeZones;->getZoneStrings(Ljava/util/Locale;)[[Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, zoneStrings:[[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p1, p2}, Llibcore/icu/TimeZones;->getDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, result:Ljava/lang/String;
    if-eqz v2, :cond_25

    .line 197
    .end local v2           #result:Ljava/lang/String;
    :goto_22
    return-object v2

    .line 171
    .end local v4           #useDaylight:Z
    .end local v5           #zoneStrings:[[Ljava/lang/String;
    :cond_23
    const/4 v4, 0x0

    goto :goto_14

    .line 181
    .restart local v2       #result:Ljava/lang/String;
    .restart local v4       #useDaylight:Z
    .restart local v5       #zoneStrings:[[Ljava/lang/String;
    :cond_25
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    .line 182
    .local v1, offset:I
    if-eqz v4, :cond_34

    instance-of v6, p0, Ljava/util/SimpleTimeZone;

    if-eqz v6, :cond_34

    .line 183
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v6

    add-int/2addr v1, v6

    .line 185
    :cond_34
    const v6, 0xea60

    div-int/2addr v1, v6

    .line 186
    const/16 v3, 0x2b

    .line 187
    .local v3, sign:C
    if-gez v1, :cond_3f

    .line 188
    const/16 v3, 0x2d

    .line 189
    neg-int v1, v1

    .line 191
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x9

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 192
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v6, "GMT"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    div-int/lit8 v6, v1, 0x3c

    invoke-direct {p0, v0, v7, v6}, Ljava/util/TimeZone;->appendNumber(Ljava/lang/StringBuilder;II)V

    .line 195
    const/16 v6, 0x3a

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    rem-int/lit8 v6, v1, 0x3c

    invoke-direct {p0, v0, v7, v6}, Ljava/util/TimeZone;->appendNumber(Ljava/lang/StringBuilder;II)V

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_22
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getOffset(IIIIII)I
.end method

.method public getOffset(J)I
    .registers 5
    .parameter "time"

    .prologue
    .line 240
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 241
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    add-int/2addr v0, v1

    .line 243
    :goto_14
    return v0

    :cond_15
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    goto :goto_14
.end method

.method public abstract getRawOffset()I
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .registers 5
    .parameter "timeZone"

    .prologue
    const/4 v0, 0x0

    .line 368
    if-nez p1, :cond_4

    .line 371
    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public abstract inDaylightTime(Ljava/util/Date;)Z
.end method

.method public setID(Ljava/lang/String;)V
    .registers 3
    .parameter "id"

    .prologue
    .line 410
    if-nez p1, :cond_8

    .line 411
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 413
    :cond_8
    iput-object p1, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    .line 414
    return-void
.end method

.method public abstract setRawOffset(I)V
.end method

.method public abstract useDaylightTime()Z
.end method
