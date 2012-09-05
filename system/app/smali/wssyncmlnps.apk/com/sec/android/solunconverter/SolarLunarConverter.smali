.class public final Lcom/sec/android/solunconverter/SolarLunarConverter;
.super Ljava/lang/Object;
.source "SolarLunarConverter.java"


# static fields
.field static acmDaysInLeapYear_:[I

.field static acmDaysInYear_:[I


# instance fields
.field private day_:I

.field private month_:I

.field private year_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xd

    .line 23
    new-array v0, v1, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/sec/android/solunconverter/SolarLunarConverter;->acmDaysInYear_:[I

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_30

    sput-object v0, Lcom/sec/android/solunconverter/SolarLunarConverter;->acmDaysInLeapYear_:[I

    return-void

    .line 23
    nop

    :array_12
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
        0x6dt 0x1t 0x0t 0x0t
    .end array-data

    .line 31
    :array_30
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0x31t 0x1t 0x0t 0x0t
        0x4ft 0x1t 0x0t 0x0t
        0x6et 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAccumulatedDays(I)[I
    .registers 3
    .parameter "year"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/sec/android/solunconverter/SolarLunarConverter;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 163
    sget-object v0, Lcom/sec/android/solunconverter/SolarLunarConverter;->acmDaysInLeapYear_:[I

    .line 167
    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/sec/android/solunconverter/SolarLunarConverter;->acmDaysInYear_:[I

    goto :goto_8
.end method

.method private isLeapYear(I)Z
    .registers 4
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    .line 147
    rem-int/lit8 v1, p1, 0x4

    if-gtz v1, :cond_d

    rem-int/lit8 v1, p1, 0x64

    if-ge v1, v0, :cond_e

    rem-int/lit16 v1, p1, 0x190

    if-lez v1, :cond_e

    .line 149
    :cond_d
    const/4 v0, 0x0

    .line 153
    :cond_e
    return v0
.end method


# virtual methods
.method public convertLunarToSolar(IIIZ)V
    .registers 17
    .parameter "y"
    .parameter "m"
    .parameter "d"
    .parameter "isLeapMonth"

    .prologue
    .line 281
    const/16 v9, 0x759

    if-lt p1, v9, :cond_15

    const/16 v9, 0x834

    if-gt p1, v9, :cond_15

    if-ltz p2, :cond_15

    const/16 v9, 0xb

    if-gt p2, v9, :cond_15

    const/4 v9, 0x1

    if-lt p3, v9, :cond_15

    const/16 v9, 0x1e

    if-le p3, v9, :cond_48

    .line 285
    :cond_15
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The date "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is out of range."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 293
    :cond_48
    invoke-direct {p0, p1}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getAccumulatedDays(I)[I

    move-result-object v1

    .line 297
    .local v1, days:[I
    add-int/lit16 v3, p1, -0x759

    .line 299
    .local v3, indexOfYear:I
    mul-int/lit8 v8, v3, 0xe

    .line 301
    .local v8, startIndexOfYear:I
    sget-object v9, Lcom/sec/android/solunconverter/SolarLunarTables;->accumulatedLunarDays:[I

    aget v0, v9, v3

    .line 305
    .local v0, countOfDays:I
    sget-object v9, Lcom/sec/android/solunconverter/SolarLunarTables;->lunar:[B

    add-int/lit8 v10, v8, 0xd

    aget-byte v5, v9, v10

    .line 307
    .local v5, leapMonth:I
    const/16 v9, 0x7f

    if-ne v5, v9, :cond_71

    const/16 v7, 0xc

    .line 311
    .local v7, numOfMonth:I
    :goto_60
    const/16 v9, 0xc

    if-ne v7, v9, :cond_74

    .line 313
    const/4 v4, 0x0

    .local v4, j:I
    :goto_65
    if-ge v4, p2, :cond_9c

    .line 315
    sget-object v9, Lcom/sec/android/solunconverter/SolarLunarTables;->lunar:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 313
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 307
    .end local v4           #j:I
    .end local v7           #numOfMonth:I
    :cond_71
    const/16 v7, 0xd

    goto :goto_60

    .line 321
    .restart local v7       #numOfMonth:I
    :cond_74
    if-eqz p4, :cond_87

    add-int/lit8 v9, p2, 0x1

    if-ne v9, v5, :cond_87

    .line 323
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_7b
    if-ge v4, v5, :cond_9c

    .line 325
    sget-object v9, Lcom/sec/android/solunconverter/SolarLunarTables;->lunar:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 323
    add-int/lit8 v4, v4, 0x1

    goto :goto_7b

    .line 333
    .end local v4           #j:I
    :cond_87
    add-int/lit8 v9, p2, 0x1

    if-le v9, v5, :cond_9a

    .line 335
    add-int/lit8 v6, p2, 0x1

    .line 343
    .local v6, nM:I
    :goto_8d
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_8e
    if-ge v4, v6, :cond_9c

    .line 345
    sget-object v9, Lcom/sec/android/solunconverter/SolarLunarTables;->lunar:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 343
    add-int/lit8 v4, v4, 0x1

    goto :goto_8e

    .line 339
    .end local v4           #j:I
    .end local v6           #nM:I
    :cond_9a
    move v6, p2

    .restart local v6       #nM:I
    goto :goto_8d

    .line 357
    .end local v6           #nM:I
    .restart local v4       #j:I
    :cond_9c
    add-int v9, v0, p3

    add-int/lit8 v0, v9, -0x1

    .line 363
    const/16 v9, 0x759

    iput v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->year_:I

    .line 365
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->month_:I

    .line 367
    const/16 v9, 0x1e

    iput v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->day_:I

    .line 371
    const/16 v9, 0x14f

    if-le v0, v9, :cond_ee

    .line 375
    const/16 v9, 0x75a

    iput v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->year_:I

    .line 377
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->month_:I

    .line 379
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->day_:I

    .line 381
    add-int/lit16 v0, v0, -0x150

    .line 387
    const/16 v2, 0x16d

    .line 389
    .local v2, daysOfYear:I
    :goto_bd
    if-lt v0, v2, :cond_d4

    .line 391
    sub-int/2addr v0, v2

    .line 395
    iget v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->year_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->year_:I

    .line 397
    iget v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->year_:I

    invoke-direct {p0, v9}, Lcom/sec/android/solunconverter/SolarLunarConverter;->isLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_d1

    .line 399
    const/16 v2, 0x16e

    goto :goto_bd

    .line 403
    :cond_d1
    const/16 v2, 0x16d

    goto :goto_bd

    .line 411
    :cond_d4
    :goto_d4
    iget v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    if-lt v0, v9, :cond_e3

    .line 413
    iget v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->month_:I

    goto :goto_d4

    .line 417
    :cond_e3
    iget v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->month_:I

    aget v9, v1, v9

    sub-int/2addr v0, v9

    .line 423
    iget v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->day_:I

    .line 459
    .end local v2           #daysOfYear:I
    :goto_ed
    return-void

    .line 427
    :cond_ee
    const/4 v9, 0x1

    if-le v0, v9, :cond_113

    .line 429
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->month_:I

    .line 431
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->day_:I

    .line 433
    add-int/lit8 v0, v0, -0x2

    .line 437
    :goto_f9
    iget v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    if-lt v0, v9, :cond_108

    .line 439
    iget v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->month_:I

    goto :goto_f9

    .line 443
    :cond_108
    iget v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->month_:I

    aget v9, v1, v9

    sub-int/2addr v0, v9

    .line 449
    iget v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->day_:I

    goto :goto_ed

    .line 453
    :cond_113
    iget v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->day_:I

    goto :goto_ed
.end method

.method public getDay()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->day_:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->month_:I

    return v0
.end method

.method public getYear()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/sec/android/solunconverter/SolarLunarConverter;->year_:I

    return v0
.end method
