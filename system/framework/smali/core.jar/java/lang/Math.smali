.class public final Ljava/lang/Math;
.super Ljava/lang/Object;
.source "Math.java"


# static fields
.field public static final E:D = 2.718281828459045

.field public static final PI:D = 3.141592653589793

.field private static random:Ljava/util/Random;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static native IEEEremainder(DD)D
.end method

.method public static native abs(D)D
.end method

.method public static native abs(F)F
.end method

.method public static native abs(I)I
.end method

.method public static native abs(J)J
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
    .line 1076
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 1077
    .local v0, magnitudeBits:J
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 1078
    .local v2, signBits:J
    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v4, v0

    const-wide/high16 v6, -0x8000

    and-long/2addr v6, v2

    or-long v0, v4, v6

    .line 1079
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    return-wide v4
.end method

.method public static copySign(FF)F
    .registers 6
    .parameter "magnitude"
    .parameter "sign"

    .prologue
    .line 1089
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 1090
    .local v0, magnitudeBits:I
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 1091
    .local v1, signBits:I
    const v2, 0x7fffffff

    and-int/2addr v2, v0

    const/high16 v3, -0x8000

    and-int/2addr v3, v1

    or-int v0, v2, v3

    .line 1092
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
    .registers 7
    .parameter "d"

    .prologue
    .line 1110
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 1111
    .local v0, bits:J
    const-wide/high16 v2, 0x7ff0

    and-long/2addr v2, v0

    const/16 v4, 0x34

    shr-long v0, v2, v4

    .line 1112
    long-to-int v2, v0

    add-int/lit16 v2, v2, -0x3ff

    return v2
.end method

.method public static getExponent(F)I
    .registers 3
    .parameter "f"

    .prologue
    .line 1100
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 1101
    .local v0, bits:I
    const/high16 v1, 0x7f80

    and-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x17

    .line 1102
    add-int/lit8 v1, v0, -0x7f

    return v1
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
    .registers 8
    .parameter "d1"
    .parameter "d2"

    .prologue
    .line 478
    cmpl-double v0, p0, p2

    if-lez v0, :cond_6

    move-wide p2, p0

    .line 493
    .end local p2
    :cond_5
    :goto_5
    return-wide p2

    .line 481
    .restart local p2
    :cond_6
    cmpg-double v0, p0, p2

    if-ltz v0, :cond_5

    .line 485
    cmpl-double v0, p0, p2

    if-eqz v0, :cond_11

    .line 486
    const-wide/high16 p2, 0x7ff8

    goto :goto_5

    .line 490
    :cond_11
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 493
    const-wide/16 p2, 0x0

    goto :goto_5
.end method

.method public static max(FF)F
    .registers 3
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 515
    cmpl-float v0, p0, p1

    if-lez v0, :cond_6

    move p1, p0

    .line 530
    .end local p1
    :cond_5
    :goto_5
    return p1

    .line 518
    .restart local p1
    :cond_6
    cmpg-float v0, p0, p1

    if-ltz v0, :cond_5

    .line 522
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_11

    .line 523
    const/high16 p1, 0x7fc0

    goto :goto_5

    .line 527
    :cond_11
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    if-nez v0, :cond_5

    .line 530
    const/4 p1, 0x0

    goto :goto_5
.end method

.method public static native max(II)I
.end method

.method public static max(JJ)J
    .registers 5
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 556
    cmp-long v0, p0, p2

    if-lez v0, :cond_5

    .end local p0
    :goto_4
    return-wide p0

    .restart local p0
    :cond_5
    move-wide p0, p2

    goto :goto_4
.end method

