.class public Ljava/util/Date;
.super Ljava/lang/Object;
.source "Date.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field private static creationYear:I = 0x0

.field private static final serialVersionUID:J = 0x686a81014b597419L


# instance fields
.field private transient milliseconds:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    sput v0, Ljava/util/Date;->creationYear:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 52
    return-void
.end method

.method public constructor <init>(III)V
    .registers 7
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Z)V

    .line 71
    .local v0, cal:Ljava/util/GregorianCalendar;
    add-int/lit16 v1, p1, 0x76c

    invoke-virtual {v0, v1, p2, p3}, Ljava/util/GregorianCalendar;->set(III)V

    .line 72
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 73
    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 12
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "minute"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Z)V

    .line 96
    .local v0, cal:Ljava/util/GregorianCalendar;
    add-int/lit16 v1, p1, 0x76c

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/util/GregorianCalendar;->set(IIIII)V

    .line 97
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 98
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 14
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "minute"
    .parameter "second"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Z)V

    .line 123
    .local v0, cal:Ljava/util/GregorianCalendar;
    add-int/lit16 v1, p1, 0x76c

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 124
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 125
    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .parameter "milliseconds"

    .prologue
    .line 134
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-wide p1, p0, Ljava/util/Date;->milliseconds:J

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "string"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-static {p1}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/Date;->milliseconds:J

    .line 150
    return-void
.end method

.method public static UTC(IIIIII)J
    .registers 13
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "minute"
    .parameter "second"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 749
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Z)V

    .line 750
    .local v0, cal:Ljava/util/GregorianCalendar;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 751
    add-int/lit16 v1, p0, 0x76c

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 752
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method private static appendTwoDigits(Ljava/lang/StringBuilder;I)V
    .registers 3
    .parameter "sb"
    .parameter "n"

    .prologue
    .line 718
    const/16 v0, 0xa

    if-ge p1, v0, :cond_9

    .line 719
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 721
    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 722
    return-void
.end method

