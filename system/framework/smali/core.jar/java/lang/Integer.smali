.class public final Ljava/lang/Integer;
.super Ljava/lang/Number;
.source "Integer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation build Ljava/lang/FindBugsSuppressWarnings;
    value = {
        "DM_NUMBER_CTOR"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:I = 0x7fffffff

.field public static final MIN_VALUE:I = -0x80000000

.field private static final NTZ_TABLE:[B = null

.field public static final SIZE:I = 0x20

.field private static final SMALL_VALUES:[Ljava/lang/Integer; = null

.field public static final TYPE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x12e2a0a4f7818738L


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 65
    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_2c

    sput-object v1, Ljava/lang/Integer;->NTZ_TABLE:[B

    .line 76
    const-class v1, [I

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 713
    const/16 v1, 0x100

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Ljava/lang/Integer;->SMALL_VALUES:[Ljava/lang/Integer;

    .line 716
    const/16 v0, -0x80

    .local v0, i:I
    :goto_19
    const/16 v1, 0x80

    if-ge v0, v1, :cond_2b

    .line 717
    sget-object v1, Ljava/lang/Integer;->SMALL_VALUES:[Ljava/lang/Integer;

    add-int/lit16 v2, v0, 0x80

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    .line 716
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 719
    :cond_2b
    return-void

    .line 65
    :array_2c
    .array-data 0x1
        0x20t
        0x0t
        0x1t
        0xct
        0x2t
        0x6t
        0xfft
        0xdt
        0x3t
        0xfft
        0x7t
        0xfft
        0xfft
        0xfft
        0xfft
        0xet
        0xat
        0x4t
        0xfft
        0xfft
        0x8t
        0xfft
        0xfft
        0x19t
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x15t
        0x1bt
        0xft
        0x1ft
        0xbt
        0x5t
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x9t
        0xfft
        0xfft
        0x18t
        0xfft
        0xfft
        0x14t
        0x1at
        0x1et
        0xfft
        0xfft
        0xfft
        0xfft
        0x17t
        0xfft
        0x13t
        0x1dt
        0xfft
        0x16t
        0x12t
        0x1ct
        0x11t
        0x10t
        0xfft
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 89
    iput p1, p0, Ljava/lang/Integer;->value:I

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 103
    return-void
.end method

.method public static bitCount(I)I
    .registers 4
    .parameter "i"

    .prologue
    const v2, 0x33333333

    .line 607
    shr-int/lit8 v0, p0, 0x1

    const v1, 0x55555555

    and-int/2addr v0, v1

    sub-int/2addr p0, v0

    .line 608
    and-int v0, p0, v2

    shr-int/lit8 v1, p0, 0x2

    and-int/2addr v1, v2

    add-int p0, v0, v1

    .line 609
    shr-int/lit8 v0, p0, 0x4

    add-int/2addr v0, p0

    const v1, 0xf0f0f0f

    and-int p0, v0, v1

    .line 610
    shr-int/lit8 v0, p0, 0x8

    add-int/2addr p0, v0

    .line 611
    shr-int/lit8 v0, p0, 0x10

    add-int/2addr p0, v0

    .line 612
    and-int/lit8 v0, p0, 0x3f

    return v0
.end method

.method public static compare(II)I
    .registers 3
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 134
    if-ge p0, p1, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 10
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, length:I
    const/4 v2, 0x0

    .line 156
    .local v2, i:I
    if-nez v3, :cond_e

    .line 157
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 159
    :cond_e
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 160
    .local v1, firstDigit:C
    const/16 v8, 0x2d

    if-ne v1, v8, :cond_20

    move v4, v6

    .line 161
    .local v4, negative:Z
    :goto_17
    if-eqz v4, :cond_28

    .line 162
    if-ne v3, v6, :cond_22

    .line 163
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .end local v4           #negative:Z
    :cond_20
    move v4, v7

    .line 160
    goto :goto_17

    .line 165
    .restart local v4       #negative:Z
    :cond_22
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 168
    :cond_28
    const/16 v0, 0xa

    .line 169
    .local v0, base:I
    const/16 v6, 0x30

    if-ne v1, v6, :cond_5a

    .line 170
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_37

    .line 171
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 189
    :goto_36
    return-object v6

    .line 173
    :cond_37
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x78

    if-eq v1, v6, :cond_43

    const/16 v6, 0x58

    if-ne v1, v6, :cond_57

    .line 174
    :cond_43
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_4c

    .line 175
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 177
    :cond_4c
    const/16 v0, 0x10

    .line 188
    :cond_4e
    :goto_4e
    invoke-static {p0, v2, v0, v4}, Ljava/lang/Integer;->parse(Ljava/lang/String;IIZ)I

    move-result v5

    .line 189
    .local v5, result:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_36

    .line 179
    .end local v5           #result:I
    :cond_57
    const/16 v0, 0x8

    goto :goto_4e

    .line 181
    :cond_5a
    const/16 v6, 0x23

    if-ne v1, v6, :cond_4e

    .line 182
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_67

    .line 183
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 185
    :cond_67
    const/16 v0, 0x10

    goto :goto_4e
.end method

.method public static getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5
    .parameter "string"

    .prologue
    const/4 v2, 0x0

    .line 229
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    .line 239
    :cond_9
    :goto_9
    return-object v2

    .line 232
    :cond_a
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, prop:Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 237
    :try_start_10
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_13} :catch_15

    move-result-object v2

    goto :goto_9

    .line 238
    :catch_15
    move-exception v0

    .line 239
    .local v0, ex:Ljava/lang/NumberFormatException;
    goto :goto_9
.end method

.method public static getInteger(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 5
    .parameter "string"
    .parameter "defaultValue"

    .prologue
    .line 258
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    .line 259
    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 268
    :goto_c
    return-object v2

    .line 261
    :cond_d
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, prop:Ljava/lang/String;
    if-nez v1, :cond_18

    .line 263
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_c

    .line 266
    :cond_18
    :try_start_18
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result-object v2

    goto :goto_c

    .line 267
    :catch_1d
    move-exception v0

    .line 268
    .local v0, ex:Ljava/lang/NumberFormatException;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_c
.end method

.method public static getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 5
    .parameter "string"
    .parameter "defaultValue"

    .prologue
    .line 287
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    .line 297
    .end local p1
    :cond_8
    :goto_8
    return-object p1

    .line 290
    .restart local p1
    :cond_9
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, prop:Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 295
    :try_start_f
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_12} :catch_14

    move-result-object p1

    goto :goto_8

    .line 296
    :catch_14
    move-exception v0

    .line 297
    .local v0, ex:Ljava/lang/NumberFormatException;
    goto :goto_8
.end method

.method public static highestOneBit(I)I
    .registers 2
    .parameter "i"

    .prologue
    .line 526
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 527
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 528
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 529
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 530
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 531
    ushr-int/lit8 v0, p0, 0x1

    sub-int v0, p0, v0

    return v0
.end method

.method private static invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .registers 4
    .parameter "s"

    .prologue
    .line 138
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid int: \""

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

.method public static lowestOneBit(I)I
    .registers 2
    .parameter "i"

    .prologue
    .line 546
    neg-int v0, p0

    and-int/2addr v0, p0

    return v0
.end method

.method public static numberOfLeadingZeros(I)I
    .registers 3
    .parameter "i"

    .prologue
    .line 560
    if-gtz p0, :cond_9

    .line 561
    xor-int/lit8 v1, p0, -0x1

    shr-int/lit8 v1, v1, 0x1a

    and-int/lit8 v1, v1, 0x20

    .line 580
    :goto_8
    return v1

    .line 563
    :cond_9
    const/4 v0, 0x1

    .line 564
    .local v0, n:I
    shr-int/lit8 v1, p0, 0x10

    if-nez v1, :cond_12

    .line 565
    add-int/lit8 v0, v0, 0x10

    .line 566
    shl-int/lit8 p0, p0, 0x10

    .line 568
    :cond_12
    shr-int/lit8 v1, p0, 0x18

    if-nez v1, :cond_1a

    .line 569
    add-int/lit8 v0, v0, 0x8

    .line 570
    shl-int/lit8 p0, p0, 0x8

    .line 572
    :cond_1a
    shr-int/lit8 v1, p0, 0x1c

    if-nez v1, :cond_22

    .line 573
    add-int/lit8 v0, v0, 0x4

    .line 574
    shl-int/lit8 p0, p0, 0x4

    .line 576
    :cond_22
    shr-int/lit8 v1, p0, 0x1e

    if-nez v1, :cond_2a

    .line 577
    add-int/lit8 v0, v0, 0x2

    .line 578
    shl-int/lit8 p0, p0, 0x2

    .line 580
    :cond_2a
    ushr-int/lit8 v1, p0, 0x1f

    sub-int v1, v0, v1

    goto :goto_8
.end method

.method public static numberOfTrailingZeros(I)I
    .registers 4
    .parameter "i"

    .prologue
    .line 593
    sget-object v0, Ljava/lang/Integer;->NTZ_TABLE:[B

    neg-int v1, p0

    and-int/2addr v1, p0

    const v2, 0x450fbaf

    mul-int/2addr v1, v2

    ushr-int/lit8 v1, v1, 0x1a

    aget-byte v0, v0, v1

    return v0
.end method

.method private static parse(Ljava/lang/String;IIZ)I
    .registers 11
    .parameter "string"
    .parameter "offset"
    .parameter "radix"
    .parameter "negative"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 370
    const/high16 v6, -0x8000

    div-int v2, v6, p2

    .line 371
    .local v2, max:I
    const/4 v5, 0x0

    .local v5, result:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, length:I
    move v4, p1

    .line 372
    .end local p1
    .local v4, offset:I
    :goto_a
    if-ge v4, v1, :cond_33

    .line 373
    add-int/lit8 p1, v4, 0x1

    .end local v4           #offset:I
    .restart local p1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, p2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 374
    .local v0, digit:I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_1e

    .line 375
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 377
    :cond_1e
    if-le v2, v5, :cond_25

    .line 378
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 380
    :cond_25
    mul-int v6, v5, p2

    sub-int v3, v6, v0

    .line 381
    .local v3, next:I
    if-le v3, v5, :cond_30

    .line 382
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 384
    :cond_30
    move v5, v3

    move v4, p1

    .line 385
    .end local p1
    .restart local v4       #offset:I
    goto :goto_a

    .line 386
    .end local v0           #digit:I
    .end local v3           #next:I
    :cond_33
    if-nez p3, :cond_3d

    .line 387
    neg-int v5, v5

    .line 388
    if-gez v5, :cond_3d

    .line 389
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 392
    :cond_3d
    return v5
.end method

.method public static parseInt(Ljava/lang/String;)I
    .registers 2
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 332
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .registers 8
    .parameter "string"
    .parameter "radix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 351
    const/4 v3, 0x2

    if-lt p1, v3, :cond_7

    const/16 v3, 0x24

    if-le p1, v3, :cond_20

    .line 352
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

    .line 354
    :cond_20
    if-nez p0, :cond_27

    .line 355
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 357
    :cond_27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, length:I
    const/4 v0, 0x0

    .line 358
    .local v0, i:I
    if-nez v1, :cond_33

    .line 359
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 361
    :cond_33
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_47

    const/4 v2, 0x1

    .line 362
    .local v2, negative:Z
    :goto_3c
    if-eqz v2, :cond_49

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_49

    .line 363
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 361
    .end local v2           #negative:Z
    :cond_47
    const/4 v2, 0x0

    goto :goto_3c

    .line 366
    .restart local v2       #negative:Z
    :cond_49
    invoke-static {p0, v0, p1, v2}, Ljava/lang/Integer;->parse(Ljava/lang/String;IIZ)I

    move-result v3

    return v3
.end method

.method public static reverse(I)I
    .registers 6
    .parameter "i"

    .prologue
    const v1, 0x55555555

    const v4, 0x33333333

    const v3, 0xf0f0f0f

    const v2, 0xff00ff

    .line 673
    ushr-int/lit8 v0, p0, 0x1

    and-int/2addr v0, v1

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x1

    or-int p0, v0, v1

    .line 674
    ushr-int/lit8 v0, p0, 0x2

    and-int/2addr v0, v4

    and-int v1, p0, v4

    shl-int/lit8 v1, v1, 0x2

    or-int p0, v0, v1

    .line 675
    ushr-int/lit8 v0, p0, 0x4

    and-int/2addr v0, v3

    and-int v1, p0, v3

    shl-int/lit8 v1, v1, 0x4

    or-int p0, v0, v1

    .line 676
    ushr-int/lit8 v0, p0, 0x8

    and-int/2addr v0, v2

    and-int v1, p0, v2

    shl-int/lit8 v1, v1, 0x8

    or-int p0, v0, v1

    .line 677
    ushr-int/lit8 v0, p0, 0x10

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public static reverseBytes(I)I
    .registers 3
    .parameter "i"

    .prologue
    const v1, 0xff00ff

    .line 658
    ushr-int/lit8 v0, p0, 0x8

    and-int/2addr v0, v1

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    or-int p0, v0, v1

    .line 659
    ushr-int/lit8 v0, p0, 0x10

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public static rotateLeft(II)I
    .registers 4
    .parameter "i"
    .parameter "distance"

    .prologue
    .line 628
    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rotateRight(II)I
    .registers 4
    .parameter "i"
    .parameter "distance"

    .prologue
    .line 644
    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static signum(I)I
    .registers 3
    .parameter "i"

    .prologue
    .line 691
    shr-int/lit8 v0, p0, 0x1f

    neg-int v1, p0

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    return v0
.end method

.method public static toBinaryString(I)Ljava/lang/String;
    .registers 2
    .parameter "i"

    .prologue
    .line 409
    invoke-static {p0}, Ljava/lang/IntegralToString;->intToBinaryString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString(I)Ljava/lang/String;
    .registers 2
    .parameter "i"

    .prologue
    const/4 v0, 0x0

    .line 422
    invoke-static {p0, v0, v0}, Ljava/lang/IntegralToString;->intToHexString(IZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toOctalString(I)Ljava/lang/String;
    .registers 2
    .parameter "i"

    .prologue
    .line 434
    invoke-static {p0}, Ljava/lang/IntegralToString;->intToOctalString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2
    .parameter "i"

    .prologue
    .line 452
    invoke-static {p0}, Ljava/lang/IntegralToString;->intToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(II)Ljava/lang/String;
    .registers 3
    .parameter "i"
    .parameter "radix"

    .prologue
    .line 475
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->intToString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(I)Ljava/lang/Integer;
    .registers 3
    .parameter "i"

    .prologue
    .line 707
    const/16 v0, 0x80

    if-ge p0, v0, :cond_8

    const/16 v0, -0x80

    if-ge p0, v0, :cond_e

    :cond_8
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Ljava/lang/Integer;->SMALL_VALUES:[Ljava/lang/Integer;

    add-int/lit16 v1, p0, 0x80

    aget-object v0, v0, v1

    goto :goto_d
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 490
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 3
    .parameter "string"
    .parameter "radix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 510
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Integer;)I
    .registers 4
    .parameter "object"

    .prologue
    .line 124
    iget v0, p0, Ljava/lang/Integer;->value:I

    iget v1, p1, Ljava/lang/Integer;->value:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 194
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 209
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/Integer;

    .end local p1
    iget v0, p1, Ljava/lang/Integer;->value:I

    iget v1, p0, Ljava/lang/Integer;->value:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public floatValue()F
    .registers 2

    .prologue
    .line 214
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 303
    iget v0, p0, Ljava/lang/Integer;->value:I

    return v0
.end method

.method public intValue()I
    .registers 2

    .prologue
    .line 313
    iget v0, p0, Ljava/lang/Integer;->value:I

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 318
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .registers 2

    .prologue
    .line 397
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 439
    iget v0, p0, Ljava/lang/Integer;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