.method public static min(DD)D
    .registers 8
    .parameter "d1"
    .parameter "d2"

    .prologue
    .line 578
    cmpl-double v0, p0, p2

    if-lez v0, :cond_5

    .line 593
    .end local p2
    :cond_4
    :goto_4
    return-wide p2

    .line 581
    .restart local p2
    :cond_5
    cmpg-double v0, p0, p2

    if-gez v0, :cond_b

    move-wide p2, p0

    .line 582
    goto :goto_4

    .line 585
    :cond_b
    cmpl-double v0, p0, p2

    if-eqz v0, :cond_12

    .line 586
    const-wide/high16 p2, 0x7ff8

    goto :goto_4

    .line 590
    :cond_12
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 591
    const-wide/high16 p2, -0x8000

    goto :goto_4
.end method

.method public static min(FF)F
    .registers 4
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 615
    cmpl-float v0, p0, p1

    if-lez v0, :cond_5

    .line 630
    .end local p1
    :cond_4
    :goto_4
    return p1

    .line 618
    .restart local p1
    :cond_5
    cmpg-float v0, p0, p1

    if-gez v0, :cond_b

    move p1, p0

    .line 619
    goto :goto_4

    .line 622
    :cond_b
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_12

    .line 623
    const/high16 p1, 0x7fc0

    goto :goto_4

    .line 627
    :cond_12
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_4

    .line 628
    const/high16 p1, -0x8000

    goto :goto_4
.end method

.method public static native min(II)I
.end method

.method public static min(JJ)J
    .registers 5
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 656
    cmp-long v0, p0, p2

    if-gez v0, :cond_5

    .end local p0
    :goto_4
    return-wide p0

    .restart local p0
    :cond_5
    move-wide p0, p2

    goto :goto_4
.end method

.method public static nextAfter(DD)D
    .registers 7
    .parameter "start"
    .parameter "direction"

    .prologue
    const-wide/16 v1, 0x0

    .line 1120
    cmpl-double v0, p0, v1

    if-nez v0, :cond_b

    cmpl-double v0, p2, v1

    if-nez v0, :cond_b

    .line 1123
    .end local p2
    :goto_a
    return-wide p2

    .restart local p2
    :cond_b
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->nextafter(DD)D

    move-result-wide p2

    goto :goto_a
.end method

.method public static nextAfter(FD)F
    .registers 10
    .parameter "start"
    .parameter "direction"

    .prologue
    const v1, 0x7f7fffff

    const/4 v3, 0x1

    const v2, -0x800001

    const v4, -0x7fffffff

    const/4 v0, 0x0

    .line 1131
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1132
    :cond_17
    const/high16 v0, 0x7fc0

    .line 1167
    :cond_19
    :goto_19
    return v0

    .line 1134
    :cond_1a
    cmpl-float v5, p0, v0

    if-nez v5, :cond_26

    const-wide/16 v5, 0x0

    cmpl-double v5, p1, v5

    if-nez v5, :cond_26

    .line 1135
    double-to-float v0, p1

    goto :goto_19

    .line 1137
    :cond_26
    cmpl-float v5, p0, v3

    if-nez v5, :cond_2f

    float-to-double v5, p0

    cmpg-double v5, p1, v5

    if-ltz v5, :cond_38

    :cond_2f
    cmpl-float v5, p0, v4

    if-nez v5, :cond_3f

    float-to-double v5, p0

    cmpl-double v5, p1, v5

    if-lez v5, :cond_3f

    .line 1139
    :cond_38
    cmpl-float v1, p0, v0

    if-gtz v1, :cond_19

    const/high16 v0, -0x8000

    goto :goto_19

    .line 1141
    :cond_3f
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    if-eqz v5, :cond_52

    float-to-double v5, p0

    cmpl-double v5, p1, v5

    if-eqz v5, :cond_52

    .line 1142
    cmpl-float v0, p0, v0

    if-lez v0, :cond_50

    move v0, v1

    goto :goto_19

    :cond_50
    move v0, v2

    goto :goto_19

    .line 1144
    :cond_52
    cmpl-float v1, p0, v1

    if-nez v1, :cond_5b

    float-to-double v5, p0

    cmpl-double v1, p1, v5

    if-gtz v1, :cond_64

    :cond_5b
    cmpl-float v1, p0, v2

    if-nez v1, :cond_6e

    float-to-double v1, p0

    cmpg-double v1, p1, v1

    if-gez v1, :cond_6e

    .line 1146
    :cond_64
    cmpl-float v0, p0, v0

    if-lez v0, :cond_6b

    const/high16 v0, 0x7f80

    goto :goto_19

    :cond_6b
    const/high16 v0, -0x80

    goto :goto_19

    .line 1149
    :cond_6e
    float-to-double v1, p0

    cmpl-double v1, p1, v1

    if-lez v1, :cond_93

    .line 1150
    cmpl-float v1, p0, v0

    if-lez v1, :cond_82

    .line 1151
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_19

    .line 1153
    :cond_82
    cmpg-float v0, p0, v0

    if-gez v0, :cond_91

    .line 1154
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_19

    :cond_91
    move v0, v3

    .line 1156
    goto :goto_19

    .line 1158
    :cond_93
    float-to-double v1, p0

    cmpg-double v1, p1, v1

    if-gez v1, :cond_bb

    .line 1159
    cmpl-float v1, p0, v0

    if-lez v1, :cond_a8

    .line 1160
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto/16 :goto_19

    .line 1162
    :cond_a8
    cmpg-float v0, p0, v0

    if-gez v0, :cond_b8

    .line 1163
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto/16 :goto_19

    :cond_b8
    move v0, v4

    .line 1165
    goto/16 :goto_19

    .line 1167
    :cond_bb
    double-to-float v0, p1

    goto/16 :goto_19
