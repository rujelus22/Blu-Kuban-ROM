.class public Lcom/anddoes/launcher/PreviewPane;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/anddoes/launcher/bw;
.implements Lcom/anddoes/launcher/cb;


# instance fields
.field private a:Lcom/anddoes/launcher/Launcher;

.field private b:Lcom/anddoes/launcher/Preview;

.field private c:Ljava/util/List;

.field private d:Landroid/animation/AnimatorSet;

.field private e:Z

.field private f:Z

.field private g:Landroid/view/ViewPropertyAnimator;

.field private h:Lcom/anddoes/launcher/bm;

.field private final i:Lcom/anddoes/launcher/do;

.field private j:I

.field private k:I

.field private l:I

.field private m:Lcom/anddoes/launcher/jq;

.field private n:Landroid/widget/ImageView;

.field private o:I

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anddoes/launcher/PreviewPane;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anddoes/launcher/PreviewPane;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->c:Ljava/util/List;

    .line 35
    iput-boolean v1, p0, Lcom/anddoes/launcher/PreviewPane;->e:Z

    .line 36
    iput-boolean v1, p0, Lcom/anddoes/launcher/PreviewPane;->f:Z

    .line 39
    new-instance v0, Lcom/anddoes/launcher/do;

    invoke-direct {v0}, Lcom/anddoes/launcher/do;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->i:Lcom/anddoes/launcher/do;

    .line 48
    iput-boolean v1, p0, Lcom/anddoes/launcher/PreviewPane;->p:Z

    .line 60
    check-cast p1, Lcom/anddoes/launcher/Launcher;

    iput-object p1, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    .line 61
    return-void
.end method

.method private a(I)V
    .registers 4
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    .line 163
    if-ltz p1, :cond_e

    if-lt p1, v0, :cond_10

    .line 164
    :cond_e
    div-int/lit8 p1, v0, 0x2

    .line 166
    :cond_10
    iget v0, p0, Lcom/anddoes/launcher/PreviewPane;->l:I

    if-eq p1, v0, :cond_29

    .line 167
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    iput p1, v0, Lcom/anddoes/launcher/Workspace;->m:I

    .line 168
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, v0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/preference/h;->b(I)V

    .line 169
    iput p1, p0, Lcom/anddoes/launcher/PreviewPane;->l:I

    .line 171
    :cond_29
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    iget v1, p0, Lcom/anddoes/launcher/PreviewPane;->l:I

    iput v1, v0, Lcom/anddoes/launcher/Preview;->a:I

    .line 172
    return-void
.end method

.method private static a(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    const/high16 v1, 0x4000

    .line 523
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    .line 524
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    .line 525
    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/PreviewPane;)V
    .registers 4
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_5c

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->t()V

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/preference/h;->a(I)V

    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    iget-object v2, p0, Lcom/anddoes/launcher/PreviewPane;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/Preview;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    iget-object v2, p0, Lcom/anddoes/launcher/PreviewPane;->m:Lcom/anddoes/launcher/jq;

    iget-object v2, v2, Lcom/anddoes/launcher/jq;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/Preview;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/PreviewPane;->b(I)Lcom/anddoes/launcher/jq;

    move-result-object v0

    iget-object v1, v0, Lcom/anddoes/launcher/jq;->d:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/anddoes/launcher/jq;->d:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    iget-object v0, v0, Lcom/anddoes/launcher/jq;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/Preview;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Preview;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/anddoes/launcher/PreviewPane;->d()V

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Preview;->requestLayout()V

    :cond_5c
    return-void
.end method

.method private b(I)Lcom/anddoes/launcher/jq;
    .registers 7
    .parameter

    .prologue
    .line 194
    iget v0, p0, Lcom/anddoes/launcher/PreviewPane;->j:I

    iget v1, p0, Lcom/anddoes/launcher/PreviewPane;->k:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f030020

    iget-object v3, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 203
    new-instance v2, Lcom/anddoes/launcher/jq;

    invoke-direct {v2, p0, v1, p1}, Lcom/anddoes/launcher/jq;-><init>(Lcom/anddoes/launcher/PreviewPane;Landroid/view/View;I)V

    .line 204
    invoke-virtual {v2}, Lcom/anddoes/launcher/jq;->a()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 206
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 207
    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    return-object v2
.end method

