.class public final Ljava/lang/Float;
.super Ljava/lang/Number;
.source "Float.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field static final EXPONENT_BIAS:I = 0x7f

.field static final EXPONENT_BITS:I = 0x9

.field static final EXPONENT_MASK:I = 0x7f800000

.field static final MANTISSA_BITS:I = 0x17

.field static final MANTISSA_MASK:I = 0x7fffff

.field public static final MAX_EXPONENT:I = 0x7f

.field public static final MAX_VALUE:F = 3.4028235E38f

.field public static final MIN_EXPONENT:I = -0x7e

.field public static final MIN_NORMAL:F = 1.17549435E-38f

.field public static final MIN_VALUE:F = 1.4E-45f

.field public static final NEGATIVE_INFINITY:F = -Infinityf

.field static final NON_MANTISSA_BITS:I = 0x9

.field public static final NaN:F = NaNf

.field public static final POSITIVE_INFINITY:F = Infinityf

.field static final SIGN_MASK:I = -0x80000000

.field public static final SIZE:I = 0x20

.field public static final TYPE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2512365d24c30f14L


# instance fields
.field private final value:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    const-class v0, [F

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(D)V
    .registers 4
    .parameter "value"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 129
    double-to-float v0, p1

    iput v0, p0, Ljava/lang/Float;->value:F

    .line 130
    return-void
.end method

.method public constructor <init>(F)V
    .registers 2
    .parameter "value"

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 119
    iput p1, p0, Ljava/lang/Float;->value:F

    .line 120
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
    .line 142
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-direct {p0, v0}, Ljava/lang/Float;-><init>(F)V

    .line 143
    return-void
.end method

.method public static compare(FF)I
    .registers 8
    .parameter "float1"
    .parameter "float2"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 359
    cmpl-float v5, p0, p1

    if-lez v5, :cond_8

    .line 385
    :cond_7
    :goto_7
    return v2

    .line 362
    :cond_8
    cmpl-float v5, p1, p0

    if-lez v5, :cond_e

    move v2, v3

    .line 363
    goto :goto_7

    .line 365
    :cond_e
    cmpl-float v5, p0, p1

    if-nez v5, :cond_19

    const/4 v5, 0x0

    cmpl-float v5, v5, p0

    if-eqz v5, :cond_19

    move v2, v4

    .line 366
    goto :goto_7

    .line 370
    :cond_19
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 371
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_7

    move v2, v4

    .line 372
    goto :goto_7

    .line 375
    :cond_27
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2f

    move v2, v3

    .line 376
    goto :goto_7

    .line 380
    :cond_2f
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 381
    .local v0, f1:I
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 385
    .local v1, f2:I
    shr-int/lit8 v2, v0, 0x1f

    shr-int/lit8 v3, v1, 0x1f

    sub-int/2addr v2, v3

    goto :goto_7
.end method

.method public static native floatToIntBits(F)I
.end method

.method public static native floatToRawIntBits(F)I
.end method

.method public static native intBitsToFloat(I)F
.end method

.method public static isInfinite(F)Z
    .registers 2
    .parameter "f"

    .prologue
    .line 257
    const/high16 v0, 0x7f80

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_c

    const/high16 v0, -0x80

    cmpl-float v0, p0, v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isNaN(F)Z
    .registers 2
    .parameter "f"

    .prologue
    .line 280
    cmpl-float v0, p0, p0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .registers 2
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-static {p0}, Ljava/lang/StringToReal;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static toHexString(F)Ljava/lang/String;
    .registers 12
    .parameter "f"

    .prologue
    const/16 v10, 0x30

    .line 412
    cmpl-float v9, p0, p0

    if-eqz v9, :cond_9

    .line 413
    const-string v9, "NaN"

    .line 489
    :goto_8
    return-object v9

    .line 415
    :cond_9
    const/high16 v9, 0x7f80

    cmpl-float v9, p0, v9

    if-nez v9, :cond_12

    .line 416
    const-string v9, "Infinity"

    goto :goto_8

    .line 418
    :cond_12
    const/high16 v9, -0x80

    cmpl-float v9, p0, v9

    if-nez v9, :cond_1b

    .line 419
    const-string v9, "-Infinity"

    goto :goto_8

    .line 422
    :cond_1b
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 424
    .local v0, bitValue:I
    const/high16 v9, -0x8000

    and-int/2addr v9, v0

    if-eqz v9, :cond_39

    const/4 v7, 0x1

    .line 426
    .local v7, negative:Z
    :goto_25
    const/high16 v9, 0x7f80

    and-int/2addr v9, v0

    ushr-int/lit8 v3, v9, 0x17

    .line 429
    .local v3, exponent:I
    const v9, 0x7fffff

    and-int/2addr v9, v0

    shl-int/lit8 v8, v9, 0x1

    .line 431
    .local v8, significand:I
    if-nez v3, :cond_3e

    if-nez v8, :cond_3e

    .line 432
    if-eqz v7, :cond_3b

    const-string v9, "-0x0.0p0"

    goto :goto_8

    .line 424
    .end local v3           #exponent:I
    .end local v7           #negative:Z
    .end local v8           #significand:I
    :cond_39
    const/4 v7, 0x0

    goto :goto_25

    .line 432
    .restart local v3       #exponent:I
    .restart local v7       #negative:Z
    .restart local v8       #significand:I
    :cond_3b
    const-string v9, "0x0.0p0"

    goto :goto_8

    .line 435
    :cond_3e
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v9, 0xa

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 436
    .local v6, hexString:Ljava/lang/StringBuilder;
    if-eqz v7, :cond_5f

    .line 437
    const-string v9, "-0x"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :goto_4c
    if-nez v3, :cond_8f

    .line 443
    const-string v9, "0."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const/4 v4, 0x6

    .line 448
    .local v4, fractionDigits:I
    :goto_54
    if-eqz v8, :cond_65

    and-int/lit8 v9, v8, 0xf

    if-nez v9, :cond_65

    .line 449
    ushr-int/lit8 v8, v8, 0x4

    .line 450
    add-int/lit8 v4, v4, -0x1

    goto :goto_54

    .line 439
    .end local v4           #fractionDigits:I
    :cond_5f
    const-string v9, "0x"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 453
    .restart local v4       #fractionDigits:I
    :cond_65
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 456
    .local v5, hexSignificand:Ljava/lang/String;
    if-eqz v8, :cond_81

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-le v4, v9, :cond_81

    .line 457
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v1, v4, v9

    .local v1, digitDiff:I
    move v2, v1

    .line 458
    .end local v1           #digitDiff:I
    .local v2, digitDiff:I
    :goto_78
    add-int/lit8 v1, v2, -0x1

    .end local v2           #digitDiff:I
    .restart local v1       #digitDiff:I
    if-eqz v2, :cond_81

    .line 459
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    .end local v1           #digitDiff:I
    .restart local v2       #digitDiff:I
    goto :goto_78

    .line 462
    .end local v2           #digitDiff:I
    :cond_81
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string v9, "p-126"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :goto_89
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_8

    .line 465
    .end local v4           #fractionDigits:I
    .end local v5           #hexSignificand:Ljava/lang/String;
    :cond_8f
    const-string v9, "1."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const/4 v4, 0x6

    .line 470
    .restart local v4       #fractionDigits:I
    :goto_95
    if-eqz v8, :cond_a0

    and-int/lit8 v9, v8, 0xf

    if-nez v9, :cond_a0

    .line 471
    ushr-int/lit8 v8, v8, 0x4

    .line 472
    add-int/lit8 v4, v4, -0x1

    goto :goto_95

    .line 475
    :cond_a0
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 478
    .restart local v5       #hexSignificand:Ljava/lang/String;
    if-eqz v8, :cond_bc

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-le v4, v9, :cond_bc

    .line 479
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v1, v4, v9

    .restart local v1       #digitDiff:I
    move v2, v1

    .line 480
    .end local v1           #digitDiff:I
    .restart local v2       #digitDiff:I
    :goto_b3
    add-int/lit8 v1, v2, -0x1

    .end local v2           #digitDiff:I
    .restart local v1       #digitDiff:I
    if-eqz v2, :cond_bc

    .line 481
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    .end local v1           #digitDiff:I
    .restart local v2       #digitDiff:I
    goto :goto_b3

    .line 484
    .end local v2           #digitDiff:I
    :cond_bc
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const/16 v9, 0x70

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 487
    add-int/lit8 v9, v3, -0x7f

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_89
.end method

.method public static toString(F)Ljava/lang/String;
    .registers 2
    .parameter "f"

    .prologue
    .line 322
    invoke-static {}, Ljava/lang/RealToString;->getInstance()Ljava/lang/RealToString;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/RealToString;->floatToString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(F)Ljava/lang/Float;
    .registers 2
    .parameter "f"

    .prologue
    .line 397
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Float;
    .registers 2
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .registers 2

    .prologue
    .line 169
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Float;)I
    .registers 4
    .parameter "object"

    .prologue
    .line 164
    iget v0, p0, Ljava/lang/Float;->value:F

    iget v1, p1, Ljava/lang/Float;->value:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Float;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 174
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 192
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_16

    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    check-cast p1, Ljava/lang/Float;

    .end local p1
    iget v1, p1, Ljava/lang/Float;->value:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public floatValue()F
    .registers 2

    .prologue
    .line 219
    iget v0, p0, Ljava/lang/Float;->value:F

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 224
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .registers 2

    .prologue
    .line 235
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .registers 2

    .prologue
    .line 245
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .registers 2

    .prologue
    .line 267
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 285
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .registers 2

    .prologue
    .line 305
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 310
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
