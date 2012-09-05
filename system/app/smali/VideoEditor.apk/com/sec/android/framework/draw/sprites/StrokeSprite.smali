.class public final Lcom/sec/android/framework/draw/sprites/StrokeSprite;
.super Lcom/sec/android/framework/draw/sprites/AbstractSprite;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;,
        Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;,
        Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;
    }
.end annotation


# static fields
.field private static final t:[Lcom/sec/android/framework/draw/sprites/strokes/f;


# instance fields
.field private a:Lcom/sec/android/framework/draw/sprites/strokes/a/c;

.field private b:Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;

.field private e:Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;

.field private f:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:F

.field public isStrokeEnded:Z

.field private j:F

.field private k:F

.field private l:Lcom/sec/android/framework/draw/sprites/strokes/f;

.field private m:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

.field private n:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

.field private o:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Z

.field private u:[F

.field private v:[F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 120
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sec/android/framework/draw/sprites/strokes/f;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/framework/draw/sprites/strokes/g;

    invoke-direct {v2}, Lcom/sec/android/framework/draw/sprites/strokes/g;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/framework/draw/sprites/strokes/c;

    invoke-direct {v2}, Lcom/sec/android/framework/draw/sprites/strokes/c;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 121
    new-instance v2, Lcom/sec/android/framework/draw/sprites/strokes/b;

    invoke-direct {v2}, Lcom/sec/android/framework/draw/sprites/strokes/b;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/framework/draw/sprites/strokes/d;

    invoke-direct {v2}, Lcom/sec/android/framework/draw/sprites/strokes/d;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/sec/android/framework/draw/sprites/strokes/a;

    invoke-direct {v2}, Lcom/sec/android/framework/draw/sprites/strokes/a;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/sec/android/framework/draw/sprites/strokes/h;

    invoke-direct {v2}, Lcom/sec/android/framework/draw/sprites/strokes/h;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 122
    new-instance v2, Lcom/sec/android/framework/draw/sprites/strokes/e;

    invoke-direct {v2}, Lcom/sec/android/framework/draw/sprites/strokes/e;-><init>()V

    aput-object v2, v0, v1

    .line 120
    sput-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->t:[Lcom/sec/android/framework/draw/sprites/strokes/f;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/framework/draw/sprites/AbstractSprite;-><init>()V

    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 465
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->r:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 466
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->r:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 469
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->r:Ljava/lang/String;

    .line 473
    :cond_17
    return-void
.end method

.method private a(Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;F)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 366
    iget v0, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->x:F

    iput v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->i:F

    .line 367
    iget v0, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->y:F

    iput v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->j:F

    .line 369
    iput p2, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->k:F

    .line 370
    return-void
.end method


# virtual methods
.method public final addPoint(FFFJ)Z
    .registers 24
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->q:Z

    if-eqz v2, :cond_f

    .line 165
    const-string v2, "DIOTEK/DRAW"

    const-string v3, "addPoint : already disposed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v2, 0x0

    .line 222
    :goto_e
    return v2

    .line 169
    :cond_f
    const/high16 v2, 0x437f

    div-float v4, p3, v2

    .line 170
    new-instance v3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>(FF)V

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->m:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    sget-object v5, Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;->Hand:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    if-ne v2, v5, :cond_2b

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->v:[F

    const/4 v4, 0x1

    aget v4, v2, v4

    .line 175
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->f:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    .line 177
    if-nez v5, :cond_6a

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->e:Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v4}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->a(FFF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->k:F

    .line 179
    new-instance v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->k:F

    move-wide/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;-><init>(Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;FFJ)V

    .line 180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->f:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 181
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->k:F

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->a(Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;F)V

    .line 182
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->h:I

    .line 183
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isStrokeEnded:Z

    .line 222
    :cond_68
    const/4 v2, 0x0

    goto :goto_e

    .line 185
    :cond_6a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->i:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 186
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->j:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->f:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->e:Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;

    invoke-virtual {v2, v12, v13, v4}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->a(FFF)F

    move-result v11

    .line 190
    const/4 v2, 0x0

    .line 192
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->o:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    sget-object v7, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Hightlighter:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-ne v6, v7, :cond_9c

    .line 193
    const/4 v2, 0x2

    if-ne v5, v2, :cond_113

    .line 194
    const/high16 v2, 0x4000

    mul-float/2addr v2, v11

    .line 199
    :cond_9c
    :goto_9c
    const/high16 v6, 0x3f80

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 201
    cmpl-float v6, v12, v2

    if-gez v6, :cond_aa

    cmpl-float v2, v13, v2

    if-ltz v2, :cond_68

    .line 202
    :cond_aa
    const/4 v2, 0x1

    if-ne v5, v2, :cond_e1

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->f:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    .line 204
    iget v5, v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    sub-float v7, v5, p1

    .line 205
    iget v5, v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    sub-float v8, v5, p2

    .line 206
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->f:Ljava/util/Vector;

    const/4 v15, 0x0

    new-instance v5, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    new-instance v6, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    iget v9, v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    add-float/2addr v7, v9

    iget v9, v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    add-float/2addr v8, v9

    invoke-direct {v6, v7, v8}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>(FF)V

    iget v7, v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->d:F

    iget v8, v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->c:F

    .line 207
    iget-wide v9, v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->e:J

    const-wide/16 v16, 0x1

    sub-long v9, v9, v16

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;-><init>(Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;FFJ)V

    .line 206
    invoke-virtual {v14, v15, v5}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 210
    :cond_e1
    mul-float v2, v12, v12

    mul-float v5, v13, v13

    add-float/2addr v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v2, v5

    .line 212
    const/high16 v5, 0x3fc0

    cmpg-float v2, v2, v5

    if-gez v2, :cond_115

    .line 213
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->k:F

    .line 215
    :goto_f6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->f:Ljava/util/Vector;

    new-instance v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    move-wide/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;-><init>(Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;FFJ)V

    invoke-virtual {v8, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->b:Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;

    invoke-virtual {v2}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a()Z

    move-result v2

    .line 217
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->a(Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;F)V

    goto/16 :goto_e

    :cond_113
    move v2, v11

    .line 196
    goto :goto_9c

    :cond_115
    move v5, v11

    goto :goto_f6
.end method

.method public final clearVectors(Ljava/util/Vector;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->setSize(I)V

    .line 305
    invoke-virtual {p1}, Ljava/util/Vector;->trimToSize()V

    .line 306
    return-void
.end method

.method public final computeBounds()Landroid/graphics/RectF;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->d:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final dispose()V
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->f:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->clearVectors(Ljava/util/Vector;)V

    .line 295
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->g:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->clearVectors(Ljava/util/Vector;)V

    .line 297
    invoke-direct {p0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->a()V

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->q:Z

    .line 300
    return-void
.end method

.method public final enableTrackingPoints(Z)V
    .registers 2
    .parameter

    .prologue
    .line 408
    iput-boolean p1, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->p:Z

    .line 409
    return-void
.end method

.method public final endStroke()Landroid/graphics/RectF;
    .registers 13

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 309
    new-instance v8, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v7, :cond_45

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->o:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Hightlighter:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-ne v0, v1, :cond_7d

    iget v0, v4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->c:F

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    move v2, v0

    :goto_29
    iget-object v9, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->f:Ljava/util/Vector;

    new-instance v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    new-instance v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    iget v3, v4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    add-float/2addr v2, v3

    iget v3, v4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    invoke-direct {v1, v2, v3}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>(FF)V

    const/4 v2, 0x0

    iget v3, v4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->c:F

    iget-wide v4, v4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->e:J

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;-><init>(Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;FFJ)V

    invoke-virtual {v9, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_45
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->b:Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->b()V

    :goto_4a
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->o:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Hightlighter:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-eq v0, v1, :cond_89

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_87

    move v0, v6

    :goto_5a
    invoke-virtual {p0, v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->strokeLineSegment(Z)Landroid/graphics/RectF;

    move-result-object v0

    :goto_5e
    invoke-direct {v8, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 310
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->a:Lcom/sec/android/framework/draw/sprites/strokes/a/c;

    const/4 v1, -0x1

    invoke-interface {v0, v1, v6}, Lcom/sec/android/framework/draw/sprites/strokes/a/c;->a(IZ)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 312
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->a:Lcom/sec/android/framework/draw/sprites/strokes/a/c;

    instance-of v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;

    if-eqz v0, :cond_7c

    invoke-virtual {p0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isTrackingPoints()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 313
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->g:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->clearVectors(Ljava/util/Vector;)V

    .line 315
    :cond_7c
    return-object v8

    .line 309
    :cond_7d
    const/high16 v0, 0x3f80

    move v2, v0

    goto :goto_29

    :cond_81
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->b:Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->c()V

    goto :goto_4a

    :cond_87
    move v0, v7

    goto :goto_5a

    :cond_89
    invoke-virtual {p0, v7}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->strokeLineSegment(Z)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_5e
.end method

.method public final getInputMethod()Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->m:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    return-object v0
.end method

.method public final getPaint()Lcom/sec/android/framework/draw/sprites/strokes/f;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->l:Lcom/sec/android/framework/draw/sprites/strokes/f;

    return-object v0
.end method

.method public final getPressureParameters()[F
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->v:[F

    return-object v0
.end method

.method public final getPreviousPointSize()F
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->k:F

    return v0
.end method

.method public final getSpeedParameters()[F
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->u:[F

    return-object v0
.end method

.method public final getStrokePoints()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->f:Ljava/util/Vector;

    return-object v0
.end method

.method public final getStrokeVectors()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->g:Ljava/util/Vector;

    return-object v0
.end method

.method public final getStroker()Lcom/sec/android/framework/draw/sprites/strokes/a/c;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->a:Lcom/sec/android/framework/draw/sprites/strokes/a/c;

    return-object v0
.end method

.method public final getThicknessParameter()Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->n:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    return-object v0
.end method

.method public final getType()Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->o:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    return-object v0
.end method

.method public final initializePathAttributes()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 319
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->f:Ljava/util/Vector;

    .line 320
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->g:Ljava/util/Vector;

    .line 321
    iput-boolean v1, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->q:Z

    .line 322
    iput-boolean v1, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->s:Z

    .line 323
    return-void
.end method

.method public final initializeStrokeAttributes(Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;FI)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 327
    sget-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Eraser:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Hightlighter:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-ne p1, v0, :cond_a

    .line 328
    :cond_8
    sget-object p2, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->Constant:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    .line 330
    :cond_a
    new-instance v0, Lcom/sec/android/framework/draw/sprites/strokes/f;

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->t:[Lcom/sec/android/framework/draw/sprites/strokes/f;

    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/sec/android/framework/draw/sprites/strokes/f;-><init>(Lcom/sec/android/framework/draw/sprites/strokes/f;)V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->l:Lcom/sec/android/framework/draw/sprites/strokes/f;

    .line 331
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->l:Lcom/sec/android/framework/draw/sprites/strokes/f;

    const/high16 v1, 0x3f00

    mul-float/2addr v1, p4

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/sprites/strokes/f;->setStrokeWidth(F)V

    .line 332
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->l:Lcom/sec/android/framework/draw/sprites/strokes/f;

    invoke-virtual {v0, p5}, Lcom/sec/android/framework/draw/sprites/strokes/f;->setColor(I)V

    .line 334
    sget-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Hightlighter:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-eq p1, v0, :cond_2e

    sget-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Brush:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-ne p1, v0, :cond_6a

    .line 335
    :cond_2e
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->l:Lcom/sec/android/framework/draw/sprites/strokes/f;

    invoke-static {p5}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/sprites/strokes/f;->setAlpha(I)V

    .line 339
    :goto_37
    iput-object p3, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->m:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    .line 340
    iput-object p2, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->n:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    .line 341
    iput-object p1, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->o:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    .line 343
    new-instance v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;

    invoke-direct {v0}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->e:Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;

    .line 344
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->e:Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;

    invoke-virtual {v0, p0}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->a(Lcom/sec/android/framework/draw/sprites/StrokeSprite;)V

    .line 346
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->o:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Pencil:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-ne v0, v1, :cond_72

    new-instance v0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;

    invoke-direct {v0}, Lcom/sec/android/framework/draw/sprites/strokes/a/a;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->a:Lcom/sec/android/framework/draw/sprites/strokes/a/c;

    new-instance v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/a;

    invoke-direct {v0}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/a;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->b:Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;

    :goto_5d
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->b:Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->e:Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;->a(Lcom/sec/android/framework/draw/sprites/StrokeSprite;Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;)V

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->a:Lcom/sec/android/framework/draw/sprites/strokes/a/c;

    invoke-interface {v0, p0}, Lcom/sec/android/framework/draw/sprites/strokes/a/c;->a(Lcom/sec/android/framework/draw/sprites/StrokeSprite;)V

    .line 347
    return-void

    .line 337
    :cond_6a
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->l:Lcom/sec/android/framework/draw/sprites/strokes/f;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/sprites/strokes/f;->setAlpha(I)V

    goto :goto_37

    .line 346
    :cond_72
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->o:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Brush:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-ne v0, v1, :cond_87

    new-instance v0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;

    invoke-direct {v0}, Lcom/sec/android/framework/draw/sprites/strokes/a/d;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->a:Lcom/sec/android/framework/draw/sprites/strokes/a/c;

    new-instance v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/c;

    invoke-direct {v0}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/c;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->b:Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;

    goto :goto_5d

    :cond_87
    new-instance v0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;

    invoke-direct {v0}, Lcom/sec/android/framework/draw/sprites/strokes/a/b;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->a:Lcom/sec/android/framework/draw/sprites/strokes/a/c;

    new-instance v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;

    invoke-direct {v0}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->b:Lcom/sec/android/framework/draw/sprites/strokes/geometry/a/b;

    goto :goto_5d
.end method

.method public final isPartialRenderable()Z
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->l:Lcom/sec/android/framework/draw/sprites/strokes/f;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/strokes/f;->a()Z

    move-result v0

    return v0
.end method

.method public final isStrokeCached()Z
    .registers 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->r:Ljava/lang/String;

    if-eqz v0, :cond_13

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->r:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final isStrokeEnded()Z
    .registers 2

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isStrokeEnded:Z

    return v0
.end method

.method public final isStrokeFixed()Z
    .registers 2

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->s:Z

    return v0
.end method

.method public final isStrokeTexture()Z
    .registers 3

    .prologue
    .line 476
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->o:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Brush:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->o:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Pencil:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public final isTrackingPoints()Z
    .registers 2

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->p:Z

    return v0
.end method

.method public final markStrokeEnded(Z)V
    .registers 2
    .parameter

    .prologue
    .line 432
    iput-boolean p1, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isStrokeEnded:Z

    .line 433
    return-void
.end method

.method public final render(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 226
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isStrokeCached()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 228
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 229
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 230
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 232
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 234
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 254
    :goto_34
    return-void

    .line 245
    :cond_35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 246
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->a:Lcom/sec/android/framework/draw/sprites/strokes/a/c;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/framework/draw/sprites/strokes/a/c;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto :goto_34
.end method

.method public final setPressureParameters([F)V
    .registers 2
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->v:[F

    .line 421
    return-void
.end method

.method public final setSpeedParameters([F)V
    .registers 2
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->u:[F

    .line 413
    return-void
.end method

.method public final setStrokeCache(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 440
    if-nez p1, :cond_5

    .line 441
    invoke-direct {p0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->a()V

    .line 443
    :cond_5
    iput-object p1, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->r:Ljava/lang/String;

    .line 444
    return-void
.end method

.method public final setStrokeFixed(Z)V
    .registers 3
    .parameter

    .prologue
    .line 455
    if-eqz p1, :cond_a

    .line 456
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->a:Lcom/sec/android/framework/draw/sprites/strokes/a/c;

    invoke-interface {v0}, Lcom/sec/android/framework/draw/sprites/strokes/a/c;->a()V

    .line 457
    invoke-direct {p0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->a()V

    .line 460
    :cond_a
    if-eqz p1, :cond_13

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p0, v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->setVisible(Z)V

    .line 461
    iput-boolean p1, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->s:Z

    .line 462
    return-void

    .line 460
    :cond_13
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public final strokeLineSegment(Z)Landroid/graphics/RectF;
    .registers 4
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 258
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 266
    :goto_d
    return-object v0

    .line 260
    :cond_e
    iget v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->h:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 261
    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->a:Lcom/sec/android/framework/draw/sprites/strokes/a/c;

    invoke-interface {v1, v0, p1}, Lcom/sec/android/framework/draw/sprites/strokes/a/c;->a(IZ)Landroid/graphics/RectF;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->g:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iput v1, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->h:I

    .line 264
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->computeBounds()Landroid/graphics/RectF;

    goto :goto_d
.end method

.method public final toXML()Ljava/lang/StringBuilder;
    .registers 12

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 374
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "<point>\n"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "<pressure>\n"

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 379
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getType()Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v1

    sget-object v4, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Hightlighter:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-ne v1, v4, :cond_de

    .line 380
    add-int/lit8 v0, v0, -0x2

    move v1, v0

    :goto_22
    move v4, v2

    .line 382
    :goto_23
    if-lt v4, v1, :cond_99

    .line 390
    const-string v0, "</point>\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string v0, "</pressure>\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    const-string v4, "<stroke type=\"%s\" color=\"#%08x\" parameter=\"%s\" input=\"%s\" width=\"%s\" visible=\"%d\" fixed=\"%d\">\n"

    const/4 v0, 0x7

    new-array v7, v0, [Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->o:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->l:Lcom/sec/android/framework/draw/sprites/strokes/f;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/strokes/f;->getColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->n:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v10

    const/4 v0, 0x3

    .line 398
    iget-object v8, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->m:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    invoke-virtual {v8}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v0, 0x4

    iget-object v8, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->l:Lcom/sec/android/framework/draw/sprites/strokes/f;

    invoke-virtual {v8}, Lcom/sec/android/framework/draw/sprites/strokes/f;->getStrokeWidth()F

    move-result v8

    const/high16 v9, 0x4000

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v8, 0x5

    .line 399
    iget-boolean v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->c:Z

    if-eqz v0, :cond_da

    move v0, v2

    :goto_75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x6

    iget-boolean v8, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->s:Z

    if-eqz v8, :cond_dc

    :goto_80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v0

    .line 396
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 402
    const-string v0, "</stroke>\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    return-object v1

    .line 383
    :cond_99
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->f:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    .line 385
    const-string v7, "%s %s, "

    new-array v8, v10, [Ljava/lang/Object;

    iget v9, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 386
    iget v9, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    .line 385
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string v7, "%s, "

    new-array v8, v2, [Ljava/lang/Object;

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->d:F

    const/high16 v9, 0x437f

    mul-float/2addr v0, v9

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_23

    :cond_da
    move v0, v3

    .line 399
    goto :goto_75

    :cond_dc
    move v2, v3

    goto :goto_80

    :cond_de
    move v1, v0

    goto/16 :goto_22
.end method
