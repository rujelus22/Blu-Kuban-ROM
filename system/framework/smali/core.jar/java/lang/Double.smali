.class public final Ljava/lang/Double;
.super Ljava/lang/Number;
.source "Double.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field static final EXPONENT_BIAS:I = 0x3ff

.field static final EXPONENT_BITS:I = 0xc

.field static final EXPONENT_MASK:J = 0x7ff0000000000000L

.field static final MANTISSA_BITS:I = 0x34

.field static final MANTISSA_MASK:J = 0xfffffffffffffL

.field public static final MAX_EXPONENT:I = 0x3ff

.field public static final MAX_VALUE:D = 1.7976931348623157E308

.field public static final MIN_EXPONENT:I = -0x3fe

.field public static final MIN_NORMAL:D = 2.2250738585072014E-308

.field public static final MIN_VALUE:D = 4.9E-324

.field public static final NEGATIVE_INFINITY:D = -Infinity

.field static final NON_MANTISSA_BITS:I = 0xc

.field public static final NaN:D = NaN

.field public static final POSITIVE_INFINITY:D = Infinity

.field static final SIGN_MASK:J = -0x8000000000000000L

.field public static final SIZE:I = 0x40

.field public static final TYPE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x7f4c3db5d69404fcL


# instance fields
.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 102
    const-class v0, [D

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(D)V
    .registers 3
    .parameter "value"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 123
    iput-wide p1, p0, Ljava/lang/Double;->value:D

    .line 124
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
    .line 136
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    .line 137
    return-void
.end method

.method public static compare(DD)I
    .registers 14
    .parameter "double1"
    .parameter "double2"

    .prologue
    const/16 v9, 0x3f

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 353
    cmpl-double v7, p0, p2

    if-lez v7, :cond_a

    .line 378
    :cond_9
    :goto_9
    return v4

    .line 356
    :cond_a
    cmpl-double v7, p2, p0

    if-lez v7, :cond_10

    move v4, v5

    .line 357
    goto :goto_9

    .line 359
    :cond_10
    cmpl-double v7, p0, p2

    if-nez v7, :cond_1c

    const-wide/16 v7, 0x0

    cmpl-double v7, v7, p0

    if-eqz v7, :cond_1c

    move v4, v6

    .line 360
    goto :goto_9

    .line 364
    :cond_1c
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 365
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_9

    move v4, v6

    .line 366
    goto :goto_9

    .line 369
    :cond_2a
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_32

    move v4, v5

    .line 370
    goto :goto_9

    .line 374
    :cond_32
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 375
    .local v0, d1:J
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 378
    .local v2, d2:J
    shr-long v4, v0, v9

    shr-long v6, v2, v9

    sub-long/2addr v4, v6

    long-to-int v4, v4

    goto :goto_9
.end method

.method public static native doubleToLongBits(D)J
.end method

.method public static native doubleToRawLongBits(D)J
.end method

.method public static isInfinite(D)Z
    .registers 4
    .parameter "d"

    .prologue
    .line 248
    const-wide/high16 v0, 0x7ff0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_c

    const-wide/high16 v0, -0x10

    cmpl-double v0, p0, v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isNaN(D)Z
    .registers 3
    .parameter "d"

    .prologue
    .line 271
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static native longBitsToDouble(J)D
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .registers 3
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-static {p0}, Ljava/lang/StringToReal;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toHexString(D)Ljava/lang/String;
    .registers 18
    .parameter "d"

    .prologue
    .line 405
    cmpl-double v12, p0, p0

    if-eqz v12, :cond_7

    .line 406
    const-string v12, "NaN"

    .line 482
    :goto_6
    return-object v12

    .line 408
    :cond_7
    const-wide/high16 v12, 0x7ff0

    cmpl-double v12, p0, v12

    if-nez v12, :cond_10

    .line 409
    const-string v12, "Infinity"

    goto :goto_6

    .line 411
    :cond_10
    const-wide/high16 v12, -0x10

    cmpl-double v12, p0, v12

    if-nez v12, :cond_19

    .line 412
    const-string v12, "-Infinity"

    goto :goto_6

    .line 415
    :cond_19
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 417
    .local v0, bitValue:J
    const-wide/high16 v12, -0x8000

    and-long/2addr v12, v0

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_46

    const/4 v9, 0x1

    .line 419
    .local v9, negative:Z
    :goto_27
    const-wide/high16 v12, 0x7ff0

    and-long/2addr v12, v0

    const/16 v14, 0x34

    ushr-long v4, v12, v14

    .line 421
    .local v4, exponent:J
    const-wide v12, 0xfffffffffffffL

    and-long v10, v0, v12

    .line 423
    .local v10, significand:J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_4b

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_4b

    .line 424
    if-eqz v9, :cond_48

    const-string v12, "-0x0.0p0"

    goto :goto_6

    .line 417
    .end local v4           #exponent:J
    .end local v9           #negative:Z
    .end local v10           #significand:J
    :cond_46
    const/4 v9, 0x0

    goto :goto_27

    .line 424
    .restart local v4       #exponent:J
    .restart local v9       #negative:Z
    .restart local v10       #significand:J
    :cond_48
    const-string v12, "0x0.0p0"

    goto :goto_6

    .line 427
    :cond_4b
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v12, 0xa

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 428
    .local v8, hexString:Ljava/lang/StringBuilder;
    if-eqz v9, :cond_7a

    .line 429
    const-string v12, "-0x"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :goto_59
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_b0

    .line 435
    const-string v12, "0."

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const/16 v6, 0xd

    .line 440
    .local v6, fractionDigits:I
    :goto_66
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-eqz v12, :cond_80

    const-wide/16 v12, 0xf

    and-long/2addr v12, v10

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_80

    .line 441
    const/4 v12, 0x4

    ushr-long/2addr v10, v12

    .line 442
    add-int/lit8 v6, v6, -0x1

    goto :goto_66

    .line 431
    .end local v6           #fractionDigits:I
    :cond_7a
    const-string v12, "0x"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_59

    .line 445
    .restart local v6       #fractionDigits:I
    :cond_80
    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    .line 448
    .local v7, hexSignificand:Ljava/lang/String;
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-eqz v12, :cond_a2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-le v6, v12, :cond_a2

    .line 449
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    sub-int v2, v6, v12

    .local v2, digitDiff:I
    move v3, v2

    .line 450
    .end local v2           #digitDiff:I
    .local v3, digitDiff:I
    :goto_97
    add-int/lit8 v2, v3, -0x1

    .end local v3           #digitDiff:I
    .restart local v2       #digitDiff:I
    if-eqz v3, :cond_a2

    .line 451
    const/16 v12, 0x30

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v2

    .end local v2           #digitDiff:I
    .restart local v3       #digitDiff:I
    goto :goto_97

    .line 454
    .end local v3           #digitDiff:I
    :cond_a2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string v12, "p-1022"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    :goto_aa
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_6

    .line 457
    .end local v6           #fractionDigits:I
    .end local v7           #hexSignificand:Ljava/lang/String;
    :cond_b0
    const-string v12, "1."

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    const/16 v6, 0xd

    .line 462
    .restart local v6       #fractionDigits:I
    :goto_b7
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-eqz v12, :cond_cb

    const-wide/16 v12, 0xf

    and-long/2addr v12, v10

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_cb

    .line 463
    const/4 v12, 0x4

    ushr-long/2addr v10, v12

    .line 464
    add-int/lit8 v6, v6, -0x1

    goto :goto_b7

    .line 467
    :cond_cb
    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    .line 470
    .restart local v7       #hexSignificand:Ljava/lang/String;
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-eqz v12, :cond_ed

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-le v6, v12, :cond_ed

    .line 471
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    sub-int v2, v6, v12

    .restart local v2       #digitDiff:I
    move v3, v2

    .line 472
    .end local v2           #digitDiff:I
    .restart local v3       #digitDiff:I
    :goto_e2
    add-int/lit8 v2, v3, -0x1

    .end local v3           #digitDiff:I
    .restart local v2       #digitDiff:I
    if-eqz v3, :cond_ed

    .line 473
    const/16 v12, 0x30

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v2

    .end local v2           #digitDiff:I
    .restart local v3       #digitDiff:I
    goto :goto_e2

    .line 477
    .end local v3           #digitDiff:I
    :cond_ed
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const/16 v12, 0x70

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    const-wide/16 v12, 0x3ff

    sub-long v12, v4, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_aa
.end method

.method public static toString(D)Ljava/lang/String;
    .registers 3
    .parameter "d"

    .prologue
    .line 317
    invoke-static {}, Ljava/lang/RealToString;->getInstance()Ljava/lang/RealToString;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/RealToString;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(D)Ljava/lang/Double;
    .registers 3
    .parameter "d"

    .prologue
    .line 390
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Double;
    .registers 3
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .registers 3

    .prologue
    .line 165
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Double;)I
    .registers 6
    .parameter "object"

    .prologue
    .line 160
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    iget-wide v2, p1, Ljava/lang/Double;->value:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Double;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 191
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "object"

    .prologue
    .line 209
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_18

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    check-cast p1, Ljava/lang/Double;

    .end local p1
    iget-wide v2, p1, Ljava/lang/Double;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public floatValue()F
    .registers 3

    .prologue
    .line 215
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 220
    iget-wide v2, p0, Ljava/lang/Double;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 221
    .local v0, v:J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 226
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .registers 3

    .prologue
    .line 236
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .registers 3

    .prologue
    .line 258
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 282
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .registers 3

    .prologue
    .line 300
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 305
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
