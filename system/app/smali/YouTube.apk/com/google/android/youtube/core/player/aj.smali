.class public final Lcom/google/android/youtube/core/player/aj;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/core/player/ak;

.field private final b:Landroid/graphics/Rect;

.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Bitmap;

.field private final j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private final v:Landroid/graphics/Rect;

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/ak;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 73
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/ak;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/aj;->a:Lcom/google/android/youtube/core/player/ak;

    .line 76
    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/aj;->o:Z

    .line 77
    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/aj;->p:Z

    .line 78
    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/aj;->q:Z

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/aj;->b:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/aj;->c:Landroid/graphics/Rect;

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/aj;->d:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/aj;->e:Landroid/graphics/Paint;

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aj;->e:Landroid/graphics/Paint;

    const v1, -0x7f7f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/aj;->f:Landroid/graphics/Paint;

    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aj;->f:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/aj;->g:Landroid/graphics/Paint;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 91
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4160

    mul-float/2addr v1, v2

    .line 92
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/youtube/core/player/aj;->h:Landroid/graphics/Paint;

    .line 93
    iget-object v2, p0, Lcom/google/android/youtube/core/player/aj;->h:Landroid/graphics/Paint;

    const v3, -0x313132

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v2, p0, Lcom/google/android/youtube/core/player/aj;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 95
    iget-object v1, p0, Lcom/google/android/youtube/core/player/aj;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 97
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/core/player/aj;->v:Landroid/graphics/Rect;

    .line 98
    iget-object v1, p0, Lcom/google/android/youtube/core/player/aj;->h:Landroid/graphics/Paint;

    const-string v2, "0:00:00"

    const/4 v3, 0x0

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/android/youtube/core/player/aj;->v:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 100
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/aj;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200e8

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/player/aj;->i:Landroid/graphics/Bitmap;

    .line 101
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4120

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/youtube/core/player/aj;->j:I

    .line 103
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41f0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/youtube/core/player/aj;->w:I

    .line 104
    return-void
.end method

.method private static a(J)Ljava/lang/String;
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 296
    long-to-int v0, p0

    div-int/lit16 v0, v0, 0x3e8

    .line 297
    rem-int/lit8 v1, v0, 0x3c

    .line 298
    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    .line 299
    div-int/lit16 v0, v0, 0xe10

    .line 300
    if-lez v0, :cond_30

    .line 301
    const-string v3, "%d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    :goto_2f
    return-object v0

    :cond_30
    const-string v0, "%02d:%02d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f
.end method

.method private c()V
    .registers 7

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aj;->c:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/aj;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aj;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/aj;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 110
    iget v0, p0, Lcom/google/android/youtube/core/player/aj;->r:I

    if-lez v0, :cond_56

    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aj;->c:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/aj;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/youtube/core/player/aj;->b:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/google/android/youtube/core/player/aj;->u:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aj;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/aj;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/youtube/core/player/aj;->b:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    iget v4, p0, Lcom/google/android/youtube/core/player/aj;->s:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iget v4, p0, Lcom/google/android/youtube/core/player/aj;->r:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 119
    :goto_3f
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aj;->n:Z

    if-nez v0, :cond_52

    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aj;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/google/android/youtube/core/player/aj;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/youtube/core/player/aj;->k:I

    .line 122
    :cond_52
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/aj;->invalidate()V

    .line 123
    return-void

    .line 115
    :cond_56
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aj;->c:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/aj;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 116
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aj;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/aj;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_3f
.end method

.method private d()I
    .registers 5

    .prologue
    .line 201
    iget v0, p0, Lcom/google/android/youtube/core/player/aj;->k:I

    iget-object v1, p0, Lcom/google/android/youtube/core/player/aj;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/youtube/core/player/aj;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcom/google/android/youtube/core/player/aj;->r:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/youtube/core/player/aj;->b:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final a()I
    .registers 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aj;->v:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/google/android/youtube/core/player/aj;->w:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/youtube/core/player/aj;->j:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aj;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/aj;->c()V

    .line 142
    return-void
