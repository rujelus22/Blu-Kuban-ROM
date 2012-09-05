.class public final Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/framework/draw/sprites/strokes/a/b/c;


# static fields
.field private static g:I


# instance fields
.field private a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

.field private b:Landroid/graphics/Path;

.field private c:Landroid/graphics/Path;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/16 v0, 0xff

    sput v0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->g:I

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/graphics/Path;FLcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x3f80

    .line 158
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getPaint()Lcom/sec/android/framework/draw/sprites/strokes/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/strokes/f;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x4120

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 160
    iget v0, p3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerX:F

    iget v2, p3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerY:F

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 162
    const/4 v0, 0x1

    :goto_18
    if-le v0, v1, :cond_25

    .line 178
    iget v0, p3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerX:F

    iget v1, p3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 179
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 180
    return-void

    .line 163
    :cond_25
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 165
    iget v3, p3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerX:F

    iget v4, p3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerX:F

    invoke-static {v2, v3, v4}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a(FFF)F

    move-result v3

    .line 166
    iget v4, p3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerY:F

    iget v5, p3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerY:F

    invoke-static {v2, v4, v5}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a(FFF)F

    move-result v4

    .line 167
    iget v5, p4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerX:F

    iget v6, p4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerX:F

    invoke-static {v2, v5, v6}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a(FFF)F

    move-result v5

    .line 168
    iget v6, p4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerY:F

    iget v7, p4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerY:F

    invoke-static {v2, v6, v7}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a(FFF)F

    move-result v2

    .line 169
    iget-object v6, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->f:Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;

    invoke-virtual {v6}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;->a()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v6, p2

    new-instance v7, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    invoke-direct {v7, v3, v4}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>(FF)V

    new-instance v8, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    invoke-direct {v8, v5, v2}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>(FF)V

    invoke-static {v7, v8}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->calculateDistance(Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;)F

    move-result v7

    add-float/2addr v6, v7

    .line 171
    new-instance v7, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    invoke-direct {v7, v3, v4, v9}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;-><init>(FFF)V

    .line 172
    new-instance v3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    invoke-direct {v3, v5, v2, v9}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;-><init>(FFF)V

    .line 173
    invoke-virtual {v3, v7, v6}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->calculateDirectionPoint(Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;F)Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    move-result-object v2

    .line 175
    iget v3, v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->x:F

    iget v2, v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->y:F

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method private static a(ZILandroid/graphics/Path;Landroid/graphics/Paint;Ljava/util/Vector;I)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 111
    if-eqz p0, :cond_71

    .line 116
    add-int/lit8 v0, p1, -0x1

    move v1, v0

    move v2, v3

    .line 122
    :goto_7
    const-string v0, "DIOTEK/DRAW"

    const-string v4, "%b, %d, %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    .line 124
    iget v3, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    invoke-virtual {p2, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    move v3, v2

    .line 126
    :goto_37
    if-le v3, v1, :cond_7c

    move v3, v1

    .line 131
    :goto_3a
    if-ge v3, v2, :cond_8d

    .line 136
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 138
    invoke-virtual {p4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    .line 139
    invoke-virtual {p4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    .line 141
    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const v1, 0xffffff

    and-int v6, v0, v1

    .line 144
    if-eqz p0, :cond_9e

    .line 145
    sget v0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->g:I

    shl-int/lit8 v0, v0, 0x18

    or-int v5, v0, v6

    .line 152
    :goto_5e
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v2, v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    iget v3, v4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v4, v4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    .line 153
    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 152
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 154
    return-void

    .line 118
    :cond_71
    add-int/lit8 v0, p5, -0x1

    .line 119
    sub-int v1, v0, p1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v1

    move v1, v0

    goto :goto_7

    .line 127
    :cond_7c
    invoke-virtual {p4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    .line 128
    iget v4, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerX:F

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerY:F

    invoke-virtual {p2, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 126
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_37

    .line 132
    :cond_8d
    invoke-virtual {p4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    .line 133
    iget v4, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerX:F

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerY:F

    invoke-virtual {p2, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 131
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_3a

    .line 149
    :cond_9e
    sget v0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->g:I

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v6

    move v5, v6

    move v6, v0

    goto :goto_5e
.end method


# virtual methods
.method public final a()Landroid/graphics/Path;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->b:Landroid/graphics/Path;

    return-object v0
.end method

.method public final a(Z)Landroid/graphics/RectF;
    .registers 16
    .parameter

    .prologue
    const v13, 0x3dcccccd

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 56
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getInputMethod()Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    move-result-object v0

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;->Hand:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    if-ne v0, v1, :cond_31

    const/16 v7, 0x10

    .line 58
    :goto_11
    if-eqz p1, :cond_34

    iget-object v2, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->b:Landroid/graphics/Path;

    .line 59
    :goto_15
    if-eqz p1, :cond_37

    iget-object v3, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->d:Landroid/graphics/Paint;

    .line 60
    :goto_19
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getStrokeVectors()Ljava/util/Vector;

    move-result-object v4

    .line 61
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getStrokePoints()Ljava/util/Vector;

    move-result-object v1

    .line 63
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    .line 64
    if-ge v5, v7, :cond_3a

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 105
    :goto_30
    return-object v0

    .line 56
    :cond_31
    const/16 v7, 0x8

    goto :goto_11

    .line 58
    :cond_34
    iget-object v2, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->c:Landroid/graphics/Path;

    goto :goto_15

    .line 59
    :cond_37
    iget-object v3, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->e:Landroid/graphics/Paint;

    goto :goto_19

    .line 67
    :cond_3a
    if-eqz p1, :cond_be

    .line 71
    invoke-virtual {v1, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    .line 72
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    move-object v6, v1

    .line 79
    :goto_4a
    iget v1, v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    iget v10, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    sub-float/2addr v1, v10

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 80
    iget v1, v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    iget v11, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    sub-float/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 81
    iget v1, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->c:F

    const/high16 v12, 0x3f00

    mul-float/2addr v12, v1

    .line 82
    cmpl-float v1, v10, v11

    if-lez v1, :cond_d5

    move v1, v9

    .line 83
    :goto_66
    if-eqz v1, :cond_d7

    .line 84
    cmpl-float v1, v10, v12

    if-lez v1, :cond_ec

    .line 85
    int-to-float v1, v7

    iget v7, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->c:F

    div-float/2addr v7, v10

    invoke-static {v13, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float/2addr v1, v7

    float-to-int v1, v1

    .line 91
    :goto_76
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 92
    iget v7, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    iget v10, v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    iget v6, v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    invoke-static {v7, v0, v10, v6}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->calculateDirection(FFFF)Z

    .line 93
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 95
    if-eqz p1, :cond_e6

    move v0, v8

    :goto_8b
    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    .line 96
    if-eqz p1, :cond_e9

    move v6, v9

    :goto_94
    invoke-virtual {v4, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    .line 97
    iget-object v7, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v7}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getPaint()Lcom/sec/android/framework/draw/sprites/strokes/f;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/framework/draw/sprites/strokes/f;->getStrokeWidth()F

    move-result v7

    .line 99
    const/high16 v9, 0x4060

    const/high16 v10, 0x4080

    div-float/2addr v7, v10

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-direct {p0, v2, v7, v0, v6}, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->a(Landroid/graphics/Path;FLcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;)V

    move v0, p1

    .line 100
    invoke-static/range {v0 .. v5}, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->a(ZILandroid/graphics/Path;Landroid/graphics/Paint;Ljava/util/Vector;I)V

    .line 102
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 103
    invoke-virtual {v2, v0, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto/16 :goto_30

    .line 74
    :cond_be
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    .line 75
    add-int/lit8 v0, v6, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    .line 76
    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    move-object v6, v1

    goto/16 :goto_4a

    :cond_d5
    move v1, v8

    .line 82
    goto :goto_66

    .line 87
    :cond_d7
    cmpl-float v1, v11, v12

    if-lez v1, :cond_ec

    .line 88
    int-to-float v1, v7

    iget v7, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->c:F

    div-float/2addr v7, v11

    invoke-static {v13, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float/2addr v1, v7

    float-to-int v1, v1

    goto :goto_76

    .line 95
    :cond_e6
    add-int/lit8 v0, v5, -0x1

    goto :goto_8b

    .line 96
    :cond_e9
    add-int/lit8 v6, v5, -0x2

    goto :goto_94

    :cond_ec
    move v1, v7

    goto :goto_76
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 186
    return-void
.end method

.method public final a(Lcom/sec/android/framework/draw/sprites/StrokeSprite;)V
    .registers 5
    .parameter

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getPaint()Lcom/sec/android/framework/draw/sprites/strokes/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/strokes/f;->getAlpha()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0xff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->g:I

    .line 37
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getPaint()Lcom/sec/android/framework/draw/sprites/strokes/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/strokes/f;->getColor()I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, -0x100

    or-int/2addr v0, v1

    .line 38
    new-instance v1, Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getPaint()Lcom/sec/android/framework/draw/sprites/strokes/f;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->d:Landroid/graphics/Paint;

    .line 41
    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    new-instance v1, Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getPaint()Lcom/sec/android/framework/draw/sprites/strokes/f;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->e:Landroid/graphics/Paint;

    .line 45
    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iput-object p1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    .line 49
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->b:Landroid/graphics/Path;

    .line 50
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->c:Landroid/graphics/Path;

    .line 51
    new-instance v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;-><init>(B)V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;->f:Lcom/sec/android/framework/draw/sprites/strokes/geometry/a;

    .line 52
    return-void
.end method