.method private declared-synchronized b(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    .line 582
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/anddoes/launcher/PreviewPane;->p:Z

    if-nez v0, :cond_b8

    .line 583
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    const v2, 0x1060012

    const-string v3, "outline_color"

    invoke-virtual {v1, v2, v3}, Lcom/anddoes/launcher/c/l;->a(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/anddoes/launcher/PreviewPane;->i:Lcom/anddoes/launcher/do;

    invoke-virtual {v3, v1, v0, v2}, Lcom/anddoes/launcher/do;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V

    iget-object v2, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 584
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 585
    iget-object v2, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Launcher;->r()Lcom/anddoes/launcher/DragLayer;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/anddoes/launcher/DragLayer;->a(Landroid/view/View;[I)V

    .line 586
    const/4 v2, 0x0

    aget v2, v0, v2

    .line 587
    const/4 v3, 0x1

    aget v3, v0, v3

    .line 588
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anddoes/launcher/jq;

    .line 589
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->h:Lcom/anddoes/launcher/bm;

    sget v4, Lcom/anddoes/launcher/bm;->a:I

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/anddoes/launcher/bm;->a(Landroid/graphics/Bitmap;IILcom/anddoes/launcher/bw;Ljava/lang/Object;)V

    .line 590
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 591
    iget v0, v5, Lcom/anddoes/launcher/jq;->e:I

    sget v1, Lcom/anddoes/launcher/jq;->b:I

    if-ne v0, v1, :cond_ba

    .line 592
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    const v2, 0x1060012

    const-string v3, "outline_color"

    invoke-virtual {v1, v2, v3}, Lcom/anddoes/launcher/c/l;->a(ILjava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/anddoes/launcher/PreviewPane;->i:Lcom/anddoes/launcher/do;

    invoke-virtual {v3, v2, v0, v1, v1}, Lcom/anddoes/launcher/do;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 593
    check-cast p1, Landroid/widget/ImageView;

    .line 594
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 598
    :goto_a3
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->m:Lcom/anddoes/launcher/jq;

    if-eqz v0, :cond_b0

    .line 599
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->m:Lcom/anddoes/launcher/jq;

    iget-object v1, v1, Lcom/anddoes/launcher/jq;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Preview;->removeView(Landroid/view/View;)V

    .line 601
    :cond_b0
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Preview;->invalidate()V

    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/PreviewPane;->p:Z
    :try_end_b8
    .catchall {:try_start_1 .. :try_end_b8} :catchall_bf

    .line 604
    :cond_b8
    monitor-exit p0

    return-void

    .line 596
    :cond_ba
    const/4 v0, 0x4

    :try_start_bb
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_bf

    goto :goto_a3

    .line 582
    :catchall_bf
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/anddoes/launcher/PreviewPane;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/PreviewPane;->e:Z

    return-void
.end method

.method private c()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/anddoes/launcher/PreviewPane;->f:Z

    .line 89
    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 90
    if-lez v2, :cond_13

    move v1, v0

    .line 91
    :goto_c
    if-lt v1, v2, :cond_14

    .line 94
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    :cond_13
    return-void

    .line 92
    :cond_14
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 91
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c
.end method

.method static synthetic c(Lcom/anddoes/launcher/PreviewPane;)V
    .registers 1
    .parameter

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/anddoes/launcher/PreviewPane;->e()V

    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_17

    .line 189
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->m:Lcom/anddoes/launcher/jq;

    iget-object v1, v1, Lcom/anddoes/launcher/jq;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Preview;->addView(Landroid/view/View;)V

    .line 191
    :cond_17
    return-void
.end method

.method static synthetic d(Lcom/anddoes/launcher/PreviewPane;)Z
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/anddoes/launcher/PreviewPane;->f:Z

    return v0
.end method

.method private e()V
    .registers 3

    .prologue
    const/16 v1, 0x22

    .line 390
    const/16 v0, 0x80

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PreviewPane;->setBackgroundColor(I)V

    .line 391
    return-void
.end method

.method static synthetic e(Lcom/anddoes/launcher/PreviewPane;)V
    .registers 1
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/anddoes/launcher/PreviewPane;->c()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 13

    .prologue
    const/4 v6, -0x2

    const/high16 v11, 0x3f00

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/high16 v9, 0x3f80

    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/PreviewPane;->e:Z

    .line 529
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Preview;->removeAllViews()V

    invoke-direct {p0}, Lcom/anddoes/launcher/PreviewPane;->c()V

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    iget v0, v0, Lcom/anddoes/launcher/Workspace;->m:I

    iput v0, p0, Lcom/anddoes/launcher/PreviewPane;->l:I

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->c()Lcom/anddoes/launcher/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anddoes/launcher/ba;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->c()Lcom/anddoes/launcher/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/ba;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/anddoes/launcher/PreviewPane;->o:I

    int-to-float v3, v3

    mul-float/2addr v3, v9

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/anddoes/launcher/PreviewPane;->j:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/anddoes/launcher/PreviewPane;->k:I

    iget v0, p0, Lcom/anddoes/launcher/PreviewPane;->j:I

    if-lez v0, :cond_dc

    iget v0, p0, Lcom/anddoes/launcher/PreviewPane;->k:I

    if-lez v0, :cond_dc

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v3

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move v1, v2

    :goto_73
    if-lt v1, v3, :cond_192

    iget v0, p0, Lcom/anddoes/launcher/PreviewPane;->l:I

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/PreviewPane;->a(I)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->n:Landroid/widget/ImageView;

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->n:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Lcom/anddoes/launcher/jq;

    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->n:Landroid/widget/ImageView;

    sget v3, Lcom/anddoes/launcher/jq;->b:I

    invoke-direct {v0, p0, v1, v3}, Lcom/anddoes/launcher/jq;-><init>(Lcom/anddoes/launcher/PreviewPane;Landroid/view/View;I)V

    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Preview;->addView(Landroid/view/View;)V

    sget v0, Lcom/anddoes/launcher/jq;->a:I

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/PreviewPane;->b(I)Lcom/anddoes/launcher/jq;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->m:Lcom/anddoes/launcher/jq;

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->m:Lcom/anddoes/launcher/jq;

    iget-object v0, v0, Lcom/anddoes/launcher/jq;->d:Landroid/view/View;

    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->m:Lcom/anddoes/launcher/jq;

    iget-object v0, v0, Lcom/anddoes/launcher/jq;->d:Landroid/view/View;

    new-instance v1, Lcom/anddoes/launcher/jr;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/jr;-><init>(Lcom/anddoes/launcher/PreviewPane;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/anddoes/launcher/PreviewPane;->d()V

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Preview;->requestLayout()V

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Preview;->invalidate()V

    .line 531
    :cond_dc
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->d:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->d:Landroid/animation/AnimatorSet;

    :cond_eb
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->g:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_f7

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->g:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->g:Landroid/view/ViewPropertyAnimator;

    :cond_f7
    const-string v0, "FLY"

    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ea

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/PreviewPane;->e:Z

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v3, 0x7f0b000e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v4, 0x7f0b0012

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_270

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {p0}, Lcom/anddoes/launcher/PreviewPane;->a(Landroid/view/View;)V

    new-instance v4, Lcom/anddoes/launcher/ly;

    invoke-direct {v4}, Lcom/anddoes/launcher/ly;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/anddoes/launcher/ju;

    invoke-direct {v4, p0, p0}, Lcom/anddoes/launcher/ju;-><init>(Lcom/anddoes/launcher/PreviewPane;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v10}, Landroid/view/View;->setAlpha(F)V

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_278

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3fc0

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/anddoes/launcher/jv;

    invoke-direct {v3, p0, p0}, Lcom/anddoes/launcher/jv;-><init>(Lcom/anddoes/launcher/PreviewPane;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    new-instance v2, Lcom/anddoes/launcher/jw;

    invoke-direct {v2, p0, p0}, Lcom/anddoes/launcher/jw;-><init>(Lcom/anddoes/launcher/PreviewPane;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/anddoes/launcher/PreviewPane;->d:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/anddoes/launcher/PreviewPane;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 532
    :goto_191
    return-void

    .line 530
    :cond_192
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    iget v6, p0, Lcom/anddoes/launcher/PreviewPane;->j:I

    iget v7, p0, Lcom/anddoes/launcher/PreviewPane;->k:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->c()Lcom/anddoes/launcher/ba;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/anddoes/launcher/ba;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v4, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->c()Lcom/anddoes/launcher/ba;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/anddoes/launcher/ba;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->c:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f030020

    iget-object v8, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    invoke-virtual {v0, v7, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v7, Lcom/anddoes/launcher/jq;

    invoke-direct {v7, p0, v0, v1}, Lcom/anddoes/launcher/jq;-><init>(Lcom/anddoes/launcher/PreviewPane;Landroid/view/View;I)V

    invoke-virtual {v7}, Lcom/anddoes/launcher/jq;->a()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v6, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    invoke-virtual {v6, v0}, Lcom/anddoes/launcher/Preview;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_73

    .line 531
    :cond_1ea
    invoke-virtual {p0, v10}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v10}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0, v9}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v9}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0, v9}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "FADE"

    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22f

    invoke-virtual {p0, v10}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->g:Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->g:Landroid/view/ViewPropertyAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->g:Landroid/view/ViewPropertyAnimator;

    new-instance v1, Lcom/anddoes/launcher/jx;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/jx;-><init>(Lcom/anddoes/launcher/PreviewPane;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->g:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_191

    :cond_22f
    const-string v0, "SCALE"

    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_269

    invoke-virtual {p0, v11}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v11}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->g:Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->g:Landroid/view/ViewPropertyAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->g:Landroid/view/ViewPropertyAnimator;

    new-instance v1, Lcom/anddoes/launcher/jy;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/jy;-><init>(Lcom/anddoes/launcher/PreviewPane;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->g:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_191

    :cond_269
    iput-boolean v2, p0, Lcom/anddoes/launcher/PreviewPane;->e:Z

    invoke-direct {p0}, Lcom/anddoes/launcher/PreviewPane;->e()V

    goto/16 :goto_191

    :array_270
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_278
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public final a(Landroid/view/View;Lcom/anddoes/launcher/cc;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/PreviewPane;->p:Z

    .line 609
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/cc;)V
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 617
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    check-cast v0, Lcom/anddoes/launcher/jq;

    .line 620
    iget v1, v0, Lcom/anddoes/launcher/jq;->e:I

    sget v3, Lcom/anddoes/launcher/jq;->b:I

    if-ne v1, v3, :cond_6e

    .line 621
    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->n:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    .line 623
    :goto_13
    iget-object v3, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    invoke-virtual {v3, p1, v1}, Lcom/anddoes/launcher/Preview;->a(Lcom/anddoes/launcher/cc;I)I

    move-result v3

    .line 624
    iget v1, v0, Lcom/anddoes/launcher/jq;->e:I

    sget v4, Lcom/anddoes/launcher/jq;->b:I

    if-ne v1, v4, :cond_3f

    .line 625
    invoke-direct {p0, v3}, Lcom/anddoes/launcher/PreviewPane;->a(I)V

    .line 626
    iget-object v1, v0, Lcom/anddoes/launcher/jq;->d:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    .line 627
    const v3, 0x7f020029

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 643
    :cond_2c
    iget-object v0, v0, Lcom/anddoes/launcher/jq;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 644
    invoke-direct {p0}, Lcom/anddoes/launcher/PreviewPane;->d()V

    .line 645
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Preview;->requestLayout()V

    .line 646
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Preview;->invalidate()V

    .line 647
    return-void

    .line 629
    :cond_3f
    iget v1, v0, Lcom/anddoes/launcher/jq;->e:I

    if-eq v1, v3, :cond_2c

    .line 630
    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v1

    iget v4, v0, Lcom/anddoes/launcher/jq;->e:I

    invoke-virtual {v1, v4, v3}, Lcom/anddoes/launcher/Workspace;->a(II)V

    .line 631
    iget v1, v0, Lcom/anddoes/launcher/jq;->e:I

    .line 633
    iget v4, v0, Lcom/anddoes/launcher/jq;->e:I

    if-le v4, v3, :cond_59

    .line 635
    iget v1, v0, Lcom/anddoes/launcher/jq;->e:I

    move v5, v1

    move v1, v3

    move v3, v5

    :cond_59
    move v4, v1

    .line 637
    :goto_5a
    if-gt v4, v3, :cond_2c

    .line 638
    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    invoke-virtual {v1, v4}, Lcom/anddoes/launcher/Preview;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/jq;

    .line 639
    iput v4, v1, Lcom/anddoes/launcher/jq;->e:I

    .line 637
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_5a

    :cond_6e
    move v1, v2

    goto :goto_13
.end method

.method public final a(Lcom/anddoes/launcher/jq;)V
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 232
    iget v1, p1, Lcom/anddoes/launcher/jq;->e:I

    sget v2, Lcom/anddoes/launcher/jq;->b:I

    if-ne v1, v2, :cond_26

    .line 233
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    iget v0, v0, Lcom/anddoes/launcher/Preview;->a:I

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/PreviewPane;->a(I)V

    .line 234
    iget-object v0, p1, Lcom/anddoes/launcher/jq;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 235
    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    :cond_18
    :goto_18
    invoke-direct {p0}, Lcom/anddoes/launcher/PreviewPane;->d()V

    .line 258
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Preview;->requestLayout()V

    .line 259
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Preview;->invalidate()V

    .line 260
    return-void

    .line 237
    :cond_26
    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v2

    .line 239
    const/4 v3, 0x1

    if-ne v2, v3, :cond_39

    .line 241
    iget-object v1, p1, Lcom/anddoes/launcher/jq;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18

    .line 242
    :cond_39
    iget v3, p1, Lcom/anddoes/launcher/jq;->e:I

    if-ltz v3, :cond_18

    iget v3, p1, Lcom/anddoes/launcher/jq;->e:I

    if-ge v3, v2, :cond_18

    .line 243
    iget v2, p1, Lcom/anddoes/launcher/jq;->e:I

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/Workspace;->a(I)V

    .line 244
    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    iget-object v2, p1, Lcom/anddoes/launcher/jq;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/Preview;->removeView(Landroid/view/View;)V

    .line 245
    iget v1, p0, Lcom/anddoes/launcher/PreviewPane;->l:I

    invoke-direct {p0, v1}, Lcom/anddoes/launcher/PreviewPane;->a(I)V

    move v1, v0

    .line 246
    :goto_53
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Preview;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_18

    .line 247
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Preview;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/jq;

    .line 249
    iget v2, v0, Lcom/anddoes/launcher/jq;->e:I

    sget v3, Lcom/anddoes/launcher/jq;->a:I

    if-eq v2, v3, :cond_7f

    .line 250
    iget v2, v0, Lcom/anddoes/launcher/jq;->e:I

    sget v3, Lcom/anddoes/launcher/jq;->b:I

    if-eq v2, v3, :cond_7f

    .line 251
    iget v2, v0, Lcom/anddoes/launcher/jq;->e:I

    iget v3, p1, Lcom/anddoes/launcher/jq;->e:I

    if-le v2, v3, :cond_7f

    .line 252
    iget v2, v0, Lcom/anddoes/launcher/jq;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/anddoes/launcher/jq;->e:I

    .line 246
    :cond_7f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_53
.end method

.method public final a([I)V
    .registers 3
    .parameter

    .prologue
    .line 686
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->r()Lcom/anddoes/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/anddoes/launcher/DragLayer;->a(Landroid/view/View;[I)V

    .line 687
    return-void
.end method

.method public final b()V
    .registers 11

    .prologue
    const/high16 v3, 0x3f00

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/high16 v2, 0x3f80

    const/4 v7, 0x1

    .line 535
    invoke-virtual {p0}, Lcom/anddoes/launcher/PreviewPane;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b8

    .line 536
    invoke-virtual {p0, v8}, Lcom/anddoes/launcher/PreviewPane;->setBackgroundColor(I)V

    .line 537
    iput-boolean v7, p0, Lcom/anddoes/launcher/PreviewPane;->e:Z

    .line 538
    iput-boolean v7, p0, Lcom/anddoes/launcher/PreviewPane;->f:Z

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->d:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->d:Landroid/animation/AnimatorSet;

    :cond_23
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->g:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->g:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->g:Landroid/view/ViewPropertyAnimator;

    :cond_2f
    const-string v0, "FLY"

    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    iput-boolean v7, p0, Lcom/anddoes/launcher/PreviewPane;->e:Z

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {p0}, Lcom/anddoes/launcher/PreviewPane;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v3

    new-array v4, v9, [F

    fill-array-data v4, :array_134

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v4, Lcom/anddoes/launcher/lx;

    invoke-direct {v4}, Lcom/anddoes/launcher/lx;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/anddoes/launcher/jz;

    invoke-direct {v4, p0, p0, v2, v3}, Lcom/anddoes/launcher/jz;-><init>(Lcom/anddoes/launcher/PreviewPane;Landroid/view/View;FF)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v9, [F

    fill-array-data v2, :array_13c

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const v3, 0x7f0b000f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/anddoes/launcher/ka;

    invoke-direct {v0, p0, p0}, Lcom/anddoes/launcher/ka;-><init>(Lcom/anddoes/launcher/PreviewPane;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/anddoes/launcher/kb;

    invoke-direct {v0, p0, p0}, Lcom/anddoes/launcher/kb;-><init>(Lcom/anddoes/launcher/PreviewPane;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->d:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->d:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    aput-object v1, v3, v8

    aput-object v2, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 540
    :cond_b8
    :goto_b8
    return-void

    .line 538
    :cond_b9
    const-string v0, "FADE"

    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->g:Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->g:Landroid/view/ViewPropertyAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->g:Landroid/view/ViewPropertyAnimator;

    new-instance v1, Lcom/anddoes/launcher/js;

    invoke-direct {v1, p0, p0}, Lcom/anddoes/launcher/js;-><init>(Lcom/anddoes/launcher/PreviewPane;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->g:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_b8

    :cond_ec
    const-string v0, "SCALE"

    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_125

    invoke-virtual {p0, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->g:Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->g:Landroid/view/ViewPropertyAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->g:Landroid/view/ViewPropertyAnimator;

    new-instance v1, Lcom/anddoes/launcher/jt;

    invoke-direct {v1, p0, p0}, Lcom/anddoes/launcher/jt;-><init>(Lcom/anddoes/launcher/PreviewPane;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->g:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_b8

    :cond_125
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v8, p0, Lcom/anddoes/launcher/PreviewPane;->e:Z

    iget-boolean v0, p0, Lcom/anddoes/launcher/PreviewPane;->f:Z

    if-eqz v0, :cond_b8

    invoke-direct {p0}, Lcom/anddoes/launcher/PreviewPane;->c()V

    goto :goto_b8

    nop

    :array_134
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_13c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public final b(Lcom/anddoes/launcher/cc;)V
    .registers 2
    .parameter

    .prologue
    .line 651
    return-void
.end method

.method public final c(Lcom/anddoes/launcher/cc;)V
    .registers 6
    .parameter

    .prologue
    .line 655
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    check-cast v0, Lcom/anddoes/launcher/jq;

    .line 656
    const/4 v1, 0x0

    .line 658
    iget v2, v0, Lcom/anddoes/launcher/jq;->e:I

    sget v3, Lcom/anddoes/launcher/jq;->b:I

    if-ne v2, v3, :cond_13

    .line 659
    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->n:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    .line 661
    :cond_13
    iget-object v2, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    invoke-virtual {v2, p1, v1}, Lcom/anddoes/launcher/Preview;->a(Lcom/anddoes/launcher/cc;I)I

    move-result v1

    .line 662
    iget v2, v0, Lcom/anddoes/launcher/jq;->e:I

    sget v3, Lcom/anddoes/launcher/jq;->b:I

    if-ne v2, v3, :cond_29

    .line 663
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    iput v1, v0, Lcom/anddoes/launcher/Preview;->a:I

    .line 667
    :goto_23
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Preview;->requestLayout()V

    .line 668
    return-void

    .line 665
    :cond_29
    iget-object v2, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    iget-object v0, v0, Lcom/anddoes/launcher/jq;->d:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Lcom/anddoes/launcher/Preview;->a(Landroid/view/View;I)V

    goto :goto_23
.end method

.method public final d(Lcom/anddoes/launcher/cc;)V
    .registers 2
    .parameter

    .prologue
    .line 672
    return-void
.end method

.method public final e(Lcom/anddoes/launcher/cc;)Z
    .registers 3
    .parameter

    .prologue
    .line 681
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/anddoes/launcher/PreviewPane;->e:Z

    if-eqz v0, :cond_5

    .line 84
    :cond_4
    :goto_4
    return-void

    .line 75
    :cond_5
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Preview;->getChildCount()I

    move-result v1

    .line 76
    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_4

    .line 77
    iget-object v2, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    invoke-virtual {v2, v0}, Lcom/anddoes/launcher/Preview;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 78
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 79
    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    .line 80
    iget-object v1, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/Workspace;->n(I)V

    goto :goto_4

    .line 76
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public onFinishInflate()V
    .registers 3

    .prologue
    .line 65
    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PreviewPane;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/Preview;

    iput-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->b:Lcom/anddoes/launcher/Preview;

    .line 66
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->y()Lcom/anddoes/launcher/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->h:Lcom/anddoes/launcher/bm;

    .line 67
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/PreviewPane;->o:I

    .line 68
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .parameter

    .prologue
    .line 577
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/PreviewPane;->b(Landroid/view/View;)V

    .line 578
    const/4 v0, 0x1

    return v0
.end method

.method public final s()Z
    .registers 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/anddoes/launcher/PreviewPane;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->j()Z

    move-result v0

    return v0
.end method