.end method

.method public final a(III)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    iget v0, p0, Lcom/google/android/youtube/core/player/aj;->s:I

    if-ne v0, p1, :cond_c

    iget v0, p0, Lcom/google/android/youtube/core/player/aj;->r:I

    if-ne v0, p2, :cond_c

    iget v0, p0, Lcom/google/android/youtube/core/player/aj;->u:I

    if-eq v0, p3, :cond_15

    .line 147
    :cond_c
    iput p1, p0, Lcom/google/android/youtube/core/player/aj;->s:I

    .line 148
    iput p2, p0, Lcom/google/android/youtube/core/player/aj;->r:I

    .line 149
    iput p3, p0, Lcom/google/android/youtube/core/player/aj;->u:I

    .line 150
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/aj;->c()V

    .line 152
    :cond_15
    return-void
.end method

.method public final a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/aj;->o:Z

    .line 156
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/aj;->requestLayout()V

    .line 157
    return-void
.end method

.method public final b()I
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aj;->v:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/google/android/youtube/core/player/aj;->w:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final b(I)V
    .registers 3
    .parameter

    .prologue
    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/core/player/aj;->u:I

    .line 165
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/aj;->c()V

    .line 166
    return-void
.end method

.method public final b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/aj;->p:Z

    .line 170
    if-nez p1, :cond_14

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aj;->n:Z

    if-eqz v0, :cond_14

    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aj;->a:Lcom/google/android/youtube/core/player/ak;

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/aj;->d()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ak;->b(I)V

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/aj;->n:Z

    .line 174
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/aj;->requestLayout()V

    .line 175
    return-void
.end method

