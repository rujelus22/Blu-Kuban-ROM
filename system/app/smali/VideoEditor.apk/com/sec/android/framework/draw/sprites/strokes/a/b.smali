.class public final Lcom/sec/android/framework/draw/sprites/strokes/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/framework/draw/sprites/strokes/a/c;


# static fields
.field private static synthetic m:[I


# instance fields
.field private a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/RectF;

.field private e:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

.field private h:Lcom/sec/android/framework/draw/sprites/strokes/a/b/c;

.field private i:Lcom/sec/android/framework/draw/sprites/strokes/a/c/a;

.field private j:Lcom/sec/android/framework/draw/sprites/strokes/a/a/c;

.field private k:Landroid/graphics/Path;

.field private l:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic b()[I
    .registers 3

    .prologue
    .line 30
    sget-object v0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->m:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->values()[Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Blur:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_5a

    :goto_15
    :try_start_15
    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Brush:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_58

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Emboss:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_56

    :goto_27
    :try_start_27
    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Eraser:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_54

    :goto_30
    :try_start_30
    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Hightlighter:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_52

    :goto_39
    :try_start_39
    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Pencil:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_50

    :goto_42
    :try_start_42
    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Solid:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_4b} :catch_4e

    :goto_4b
    sput-object v0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->m:[I

    goto :goto_4

    :catch_4e
    move-exception v1

    goto :goto_4b

    :catch_50
    move-exception v1

    goto :goto_42

    :catch_52
    move-exception v1

    goto :goto_39

    :catch_54
    move-exception v1

    goto :goto_30

    :catch_56
    move-exception v1

    goto :goto_27

    :catch_58
    move-exception v1

    goto :goto_1e

    :catch_5a
    move-exception v1

    goto :goto_15
.end method


# virtual methods
.method public final a(IZ)Landroid/graphics/RectF;
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->l:Landroid/graphics/Path;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->k:Landroid/graphics/Path;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 94
    :cond_14
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 171
    :goto_19
    return-object v0

    .line 96
    :cond_1a
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 97
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 99
    if-nez p1, :cond_82

    .line 100
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    .line 102
    iget-object v4, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->e:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v4, v10, :cond_41

    .line 103
    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->h:Lcom/sec/android/framework/draw/sprites/strokes/a/b/c;

    invoke-interface {v1, v3}, Lcom/sec/android/framework/draw/sprites/strokes/a/b/c;->a(Z)Landroid/graphics/RectF;

    move-result-object v1

    .line 104
    iget-object v4, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->h:Lcom/sec/android/framework/draw/sprites/strokes/a/b/c;

    invoke-interface {v4}, Lcom/sec/android/framework/draw/sprites/strokes/a/b/c;->a()Landroid/graphics/Path;

    .line 107
    :cond_41
    iget-object v4, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->k:Landroid/graphics/Path;

    iget v5, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    invoke-virtual {v4, v5, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 108
    iget-object v4, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->j:Lcom/sec/android/framework/draw/sprites/strokes/a/a/c;

    iget-object v5, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    iget-object v6, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->l:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    invoke-interface {v4, v5, v6, v0}, Lcom/sec/android/framework/draw/sprites/strokes/a/a/c;->a(Lcom/sec/android/framework/draw/sprites/StrokeSprite;Landroid/graphics/Path;Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;)V

    move-object v4, v1

    .line 124
    :goto_5c
    if-eq p1, v9, :cond_e7

    .line 125
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    .line 127
    if-ne v5, v3, :cond_d0

    .line 128
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 129
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->k:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->l:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->g:Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    .line 131
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto :goto_19

    .line 110
    :cond_82
    if-ne p1, v9, :cond_a5

    .line 111
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 112
    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->j:Lcom/sec/android/framework/draw/sprites/strokes/a/a/c;

    iget-object v4, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    iget-object v5, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->l:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    invoke-interface {v1, v4, v5, v0}, Lcom/sec/android/framework/draw/sprites/strokes/a/a/c;->a(Lcom/sec/android/framework/draw/sprites/StrokeSprite;Landroid/graphics/Path;Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->h:Lcom/sec/android/framework/draw/sprites/strokes/a/b/c;

    invoke-interface {v0, v2}, Lcom/sec/android/framework/draw/sprites/strokes/a/b/c;->a(Z)Landroid/graphics/RectF;

    move-result-object v1

    move-object v4, v1

    goto :goto_5c

    .line 116
    :cond_a5
    if-eqz p2, :cond_b4

    .line 117
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->i:Lcom/sec/android/framework/draw/sprites/strokes/a/c/a;

    iget-object v4, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    iget-object v5, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->l:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->g:Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    invoke-interface {v0, v4, p1, v5, v6}, Lcom/sec/android/framework/draw/sprites/strokes/a/c/a;->a(Lcom/sec/android/framework/draw/sprites/StrokeSprite;ILandroid/graphics/Path;Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;)V

    move-object v4, v1

    goto :goto_5c

    .line 119
    :cond_b4
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->l:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->g:Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    iget v4, v4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerX:F

    iget-object v5, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->g:Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    iget v5, v5, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerY:F

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->l:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->g:Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    iget v4, v4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerX:F

    iget-object v5, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->g:Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    iget v5, v5, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerY:F

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_ce
    move-object v4, v1

    goto :goto_5c

    .line 134
    :cond_d0
    const/4 v0, 0x0

    move v1, p1

    .line 136
    :goto_d2
    if-lt v1, v5, :cond_172

    .line 142
    if-eqz v0, :cond_187

    .line 143
    new-instance v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    invoke-direct {v1, v0}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;-><init>(Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;)V

    iput-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->g:Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    .line 147
    :goto_dd
    add-int/lit8 v0, v5, -0x1

    move v1, v0

    :goto_e0
    if-ge v1, p1, :cond_1a2

    .line 152
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 155
    :cond_e7
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->k:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->l:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 157
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getType()Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v0

    sget-object v5, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Eraser:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-ne v0, v5, :cond_1b8

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v5, 0x4000

    mul-float/2addr v0, v5

    :goto_106
    iget-object v5, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->l:Landroid/graphics/Path;

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v5, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->c:Landroid/graphics/RectF;

    iget v6, v1, Landroid/graphics/RectF;->left:F

    iget v7, v1, Landroid/graphics/RectF;->top:F

    iget v8, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6, v7, v8, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->sort()V

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->c:Landroid/graphics/RectF;

    neg-float v5, v0

    neg-float v0, v0

    invoke-virtual {v1, v5, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 159
    if-ne p1, v9, :cond_136

    .line 160
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 162
    :cond_136
    invoke-virtual {v4}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_153

    .line 163
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 167
    iput-object v4, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->d:Landroid/graphics/RectF;

    .line 170
    :cond_153
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getType()Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v0

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Blur:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-eq v0, v1, :cond_1c0

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getType()Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v0

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Emboss:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-eq v0, v1, :cond_1c0

    move v0, v2

    .line 171
    :goto_168
    if-eqz v0, :cond_1c2

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    goto/16 :goto_19

    .line 137
    :cond_172
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->f:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    .line 139
    iget-object v6, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->l:Landroid/graphics/Path;

    iget v7, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerX:F

    iget v8, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerY:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d2

    .line 145
    :cond_187
    const-string v0, "DIOTEK/DRAW"

    const-string v1, "strokeLine (index : %d), (seriesCount : %d)"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_dd

    .line 148
    :cond_1a2
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->f:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    .line 149
    iget-object v5, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->l:Landroid/graphics/Path;

    iget v6, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerX:F

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerY:F

    invoke-virtual {v5, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 147
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto/16 :goto_e0

    .line 157
    :cond_1b8
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    goto/16 :goto_106

    :cond_1c0
    move v0, v3

    .line 170
    goto :goto_168

    .line 171
    :cond_1c2
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->c:Landroid/graphics/RectF;

    goto/16 :goto_19
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->l:Landroid/graphics/Path;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->k:Landroid/graphics/Path;

    if-nez v0, :cond_9

    .line 253
    :cond_8
    :goto_8
    return-void

    .line 249
    :cond_9
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 250
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->k:Landroid/graphics/Path;

    .line 251
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 252
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->l:Landroid/graphics/Path;

    goto :goto_8
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4080

    .line 175
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->l:Landroid/graphics/Path;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->k:Landroid/graphics/Path;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->b:Landroid/graphics/Paint;

    if-nez v0, :cond_f

    .line 228
    :cond_e
    :goto_e
    return-void

    .line 178
    :cond_f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 180
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isPartialRenderable()Z

    move-result v0

    if-eqz v0, :cond_d6

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isStrokeEnded()Z

    move-result v0

    if-nez v0, :cond_d6

    .line 181
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    if-ne v0, v1, :cond_41

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->g:Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    if-eqz v0, :cond_41

    .line 182
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->g:Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->g:Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    iget v1, v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    iget-object v2, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->g:Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    iget v2, v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->magnitude:F

    iget-object v3, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 183
    :cond_41
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4f

    .line 184
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->h:Lcom/sec/android/framework/draw/sprites/strokes/a/b/c;

    invoke-interface {v0, p1}, Lcom/sec/android/framework/draw/sprites/strokes/a/b/c;->a(Landroid/graphics/Canvas;)V

    .line 185
    :cond_4f
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->l:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 192
    :goto_56
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isStrokeEnded()Z

    move-result v0

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isTrackingPoints()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 193
    new-instance v2, Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->b:Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 195
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    const/16 v0, -0x100

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    const/high16 v0, 0x3f80

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 199
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->k:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 201
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 202
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 203
    const/high16 v0, -0x1

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_94
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_ec

    .line 208
    const v0, -0xffff01

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_fa

    .line 213
    const v0, -0xff0100

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_108

    .line 218
    const v0, -0xff01

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 221
    const/4 v0, 0x0

    move v1, v0

    :goto_c9
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_116

    .line 227
    :cond_d1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_e

    .line 187
    :cond_d6
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 188
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->h:Lcom/sec/android/framework/draw/sprites/strokes/a/b/c;

    invoke-interface {v0, p1}, Lcom/sec/android/framework/draw/sprites/strokes/a/b/c;->a(Landroid/graphics/Canvas;)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->k:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_56

    .line 205
    :cond_ec
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    .line 206
    iget v3, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerX:F

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerY:F

    invoke-virtual {p1, v3, v0, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_94

    .line 210
    :cond_fa
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    .line 211
    iget v3, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerX:F

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerY:F

    invoke-virtual {p1, v3, v0, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_a6

    .line 215
    :cond_108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    .line 216
    iget v3, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    invoke-virtual {p1, v3, v0, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_b8

    .line 222
    :cond_116
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    .line 223
    iget v3, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    invoke-virtual {p1, v3, v0, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 221
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c9
.end method

.method public final a(Lcom/sec/android/framework/draw/sprites/StrokeSprite;)V
    .registers 4
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    .line 50
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getPaint()Lcom/sec/android/framework/draw/sprites/strokes/f;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->b:Landroid/graphics/Paint;

    .line 52
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getStrokePoints()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->e:Ljava/util/Vector;

    .line 53
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getStrokeVectors()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->f:Ljava/util/Vector;

    .line 55
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->l:Landroid/graphics/Path;

    .line 56
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->k:Landroid/graphics/Path;

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->c:Landroid/graphics/RectF;

    .line 59
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    if-ne v0, v1, :cond_74

    new-instance v0, Lcom/sec/android/framework/draw/sprites/strokes/a/c/b;

    invoke-direct {v0}, Lcom/sec/android/framework/draw/sprites/strokes/a/c/b;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->i:Lcom/sec/android/framework/draw/sprites/strokes/a/c/a;

    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    if-ne v0, v1, :cond_80

    new-instance v0, Lcom/sec/android/framework/draw/sprites/strokes/a/a/a;

    invoke-direct {v0}, Lcom/sec/android/framework/draw/sprites/strokes/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->j:Lcom/sec/android/framework/draw/sprites/strokes/a/a/c;

    .line 60
    :cond_4b
    :goto_4b
    invoke-static {}, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->b()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getType()Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_94

    new-instance v0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/b;

    invoke-direct {v0}, Lcom/sec/android/framework/draw/sprites/strokes/a/b/b;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->h:Lcom/sec/android/framework/draw/sprites/strokes/a/b/c;

    :goto_65
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->h:Lcom/sec/android/framework/draw/sprites/strokes/a/b/c;

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-interface {v0, v1}, Lcom/sec/android/framework/draw/sprites/strokes/a/b/c;->a(Lcom/sec/android/framework/draw/sprites/StrokeSprite;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->d:Landroid/graphics/RectF;

    .line 61
    return-void

    .line 59
    :cond_74
    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    if-ne v0, v1, :cond_3a

    new-instance v0, Lcom/sec/android/framework/draw/sprites/strokes/a/c/c;

    invoke-direct {v0}, Lcom/sec/android/framework/draw/sprites/strokes/a/c/c;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->i:Lcom/sec/android/framework/draw/sprites/strokes/a/c/a;

    goto :goto_3a

    :cond_80
    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    if-ne v0, v1, :cond_4b

    new-instance v0, Lcom/sec/android/framework/draw/sprites/strokes/a/a/b;

    invoke-direct {v0}, Lcom/sec/android/framework/draw/sprites/strokes/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->j:Lcom/sec/android/framework/draw/sprites/strokes/a/a/c;

    goto :goto_4b

    .line 60
    :pswitch_8c
    new-instance v0, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;

    invoke-direct {v0}, Lcom/sec/android/framework/draw/sprites/strokes/a/b/a;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/b;->h:Lcom/sec/android/framework/draw/sprites/strokes/a/b/c;

    goto :goto_65

    :pswitch_data_94
    .packed-switch 0x3
        :pswitch_8c
    .end packed-switch
.end method