.end method

.method public static nextUp(D)D
    .registers 9
    .parameter "d"

    .prologue
    const-wide/16 v5, 0x1

    const-wide/high16 v0, 0x7ff0

    const-wide/16 v3, 0x0

    .line 1175
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1176
    const-wide/high16 v0, 0x7ff8

    .line 1186
    :cond_e
    :goto_e
    return-wide v0

    .line 1178
    :cond_f
    cmpl-double v2, p0, v0

    if-eqz v2, :cond_e

    .line 1181
    cmpl-double v0, p0, v3

    if-nez v0, :cond_1a

    .line 1182
    const-wide/16 v0, 0x1

    goto :goto_e

    .line 1183
    :cond_1a
    cmpl-double v0, p0, v3

    if-lez v0, :cond_28

    .line 1184
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    add-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_e

    .line 1186
    :cond_28
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    sub-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_e
.end method

.method public static nextUp(F)F
    .registers 4
    .parameter "f"

    .prologue
    const/high16 v0, 0x7f80

    const/4 v2, 0x0

    .line 1195
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1196
    const/high16 v0, 0x7fc0

    .line 1206
    :cond_b
    :goto_b
    return v0

    .line 1198
    :cond_c
    cmpl-float v1, p0, v0

    if-eqz v1, :cond_b

    .line 1201
    cmpl-float v0, p0, v2

    if-nez v0, :cond_16

    .line 1202
    const/4 v0, 0x1

    goto :goto_b

    .line 1203
    :cond_16
    cmpl-float v0, p0, v2

    if-lez v0, :cond_25

    .line 1204
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_b

    .line 1206
    :cond_25
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_b
.end method

.method private static native nextafter(DD)D
.end method

.method public static native pow(DD)D
.end method

.method public static declared-synchronized random()D
    .registers 4

    .prologue
    .line 946
    const-class v1, Ljava/lang/Math;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljava/lang/Math;->random:Ljava/util/Random;

    if-nez v0, :cond_e

    .line 947
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ljava/lang/Math;->random:Ljava/util/Random;

    .line 949
    :cond_e
    sget-object v0, Ljava/lang/Math;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_16

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 946
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static native rint(D)D
.end method

