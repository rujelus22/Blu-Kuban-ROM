.class public final Ljava/lang/StrictMath;
.super Ljava/lang/Object;
.source "StrictMath.java"


# static fields
.field public static final E:D = 2.718281828459045

.field public static final PI:D = 3.141592653589793


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static native IEEEremainder(DD)D
.end method

.method public static abs(D)D
    .registers 4
    .parameter "d"

    .prologue
    .line 71
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static abs(F)F
    .registers 2
    .parameter "f"

    .prologue
    .line 91
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public static abs(I)I
    .registers 2
    .parameter "i"

    .prologue
    .line 106
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public static abs(J)J
    .registers 4
    .parameter "l"

    .prologue
    .line 121
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native acos(D)D
.end method

.method public static native asin(D)D
.end method

.method public static native atan(D)D
.end method

.method public static native atan2(DD)D
.end method

.method public static native cbrt(D)D
.end method

.method public static native ceil(D)D
.end method

.method public static copySign(DD)D
    .registers 12
    .parameter "magnitude"
    .parameter "sign"

    .prologue
    .line 1011
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 1012
    .local v0, magnitudeBits:J
    cmpl-double v4, p2, p2

    if-eqz v4, :cond_a

    const-wide/high16 p2, 0x3ff0

    .end local p2
    :cond_a
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 1013
    .local v2, signBits:J
    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v4, v0

    const-wide/high16 v6, -0x8000

    and-long/2addr v6, v2

    or-long v0, v4, v6

    .line 1014
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    return-wide v4
.end method

.method public static copySign(FF)F
    .registers 6
    .parameter "magnitude"
    .parameter "sign"

    .prologue
    .line 1028
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 1029
    .local v0, magnitudeBits:I
    cmpl-float v2, p1, p1

    if-eqz v2, :cond_a

    const/high16 p1, 0x3f80

    .end local p1
    :cond_a
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 1030
    .local v1, signBits:I
    const v2, 0x7fffffff

    and-int/2addr v2, v0

    const/high16 v3, -0x8000

    and-int/2addr v3, v1

    or-int v0, v2, v3

    .line 1031
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2
.end method

.method public static native cos(D)D
.end method

.method public static native cosh(D)D
.end method

.method public static native exp(D)D
.end method

.method public static native expm1(D)D
.end method

.method public static native floor(D)D
.end method

.method public static getExponent(D)I
    .registers 3
    .parameter "d"

    .prologue
    .line 1047
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    return v0
.end method

.method public static getExponent(F)I
    .registers 2
    .parameter "f"

    .prologue
    .line 1039
    invoke-static {p0}, Ljava/lang/Math;->getExponent(F)I

    move-result v0

    return v0
.end method

.method public static native hypot(DD)D
.end method

.method public static native log(D)D
.end method

.method public static native log10(D)D
.end method

.method public static native log1p(D)D
.end method

.method public static max(DD)D
    .registers 10
    .parameter "d1"
    .parameter "d2"

    .prologue
    const-wide/16 v0, 0x0

    .line 480
    cmpl-double v2, p0, p2

    if-lez v2, :cond_7

    .line 491
    .end local p0
    :cond_6
    :goto_6
    return-wide p0

    .line 482
    .restart local p0
    :cond_7
    cmpg-double v2, p0, p2

    if-gez v2, :cond_d

    move-wide p0, p2

    .line 483
    goto :goto_6

    .line 485
    :cond_d
    cmpl-double v2, p0, p2

    if-eqz v2, :cond_14

    .line 486
    const-wide/high16 p0, 0x7ff8

    goto :goto_6

    .line 488
    :cond_14
    cmpl-double v2, p0, v0

    if-nez v2, :cond_6

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    and-long/2addr v2, v4

    const-wide/high16 v4, -0x8000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    move-wide p0, v0

    .line 490
    goto :goto_6
.end method

