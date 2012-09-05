.class public Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

.field private c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FFF)F
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p0

    mul-float/2addr v0, p1

    mul-float v1, p2, p0

    add-float/2addr v0, v1

    return v0
.end method

.method public static a(FFFFF)F
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x40c0

    const/high16 v6, 0x3f80

    const/high16 v5, 0x4040

    .line 38
    mul-float v0, p0, p0

    .line 39
    mul-float v1, v0, p0

    .line 40
    neg-float v2, v1

    mul-float v3, v5, v0

    add-float/2addr v2, v3

    mul-float v3, v5, p0

    sub-float/2addr v2, v3

    add-float/2addr v2, v6

    mul-float/2addr v2, p1

    mul-float v3, v5, v1

    mul-float v4, v7, v0

    sub-float/2addr v3, v4

    const/high16 v4, 0x4080

    add-float/2addr v3, v4

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 41
    const/high16 v3, -0x3fc0

    mul-float/2addr v3, v1

    mul-float/2addr v0, v5

    add-float/2addr v0, v3

    mul-float v3, v5, p0

    add-float/2addr v0, v3

    add-float/2addr v0, v6

    mul-float/2addr v0, p3

    .line 40
    add-float/2addr v0, v2

    .line 41
    mul-float/2addr v1, p4

    .line 40
    add-float/2addr v0, v1

    div-float/2addr v0, v7

    return v0
.end method

.method private a(FFFFFFFF)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a(FFFFFF)I

    move-result v1

    .line 84
    const/4 v0, 0x1

    :goto_c
    if-le v0, v1, :cond_f

    .line 98
    return-void

    .line 85
    :cond_f
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 87
    invoke-static {v2, p1, p5}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->b(FFF)F

    move-result v3

    .line 88
    invoke-static {v2, p2, p6}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->b(FFF)F

    move-result v4

    .line 89
    invoke-static {v2, p3, p7}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->b(FFF)F

    move-result v5

    .line 90
    invoke-static {v2, p4, p8}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->b(FFF)F

    move-result v2

    .line 92
    new-instance v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    invoke-direct {v6, v3, v4, v5}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;-><init>(FFF)V

    .line 93
    iput v2, v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->pressure:F

    .line 94
    sub-float v2, p5, p1

    sub-float v3, p6, p2

    const/4 v4, 0x1

    invoke-virtual {v6, v2, v3, v5, v4}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->calculateParallelPoints(FFFZ)V

    .line 95
    invoke-direct {p0, v6}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a(Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;)V

    .line 96
    iget-object v2, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v2, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method private a(Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;)V
    .registers 6
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 140
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    .line 141
    iget v1, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v2, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    iget v3, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->magnitude:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->calculateParallelPoints(FFF)V

    .line 143
    :cond_19
    return-void
.end method

.method private static b(FFF)F
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/high16 v4, 0x3ff0

    .line 31
    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sub-double v0, v4, v0

    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v0, v2

    .line 34
    float-to-double v2, p1

    sub-double/2addr v4, v0

    mul-double/2addr v2, v4

    float-to-double v4, p2

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method protected a(FFFFFF)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->b:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getType()Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v0

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Hightlighter:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-ne v0, v1, :cond_1a

    .line 147
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->b:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getInputMethod()Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    move-result-object v0

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;->Hand:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    if-ne v0, v1, :cond_17

    const/16 v0, 0x20

    .line 156
    :goto_16
    return v0

    .line 148
    :cond_17
    const/16 v0, 0x10

    .line 147
    goto :goto_16

    .line 149
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->b:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getInputMethod()Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    move-result-object v0

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;->Hand:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    if-ne v0, v1, :cond_42

    .line 150
    sub-float v0, p4, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 151
    sub-float v1, p5, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 152
    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 153
    const/high16 v1, 0x4080

    const/high16 v2, 0x4120

    mul-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_16

    .line 156
    :cond_42
    const/4 v0, 0x4

    goto :goto_16
.end method