.method private static parse(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "string"
    .parameter "array"

    .prologue
    const/4 v2, 0x0

    .line 351
    const/4 v7, 0x0

    .local v7, i:I
    array-length v6, p1

    .local v6, alength:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, slength:I
    :goto_7
    if-ge v7, v6, :cond_18

    .line 352
    const/4 v1, 0x1

    aget-object v3, p1, v7

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 356
    .end local v7           #i:I
    :goto_14
    return v7

    .line 351
    .restart local v7       #i:I
    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 356
    :cond_18
    const/4 v7, -0x1

    goto :goto_14
.end method

.method public static parse(Ljava/lang/String;)J
    .registers 37
    .parameter "string"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 372
    if-nez p0, :cond_a

    .line 373
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v8, "The string argument is null"

    invoke-direct {v2, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 376
    :cond_a
    const/16 v27, 0x0

    .line 377
    .local v27, sign:C
    const/16 v19, 0x0

    .line 378
    .local v19, commentLevel:I
    const/16 v26, 0x0

    .local v26, offset:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v21

    .local v21, length:I
    const/16 v28, 0x0

    .line 379
    .local v28, state:I
    const/16 v33, -0x1

    .local v33, year:I
    const/4 v3, -0x1

    .local v3, month:I
    const/4 v4, -0x1

    .line 380
    .local v4, date:I
    const/4 v5, -0x1

    .local v5, hour:I
    const/4 v6, -0x1

    .local v6, minute:I
    const/4 v7, -0x1

    .local v7, second:I
    const/16 v35, 0x0

    .local v35, zoneOffset:I
    const/16 v22, 0x0

    .line 381
    .local v22, minutesOffset:I
    const/16 v34, 0x0

    .line 382
    .local v34, zone:Z
    const/16 v17, 0x0

    .local v17, PAD:I
    const/4 v15, 0x1

    .local v15, LETTERS:I
    const/16 v16, 0x2

    .line 383
    .local v16, NUMBERS:I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .local v18, buffer:Ljava/lang/StringBuilder;
    :cond_2d
    :goto_2d
    move/from16 v0, v26

    move/from16 v1, v21

    if-gt v0, v1, :cond_2c6

    .line 386
    move/from16 v0, v26

    move/from16 v1, v21

    if-ge v0, v1, :cond_f1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    .line 387
    .local v24, next:C
    :goto_41
    add-int/lit8 v26, v26, 0x1

    .line 389
    const/16 v2, 0x28

    move/from16 v0, v24

    if-ne v0, v2, :cond_4b

    .line 390
    add-int/lit8 v19, v19, 0x1

    .line 392
    :cond_4b
    if-lez v19, :cond_59

    .line 393
    const/16 v2, 0x29

    move/from16 v0, v24

    if-ne v0, v2, :cond_55

    .line 394
    add-int/lit8 v19, v19, -0x1

    .line 396
    :cond_55
    if-nez v19, :cond_2d

    .line 397
    const/16 v24, 0x20

    .line 403
    :cond_59
    const/16 v25, 0x0

    .line 404
    .local v25, nextState:I
    const/16 v2, 0x61

    move/from16 v0, v24

    if-gt v2, v0, :cond_67

    const/16 v2, 0x7a

    move/from16 v0, v24

    if-le v0, v2, :cond_73

    :cond_67
    const/16 v2, 0x41

    move/from16 v0, v24

    if-gt v2, v0, :cond_f5

    const/16 v2, 0x5a

    move/from16 v0, v24

    if-gt v0, v2, :cond_f5

    .line 405
    :cond_73
    const/16 v25, 0x1

    .line 412
    :cond_75
    :goto_75
    const/4 v2, 0x2

    move/from16 v0, v28

    if-ne v0, v2, :cond_1ec

    const/4 v2, 0x2

    move/from16 v0, v25

    if-eq v0, v2, :cond_1ec

    .line 413
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 414
    .local v20, digit:I
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 415
    const/16 v2, 0x2b

    move/from16 v0, v27

    if-eq v0, v2, :cond_99

    const/16 v2, 0x2d

    move/from16 v0, v27

    if-ne v0, v2, :cond_134

    .line 416
    :cond_99
    if-nez v35, :cond_12e

    .line 417
    const/16 v34, 0x1

    .line 418
    const/16 v2, 0x3a

    move/from16 v0, v24

    if-ne v0, v2, :cond_bc

    .line 419
    const/16 v2, 0x2d

    move/from16 v0, v27

    if-ne v0, v2, :cond_11c

    add-int/lit8 v2, v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    neg-int v0, v2

    move/from16 v22, v0

    .line 424
    :goto_ba
    add-int/lit8 v26, v26, 0x2

    .line 426
    :cond_bc
    const/16 v2, 0x2d

    move/from16 v0, v27

    if-ne v0, v2, :cond_12b

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v35, v0

    .line 427
    :goto_c7
    const/16 v27, 0x0

    .line 511
    .end local v20           #digit:I
    :cond_c9
    :goto_c9
    const/16 v2, 0x2b

    move/from16 v0, v24

    if-eq v0, v2, :cond_da

    const/4 v2, -0x1

    move/from16 v0, v33

    if-eq v0, v2, :cond_2b1

    const/16 v2, 0x2d

    move/from16 v0, v24

    if-ne v0, v2, :cond_2b1

    .line 512
    :cond_da
    move/from16 v27, v24

    .line 518
    :cond_dc
    :goto_dc
    const/4 v2, 0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_e6

    const/4 v2, 0x2

    move/from16 v0, v25

    if-ne v0, v2, :cond_ed

    .line 519
    :cond_e6
    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 521
    :cond_ed
    move/from16 v28, v25

    .line 522
    goto/16 :goto_2d

    .line 386
    .end local v24           #next:C
    .end local v25           #nextState:I
    :cond_f1
    const/16 v24, 0xd

    goto/16 :goto_41

    .line 406
    .restart local v24       #next:C
    .restart local v25       #nextState:I
    :cond_f5
    const/16 v2, 0x30

    move/from16 v0, v24

    if-gt v2, v0, :cond_105

    const/16 v2, 0x39

    move/from16 v0, v24

    if-gt v0, v2, :cond_105

    .line 407
    const/16 v25, 0x2

    goto/16 :goto_75

    .line 408
    :cond_105
    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->isSpace(C)Z

    move-result v2

    if-nez v2, :cond_75

    const-string v2, ",+-:/"

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v8, -0x1

    if-ne v2, v8, :cond_75

    .line 409
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 419
    .restart local v20       #digit:I
    :cond_11c
    add-int/lit8 v2, v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    goto :goto_ba

    :cond_12b
    move/from16 v35, v20

    .line 426
    goto :goto_c7

    .line 429
    :cond_12e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 431
    :cond_134
    const/16 v2, 0x46

    move/from16 v0, v20

    if-lt v0, v2, :cond_161

    .line 432
    const/4 v2, -0x1

    move/from16 v0, v33

    if-ne v0, v2, :cond_15b

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->isSpace(C)Z

    move-result v2

    if-nez v2, :cond_157

    const/16 v2, 0x2c

    move/from16 v0, v24

    if-eq v0, v2, :cond_157

    const/16 v2, 0x2f

    move/from16 v0, v24

    if-eq v0, v2, :cond_157

    const/16 v2, 0xd

    move/from16 v0, v24

    if-ne v0, v2, :cond_15b

    .line 435
    :cond_157
    move/from16 v33, v20

    goto/16 :goto_c9

    .line 437
    :cond_15b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 439
    :cond_161
    const/16 v2, 0x3a

    move/from16 v0, v24

    if-ne v0, v2, :cond_17b

    .line 440
    const/4 v2, -0x1

    if-ne v5, v2, :cond_16e

    .line 441
    move/from16 v5, v20

    goto/16 :goto_c9

    .line 442
    :cond_16e
    const/4 v2, -0x1

    if-ne v6, v2, :cond_175

    .line 443
    move/from16 v6, v20

    goto/16 :goto_c9

    .line 445
    :cond_175
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 447
    :cond_17b
    const/16 v2, 0x2f

    move/from16 v0, v24

    if-ne v0, v2, :cond_195

    .line 448
    const/4 v2, -0x1

    if-ne v3, v2, :cond_188

    .line 449
    add-int/lit8 v3, v20, -0x1

    goto/16 :goto_c9

    .line 450
    :cond_188
    const/4 v2, -0x1

    if-ne v4, v2, :cond_18f

    .line 451
    move/from16 v4, v20

    goto/16 :goto_c9

    .line 453
    :cond_18f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 455
    :cond_195
    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->isSpace(C)Z

    move-result v2

    if-nez v2, :cond_1ad

    const/16 v2, 0x2c

    move/from16 v0, v24

    if-eq v0, v2, :cond_1ad

    const/16 v2, 0x2d

    move/from16 v0, v24

    if-eq v0, v2, :cond_1ad

    const/16 v2, 0xd

    move/from16 v0, v24

    if-ne v0, v2, :cond_1d7

    .line 457
    :cond_1ad
    const/4 v2, -0x1

    if-eq v5, v2, :cond_1b7

    const/4 v2, -0x1

    if-ne v6, v2, :cond_1b7

    .line 458
    move/from16 v6, v20

    goto/16 :goto_c9

    .line 459
    :cond_1b7
    const/4 v2, -0x1

    if-eq v6, v2, :cond_1c1

    const/4 v2, -0x1

    if-ne v7, v2, :cond_1c1

    .line 460
    move/from16 v7, v20

    goto/16 :goto_c9

    .line 461
    :cond_1c1
    const/4 v2, -0x1

    if-ne v4, v2, :cond_1c8

    .line 462
    move/from16 v4, v20

    goto/16 :goto_c9

    .line 463
    :cond_1c8
    const/4 v2, -0x1

    move/from16 v0, v33

    if-ne v0, v2, :cond_1d1

    .line 464
    move/from16 v33, v20

    goto/16 :goto_c9

    .line 466
    :cond_1d1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 468
    :cond_1d7
    const/4 v2, -0x1

    move/from16 v0, v33

    if-ne v0, v2, :cond_1e6

    const/4 v2, -0x1

    if-eq v3, v2, :cond_1e6

    const/4 v2, -0x1

    if-eq v4, v2, :cond_1e6

    .line 469
    move/from16 v33, v20

    goto/16 :goto_c9

    .line 471
    :cond_1e6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 473
    .end local v20           #digit:I
    :cond_1ec
    const/4 v2, 0x1

    move/from16 v0, v28

    if-ne v0, v2, :cond_c9

    const/4 v2, 0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_c9

    .line 474
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v30

    .line 475
    .local v30, text:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 476
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_213

    .line 477
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 479
    :cond_213
    const-string v2, "AM"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_231

    .line 480
    const/16 v2, 0xc

    if-ne v5, v2, :cond_224

    .line 481
    const/4 v5, 0x0

    goto/16 :goto_c9

    .line 482
    :cond_224
    const/4 v2, 0x1

    if-lt v5, v2, :cond_22b

    const/16 v2, 0xc

    if-le v5, v2, :cond_c9

    .line 483
    :cond_22b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 485
    :cond_231
    const-string v2, "PM"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_251

    .line 486
    const/16 v2, 0xc

    if-ne v5, v2, :cond_244

    .line 487
    const/4 v5, 0x0

    .line 491
    :cond_240
    add-int/lit8 v5, v5, 0xc

    goto/16 :goto_c9

    .line 488
    :cond_244
    const/4 v2, 0x1

    if-lt v5, v2, :cond_24b

    const/16 v2, 0xc

    if-le v5, v2, :cond_240

    .line 489
    :cond_24b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 493
    :cond_251
    new-instance v29, Ljava/text/DateFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 494
    .local v29, symbols:Ljava/text/DateFormatSymbols;
    invoke-virtual/range {v29 .. v29}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v32

    .local v32, weekdays:[Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v23

    .line 497
    .local v23, months:[Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Ljava/util/Date;->parse(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v8, -0x1

    if-ne v2, v8, :cond_c9

    .line 498
    const/4 v2, -0x1

    if-ne v3, v2, :cond_27b

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/util/Date;->parse(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const/4 v2, -0x1

    if-ne v3, v2, :cond_c9

    .line 499
    :cond_27b
    const-string v2, "GMT"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_299

    const-string v2, "UT"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_299

    const-string v2, "UTC"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29f

    .line 500
    :cond_299
    const/16 v34, 0x1

    .line 501
    const/16 v35, 0x0

    goto/16 :goto_c9

    .line 502
    :cond_29f
    invoke-static/range {v30 .. v30}, Ljava/util/Date;->zone(Ljava/lang/String;)I

    move-result v31

    .local v31, value:I
    if-eqz v31, :cond_2ab

    .line 503
    const/16 v34, 0x1

    .line 504
    move/from16 v35, v31

    goto/16 :goto_c9

    .line 506
    :cond_2ab
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 513
    .end local v23           #months:[Ljava/lang/String;
    .end local v29           #symbols:Ljava/text/DateFormatSymbols;
    .end local v30           #text:Ljava/lang/String;
    .end local v31           #value:I
    .end local v32           #weekdays:[Ljava/lang/String;
    :cond_2b1
    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->isSpace(C)Z

    move-result v2

    if-nez v2, :cond_dc

    const/16 v2, 0x2c

    move/from16 v0, v24

    if-eq v0, v2, :cond_dc

    const/4 v2, 0x2

    move/from16 v0, v25

    if-eq v0, v2, :cond_dc

    .line 515
    const/16 v27, 0x0

    goto/16 :goto_dc

    .line 524
    .end local v24           #next:C
    .end local v25           #nextState:I
    :cond_2c6
    const/4 v2, -0x1

    move/from16 v0, v33

    if-eq v0, v2, :cond_32d

    const/4 v2, -0x1

    if-eq v3, v2, :cond_32d

    const/4 v2, -0x1

    if-eq v4, v2, :cond_32d

    .line 525
    const/4 v2, -0x1

    if-ne v5, v2, :cond_2d5

    .line 526
    const/4 v5, 0x0

    .line 528
    :cond_2d5
    const/4 v2, -0x1

    if-ne v6, v2, :cond_2d9

    .line 529
    const/4 v6, 0x0

    .line 531
    :cond_2d9
    const/4 v2, -0x1

    if-ne v7, v2, :cond_2dd

    .line 532
    const/4 v7, 0x0

    .line 534
    :cond_2dd
    sget v2, Ljava/util/Date;->creationYear:I

    add-int/lit8 v2, v2, -0x50

    move/from16 v0, v33

    if-ge v0, v2, :cond_30a

    .line 535
    move/from16 v0, v33

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v33, v0

    .line 539
    :cond_2eb
    :goto_2eb
    sub-int v6, v6, v22

    .line 540
    if-eqz v34, :cond_31a

    .line 541
    const/16 v2, 0x18

    move/from16 v0, v35

    if-ge v0, v2, :cond_2fb

    const/16 v2, -0x18

    move/from16 v0, v35

    if-gt v0, v2, :cond_317

    .line 542
    :cond_2fb
    div-int/lit8 v2, v35, 0x64

    sub-int/2addr v5, v2

    .line 543
    rem-int/lit8 v2, v35, 0x64

    sub-int/2addr v6, v2

    .line 547
    :goto_301
    move/from16 v0, v33

    add-int/lit16 v2, v0, -0x76c

    invoke-static/range {v2 .. v7}, Ljava/util/Date;->UTC(IIIIII)J

    move-result-wide v8

    .line 549
    :goto_309
    return-wide v8

    .line 536
    :cond_30a
    const/16 v2, 0x64

    move/from16 v0, v33

    if-ge v0, v2, :cond_2eb

    .line 537
    move/from16 v0, v33

    add-int/lit16 v0, v0, 0x76c

    move/from16 v33, v0

    goto :goto_2eb

    .line 545
    :cond_317
    sub-int v5, v5, v35

    goto :goto_301

    .line 549
    :cond_31a
    new-instance v8, Ljava/util/Date;

    move/from16 v0, v33

    add-int/lit16 v9, v0, -0x76c

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    invoke-direct/range {v8 .. v14}, Ljava/util/Date;-><init>(IIIIII)V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    goto :goto_309

    .line 552
    :cond_32d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 790
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 791
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 792
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 784
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 785
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 786
    return-void
.end method

.method private static zone(Ljava/lang/String;)I
    .registers 5
    .parameter "text"

    .prologue
    const/4 v0, -0x5

    const/4 v1, -0x6

    const/4 v2, -0x7

    .line 756
    const-string v3, "EST"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 780
    :cond_b
    :goto_b
    return v0

    .line 759
    :cond_c
    const-string v3, "EDT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 760
    const/4 v0, -0x4

    goto :goto_b

    .line 762
    :cond_16
    const-string v3, "CST"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    move v0, v1

    .line 763
    goto :goto_b

    .line 765
    :cond_20
    const-string v3, "CDT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 768
    const-string v0, "MST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    move v0, v2

    .line 769
    goto :goto_b

    .line 771
    :cond_32
    const-string v0, "MDT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    move v0, v1

    .line 772
    goto :goto_b

    .line 774
    :cond_3c
    const-string v0, "PST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 775
    const/4 v0, -0x8

    goto :goto_b

    .line 777
    :cond_46
    const-string v0, "PDT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    move v0, v2

    .line 778
    goto :goto_b

    .line 780
    :cond_50
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public after(Ljava/util/Date;)Z
    .registers 6
    .parameter "date"

    .prologue
    .line 161
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public before(Ljava/util/Date;)Z
    .registers 6
    .parameter "date"

    .prologue
    .line 173
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 186
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 187
    :catch_5
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Ljava/util/Date;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/Date;)I
    .registers 6
    .parameter "date"

    .prologue
    .line 202
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    .line 203
    const/4 v0, -0x1

    .line 208
    :goto_9
    return v0

    .line 205
    :cond_a
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 206
    const/4 v0, 0x0

    goto :goto_9

    .line 208
    :cond_14
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "object"

    .prologue
    .line 225
    if-eq p1, p0, :cond_10

    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_12

    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    check-cast p1, Ljava/util/Date;

    .end local p1
    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getDate()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 238
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getDay()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 250
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getHours()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 262
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 274
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 286
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 298
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getTime()J
    .registers 3

    .prologue
    .line 308
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    return-wide v0
.end method

.method public getTimezoneOffset()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 321
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 322
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    neg-int v1, v1

    const v2, 0xea60

    div-int/2addr v1, v2

    return v1
.end method

.method public getYear()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 334
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    add-int/lit16 v0, v0, -0x76c

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 347
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setDate(I)V
    .registers 5
    .parameter "day"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 565
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 566
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 567
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 568
    return-void
.end method

.method public setHours(I)V
    .registers 5
    .parameter "hour"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 580
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 581
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 582
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 583
    return-void
.end method

.method public setMinutes(I)V
    .registers 5
    .parameter "minute"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 595
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 596
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 597
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 598
    return-void
.end method

.method public setMonth(I)V
    .registers 5
    .parameter "month"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 610
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 611
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 612
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 613
    return-void
.end method

.method public setSeconds(I)V
    .registers 5
    .parameter "second"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 625
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 626
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 627
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 628
    return-void
.end method

.method public setTime(J)V
    .registers 3
    .parameter "milliseconds"

    .prologue
    .line 638
    iput-wide p1, p0, Ljava/util/Date;->milliseconds:J

    .line 639
    return-void
.end method

.method public setYear(I)V
    .registers 5
    .parameter "year"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 651
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 652
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    add-int/lit16 v2, p1, 0x76c

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 653
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 654
    return-void
.end method

.method public toGMTString()Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 664
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "d MMM y HH:mm:ss \'GMT\'"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 665
    .local v2, sdf:Ljava/text/SimpleDateFormat;
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 666
    .local v1, gmtZone:Ljava/util/TimeZone;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 667
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 668
    .local v0, gc:Ljava/util/GregorianCalendar;
    iget-wide v3, p0, Ljava/util/Date;->milliseconds:J

    invoke-virtual {v0, v3, v4}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 669
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toLocaleString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 679
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    const/16 v7, 0x3a

    const/16 v6, 0x20

    .line 695
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    .line 696
    .local v1, localeData:Llibcore/icu/LocaleData;
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v4, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v4, v5}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 697
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 698
    .local v3, tz:Ljava/util/TimeZone;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 699
    .local v2, result:Ljava/lang/StringBuilder;
    iget-object v4, v1, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 701
    iget-object v4, v1, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 703
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/util/Date;->appendTwoDigits(Ljava/lang/StringBuilder;I)V

    .line 704
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 705
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/util/Date;->appendTwoDigits(Ljava/lang/StringBuilder;I)V

    .line 706
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 707
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/util/Date;->appendTwoDigits(Ljava/lang/StringBuilder;I)V

    .line 708
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 709
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/util/Date;->appendTwoDigits(Ljava/lang/StringBuilder;I)V

    .line 710
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {v3, p0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 713
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