.method public static round(F)I
    .registers 3
    .parameter "f"

    .prologue
    .line 765
    cmpl-float v0, p0, p0

    if-eqz v0, :cond_6

    .line 766
    const/4 v0, 0x0

    .line 768
    :goto_5
    return v0

    :cond_6
    const/high16 v0, 0x3f00

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_5
.end method

.method public static round(D)J
    .registers 4
    .parameter "d"

    .prologue
    .line 738
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_7

    .line 739
    const-wide/16 v0, 0x0

    .line 741
    :goto_6
    return-wide v0

    :cond_7
    const-wide/high16 v0, 0x3fe0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    goto :goto_6
.end method

.method public static scalb(DI)D
    .registers 21
    .parameter "d"
    .parameter "scaleFactor"

    .prologue
    .line 1215
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-nez v12, :cond_12

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v12

    if-nez v12, :cond_12

    const-wide/16 v12, 0x0

    cmpl-double v12, p0, v12

    if-nez v12, :cond_15

    :cond_12
    move-wide/from16 v12, p0

    .line 1262
    :goto_14
    return-wide v12

    .line 1219
    :cond_15
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 1221
    .local v1, bits:J
    const-wide/high16 v12, -0x8000

    and-long v9, v1, v12

    .line 1223
    .local v9, sign:J
    const-wide/high16 v12, 0x7ff0

    and-long/2addr v12, v1

    const/16 v14, 0x34

    shr-long/2addr v12, v14

    const-wide/16 v14, 0x3ff

    sub-long/2addr v12, v14

    move/from16 v0, p2

    int-to-long v14, v0

    add-long v5, v12, v14

    .line 1227
    .local v5, factor:J
    const-wide v12, 0x7fffffffffffffffL

    and-long/2addr v12, v1

    invoke-static {v12, v13}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v12

    add-int/lit8 v11, v12, -0xc

    .line 1229
    .local v11, subNormalFactor:I
    if-gez v11, :cond_49

    .line 1231
    const/4 v11, 0x0

    .line 1235
    :goto_3a
    const-wide/16 v12, 0x3ff

    cmp-long v12, v5, v12

    if-lez v12, :cond_4f

    .line 1236
    const-wide/16 v12, 0x0

    cmpl-double v12, p0, v12

    if-lez v12, :cond_4c

    const-wide/high16 v12, 0x7ff0

    goto :goto_14

    .line 1233
    :cond_49
    int-to-long v12, v11

    sub-long/2addr v5, v12

    goto :goto_3a

    .line 1236
    :cond_4c
    const-wide/high16 v12, -0x10

    goto :goto_14

    .line 1241
    :cond_4f
    const-wide/16 v12, -0x3ff

    cmp-long v12, v5, v12

    if-gtz v12, :cond_88

    .line 1243
    const-wide/16 v12, 0x3ff

    add-long/2addr v12, v5

    int-to-long v14, v11

    add-long v3, v12, v14

    .line 1244
    .local v3, digits:J
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x10

    cmpg-double v12, v12, v14

    if-gez v12, :cond_76

    .line 1246
    const-wide v12, 0xfffffffffffffL

    and-long/2addr v12, v1

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->shiftLongBits(JJ)J

    move-result-wide v7

    .line 1262
    .end local v3           #digits:J
    .local v7, result:J
    :goto_6f
    or-long v12, v7, v9

    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    goto :goto_14

    .line 1249
    .end local v7           #result:J
    .restart local v3       #digits:J
    :cond_76
    const-wide v12, 0xfffffffffffffL

    and-long/2addr v12, v1

    const-wide/high16 v14, 0x10

    or-long/2addr v12, v14

    const-wide/16 v14, 0x1

    sub-long v14, v3, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->shiftLongBits(JJ)J

    move-result-wide v7

    .restart local v7       #result:J
    goto :goto_6f

    .line 1252
    .end local v3           #digits:J
    .end local v7           #result:J
    :cond_88
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x10

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_a1

    .line 1254
    const-wide/16 v12, 0x3ff

    add-long/2addr v12, v5

    const/16 v14, 0x34

    shl-long/2addr v12, v14

    const-wide v14, 0xfffffffffffffL

    and-long/2addr v14, v1

    or-long v7, v12, v14

    .restart local v7       #result:J
    goto :goto_6f

    .line 1258
    .end local v7           #result:J
    :cond_a1
    const-wide/16 v12, 0x3ff

    add-long/2addr v12, v5

    const/16 v14, 0x34

    shl-long/2addr v12, v14

    add-int/lit8 v14, v11, 0x1

    shl-long v14, v1, v14

    const-wide v16, 0xfffffffffffffL

    and-long v14, v14, v16

    or-long v7, v12, v14

    .restart local v7       #result:J
    goto :goto_6f