.method protected a(FFFFFFFFFFFFFFFF)V
    .registers 27
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    move-object v3, p0

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    invoke-virtual/range {v3 .. v9}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a(FFFFFF)I

    move-result v4

    .line 123
    const/4 v3, 0x1

    :goto_11
    if-le v3, v4, :cond_14

    .line 136
    return-void

    .line 124
    :cond_14
    int-to-float v5, v3

    int-to-float v6, v4

    div-float/2addr v5, v6

    .line 125
    move/from16 v0, p9

    move/from16 v1, p13

    invoke-static {v5, p1, p5, v0, v1}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a(FFFFF)F

    move-result v6

    .line 126
    move/from16 v0, p6

    move/from16 v1, p10

    move/from16 v2, p14

    invoke-static {v5, p2, v0, v1, v2}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a(FFFFF)F

    move-result v7

    .line 127
    move/from16 v0, p7

    move/from16 v1, p11

    move/from16 v2, p15

    invoke-static {v5, p3, v0, v1, v2}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a(FFFFF)F

    move-result v8

    .line 128
    move/from16 v0, p8

    move/from16 v1, p12

    move/from16 v2, p16

    invoke-static {v5, p4, v0, v1, v2}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a(FFFFF)F

    move-result v5

    .line 130
    new-instance v9, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    invoke-direct {v9, v6, v7, v8}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;-><init>(FFF)V

    .line 131
    iput v5, v9, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->pressure:F

    .line 132
    sub-float v5, p9, p5

    sub-float v6, p10, p6

    const/4 v7, 0x1

    invoke-virtual {v9, v5, v6, v8, v7}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->calculateParallelPoints(FFFZ)V

    .line 133
    invoke-direct {p0, v9}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a(Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;)V

    .line 134
    iget-object v5, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v5, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_11
.end method

