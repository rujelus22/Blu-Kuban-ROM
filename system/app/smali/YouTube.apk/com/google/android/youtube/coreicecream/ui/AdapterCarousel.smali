.class public Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;
.super Lcom/android/ex/carousel/CarouselView;
.source "SourceFile"


# static fields
.field private static f:Landroid/graphics/Bitmap;


# instance fields
.field private b:Landroid/widget/Adapter;

.field private c:Landroid/widget/AdapterView$OnItemClickListener;

.field private d:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private final e:Lcom/google/android/youtube/coreicecream/ui/d;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/google/android/youtube/coreicecream/ui/f;

.field private j:Z

.field private k:I

.field private l:F

.field private m:I

.field private n:I

.field private o:F

.field private p:F

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Z

.field private v:Ljava/lang/Float;

.field private w:[I

.field private x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/ex/carousel/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    new-instance v0, Lcom/google/android/youtube/coreicecream/ui/f;

    invoke-direct {v0}, Lcom/google/android/youtube/coreicecream/ui/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->i:Lcom/google/android/youtube/coreicecream/ui/f;

    .line 86
    const v0, 0x7f0a0095

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->g:Ljava/lang/String;

    .line 87
    const v0, 0x7f0a0096

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->h:Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/google/android/youtube/b;->b:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    const/4 v1, 0x6

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->o:F

    .line 91
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->k:I

    .line 92
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->l:F

    .line 93
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->n:I

    .line 94
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->m:I

    .line 95
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->p:F

    .line 96
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->q:I

    .line 97
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->r:I

    .line 98
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->s:I

    .line 99
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->t:I

    .line 100
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->j:Z

    .line 101
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->b(F)V

    .line 102
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->f(F)V

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 106
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->a(FFFF)V

    .line 107
    invoke-virtual {p0, v4}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setZOrderOnTop(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->b()Lcom/android/ex/carousel/a;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/a;->i(I)V

    .line 110
    iget v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->o:F

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->d(F)V

    .line 111
    iget v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->k:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->d(I)V

    .line 112
    iget v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->l:F

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->a(F)V

    .line 113
    iget v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->n:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->b(I)V

    .line 114
    iget v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->n:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->e(I)V

    .line 115
    iget v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->m:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->a(I)V

    .line 117
    invoke-virtual {p0, v5}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->a(Z)V

    .line 118
    const/16 v0, 0x102

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->f(I)V

    .line 120
    sget-object v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->f:Landroid/graphics/Bitmap;

    if-nez v0, :cond_dc

    .line 121
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020026

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->f:Landroid/graphics/Bitmap;

    .line 124
    :cond_dc
    sget-object v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->a(Landroid/graphics/Bitmap;)V

    .line 125
    sget-object v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->b(Landroid/graphics/Bitmap;)V

    .line 128
    invoke-virtual {p0, v4}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->b(Z)V

    .line 129
    const v0, -0x4036f025

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->e(F)V

    .line 130
    invoke-virtual {p0, v6}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->h(I)V

    .line 131
    iget v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->n:I

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->c(I)V

    .line 132
    iget v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->p:F

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->g(F)V

    .line 134
    iget v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->q:I

    iget v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->r:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->a(II)V

    .line 136
    new-instance v0, Lcom/google/android/youtube/coreicecream/ui/d;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/coreicecream/ui/d;-><init>(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->e:Lcom/google/android/youtube/coreicecream/ui/d;

    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->e:Lcom/google/android/youtube/coreicecream/ui/d;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->a(Lcom/android/ex/carousel/d;)V

    .line 138
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;Landroid/view/View;IIZ)Landroid/graphics/Bitmap;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x4000

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p4, :cond_46

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_3c

    :cond_36
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3c
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->i:Lcom/google/android/youtube/coreicecream/ui/f;

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/coreicecream/ui/f;->a(Landroid/graphics/Canvas;)V

    :cond_46
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;Ljava/lang/Float;)Ljava/lang/Float;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->v:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)V
    .registers 1
    .parameter

    .prologue
    .line 44
    invoke-super {p0}, Lcom/android/ex/carousel/CarouselView;->onDetachedFromWindow()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->x:Z

    return v0