.method public final c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/aj;->q:Z

    .line 179
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/aj;->c()V

    .line 180
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter

    .prologue
    .line 228
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 229
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 232
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aj;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/aj;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 233
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aj;->q:Z

    if-eqz v0, :cond_18

    .line 234
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aj;->c:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/aj;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 236
    :cond_18
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aj;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/aj;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 239
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aj;->p:Z

    if-eqz v0, :cond_2f

    .line 240
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aj;->i:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/google/android/youtube/core/player/aj;->k:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/youtube/core/player/aj;->l:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 242
    :cond_2f
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aj;->o:Z

    if-eqz v0, :cond_92

    .line 243
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aj;->n:Z

    if-eqz v0, :cond_93

    iget v0, p0, Lcom/google/android/youtube/core/player/aj;->t:I

    int-to-long v0, v0

    :goto_3a
    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/aj;->a(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/aj;->v:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/aj;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/aj;->v:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/google/android/youtube/core/player/aj;->w:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/youtube/core/player/aj;->j:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/aj;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 248
    iget v0, p0, Lcom/google/android/youtube/core/player/aj;->r:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/aj;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/aj;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/aj;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/youtube/core/player/aj;->v:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/aj;->v:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/google/android/youtube/core/player/aj;->w:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/youtube/core/player/aj;->j:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/aj;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 254
    :cond_92
    return-void

    .line 243
    :cond_93
    iget v0, p0, Lcom/google/android/youtube/core/player/aj;->s:I

    int-to-long v0, v0

    goto :goto_3a
.end method

.method protected final onLayout(ZIIII)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 207
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 208
    sub-int v1, p4, p2

    .line 209
    sub-int v2, p5, p3

    .line 210
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aj;->o:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aj;->p:Z

    if-nez v0, :cond_19

    .line 211
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aj;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 223
    :goto_15
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/aj;->c()V

    .line 224
    return-void

    .line 213
    :cond_19
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aj;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    .line 214
    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/aj;->o:Z

    if-eqz v3, :cond_2c

    .line 215
    iget-object v3, p0, Lcom/google/android/youtube/core/player/aj;->v:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v0, v3

    .line 217
    :cond_2c
    iget v3, p0, Lcom/google/android/youtube/core/player/aj;->j:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 218
    iget-object v3, p0, Lcom/google/android/youtube/core/player/aj;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/youtube/core/player/aj;->l:I

    .line 219
    iget-object v3, p0, Lcom/google/android/youtube/core/player/aj;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/aj;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/aj;->getPaddingRight()I

    move-result v5

    sub-int/2addr v1, v5

    sub-int v0, v1, v0

    add-int/lit8 v1, v2, 0x4

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_15
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 259
    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/aj;->p:Z

    if-eqz v2, :cond_17

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v3, v2

    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_b4

    :cond_17
    move v0, v1

    .line 292
    :goto_18
    return v0

    .line 265
    :pswitch_19
    int-to-float v4, v3

    int-to-float v2, v2

    iget v5, p0, Lcom/google/android/youtube/core/player/aj;->k:I

    iget-object v6, p0, Lcom/google/android/youtube/core/player/aj;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/google/android/youtube/core/player/aj;->l:I

    iget-object v7, p0, Lcom/google/android/youtube/core/player/aj;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/google/android/youtube/core/player/aj;->k:I

    iget v8, p0, Lcom/google/android/youtube/core/player/aj;->j:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpg-float v7, v7, v4

    if-gez v7, :cond_68

    iget v7, p0, Lcom/google/android/youtube/core/player/aj;->j:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_68

    iget v4, p0, Lcom/google/android/youtube/core/player/aj;->l:I

    iget v5, p0, Lcom/google/android/youtube/core/player/aj;->j:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_68

    iget v4, p0, Lcom/google/android/youtube/core/player/aj;->j:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_68

    move v2, v0

    :goto_52
    if-eqz v2, :cond_17

    .line 266
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/aj;->n:Z

    .line 267
    iget v1, p0, Lcom/google/android/youtube/core/player/aj;->k:I

    sub-int v1, v3, v1

    iput v1, p0, Lcom/google/android/youtube/core/player/aj;->m:I

    .line 268
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/aj;->d()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/player/aj;->t:I

    .line 269
    iget-object v1, p0, Lcom/google/android/youtube/core/player/aj;->a:Lcom/google/android/youtube/core/player/ak;

    invoke-interface {v1}, Lcom/google/android/youtube/core/player/ak;->j()V

    goto :goto_18

    :cond_68
    move v2, v1

    .line 265
    goto :goto_52

    .line 274
    :pswitch_6a
    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/aj;->n:Z

    if-eqz v2, :cond_17

    .line 275
    iget v1, p0, Lcom/google/android/youtube/core/player/aj;->m:I

    sub-int v1, v3, v1

    iput v1, p0, Lcom/google/android/youtube/core/player/aj;->k:I

    .line 276
    iget-object v1, p0, Lcom/google/android/youtube/core/player/aj;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/google/android/youtube/core/player/aj;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget-object v3, p0, Lcom/google/android/youtube/core/player/aj;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v1, v3, v1

    iget v3, p0, Lcom/google/android/youtube/core/player/aj;->k:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/player/aj;->k:I

    .line 277
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/aj;->d()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/player/aj;->t:I

    .line 278
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/aj;->invalidate()V

    goto/16 :goto_18

    .line 283
    :pswitch_9e
    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/aj;->n:Z

    if-eqz v2, :cond_17

    .line 284
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/aj;->n:Z

    .line 285
    iget v1, p0, Lcom/google/android/youtube/core/player/aj;->t:I

    iput v1, p0, Lcom/google/android/youtube/core/player/aj;->s:I

    .line 286
    iget-object v1, p0, Lcom/google/android/youtube/core/player/aj;->a:Lcom/google/android/youtube/core/player/ak;

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/aj;->d()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/youtube/core/player/ak;->b(I)V

    goto/16 :goto_18

    .line 263
    nop

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_19
        :pswitch_9e
        :pswitch_6a
    .end packed-switch
.end method