.method public final a(Lcom/sec/android/framework/draw/sprites/StrokeSprite;Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->b:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    .line 54
    iput-object p2, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->d:Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;

    .line 56
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getStrokeVectors()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a:Ljava/util/Vector;

    .line 57
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getStrokePoints()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->c:Ljava/util/Vector;

    .line 58
    return-void
.end method

.method public final a()Z
    .registers 19

    .prologue
    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    .line 163
    const/4 v1, 0x3

    if-le v3, v1, :cond_72

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->c:Ljava/util/Vector;

    add-int/lit8 v2, v3, -0x4

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->c:Ljava/util/Vector;

    add-int/lit8 v4, v3, -0x3

    invoke-virtual {v2, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->c:Ljava/util/Vector;

    add-int/lit8 v4, v3, -0x2

    invoke-virtual {v2, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->c:Ljava/util/Vector;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    .line 169
    iget v2, v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    iget v3, v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    iget v4, v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->c:F

    iget v5, v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->d:F

    iget v6, v9, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    iget v7, v9, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    iget v8, v9, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->c:F

    iget v9, v9, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->d:F

    iget v10, v13, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    .line 170
    iget v11, v13, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    iget v12, v13, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->c:F

    iget v13, v13, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->d:F

    move-object/from16 v0, v17

    iget v14, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    move-object/from16 v0, v17

    iget v15, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->c:F

    move/from16 v16, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->d:F

    move/from16 v17, v0

    move-object/from16 v1, p0

    .line 169
    invoke-virtual/range {v1 .. v17}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a(FFFFFFFFFFFFFFFF)V

    .line 172
    const/4 v1, 0x1

    .line 175
    :goto_71
    return v1

    :cond_72
    const/4 v1, 0x0

    goto :goto_71
.end method

.method public final b()V
    .registers 13

    .prologue
    const/4 v1, 0x1

    .line 179
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v11

    .line 181
    if-le v11, v1, :cond_1a

    .line 182
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    move v10, v1

    move-object v4, v0

    .line 184
    :goto_13
    if-lt v10, v11, :cond_1b

    .line 193
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->c:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_1a
    return-void

    .line 185
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->c:Ljava/util/Vector;

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    .line 187
    iget v1, v4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    iget v2, v4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    iget v3, v4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->c:F

    .line 188
    iget v4, v4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->d:F

    iget v5, v9, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    iget v6, v9, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    iget v7, v9, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->c:F

    iget v8, v9, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->d:F

    move-object v0, p0

    .line 187
    invoke-direct/range {v0 .. v8}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a(FFFFFFFF)V

    .line 184
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    move-object v4, v9

    goto :goto_13
.end method

.method public final c()V
    .registers 16

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->b:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getType()Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v0

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Hightlighter:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->b:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getType()Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v0

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Brush:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-eq v0, v1, :cond_15

    .line 280
    :cond_14
    :goto_14
    return-void

    .line 201
    :cond_15
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->b:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getType()Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v0

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Hightlighter:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-ne v0, v1, :cond_cb

    .line 202
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 203
    const/4 v0, 0x2

    if-lt v1, v0, :cond_14

    .line 204
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->c:Ljava/util/Vector;

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    .line 205
    iget-object v2, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->c:Ljava/util/Vector;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    .line 207
    iget v1, v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    iget v2, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 208
    iget v1, v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    iget v2, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 209
    iget v1, v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    iget v2, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    sub-float v2, v1, v2

    .line 210
    iget v1, v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    iget v3, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    sub-float v3, v1, v3

    .line 211
    const/high16 v1, 0x3f80

    iget v4, v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->c:F

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 216
    iget v4, v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    iget v5, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    sub-float v10, v4, v5

    .line 217
    iget v4, v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    iget v5, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    sub-float v11, v4, v5

    .line 218
    iget v4, v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    iget v5, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    mul-float/2addr v4, v5

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    iget v5, v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    mul-float/2addr v0, v5

    sub-float v12, v4, v0

    .line 220
    cmpl-float v0, v8, v9

    if-lez v0, :cond_b3

    .line 221
    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_b1

    neg-float v0, v1

    .line 222
    :goto_85
    iget v1, v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    add-float/2addr v1, v0

    .line 223
    mul-float v2, v10, v1

    add-float/2addr v2, v12

    div-float/2addr v2, v11

    move v7, v0

    .line 230
    :goto_8d
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->b:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    iget v3, v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->d:F

    iget-wide v4, v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->e:J

    const-wide/16 v13, 0x1

    add-long/2addr v4, v13

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->addPoint(FFFJ)Z

    .line 232
    cmpl-float v0, v8, v9

    if-lez v0, :cond_c4

    .line 233
    add-float/2addr v1, v7

    .line 234
    mul-float v0, v10, v1

    add-float/2addr v0, v12

    div-float v2, v0, v11

    .line 240
    :goto_a3
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->b:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    iget v3, v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->d:F

    iget-wide v4, v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->e:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->addPoint(FFFJ)Z

    goto/16 :goto_14

    :cond_b1
    move v0, v1

    .line 221
    goto :goto_85

    .line 225
    :cond_b3
    const/4 v0, 0x0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_b9

    neg-float v1, v1

    .line 226
    :cond_b9
    iget v0, v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    add-float v2, v0, v1

    .line 227
    mul-float v0, v11, v2

    sub-float/2addr v0, v12

    div-float/2addr v0, v10

    move v7, v1

    move v1, v0

    goto :goto_8d

    .line 236
    :cond_c4
    add-float/2addr v2, v7

    .line 237
    mul-float v0, v11, v2

    sub-float/2addr v0, v12

    div-float v1, v0, v10

    goto :goto_a3

    .line 243
    :cond_cb
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 245
    const/4 v0, 0x1

    if-le v1, v0, :cond_14

    .line 246
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a:Ljava/util/Vector;

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    .line 247
    iget-object v2, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a:Ljava/util/Vector;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    .line 250
    const/4 v2, 0x1

    move v9, v2

    move-object v10, v1

    :goto_eb
    const/4 v1, 0x3

    if-gt v9, v1, :cond_14

    .line 251
    iget v1, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v2, v10, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 252
    iget v2, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    iget v3, v10, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 257
    iget v3, v10, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    iget v4, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    sub-float/2addr v3, v4

    .line 258
    iget v4, v10, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v5, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    sub-float/2addr v4, v5

    .line 259
    iget v5, v10, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v6, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    mul-float/2addr v5, v6

    iget v6, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v7, v10, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    .line 261
    cmpl-float v1, v1, v2

    if-lez v1, :cond_16e

    .line 262
    const/high16 v1, 0x4000

    iget v2, v10, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->width:F

    iget v6, v10, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    sub-float v0, v6, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    .line 263
    iget v1, v10, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    add-float/2addr v1, v0

    .line 264
    mul-float v0, v3, v1

    add-float/2addr v0, v5

    div-float/2addr v0, v4

    .line 271
    :goto_135
    new-instance v11, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    new-instance v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    invoke-direct {v2, v1, v0}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>(FF)V

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->d:Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->a(FFF)F

    move-result v0

    invoke-direct {v11, v2, v0}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;-><init>(Landroid/graphics/PointF;F)V

    .line 272
    iget v0, v10, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->pressure:F

    const/high16 v1, 0x3f80

    add-int/lit8 v2, v9, 0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, v11, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->pressure:F

    .line 273
    iget v1, v10, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v2, v10, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    iget v3, v10, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->width:F

    iget v4, v10, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->pressure:F

    iget v5, v11, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v6, v11, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    iget v7, v11, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->width:F

    iget v8, v11, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->pressure:F

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a(FFFFFFFF)V

    .line 250
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    move-object v0, v10

    move-object v10, v11

    goto/16 :goto_eb

    .line 266
    :cond_16e
    const/high16 v1, 0x4000

    iget v2, v10, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->width:F

    iget v6, v10, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    sub-float v0, v6, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    .line 267
    iget v1, v10, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    add-float/2addr v0, v1

    .line 268
    mul-float v1, v4, v0

    sub-float/2addr v1, v5

    div-float/2addr v1, v3

    goto :goto_135
.end method