.end method

.method static synthetic a(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;[I)[I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->w:[I

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Z
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/Adapter;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->b:Landroid/widget/Adapter;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)I
    .registers 2
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->q:I

    return v0
.end method

.method static synthetic e(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)I
    .registers 2
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->r:I

    return v0
.end method

.method static synthetic f(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)I
    .registers 2
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->s:I

    return v0
.end method

.method static synthetic i(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)I
    .registers 2
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->t:I

    return v0
.end method

.method static synthetic j(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->c:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->d:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/android/ex/carousel/f;
    .registers 3

    .prologue
    .line 248
    new-instance v0, Lcom/android/ex/carousel/f;

    const/high16 v1, 0x7f07

    invoke-direct {v0, v1}, Lcom/android/ex/carousel/f;-><init>(I)V

    return-object v0
.end method

.method public final a(F)V
    .registers 2
    .parameter

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->a(F)V

    .line 195
    iput p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->l:F

    .line 196
    return-void
.end method

.method public final a(I)V
    .registers 6
    .parameter

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->a(I)V

    .line 169
    iput p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->m:I

    .line 170
    const-wide v0, 0x401921fb54442d18L

    int-to-double v2, p1

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 172
    const v1, 0x3fc90fdb

    iget v2, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->n:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v0, v2

    const/high16 v2, 0x4000

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->c(F)V

    .line 173
    return-void
.end method

.method public final a(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 199
    iput p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->q:I

    .line 200
    iput p2, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->r:I

    .line 202
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 203
    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->r:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->q:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 204
    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 205
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 206
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->a([F)V

    .line 207
    return-void
.end method

.method public final a(Landroid/widget/Adapter;)V
    .registers 4
    .parameter

    .prologue
    .line 238
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->b:Landroid/widget/Adapter;

    if-eqz v0, :cond_e

    .line 240
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->b:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->e:Lcom/google/android/youtube/coreicecream/ui/d;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 242
    :cond_e
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->b:Landroid/widget/Adapter;

    .line 243
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->b:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->e:Lcom/google/android/youtube/coreicecream/ui/d;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 244
    return-void
.end method

.method public final a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->c:Landroid/widget/AdapterView$OnItemClickListener;

    .line 226
    return-void
.end method

.method public final a(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->d:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 230
    return-void
.end method

.method public final b(I)V
    .registers 2
    .parameter

    .prologue
    .line 177
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->b(I)V

    .line 178
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->e(I)V

    .line 179
    iput p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->n:I

    .line 180
    return-void
.end method

.method public final b(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 210
    iput p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->s:I

    .line 211
    iput p2, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->t:I

    .line 212
    return-void
.end method

.method public final c(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 220
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->c(Landroid/graphics/Bitmap;)V

    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setZOrderOnTop(Z)V

    .line 222
    return-void
.end method

.method public final c(Z)V
    .registers 3
    .parameter

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->j:Z

    if-eq v0, p1, :cond_b

    .line 146
    iput-boolean p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->j:Z

    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->e:Lcom/google/android/youtube/coreicecream/ui/d;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/d;->onChanged()V

    .line 150
    :cond_b
    return-void
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public final d(F)V
    .registers 2
    .parameter

    .prologue
    .line 154
    iput p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->o:F

    .line 155
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->d(F)V

    .line 156
    return-void
.end method

.method public final d(I)V
    .registers 2
    .parameter

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->d(I)V

    .line 185
    iput p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->k:I

    .line 186
    return-void
.end method

.method public destroyRenderScriptGL()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->getRenderScriptGL()Landroid/renderscript/RenderScriptGL;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 258
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->b()Lcom/android/ex/carousel/a;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/ex/carousel/a;->a(Landroid/renderscript/RenderScriptGL;Lcom/android/ex/carousel/b;)V

    .line 259
    invoke-super {p0}, Lcom/android/ex/carousel/CarouselView;->destroyRenderScriptGL()V

    .line 261
    :cond_11
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->u:Z

    if-nez v0, :cond_9

    .line 357
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    .line 359
    :cond_9
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 360
    return-void
.end method

.method public final e()I
    .registers 2

    .prologue
    .line 189
    iget v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->k:I

    return v0
.end method

.method public final f()V
    .registers 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->destroyRenderScriptGL()V

    .line 253
    return-void
.end method

.method public final g(F)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 159
    new-array v0, v3, [F

    aput v2, v0, v4

    aput v2, v0, v5

    aput p1, v0, v6

    .line 161
    new-array v1, v3, [F

    aput v2, v1, v4

    aput v2, v1, v5

    iget v2, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->o:F

    neg-float v2, v2

    aput v2, v1, v6

    .line 162
    new-array v2, v3, [F

    fill-array-data v2, :array_22

    .line 163
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->a([F[F[F)V

    .line 164
    return-void

    .line 162
    nop

    :array_22
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public final g(I)V
    .registers 4
    .parameter

    .prologue
    .line 325
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->g(I)V

    .line 326
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->v:Ljava/lang/Float;

    if-nez v0, :cond_e

    .line 327
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->v:Ljava/lang/Float;

    .line 329
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->b()Lcom/android/ex/carousel/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->v:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/a;->d(F)V

    .line 330
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 3
    .parameter

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->u:Z

    if-eqz v0, :cond_a

    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public layout(IIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->x:Z

    if-nez v0, :cond_7

    .line 387
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/ex/carousel/CarouselView;->layout(IIII)V

    .line 389
    :cond_7
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->x:Z

    .line 381
    invoke-super {p0}, Lcom/android/ex/carousel/CarouselView;->onAttachedToWindow()V

    .line 382
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->requestLayout()V

    .line 394
    new-instance v0, Lcom/google/android/youtube/coreicecream/ui/c;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/coreicecream/ui/c;-><init>(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)V

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->post(Ljava/lang/Runnable;)Z

    .line 401
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3
    .parameter

    .prologue
    .line 294
    check-cast p1, Landroid/os/Bundle;

    .line 295
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->v:Ljava/lang/Float;

    .line 296
    const-string v0, "super"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_19

    .line 298
    invoke-super {p0, v0}, Lcom/android/ex/carousel/CarouselView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 300
    :cond_19
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 281
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 282
    invoke-super {p0}, Lcom/android/ex/carousel/CarouselView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 283
    if-eqz v1, :cond_10

    .line 284
    const-string v2, "super"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 286
    :cond_10
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->v:Ljava/lang/Float;

    if-eqz v1, :cond_1f

    .line 287
    const-string v1, "rotation"

    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->v:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 289
    :cond_1f
    return-object v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3
    .parameter

    .prologue
    .line 364
    const/16 v0, 0x8

    if-ne p1, v0, :cond_10

    .line 365
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->requestLayout()V

    .line 366
    new-instance v0, Lcom/google/android/youtube/coreicecream/ui/b;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/coreicecream/ui/b;-><init>(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->post(Ljava/lang/Runnable;)Z

    .line 374
    :goto_f
    return-void

    .line 372
    :cond_10
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->onWindowVisibilityChanged(I)V

    goto :goto_f
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->v:Ljava/lang/Float;

    if-eqz v0, :cond_11

    .line 266
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->b()Lcom/android/ex/carousel/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->v:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/a;->d(F)V

    .line 268
    :cond_11
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/ex/carousel/CarouselView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->u:Z

    .line 270
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->invalidate()V

    .line 271
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter

    .prologue
    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->u:Z

    .line 276
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 277
    return-void
.end method