.end method

.method public static scalb(FI)F
    .registers 12
    .parameter "d"
    .parameter "scaleFactor"

    .prologue
    const/high16 v9, 0x80

    const/4 v7, 0x0

    const v8, 0x7fffff

    .line 1270
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_16

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-nez v6, :cond_16

    cmpl-float v6, p0, v7

    if-nez v6, :cond_18

    :cond_16
    move v6, p0

    .line 1313
    :goto_17
    return v6

    .line 1273
    :cond_18
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1274
    .local v0, bits:I
    const/high16 v6, -0x8000

    and-int v4, v0, v6

    .line 1275
    .local v4, sign:I
    const/high16 v6, 0x7f80

    and-int/2addr v6, v0

    shr-int/lit8 v6, v6, 0x17

    add-int/lit8 v6, v6, -0x7f

    add-int v2, v6, p1

    .line 1278
    .local v2, factor:I
    const v6, 0x7fffffff

    and-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v6

    add-int/lit8 v5, v6, -0x9

    .line 1280
    .local v5, subNormalFactor:I
    if-gez v5, :cond_41

    .line 1282
    const/4 v5, 0x0

    .line 1286
    :goto_36
    const/16 v6, 0x7f

    if-le v2, v6, :cond_46

    .line 1287
    cmpl-float v6, p0, v7

    if-lez v6, :cond_43

    const/high16 v6, 0x7f80

    goto :goto_17

    .line 1284
    :cond_41
    sub-int/2addr v2, v5

    goto :goto_36

    .line 1287
    :cond_43
    const/high16 v6, -0x80

    goto :goto_17

    .line 1292
    :cond_46
    const/16 v6, -0x7f

    if-gt v2, v6, :cond_6f

    .line 1294
    add-int/lit8 v6, v2, 0x7f

    add-int v1, v6, v5

    .line 1295
    .local v1, digits:I
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v9

    if-gez v6, :cond_63

    .line 1297
    and-int v6, v0, v8

    invoke-static {v6, v1}, Ljava/lang/Math;->shiftIntBits(II)I

    move-result v3

    .line 1313
    .end local v1           #digits:I
    .local v3, result:I
    :goto_5c
    or-int v6, v3, v4

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    goto :goto_17

    .line 1300
    .end local v3           #result:I
    .restart local v1       #digits:I
    :cond_63
    and-int v6, v0, v8

    const/high16 v7, 0x80

    or-int/2addr v6, v7

    add-int/lit8 v7, v1, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->shiftIntBits(II)I

    move-result v3

    .restart local v3       #result:I
    goto :goto_5c

    .line 1303
    .end local v1           #digits:I
    .end local v3           #result:I
    :cond_6f
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v9

    if-ltz v6, :cond_80

    .line 1305
    add-int/lit8 v6, v2, 0x7f

    shl-int/lit8 v6, v6, 0x17

    and-int v7, v0, v8

    or-int v3, v6, v7

    .restart local v3       #result:I
    goto :goto_5c

    .line 1309
    .end local v3           #result:I
    :cond_80
    add-int/lit8 v6, v2, 0x7f

    shl-int/lit8 v6, v6, 0x17

    add-int/lit8 v7, v5, 0x1

    shl-int v7, v0, v7

    and-int/2addr v7, v8

    or-int v3, v6, v7

    .restart local v3       #result:I
    goto :goto_5c
