.class Lcom/sec/android/app/twlauncher/RoundedRectSolid;
.super Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;
.source "RoundedRectSolid.java"


# direct methods
.method public constructor <init>(FF)V
    .registers 27
    .parameter "radius"
    .parameter "border"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;-><init>()V

    .line 14
    const/4 v9, 0x6

    .line 15
    .local v9, cornerVerts:I
    const/16 v17, 0x31

    .line 16
    .local v17, totalVerts:I
    const/4 v14, 0x3

    .line 18
    .local v14, span:I
    const/16 v19, 0x93

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .line 20
    .local v18, verts:[F
    const/4 v13, 0x0

    .line 21
    .local v13, o:I
    const/4 v3, 0x0

    .local v3, X:I
    const/4 v4, 0x1

    .local v4, Y:I
    const/4 v5, 0x2

    .line 24
    .local v5, Z:I
    const/16 v19, 0x0

    const/high16 v20, 0x3f00

    aput v20, v18, v19

    .line 25
    const/16 v19, 0x1

    const/high16 v20, 0x3f00

    aput v20, v18, v19

    .line 26
    const/16 v19, 0x2

    const/high16 v20, 0x3f80

    aput v20, v18, v19

    .line 27
    add-int/lit8 v13, v13, 0x3

    .line 30
    const/4 v11, 0x0

    .local v11, i:I
    :goto_28
    const/16 v19, 0x6

    move/from16 v0, v19

    if-ge v11, v0, :cond_95

    .line 31
    int-to-float v0, v11

    move/from16 v19, v0

    const/high16 v20, 0x40a0

    div-float v19, v19, v20

    const v20, 0x3fc90fdb

    mul-float v16, v19, v20

    .line 32
    .local v16, theta:F
    add-int/lit8 v19, v13, 0x0

    const/high16 v20, 0x3f80

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v20, v20, p1

    add-float v20, v20, p2

    aput v20, v18, v19

    .line 33
    add-int/lit8 v19, v13, 0x1

    const/high16 v20, 0x3f80

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v20, v20, p1

    add-float v20, v20, p2

    aput v20, v18, v19

    .line 34
    add-int/lit8 v19, v13, 0x2

    const/high16 v20, 0x3f80

    aput v20, v18, v19

    .line 35
    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x0

    add-int/lit8 v20, v13, 0x0

    aget v20, v18, v20

    aput v20, v18, v19

    .line 36
    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v20, v13, 0x1

    aget v20, v18, v20

    aput v20, v18, v19

    .line 37
    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x2

    const/16 v20, 0x0

    aput v20, v18, v19

    .line 38
    add-int/lit8 v13, v13, 0x6

    .line 30
    add-int/lit8 v11, v11, 0x1

    goto :goto_28

    .line 42
    .end local v16           #theta:F
    :cond_95
    const/4 v11, 0x0

    :goto_96
    const/16 v19, 0x6

    move/from16 v0, v19

    if-ge v11, v0, :cond_107

    .line 43
    int-to-float v0, v11

    move/from16 v19, v0

    const/high16 v20, 0x40a0

    div-float v19, v19, v20

    const v20, 0x3fc90fdb

    mul-float v16, v19, v20

    .line 44
    .restart local v16       #theta:F
    add-int/lit8 v19, v13, 0x0

    const/high16 v20, 0x3f80

    const/high16 v21, 0x3f80

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    mul-float v21, v21, p1

    sub-float v20, v20, v21

    sub-float v20, v20, p2

    aput v20, v18, v19

    .line 45
    add-int/lit8 v19, v13, 0x1

    const/high16 v20, 0x3f80

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v20, v20, p1

    add-float v20, v20, p2

    aput v20, v18, v19

    .line 46
    add-int/lit8 v19, v13, 0x2

    const/high16 v20, 0x3f80

    aput v20, v18, v19

    .line 47
    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x0

    add-int/lit8 v20, v13, 0x0

    aget v20, v18, v20

    aput v20, v18, v19

    .line 48
    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v20, v13, 0x1

    aget v20, v18, v20

    aput v20, v18, v19

    .line 49
    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x2

    const/16 v20, 0x0

    aput v20, v18, v19

    .line 50
    add-int/lit8 v13, v13, 0x6

    .line 42
    add-int/lit8 v11, v11, 0x1

    goto :goto_96

    .line 54
    .end local v16           #theta:F
    :cond_107
    const/4 v11, 0x0

    :goto_108
    const/16 v19, 0x6

    move/from16 v0, v19

    if-ge v11, v0, :cond_17d

    .line 55
    int-to-float v0, v11

    move/from16 v19, v0

    const/high16 v20, 0x40a0

    div-float v19, v19, v20

    const v20, 0x3fc90fdb

    mul-float v16, v19, v20

    .line 56
    .restart local v16       #theta:F
    add-int/lit8 v19, v13, 0x0

    const/high16 v20, 0x3f80

    const/high16 v21, 0x3f80

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    mul-float v21, v21, p1

    sub-float v20, v20, v21

    sub-float v20, v20, p2

    aput v20, v18, v19

    .line 57
    add-int/lit8 v19, v13, 0x1

    const/high16 v20, 0x3f80

    const/high16 v21, 0x3f80

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    mul-float v21, v21, p1

    sub-float v20, v20, v21

    sub-float v20, v20, p2

    aput v20, v18, v19

    .line 58
    add-int/lit8 v19, v13, 0x2

    const/high16 v20, 0x3f80

    aput v20, v18, v19

    .line 59
    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x0

    add-int/lit8 v20, v13, 0x0

    aget v20, v18, v20

    aput v20, v18, v19

    .line 60
    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v20, v13, 0x1

    aget v20, v18, v20

    aput v20, v18, v19

    .line 61
    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x2

    const/16 v20, 0x0

    aput v20, v18, v19

    .line 62
    add-int/lit8 v13, v13, 0x6

    .line 54
    add-int/lit8 v11, v11, 0x1

    goto :goto_108

    .line 66
    .end local v16           #theta:F
    :cond_17d
    const/4 v11, 0x0

    :goto_17e
    const/16 v19, 0x6

    move/from16 v0, v19

    if-ge v11, v0, :cond_1ef

    .line 67
    int-to-float v0, v11

    move/from16 v19, v0

    const/high16 v20, 0x40a0

    div-float v19, v19, v20

    const v20, 0x3fc90fdb

    mul-float v16, v19, v20

    .line 68
    .restart local v16       #theta:F
    add-int/lit8 v19, v13, 0x0

    const/high16 v20, 0x3f80

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v20, v20, p1

    add-float v20, v20, p2

    aput v20, v18, v19

    .line 69
    add-int/lit8 v19, v13, 0x1

    const/high16 v20, 0x3f80

    const/high16 v21, 0x3f80

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    mul-float v21, v21, p1

    sub-float v20, v20, v21

    sub-float v20, v20, p2

    aput v20, v18, v19

    .line 70
    add-int/lit8 v19, v13, 0x2

    const/high16 v20, 0x3f80

    aput v20, v18, v19

    .line 71
    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x0

    add-int/lit8 v20, v13, 0x0

    aget v20, v18, v20

    aput v20, v18, v19

    .line 72
    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v20, v13, 0x1

    aget v20, v18, v20

    aput v20, v18, v19

    .line 73
    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x2

    const/16 v20, 0x0

    aput v20, v18, v19

    .line 74
    add-int/lit8 v13, v13, 0x6

    .line 66
    add-int/lit8 v11, v11, 0x1

    goto :goto_17e

    .line 77
    .end local v16           #theta:F
    :cond_1ef
    const/16 v19, 0xd8

    move/from16 v0, v19

    new-array v12, v0, [S

    .line 80
    .local v12, indexes:[S
    const/4 v11, 0x0

    :goto_1f6
    const/16 v19, 0x18

    move/from16 v0, v19

    if-ge v11, v0, :cond_229

    .line 81
    mul-int/lit8 v19, v11, 0x3

    add-int/lit8 v19, v19, 0x0

    const/16 v20, 0x0

    aput-short v20, v12, v19

    .line 82
    mul-int/lit8 v19, v11, 0x3

    add-int/lit8 v19, v19, 0x1

    mul-int/lit8 v20, v11, 0x2

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    aput-short v20, v12, v19

    .line 83
    mul-int/lit8 v19, v11, 0x3

    add-int/lit8 v19, v19, 0x2

    add-int/lit8 v20, v11, 0x1

    rem-int/lit8 v20, v20, 0x18

    mul-int/lit8 v20, v20, 0x2

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    aput-short v20, v12, v19

    .line 80
    add-int/lit8 v11, v11, 0x1

    goto :goto_1f6

    .line 87
    :cond_229
    const/16 v15, 0x48

    .line 88
    .local v15, start:I
    const/4 v11, 0x0

    :goto_22c
    const/16 v19, 0x18

    move/from16 v0, v19

    if-ge v11, v0, :cond_28d

    .line 89
    mul-int/lit8 v19, v11, 0x2

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-short v6, v0

    .line 90
    .local v6, a:S
    mul-int/lit8 v19, v11, 0x2

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-short v7, v0

    .line 91
    .local v7, b:S
    add-int/lit8 v19, v11, 0x1

    rem-int/lit8 v19, v19, 0x18

    mul-int/lit8 v19, v19, 0x2

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-short v8, v0

    .line 92
    .local v8, c:S
    add-int/lit8 v19, v11, 0x1

    rem-int/lit8 v19, v19, 0x18

    mul-int/lit8 v19, v19, 0x2

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-short v10, v0

    .line 93
    .local v10, d:S
    mul-int/lit8 v19, v11, 0x6

    add-int/lit8 v19, v19, 0x48

    add-int/lit8 v19, v19, 0x0

    aput-short v6, v12, v19

    .line 94
    mul-int/lit8 v19, v11, 0x6

    add-int/lit8 v19, v19, 0x48

    add-int/lit8 v19, v19, 0x1

    aput-short v7, v12, v19

    .line 95
    mul-int/lit8 v19, v11, 0x6

    add-int/lit8 v19, v19, 0x48

    add-int/lit8 v19, v19, 0x2

    aput-short v8, v12, v19

    .line 96
    mul-int/lit8 v19, v11, 0x6

    add-int/lit8 v19, v19, 0x48

    add-int/lit8 v19, v19, 0x3

    aput-short v8, v12, v19

    .line 97
    mul-int/lit8 v19, v11, 0x6

    add-int/lit8 v19, v19, 0x48

    add-int/lit8 v19, v19, 0x4

    aput-short v7, v12, v19

    .line 98
    mul-int/lit8 v19, v11, 0x6

    add-int/lit8 v19, v19, 0x48

    add-int/lit8 v19, v19, 0x5

    aput-short v10, v12, v19

    .line 88
    add-int/lit8 v11, v11, 0x1

    goto :goto_22c

    .line 101
    .end local v6           #a:S
    .end local v7           #b:S
    .end local v8           #c:S
    .end local v10           #d:S
    :cond_28d
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v12, v2}, Lcom/sec/android/app/twlauncher/RoundedRectSolid;->put([F[SI)V

    .line 102
    return-void
.end method
