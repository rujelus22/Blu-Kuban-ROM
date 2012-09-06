.class public Lcom/google/android/youtube/core/player/TimeBar;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I


# instance fields
.field private final d:Lcom/google/android/youtube/core/player/at;

.field private final e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/Rect;

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/Paint;

.field private final l:Landroid/graphics/drawable/StateListDrawable;

.field private final m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Ljava/lang/String;

.field private final z:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-array v0, v3, [I

    const v1, 0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/youtube/core/player/TimeBar;->a:[I

    .line 37
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/youtube/core/player/TimeBar;->b:[I

    .line 38
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/youtube/core/player/TimeBar;->c:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/at;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 72
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/at;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->d:Lcom/google/android/youtube/core/player/at;

    .line 75
    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->r:Z

    .line 76
    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->s:Z

    .line 77
    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->t:Z

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->e:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->f:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->g:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->h:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->h:Landroid/graphics/Paint;

    const v1, -0x7f7f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->i:Landroid/graphics/Paint;

    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->j:Landroid/graphics/Paint;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 90
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4170

    mul-float/2addr v0, v2

    .line 91
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->k:Landroid/graphics/Paint;

    .line 92
    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->k:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->k:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->k:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->z:Landroid/graphics/Rect;

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->k:Landroid/graphics/Paint;

    const-string v2, "0:00:00"

    const/4 v3, 0x0

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/android/youtube/core/player/TimeBar;->z:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 98
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/android/youtube/core/player/TimeBar;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->y:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020142

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lcom/google/android/youtube/core/player/TimeBar;->b:[I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 102
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4100

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->m:I

    .line 103
    return-void
.end method

.method private a(J)Ljava/lang/String;
    .registers 11
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 310
    long-to-int v0, p1

    div-int/lit16 v0, v0, 0x3e8

    .line 311
    rem-int/lit8 v1, v0, 0x3c

    .line 312
    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    .line 313
    div-int/lit16 v0, v0, 0xe10

    .line 315
    iget v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->u:I

    const v4, 0x36ee80

    if-lt v3, v4, :cond_35

    .line 316
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

    .line 318
    :goto_34
    return-object v0

    :cond_35
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

    goto :goto_34
.end method

.method private d()V
    .registers 7

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->g:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 109
    iget v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->u:I

    if-lez v0, :cond_56

    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->e:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->x:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->g:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->e:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    iget v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->v:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iget v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->u:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 118
    :goto_3f
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->q:Z

    if-nez v0, :cond_52

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->g:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->n:I

    .line 121
    :cond_52
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->invalidate()V

    .line 122
    return-void

    .line 114
    :cond_56
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->g:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_3f
.end method

.method private e()V
    .registers 3

    .prologue
    .line 125
    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->q:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/google/android/youtube/core/player/TimeBar;->c:[I

    :goto_8
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 129
    return-void

    .line 125
    :cond_c
    iget v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->u:I

    if-eqz v0, :cond_13

    sget-object v0, Lcom/google/android/youtube/core/player/TimeBar;->a:[I

    goto :goto_8

    :cond_13
    sget-object v0, Lcom/google/android/youtube/core/player/TimeBar;->b:[I

    goto :goto_8
.end method

.method private f()I
    .registers 5

    .prologue
    .line 197
    iget v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->n:I

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->u:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->e:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, v0, v0, v0}, Lcom/google/android/youtube/core/player/TimeBar;->setTime(III)V

    .line 157
    return-void
.end method

.method public final b()I
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->z:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->m:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final c()I
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->m:I

    add-int/2addr v0, v1

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter

    .prologue
    .line 232
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 233
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 236
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 237
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->t:Z

    if-eqz v0, :cond_18

    .line 238
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 240
    :cond_18
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->g:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 243
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->s:Z

    if-eqz v0, :cond_43

    .line 244
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    iget v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->n:I

    iget v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->o:I

    iget v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->n:I

    iget-object v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->o:I

    iget-object v5, p0, Lcom/google/android/youtube/core/player/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 249
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 252
    :cond_43
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->r:Z

    if-eqz v0, :cond_8d

    .line 253
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->q:Z

    if-eqz v0, :cond_8e

    iget v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->w:I

    int-to-long v0, v0

    :goto_4e
    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->a(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->z:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->z:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 258
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->y:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->z:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->z:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 264
    :cond_8d
    return-void

    .line 253
    :cond_8e
    iget v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->v:I

    int-to-long v0, v0

    goto :goto_4e
.end method

.method protected onMeasure(II)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->r:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->s:Z

    if-eqz v0, :cond_29

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->b()I

    move-result v0

    .line 213
    :goto_d
    invoke-static {v1, p1}, Lcom/google/android/youtube/core/player/TimeBar;->getDefaultSize(II)I

    move-result v2

    .line 214
    invoke-static {v0, p2}, Lcom/google/android/youtube/core/player/TimeBar;->resolveSize(II)I

    move-result v0

    .line 215
    invoke-virtual {p0, v2, v0}, Lcom/google/android/youtube/core/player/TimeBar;->setMeasuredDimension(II)V

    .line 217
    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->r:Z

    if-nez v3, :cond_2b

    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->s:Z

    if-nez v3, :cond_2b

    .line 218
    iget-object v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->e:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 227
    :goto_25
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->d()V

    .line 228
    return-void

    :cond_29
    move v0, v1

    .line 211
    goto :goto_d

    .line 220
    :cond_2b
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    .line 221
    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->z:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->m:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->o:I

    .line 222
    iget v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->o:I

    iget-object v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    .line 223
    iget-object v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->e:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    sub-int v0, v2, v0

    add-int/lit8 v2, v1, 0x4

    invoke-virtual {v3, v4, v1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_25
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 269
    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->s:Z

    if-eqz v2, :cond_17

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v3, v2

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_c4

    :cond_17
    move v0, v1

    .line 306
    :goto_18
    return v0

    .line 275
    :pswitch_19
    int-to-float v4, v3

    int-to-float v2, v2

    iget v5, p0, Lcom/google/android/youtube/core/player/TimeBar;->n:I

    iget-object v6, p0, Lcom/google/android/youtube/core/player/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/google/android/youtube/core/player/TimeBar;->o:I

    iget-object v7, p0, Lcom/google/android/youtube/core/player/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/google/android/youtube/core/player/TimeBar;->n:I

    iget v8, p0, Lcom/google/android/youtube/core/player/TimeBar;->m:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpg-float v7, v7, v4

    if-gez v7, :cond_72

    iget v7, p0, Lcom/google/android/youtube/core/player/TimeBar;->m:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_72

    iget v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->o:I

    iget v5, p0, Lcom/google/android/youtube/core/player/TimeBar;->m:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_72

    iget v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->m:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_72

    move v2, v0

    :goto_52
    if-eqz v2, :cond_17

    iget v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->u:I

    if-eqz v2, :cond_17

    .line 276
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->q:Z

    .line 277
    iget v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->n:I

    sub-int v1, v3, v1

    iput v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->p:I

    .line 278
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->f()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->w:I

    .line 279
    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->d:Lcom/google/android/youtube/core/player/at;

    invoke-interface {v1}, Lcom/google/android/youtube/core/player/at;->h()V

    .line 280
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->e()V

    .line 281
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->invalidate()V

    goto :goto_18

    :cond_72
    move v2, v1

    .line 275
    goto :goto_52

    .line 286
    :pswitch_74
    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->q:Z

    if-eqz v2, :cond_17

    .line 287
    iget v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->p:I

    sub-int v1, v3, v1

    iput v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->n:I

    .line 288
    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget-object v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v1, v3, v1

    iget v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->n:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->n:I

    .line 289
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->f()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->w:I

    .line 290
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->invalidate()V

    goto/16 :goto_18

    .line 295
    :pswitch_a8
    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->q:Z

    if-eqz v2, :cond_17

    .line 296
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->q:Z

    .line 297
    iget v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->w:I

    iput v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->v:I

    .line 298
    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->d:Lcom/google/android/youtube/core/player/at;

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->f()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/youtube/core/player/at;->a(I)V

    .line 299
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->e()V

    .line 300
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->invalidate()V

    goto/16 :goto_18

    .line 273
    nop

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_19
        :pswitch_a8
        :pswitch_74
    .end packed-switch
.end method

.method public setBufferedPercent(I)V
    .registers 2
    .parameter

    .prologue
    .line 160
    iput p1, p0, Lcom/google/android/youtube/core/player/TimeBar;->x:I

    .line 161
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->d()V

    .line 162
    return-void
.end method

.method public setProgressColor(I)V
    .registers 3
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->d()V

    .line 134
    return-void
.end method

.method public setShowBuffered(Z)V
    .registers 2
    .parameter

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/TimeBar;->t:Z

    .line 175
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->d()V

    .line 176
    return-void
.end method

.method public setShowScrubber(Z)V
    .registers 4
    .parameter

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/TimeBar;->s:Z

    .line 166
    if-nez p1, :cond_14

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->q:Z

    if-eqz v0, :cond_14

    .line 167
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->d:Lcom/google/android/youtube/core/player/at;

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->f()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/at;->a(I)V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->q:Z

    .line 170
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->requestLayout()V

    .line 171
    return-void
.end method

.method public setShowTimes(Z)V
    .registers 2
    .parameter

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/TimeBar;->r:Z

    .line 152
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->requestLayout()V

    .line 153
    return-void
.end method

.method public setTime(III)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    iget v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->v:I

    if-ne v0, p1, :cond_c

    iget v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->u:I

    if-ne v0, p2, :cond_c

    iget v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->x:I

    if-eq v0, p3, :cond_23

    .line 139
    :cond_c
    iget v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->u:I

    if-eq v0, p2, :cond_1c

    .line 140
    iput p2, p0, Lcom/google/android/youtube/core/player/TimeBar;->u:I

    .line 141
    int-to-long v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->y:Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->e()V

    .line 144
    :cond_1c
    iput p1, p0, Lcom/google/android/youtube/core/player/TimeBar;->v:I

    .line 145
    iput p3, p0, Lcom/google/android/youtube/core/player/TimeBar;->x:I

    .line 146
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->d()V

    .line 148
    :cond_23
    return-void
.end method