.end method

.method private static shiftIntBits(II)I
    .registers 9
    .parameter "bits"
    .parameter "digits"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1319
    if-lez p1, :cond_7

    .line 1320
    shl-int v2, p0, p1

    .line 1339
    :cond_6
    :goto_6
    return v2

    .line 1323
    :cond_7
    neg-int v0, p1

    .line 1324
    .local v0, absDigits:I
    const v5, 0x7fffffff

    and-int/2addr v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v5

    rsub-int/lit8 v6, v0, 0x20

    if-le v5, v6, :cond_16

    move v2, v3

    .line 1325
    goto :goto_6

    .line 1327
    :cond_16
    shr-int v2, p0, v0

    .line 1328
    .local v2, ret:I
    add-int/lit8 v5, v0, -0x1

    shr-int v5, p0, v5

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v4, :cond_3c

    move v1, v4

    .line 1329
    .local v1, halfBit:Z
    :goto_21
    if-eqz v1, :cond_6

    .line 1330
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_2d

    .line 1331
    add-int/lit8 v2, v2, 0x1

    .line 1333
    :cond_2d
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    add-int/lit8 v5, v0, -0x1

    if-ne v3, v5, :cond_6

    .line 1334
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_6

    .line 1335
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .end local v1           #halfBit:Z
    :cond_3c
    move v1, v3

    .line 1328
    goto :goto_21
.end method

.method private static shiftLongBits(JJ)J
    .registers 15
    .parameter "bits"
    .parameter "digits"

    .prologue
    const-wide/16 v3, 0x0

    const-wide/16 v9, 0x1

    .line 1345
    cmp-long v5, p2, v3

    if-lez v5, :cond_c

    .line 1346
    long-to-int v5, p2

    shl-long v3, p0, v5

    .line 1367
    :cond_b
    :goto_b
    return-wide v3

    .line 1349
    :cond_c
    neg-long v0, p2

    .line 1350
    .local v0, absDigits:J
    const-wide v5, 0x7fffffffffffffffL

    and-long/2addr v5, p0

    invoke-static {v5, v6}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x40

    sub-long/2addr v7, v0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_b

    .line 1353
    long-to-int v5, v0

    shr-long v3, p0, v5

    .line 1354
    .local v3, ret:J
    sub-long v5, v0, v9

    long-to-int v5, v5

    shr-long v5, p0, v5

    and-long/2addr v5, v9

    cmp-long v5, v5, v9

    if-nez v5, :cond_4e

    const/4 v2, 0x1

    .line 1355
    .local v2, halfBit:Z
    :goto_2d
    if-eqz v2, :cond_b

    .line 1358
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v5

    int-to-long v5, v5

    sub-long v7, v0, v9

    cmp-long v5, v5, v7

    if-gez v5, :cond_3b

    .line 1359
    add-long/2addr v3, v9

    .line 1361
    :cond_3b
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v5

    int-to-long v5, v5

    sub-long v7, v0, v9

    cmp-long v5, v5, v7

    if-nez v5, :cond_b

    .line 1362
    and-long v5, v3, v9

    cmp-long v5, v5, v9

    if-nez v5, :cond_b

    .line 1363
    add-long/2addr v3, v9

    goto :goto_b

    .line 1354
    .end local v2           #halfBit:Z
    :cond_4e
    const/4 v2, 0x0

    goto :goto_2d
.end method

.method public static signum(D)D
    .registers 7
    .parameter "d"

    .prologue
    const-wide/16 v3, 0x0

    .line 791
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 792
    const-wide/high16 v0, 0x7ff8

    .line 800
    :cond_a
    :goto_a
    return-wide v0

    .line 794
    :cond_b
    move-wide v0, p0

    .line 795
    .local v0, sig:D
    cmpl-double v2, p0, v3

    if-lez v2, :cond_13

    .line 796
    const-wide/high16 v0, 0x3ff0

    goto :goto_a

    .line 797
    :cond_13
    cmpg-double v2, p0, v3

    if-gez v2, :cond_a

    .line 798
    const-wide/high16 v0, -0x4010

    goto :goto_a