.method public static max(FF)F
    .registers 5
    .parameter "f1"
    .parameter "f2"

    .prologue
    const/4 v0, 0x0

    .line 513
    cmpl-float v1, p0, p1

    if-lez v1, :cond_6

    .line 524
    .end local p0
    :cond_5
    :goto_5
    return p0

    .line 515
    .restart local p0
    :cond_6
    cmpg-float v1, p0, p1

    if-gez v1, :cond_c

    move p0, p1

    .line 516
    goto :goto_5

    .line 518
    :cond_c
    cmpl-float v1, p0, p1

    if-eqz v1, :cond_13

    .line 519
    const/high16 p0, 0x7fc0

    goto :goto_5

    .line 521
    :cond_13
    cmpl-float v1, p0, v0

    if-nez v1, :cond_5

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    and-int/2addr v1, v2

    const/high16 v2, -0x8000

    and-int/2addr v1, v2

    if-nez v1, :cond_5

    move p0, v0

    .line 523
    goto :goto_5
.end method

.method public static max(II)I
    .registers 3
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 538
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static max(JJ)J
    .registers 6
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 552
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static min(DD)D
    .registers 8
    .parameter "d1"
    .parameter "d2"

    .prologue
    .line 574
    cmpl-double v0, p0, p2

    if-lez v0, :cond_6

    move-wide p0, p2

    .line 585
    .end local p0
    :cond_5
    :goto_5
    return-wide p0

    .line 576
    .restart local p0
    :cond_6
    cmpg-double v0, p0, p2

    if-ltz v0, :cond_5

    .line 579
    cmpl-double v0, p0, p2

    if-eqz v0, :cond_11

    .line 580
    const-wide/high16 p0, 0x7ff8

    goto :goto_5

    .line 582
    :cond_11
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_5

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    or-long/2addr v0, v2

    const-wide/high16 v2, -0x8000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 584
    const-wide/high16 p0, -0x8000

    goto :goto_5
.end method

.method public static min(FF)F
    .registers 4
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 607
    cmpl-float v0, p0, p1

    if-lez v0, :cond_6

    move p0, p1

    .line 618
    .end local p0
    :cond_5
    :goto_5
    return p0

    .line 609
    .restart local p0
    :cond_6
    cmpg-float v0, p0, p1

    if-ltz v0, :cond_5

    .line 612
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_11

    .line 613
    const/high16 p0, 0x7fc0

    goto :goto_5

    .line 615
    :cond_11
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_5

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    or-int/2addr v0, v1

    const/high16 v1, -0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 617
    const/high16 p0, -0x8000

    goto :goto_5
.end method

.method public static min(II)I
    .registers 3
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 632
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static min(JJ)J
    .registers 6
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 646
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static nextAfter(DD)D
    .registers 7
    .parameter "start"
    .parameter "direction"

    .prologue
    const-wide/16 v1, 0x0

    .line 1055
    cmpl-double v0, p0, v1

    if-nez v0, :cond_b

    cmpl-double v0, p2, v1

    if-nez v0, :cond_b

    .line 1058
    .end local p2
    :goto_a
    return-wide p2

    .restart local p2
    :cond_b
    invoke-static {p0, p1, p2, p3}, Ljava/lang/StrictMath;->nextafter(DD)D

    move-result-wide p2

    goto :goto_a
.end method

.method public static nextAfter(FD)F
    .registers 4
    .parameter "start"
    .parameter "direction"

    .prologue
    .line 1066
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->nextAfter(FD)F

    move-result v0

    return v0
.end method

