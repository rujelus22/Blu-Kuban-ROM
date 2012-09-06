.class public Lcom/dropbox/android/widget/ThumbGridItemView;
.super Landroid/widget/FrameLayout;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/filemanager/q;


# instance fields
.field protected final a:Landroid/widget/ImageView;

.field protected final b:Landroid/widget/ImageView;

.field protected c:I

.field protected d:Z

.field private final e:Ljava/lang/String;

.field private f:Lcom/dropbox/android/util/D;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->c:I

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->d:Z

    .line 33
    const-class v0, Lcom/dropbox/android/widget/ThumbGridItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->e:Ljava/lang/String;

    .line 40
    invoke-virtual {p0, v2}, Lcom/dropbox/android/widget/ThumbGridItemView;->setDuplicateParentStateEnabled(Z)V

    .line 41
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 42
    const v0, 0x7f030034

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 44
    invoke-virtual {p0, v1}, Lcom/dropbox/android/widget/ThumbGridItemView;->addView(Landroid/view/View;)V

    .line 45
    const v0, 0x7f0d0055

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->a:Landroid/widget/ImageView;

    .line 46
    const v0, 0x7f0d0024

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->b:Landroid/widget/ImageView;

    .line 47
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 113
    iget-object v0, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 115
    :cond_e
    iget-object v0, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->f:Lcom/dropbox/android/util/D;

    if-eqz v0, :cond_19

    .line 116
    iget-object v0, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->f:Lcom/dropbox/android/util/D;

    invoke-virtual {v0}, Lcom/dropbox/android/util/D;->b()V

    .line 117
    iput-object v1, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->f:Lcom/dropbox/android/util/D;

    .line 119
    :cond_19
    return-void
.end method

.method private a(Lcom/dropbox/android/util/D;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v2, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->b:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->d:Z

    if-eqz v0, :cond_6b

    move v0, v1

    :goto_8
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iput-object p1, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->f:Lcom/dropbox/android/util/D;

    .line 83
    iget-object v0, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->f:Lcom/dropbox/android/util/D;

    invoke-virtual {v0}, Lcom/dropbox/android/util/D;->a()V

    .line 85
    if-eqz p2, :cond_6d

    iget-object v0, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6d

    const/4 v0, 0x1

    .line 87
    :goto_1d
    iget-object v2, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->f:Lcom/dropbox/android/util/D;

    invoke-virtual {v2}, Lcom/dropbox/android/util/D;->c()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/android/util/aX;->a(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 88
    iget-object v2, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->a:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 89
    iget-object v2, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->a:Landroid/widget/ImageView;

    const v3, 0x106000c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 95
    :goto_38
    iget-object v2, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->f:Lcom/dropbox/android/util/D;

    invoke-virtual {v3}, Lcom/dropbox/android/util/D;->c()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    iget-object v2, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    if-eqz v0, :cond_6a

    invoke-static {}, Lcom/dropbox/android/util/bb;->a()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 99
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 100
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 101
    iget-object v1, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 103
    :cond_6a
    return-void

    .line 80
    :cond_6b
    const/4 v0, 0x4

    goto :goto_8

    :cond_6d
    move v0, v1

    .line 85
    goto :goto_1d

    .line 91
    :cond_6f
    iget-object v2, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->a:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 92
    iget-object v2, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->a:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_38
.end method


# virtual methods
.method public final a(ILcom/dropbox/android/util/D;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 123
    iget v0, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->c:I

    if-eq v0, v1, :cond_11

    iget v0, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->c:I

    if-ne p1, v0, :cond_11

    if-eqz p2, :cond_11

    .line 124
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/dropbox/android/widget/ThumbGridItemView;->a(Lcom/dropbox/android/util/D;Z)V

    .line 125
    iput v1, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->c:I

    .line 127
    :cond_11
    return-void
.end method

.method public final a(Landroid/database/Cursor;Lcom/dropbox/android/filemanager/g;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, -0x1

    .line 54
    iget v0, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->c:I

    if-eq v0, v2, :cond_b

    .line 55
    iget v0, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->c:I

    invoke-virtual {p2, v0, p0}, Lcom/dropbox/android/filemanager/g;->c(ILcom/dropbox/android/filemanager/q;)V

    .line 58
    :cond_b
    invoke-direct {p0}, Lcom/dropbox/android/widget/ThumbGridItemView;->a()V

    .line 60
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->c:I

    .line 62
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/dropbox/android/util/aa;->g(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->d:Z

    .line 65
    iget v0, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->c:I

    invoke-virtual {p2, v0, p0}, Lcom/dropbox/android/filemanager/g;->a(ILcom/dropbox/android/filemanager/q;)Lcom/dropbox/android/util/D;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_31

    .line 67
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dropbox/android/widget/ThumbGridItemView;->a(Lcom/dropbox/android/util/D;Z)V

    .line 68
    iput v2, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->c:I

    .line 69
    invoke-virtual {v0}, Lcom/dropbox/android/util/D;->b()V

    .line 77
    :goto_30
    return-void

    .line 71
    :cond_31
    iget-object v0, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v0, p0, Lcom/dropbox/android/widget/ThumbGridItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_30
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .registers 2
    .parameter

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 133
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 107
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 108
    invoke-direct {p0}, Lcom/dropbox/android/widget/ThumbGridItemView;->a()V

    .line 109
    return-void
.end method