.end method

.method public static signum(F)F
    .registers 4
    .parameter "f"

    .prologue
    const/4 v2, 0x0

    .line 823
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 824
    const/high16 v0, 0x7fc0

    .line 832
    :cond_9
    :goto_9
    return v0

    .line 826
    :cond_a
    move v0, p0

    .line 827
    .local v0, sig:F
    cmpl-float v1, p0, v2

    if-lez v1, :cond_12

    .line 828
    const/high16 v0, 0x3f80

    goto :goto_9

    .line 829
    :cond_12
    cmpg-float v1, p0, v2

    if-gez v1, :cond_9

    .line 830
    const/high16 v0, -0x4080

    goto :goto_9
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
    .registers 6
    .parameter "angrad"

    .prologue
    .line 991
    const-wide v0, 0x4066800000000000L

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static toRadians(D)D
    .registers 6
    .parameter "angdeg"

    .prologue
    .line 970
    const-wide v0, 0x4066800000000000L

    div-double v0, p0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static ulp(D)D
    .registers 6
    .parameter "d"

    .prologue
    const-wide v2, 0x7fefffffffffffffL

    .line 1015
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1016
    const-wide/high16 v0, 0x7ff0

    .line 1021
    :goto_d
    return-wide v0

    .line 1017
    :cond_e
    cmpl-double v0, p0, v2

    if-eqz v0, :cond_1b

    const-wide v0, -0x10000000000001L

    cmpl-double v0, p0, v0

    if-nez v0, :cond_27

    .line 1018
    :cond_1b
    const-wide/high16 v0, 0x4000

    const-wide v2, 0x408e580000000000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_d

    .line 1020
    :cond_27
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 1021
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->nextafter(DD)D

    move-result-wide v0

    sub-double/2addr v0, p0

    goto :goto_d
.end method

.method public static ulp(F)F
    .registers 7
    .parameter "f"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const v5, 0x7f7fffff

    .line 1047
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1048
    const/high16 v2, 0x7fc0

    .line 1066
    :goto_d
    return v2

    .line 1049
    :cond_e
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1050
    const/high16 v2, 0x7f80

    goto :goto_d

    .line 1051
    :cond_17
    cmpl-float v4, p0, v5

    if-eqz v4, :cond_22

    const v4, -0x800001

    cmpl-float v4, p0, v4

    if-nez v4, :cond_2c

    .line 1052
    :cond_22
    const-wide/high16 v2, 0x4000

    const-wide/high16 v4, 0x405a

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_d

    .line 1055
    :cond_2c
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    .line 1056
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 1057
    .local v0, hx:I
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 1058
    .local v1, hy:I
    const v4, 0x7fffffff

    and-int/2addr v4, v0

    if-nez v4, :cond_48

    .line 1059
    const/high16 v2, -0x8000

    and-int/2addr v2, v1

    or-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    goto :goto_d

    .line 1061
    :cond_48
    if-lez v0, :cond_58

    move v4, v2

    :goto_4b
    if-le v0, v1, :cond_5a

    :goto_4d
    xor-int/2addr v2, v4

    if-eqz v2, :cond_5c

    .line 1062
    add-int/lit8 v0, v0, 0x1

    .line 1066
    :goto_52
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    sub-float/2addr v2, p0

    goto :goto_d

    :cond_58
    move v4, v3

    .line 1061
    goto :goto_4b

    :cond_5a
    move v2, v3

    goto :goto_4d

    .line 1064
    :cond_5c
    add-int/lit8 v0, v0, -0x1

    goto :goto_52
.end method