.method public static nextUp(D)D
    .registers 4
    .parameter "d"

    .prologue
    .line 1074
    invoke-static {p0, p1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextUp(F)F
    .registers 2
    .parameter "f"

    .prologue
    .line 1082
    invoke-static {p0}, Ljava/lang/Math;->nextUp(F)F

    move-result v0

    return v0
.end method

.method private static native nextafter(DD)D
.end method

.method public static native pow(DD)D
.end method

.method public static random()D
    .registers 2

    .prologue
    .line 696
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    return-wide v0
.end method

.method public static native rint(D)D
.end method

.method public static round(F)I
    .registers 2
    .parameter "f"

    .prologue
    .line 761
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static round(D)J
    .registers 4
    .parameter "d"

    .prologue
    .line 738
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static scalb(DI)D
    .registers 20
    .parameter "d"
    .parameter "scaleFactor"

    .prologue
    .line 1090
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-nez v11, :cond_12

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v11

    if-nez v11, :cond_12

    const-wide/16 v11, 0x0

    cmpl-double v11, p0, v11

    if-nez v11, :cond_15

    :cond_12
    move-wide/from16 v11, p0

    .line 1138
    :goto_14
    return-wide v11

    .line 1094
    :cond_15
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 1096
    .local v0, bits:J
    const-wide/high16 v11, -0x8000

    and-long v8, v0, v11

    .line 1098
    .local v8, sign:J
    const-wide/high16 v11, 0x7ff0

    and-long/2addr v11, v0

    const/16 v13, 0x34

    shr-long/2addr v11, v13

    long-to-int v11, v11

    add-int/lit16 v11, v11, -0x3ff

    add-int v11, v11, p2

    int-to-long v4, v11

    .line 1102
    .local v4, factor:J
    const-wide v11, 0x7fffffffffffffffL

    and-long/2addr v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v11

    add-int/lit8 v10, v11, -0xc

    .line 1104
    .local v10, subNormalFactor:I
    if-gez v10, :cond_38

    .line 1106
    const/4 v10, 0x0

    .line 1108
    :cond_38
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x10

    cmpg-double v11, v11, v13

    if-gez v11, :cond_44

    .line 1109
    int-to-long v11, v10

    sub-long/2addr v4, v11

    .line 1111
    :cond_44
    const-wide/16 v11, 0x3ff

    cmp-long v11, v4, v11

    if-lez v11, :cond_56

    .line 1112
    const-wide/16 v11, 0x0

    cmpl-double v11, p0, v11

    if-lez v11, :cond_53

    const-wide/high16 v11, 0x7ff0

    goto :goto_14

    :cond_53
    const-wide/high16 v11, -0x10

    goto :goto_14

    .line 1117
    :cond_56
    const-wide/16 v11, -0x3ff

    cmp-long v11, v4, v11

    if-gez v11, :cond_8f

    .line 1119
    const-wide/16 v11, 0x3ff

    add-long/2addr v11, v4

    int-to-long v13, v10

    add-long v2, v11, v13

    .line 1120
    .local v2, digits:J
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x10

    cmpg-double v11, v11, v13

    if-gez v11, :cond_7d

    .line 1122
    const-wide v11, 0xfffffffffffffL

    and-long/2addr v11, v0

    invoke-static {v11, v12, v2, v3}, Ljava/lang/StrictMath;->shiftLongBits(JJ)J

    move-result-wide v6

    .line 1138
    .end local v2           #digits:J
    .local v6, result:J
    :goto_76
    or-long v11, v6, v8

    invoke-static {v11, v12}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v11

    goto :goto_14

    .line 1125
    .end local v6           #result:J
    .restart local v2       #digits:J
    :cond_7d
    const-wide v11, 0xfffffffffffffL

    and-long/2addr v11, v0

    const-wide/high16 v13, 0x10

    or-long/2addr v11, v13

    const-wide/16 v13, 0x1

    sub-long v13, v2, v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/StrictMath;->shiftLongBits(JJ)J

    move-result-wide v6

    .restart local v6       #result:J
    goto :goto_76

    .line 1128
    .end local v2           #digits:J
    .end local v6           #result:J
    :cond_8f
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x10

    cmpl-double v11, v11, v13

    if-ltz v11, :cond_a8

    .line 1130
    const-wide/16 v11, 0x3ff

    add-long/2addr v11, v4

    const/16 v13, 0x34

    shl-long/2addr v11, v13

    const-wide v13, 0xfffffffffffffL

    and-long/2addr v13, v0

    or-long v6, v11, v13

    .restart local v6       #result:J
    goto :goto_76

    .line 1134
    .end local v6           #result:J
    :cond_a8
    const-wide/16 v11, 0x3ff

    add-long/2addr v11, v4

    const/16 v13, 0x34

    shl-long/2addr v11, v13

    add-int/lit8 v13, v10, 0x1

    shl-long v13, v0, v13

    const-wide v15, 0xfffffffffffffL

    and-long/2addr v13, v15

    or-long v6, v11, v13

    .restart local v6       #result:J
    goto :goto_76
.end method

.method public static scalb(FI)F
    .registers 12
    .parameter "d"
    .parameter "scaleFactor"

    .prologue
    const/4 v9, 0x0

    const/high16 v7, 0x80

    const v8, 0x7fffff

    .line 1146
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_16

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-nez v6, :cond_16

    cmpl-float v6, p0, v9

    if-nez v6, :cond_18

    :cond_16
    move v6, p0

    .line 1190
    :goto_17
    return v6

    .line 1149
    :cond_18
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1150
    .local v0, bits:I
    const/high16 v6, -0x8000

    and-int v4, v0, v6

    .line 1151
    .local v4, sign:I
    const/high16 v6, 0x7f80

    and-int/2addr v6, v0

    shr-int/lit8 v6, v6, 0x17

    add-int/lit8 v6, v6, -0x7f

    add-int v2, v6, p1

    .line 1154
    .local v2, factor:I
    const v6, 0x7fffffff

    and-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v6

    add-int/lit8 v5, v6, -0x9

    .line 1156
    .local v5, subNormalFactor:I
    if-gez v5, :cond_36

    .line 1158
    const/4 v5, 0x0

    .line 1160
    :cond_36
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3f

    .line 1161
    sub-int/2addr v2, v5

    .line 1163
    :cond_3f
    const/16 v6, 0x7f

    if-le v2, v6, :cond_4d

    .line 1164
    cmpl-float v6, p0, v9

    if-lez v6, :cond_4a

    const/high16 v6, 0x7f80

    goto :goto_17

    :cond_4a
    const/high16 v6, -0x80

    goto :goto_17

    .line 1169
    :cond_4d
    const/16 v6, -0x7f

    if-ge v2, v6, :cond_76

    .line 1171
    add-int/lit8 v6, v2, 0x7f

    add-int v1, v6, v5

    .line 1172
    .local v1, digits:I
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6a

    .line 1174
    and-int v6, v0, v8

    invoke-static {v6, v1}, Ljava/lang/StrictMath;->shiftIntBits(II)I

    move-result v3

    .line 1190
    .end local v1           #digits:I
    .local v3, result:I
    :goto_63
    or-int v6, v3, v4

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    goto :goto_17

    .line 1177
    .end local v3           #result:I
    .restart local v1       #digits:I
    :cond_6a
    and-int v6, v0, v8

    const/high16 v7, 0x80

    or-int/2addr v6, v7

    add-int/lit8 v7, v1, -0x1

    invoke-static {v6, v7}, Ljava/lang/StrictMath;->shiftIntBits(II)I

    move-result v3

    .restart local v3       #result:I
    goto :goto_63

    .line 1180
    .end local v1           #digits:I
    .end local v3           #result:I
    :cond_76
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_87

    .line 1182
    add-int/lit8 v6, v2, 0x7f

    shl-int/lit8 v6, v6, 0x17

    and-int v7, v0, v8

    or-int v3, v6, v7

    .restart local v3       #result:I
    goto :goto_63

    .line 1186
    .end local v3           #result:I
    :cond_87
    add-int/lit8 v6, v2, 0x7f

    shl-int/lit8 v6, v6, 0x17

    add-int/lit8 v7, v5, 0x1

    shl-int v7, v0, v7

    and-int/2addr v7, v8

    or-int v3, v6, v7

    .restart local v3       #result:I
    goto :goto_63
.end method

.method private static shiftIntBits(II)I
    .registers 5
    .parameter "bits"
    .parameter "digits"

    .prologue
    .line 1196
    if-lez p1, :cond_5

    .line 1197
    shl-int v1, p0, p1

    .line 1209
    :goto_4
    return v1

    .line 1200
    :cond_5
    neg-int v0, p1

    .line 1201
    .local v0, absDigits:I
    const v1, 0x7fffffff

    and-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v2, v0, 0x20

    if-gt v1, v2, :cond_2a

    .line 1203
    add-int/lit8 v1, v0, -0x1

    shr-int v1, p0, v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_22

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_25

    .line 1205
    :cond_22
    shr-int v1, p0, v0

    goto :goto_4

    .line 1207
    :cond_25
    shr-int v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1209
    :cond_2a
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private static shiftLongBits(JJ)J
    .registers 14
    .parameter "bits"
    .parameter "digits"

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v8, 0x1

    .line 1215
    cmp-long v4, p2, v2

    if-lez v4, :cond_c

    .line 1216
    long-to-int v2, p2

    shl-long v2, p0, v2

    .line 1228
    :cond_b
    :goto_b
    return-wide v2

    .line 1219
    :cond_c
    neg-long v0, p2

    .line 1220
    .local v0, absDigits:J
    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x40

    sub-long/2addr v6, v0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_b

    .line 1222
    sub-long v4, v0, v8

    long-to-int v4, v4

    shr-long v4, p0, v4

    and-long/2addr v4, v8

    cmp-long v2, v4, v2

    if-eqz v2, :cond_34

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    int-to-long v2, v2

    sub-long v4, v0, v8

    cmp-long v2, v2, v4

    if-nez v2, :cond_38

    .line 1224
    :cond_34
    long-to-int v2, v0

    shr-long v2, p0, v2

    goto :goto_b

    .line 1226
    :cond_38
    long-to-int v2, v0

    shr-long v2, p0, v2

    add-long/2addr v2, v8

    goto :goto_b
.end method

.method public static signum(D)D
    .registers 4
    .parameter "d"

    .prologue
    .line 784
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static signum(F)F
    .registers 2
    .parameter "f"

    .prologue
    .line 807
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    return v0
.end method

.method public static native sin(D)D
.end method

.method public static native sinh(D)D
.end method

.method public static native sqrt(D)D
.end method

.method public static native tan(D)D
.end method

.method public static native tanh(D)D
.end method

.method public static toDegrees(D)D
    .registers 4
    .parameter "angrad"

    .prologue
    .line 921
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toRadians(D)D
    .registers 4
    .parameter "angdeg"

    .prologue
    .line 942
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ulp(D)D
    .registers 6
    .parameter "d"

    .prologue
    const-wide v2, 0x7fefffffffffffffL

    .line 966
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 967
    const-wide/high16 v0, 0x7ff0

    .line 972
    :goto_d
    return-wide v0

    .line 968
    :cond_e
    cmpl-double v0, p0, v2

    if-eqz v0, :cond_1b

    const-wide v0, -0x10000000000001L

    cmpl-double v0, p0, v0

    if-nez v0, :cond_27

    .line 969
    :cond_1b
    const-wide/high16 v0, 0x4000

    const-wide v2, 0x408e580000000000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v0

    goto :goto_d

    .line 971
    :cond_27
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 972
    invoke-static {p0, p1, v2, v3}, Ljava/lang/StrictMath;->nextafter(DD)D

    move-result-wide v0

    sub-double/2addr v0, p0

    goto :goto_d
.end method

.method public static ulp(F)F
    .registers 2
    .parameter "f"

    .prologue
    .line 995
    invoke-static {p0}, Ljava/lang/Math;->ulp(F)F

    move-result v0

    return v0
.end method
