.class public final Ljava/lang/Long;
.super Ljava/lang/Number;
.source "Long.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation build Ljava/lang/FindBugsSuppressWarnings;
    value = {
        "DM_NUMBER_CTOR"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:J = 0x7fffffffffffffffL

.field public static final MIN_VALUE:J = -0x8000000000000000L

.field public static final SIZE:I = 0x40

.field private static final SMALL_VALUES:[Ljava/lang/Long; = null

.field public static final TYPE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x3b8be490cc8f23dfL


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 56
    const-class v1, [J

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 734
    const/16 v1, 0x100

    new-array v1, v1, [Ljava/lang/Long;

    sput-object v1, Ljava/lang/Long;->SMALL_VALUES:[Ljava/lang/Long;

    .line 737
    const/16 v0, -0x80

    .local v0, i:I
    :goto_10
    const/16 v1, 0x80

    if-ge v0, v1, :cond_23

    .line 738
    sget-object v1, Ljava/lang/Long;->SMALL_VALUES:[Ljava/lang/Long;

    add-int/lit16 v2, v0, 0x80

    new-instance v3, Ljava/lang/Long;

    int-to-long v4, v0

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v1, v2

    .line 737
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 740
    :cond_23
    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .parameter "value"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 76
    iput-wide p1, p0, Ljava/lang/Long;->value:J

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 90
    return-void
.end method

.method public static bitCount(J)I
    .registers 10
    .parameter "v"

    .prologue
    const-wide v6, 0x3333333333333333L

    const v5, 0xf0f0f0f

    .line 608
    const/4 v1, 0x1

    ushr-long v1, p0, v1

    const-wide v3, 0x5555555555555555L

    and-long/2addr v1, v3

    sub-long/2addr p0, v1

    .line 609
    and-long v1, p0, v6

    const/4 v3, 0x2

    ushr-long v3, p0, v3

    and-long/2addr v3, v6

    add-long p0, v1, v3

    .line 610
    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v1, v1

    long-to-int v2, p0

    add-int v0, v1, v2

    .line 611
    .local v0, i:I
    and-int v1, v0, v5

    ushr-int/lit8 v2, v0, 0x4

    and-int/2addr v2, v5

    add-int v0, v1, v2

    .line 612
    ushr-int/lit8 v1, v0, 0x8

    add-int/2addr v0, v1

    .line 613
    ushr-int/lit8 v1, v0, 0x10

    add-int/2addr v0, v1

    .line 614
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method public static compare(JJ)I
    .registers 5
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 121
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    cmp-long v0, p0, p2

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_5

    :cond_c
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Long;
    .registers 10
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 141
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, length:I
    const/4 v2, 0x0

    .line 142
    .local v2, i:I
    if-nez v3, :cond_d

    .line 143
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v7

    throw v7

    .line 145
    :cond_d
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 146
    .local v1, firstDigit:C
    const/16 v8, 0x2d

    if-ne v1, v8, :cond_1f

    move v4, v7

    .line 147
    .local v4, negative:Z
    :goto_16
    if-eqz v4, :cond_27

    .line 148
    if-ne v3, v7, :cond_21

    .line 149
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v7

    throw v7

    .line 146
    .end local v4           #negative:Z
    :cond_1f
    const/4 v4, 0x0

    goto :goto_16

    .line 151
    .restart local v4       #negative:Z
    :cond_21
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 154
    :cond_27
    const/16 v0, 0xa

    .line 155
    .local v0, base:I
    const/16 v7, 0x30

    if-ne v1, v7, :cond_5b

    .line 156
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_38

    .line 157
    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 177
    :goto_37
    return-object v7

    .line 159
    :cond_38
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v7, 0x78

    if-eq v1, v7, :cond_44

    const/16 v7, 0x58

    if-ne v1, v7, :cond_58

    .line 160
    :cond_44
    if-ne v2, v3, :cond_4b

    .line 161
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v7

    throw v7

    .line 163
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    .line 164
    const/16 v0, 0x10

    .line 176
    :cond_4f
    :goto_4f
    invoke-static {p0, v2, v0, v4}, Ljava/lang/Long;->parse(Ljava/lang/String;IIZ)J

    move-result-wide v5

    .line 177
    .local v5, result:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_37

    .line 166
    .end local v5           #result:J
    :cond_58
    const/16 v0, 0x8

    goto :goto_4f

    .line 168
    :cond_5b
    const/16 v7, 0x23

    if-ne v1, v7, :cond_4f

    .line 169
    if-ne v2, v3, :cond_66

    .line 170
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v7

    throw v7

    .line 172
    :cond_66
    add-int/lit8 v2, v2, 0x1

    .line 173
    const/16 v0, 0x10

    goto :goto_4f
.end method

.method public static getLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 5
    .parameter "string"

    .prologue
    const/4 v2, 0x0

    .line 216
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    .line 226
    :cond_9
    :goto_9
    return-object v2

    .line 219
    :cond_a
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, prop:Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 224
    :try_start_10
    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_13} :catch_15

    move-result-object v2

    goto :goto_9

    .line 225
    :catch_15
    move-exception v0

    .line 226
    .local v0, ex:Ljava/lang/NumberFormatException;
    goto :goto_9
.end method

.method public static getLong(Ljava/lang/String;J)Ljava/lang/Long;
    .registers 6
    .parameter "string"
    .parameter "defaultValue"

    .prologue
    .line 245
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    .line 246
    :cond_8
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 255
    :goto_c
    return-object v2

    .line 248
    :cond_d
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, prop:Ljava/lang/String;
    if-nez v1, :cond_18

    .line 250
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_c

    .line 253
    :cond_18
    :try_start_18
    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result-object v2

    goto :goto_c

    .line 254
    :catch_1d
    move-exception v0

    .line 255
    .local v0, ex:Ljava/lang/NumberFormatException;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_c
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 5
    .parameter "string"
    .parameter "defaultValue"

    .prologue
    .line 274
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    .line 284
    .end local p1
    :cond_8
    :goto_8
    return-object p1

    .line 277
    .restart local p1
    :cond_9
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, prop:Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 282
    :try_start_f
    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_12} :catch_14

    move-result-object p1

    goto :goto_8

    .line 283
    :catch_14
    move-exception v0

    .line 284
    .local v0, ex:Ljava/lang/NumberFormatException;
    goto :goto_8
.end method

.method public static highestOneBit(J)J
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 513
    shr-long v0, p0, v2

    or-long/2addr p0, v0

    .line 514
    const/4 v0, 0x2

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 515
    const/4 v0, 0x4

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 516
    const/16 v0, 0x8

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 517
    const/16 v0, 0x10

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 518
    const/16 v0, 0x20

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 519
    ushr-long v0, p0, v2

    sub-long v0, p0, v0

    return-wide v0
.end method

.method private static invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .registers 4
    .parameter "s"

    .prologue
    .line 125
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid long: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lowestOneBit(J)J
    .registers 4
    .parameter "v"

    .prologue
    .line 534
    neg-long v0, p0

    and-long/2addr v0, p0

    return-wide v0
.end method

.method public static numberOfLeadingZeros(J)I
    .registers 7
    .parameter "v"

    .prologue
    const-wide/16 v3, 0x0

    .line 548
    cmp-long v2, p0, v3

    if-gez v2, :cond_8

    .line 549
    const/4 v2, 0x0

    .line 579
    :goto_7
    return v2

    .line 551
    :cond_8
    cmp-long v2, p0, v3

    if-nez v2, :cond_f

    .line 552
    const/16 v2, 0x40

    goto :goto_7

    .line 557
    :cond_f
    const/4 v1, 0x1

    .line 558
    .local v1, n:I
    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v0, v2

    .line 559
    .local v0, i:I
    if-nez v0, :cond_1a

    .line 560
    add-int/lit8 v1, v1, 0x20

    .line 561
    long-to-int v0, p0

    .line 563
    :cond_1a
    ushr-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_22

    .line 564
    add-int/lit8 v1, v1, 0x10

    .line 565
    shl-int/lit8 v0, v0, 0x10

    .line 567
    :cond_22
    ushr-int/lit8 v2, v0, 0x18

    if-nez v2, :cond_2a

    .line 568
    add-int/lit8 v1, v1, 0x8

    .line 569
    shl-int/lit8 v0, v0, 0x8

    .line 571
    :cond_2a
    ushr-int/lit8 v2, v0, 0x1c

    if-nez v2, :cond_32

    .line 572
    add-int/lit8 v1, v1, 0x4

    .line 573
    shl-int/lit8 v0, v0, 0x4

    .line 575
    :cond_32
    ushr-int/lit8 v2, v0, 0x1e

    if-nez v2, :cond_3a

    .line 576
    add-int/lit8 v1, v1, 0x2

    .line 577
    shl-int/lit8 v0, v0, 0x2

    .line 579
    :cond_3a
    ushr-int/lit8 v2, v0, 0x1f

    sub-int v2, v1, v2

    goto :goto_7
.end method

.method public static numberOfTrailingZeros(J)I
    .registers 5
    .parameter "v"

    .prologue
    .line 592
    long-to-int v0, p0

    .line 593
    .local v0, low:I
    if-eqz v0, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    :goto_7
    return v1

    :cond_8
    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    goto :goto_7
.end method

.method private static parse(Ljava/lang/String;IIZ)J
    .registers 19
    .parameter "string"
    .parameter "offset"
    .parameter "radix"
    .parameter "negative"

    .prologue
    .line 357
    const-wide/high16 v11, -0x8000

    move/from16 v0, p2

    int-to-long v13, v0

    div-long v4, v11, v13

    .line 358
    .local v4, max:J
    const-wide/16 v9, 0x0

    .local v9, result:J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    int-to-long v2, v11

    .local v2, length:J
    move/from16 v8, p1

    .line 359
    .end local p1
    .local v8, offset:I
    :goto_10
    int-to-long v11, v8

    cmp-long v11, v11, v2

    if-gez v11, :cond_46

    .line 360
    add-int/lit8 p1, v8, 0x1

    .end local v8           #offset:I
    .restart local p1
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move/from16 v0, p2

    invoke-static {v11, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 361
    .local v1, digit:I
    const/4 v11, -0x1

    if-ne v1, v11, :cond_29

    .line 362
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v11

    throw v11

    .line 364
    :cond_29
    cmp-long v11, v4, v9

    if-lez v11, :cond_32

    .line 365
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v11

    throw v11

    .line 367
    :cond_32
    move/from16 v0, p2

    int-to-long v11, v0

    mul-long/2addr v11, v9

    int-to-long v13, v1

    sub-long v6, v11, v13

    .line 368
    .local v6, next:J
    cmp-long v11, v6, v9

    if-lez v11, :cond_42

    .line 369
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v11

    throw v11

    .line 371
    :cond_42
    move-wide v9, v6

    move/from16 v8, p1

    .line 372
    .end local p1
    .restart local v8       #offset:I
    goto :goto_10

    .line 373
    .end local v1           #digit:I
    .end local v6           #next:J
    :cond_46
    if-nez p3, :cond_54

    .line 374
    neg-long v9, v9

    .line 375
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-gez v11, :cond_54

    .line 376
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v11

    throw v11

    .line 379
    :cond_54
    return-wide v9
.end method

.method public static parseLong(Ljava/lang/String;)J
    .registers 3
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 319
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLong(Ljava/lang/String;I)J
    .registers 8
    .parameter "string"
    .parameter "radix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 338
    const/4 v3, 0x2

    if-lt p1, v3, :cond_7

    const/16 v3, 0x24

    if-le p1, v3, :cond_20

    .line 339
    :cond_7
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid radix: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 341
    :cond_20
    if-nez p0, :cond_27

    .line 342
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 344
    :cond_27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, length:I
    const/4 v0, 0x0

    .line 345
    .local v0, i:I
    if-nez v1, :cond_33

    .line 346
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 348
    :cond_33
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_47

    const/4 v2, 0x1

    .line 349
    .local v2, negative:Z
    :goto_3c
    if-eqz v2, :cond_49

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_49

    .line 350
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 348
    .end local v2           #negative:Z
    :cond_47
    const/4 v2, 0x0

    goto :goto_3c

    .line 353
    .restart local v2       #negative:Z
    :cond_49
    invoke-static {p0, v0, p1, v2}, Ljava/lang/Long;->parse(Ljava/lang/String;IIZ)J

    move-result-wide v3

    return-wide v3
.end method

.method public static reverse(J)J
    .registers 11
    .parameter "v"

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 693
    ushr-long v0, p0, v4

    const-wide v2, 0x5555555555555555L

    and-long/2addr v0, v2

    const-wide v2, 0x5555555555555555L

    and-long/2addr v2, p0

    shl-long/2addr v2, v4

    or-long p0, v0, v2

    .line 694
    ushr-long v0, p0, v5

    const-wide v2, 0x3333333333333333L

    and-long/2addr v0, v2

    const-wide v2, 0x3333333333333333L

    and-long/2addr v2, p0

    shl-long/2addr v2, v5

    or-long p0, v0, v2

    .line 695
    ushr-long v0, p0, v6

    const-wide v2, 0xf0f0f0f0f0f0f0fL

    and-long/2addr v0, v2

    const-wide v2, 0xf0f0f0f0f0f0f0fL

    and-long/2addr v2, p0

    shl-long/2addr v2, v6

    or-long p0, v0, v2

    .line 696
    ushr-long v0, p0, v7

    const-wide v2, 0xff00ff00ff00ffL

    and-long/2addr v0, v2

    const-wide v2, 0xff00ff00ff00ffL

    and-long/2addr v2, p0

    shl-long/2addr v2, v7

    or-long p0, v0, v2

    .line 697
    ushr-long v0, p0, v8

    const-wide v2, 0xffff0000ffffL

    and-long/2addr v0, v2

    const-wide v2, 0xffff0000ffffL

    and-long/2addr v2, p0

    shl-long/2addr v2, v8

    or-long p0, v0, v2

    .line 698
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    const/16 v2, 0x20

    shl-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static reverseBytes(J)J
    .registers 11
    .parameter "v"

    .prologue
    const-wide v2, 0xff00ff00ff00ffL

    const-wide v7, 0xffff0000ffffL

    const/16 v6, 0x20

    const/16 v5, 0x10

    const/16 v4, 0x8

    .line 677
    ushr-long v0, p0, v4

    and-long/2addr v0, v2

    and-long/2addr v2, p0

    shl-long/2addr v2, v4

    or-long p0, v0, v2

    .line 678
    ushr-long v0, p0, v5

    and-long/2addr v0, v7

    and-long v2, p0, v7

    shl-long/2addr v2, v5

    or-long p0, v0, v2

    .line 679
    ushr-long v0, p0, v6

    shl-long v2, p0, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static rotateLeft(JI)J
    .registers 7
    .parameter "v"
    .parameter "distance"

    .prologue
    .line 647
    shl-long v0, p0, p2

    neg-int v2, p2

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static rotateRight(JI)J
    .registers 7
    .parameter "v"
    .parameter "distance"

    .prologue
    .line 663
    ushr-long v0, p0, p2

    neg-int v2, p2

    shl-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static signum(J)I
    .registers 5
    .parameter "v"

    .prologue
    const-wide/16 v1, 0x0

    .line 712
    cmp-long v0, p0, v1

    if-gez v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    cmp-long v0, p0, v1

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static toBinaryString(J)Ljava/lang/String;
    .registers 3
    .parameter "v"

    .prologue
    .line 396
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToBinaryString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString(J)Ljava/lang/String;
    .registers 3
    .parameter "v"

    .prologue
    .line 409
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toOctalString(J)Ljava/lang/String;
    .registers 3
    .parameter "v"

    .prologue
    .line 421
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToOctalString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(J)Ljava/lang/String;
    .registers 3
    .parameter "n"

    .prologue
    .line 439
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(JI)Ljava/lang/String;
    .registers 4
    .parameter "v"
    .parameter "radix"

    .prologue
    .line 462
    invoke-static {p0, p1, p2}, Ljava/lang/IntegralToString;->longToString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(J)Ljava/lang/Long;
    .registers 4
    .parameter "v"

    .prologue
    .line 728
    const-wide/16 v0, 0x80

    cmp-long v0, p0, v0

    if-gez v0, :cond_c

    const-wide/16 v0, -0x80

    cmp-long v0, p0, v0

    if-gez v0, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    :goto_11
    return-object v0

    :cond_12
    sget-object v0, Ljava/lang/Long;->SMALL_VALUES:[Ljava/lang/Long;

    long-to-int v1, p0

    add-int/lit16 v1, v1, 0x80

    aget-object v0, v0, v1

    goto :goto_11
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Long;
    .registers 4
    .parameter "string"
    .parameter "radix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 497
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .registers 3

    .prologue
    .line 94
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Long;)I
    .registers 6
    .parameter "object"

    .prologue
    .line 111
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    iget-wide v2, p1, Ljava/lang/Long;->value:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 182
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .line 197
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_10

    check-cast p1, Ljava/lang/Long;

    .end local p1
    iget-wide v0, p1, Ljava/lang/Long;->value:J

    iget-wide v2, p0, Ljava/lang/Long;->value:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public floatValue()F
    .registers 3

    .prologue
    .line 202
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 290
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    iget-wide v2, p0, Ljava/lang/Long;->value:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 295
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 305
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    return-wide v0
.end method

.method public shortValue()S
    .registers 3

    .prologue
    .line 384
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 426
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
