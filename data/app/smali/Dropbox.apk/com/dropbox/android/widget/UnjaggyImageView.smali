.class public Lcom/dropbox/android/widget/UnjaggyImageView;
.super Landroid/widget/ImageView;
.source "panda.py"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/widget/UnjaggyImageView;->a:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/widget/UnjaggyImageView;->a:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/widget/UnjaggyImageView;->a:Z

    .line 35
    return-void
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 96
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_16

    move-object v0, p1

    .line 97
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 104
    :goto_c
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 105
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 107
    :cond_15
    return-void

    .line 98
    :cond_16
    instance-of v0, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_15

    move-object v0, p1

    .line 99
    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_c
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/dropbox/android/widget/UnjaggyImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_41

    .line 46
    invoke-virtual {p0}, Lcom/dropbox/android/widget/UnjaggyImageView;->getWidth()I

    move-result v0

    .line 47
    invoke-virtual {p0}, Lcom/dropbox/android/widget/UnjaggyImageView;->getHeight()I

    move-result v1

    .line 49
    iget-boolean v2, p0, Lcom/dropbox/android/widget/UnjaggyImageView;->a:Z

    .line 50
    iput-boolean v5, p0, Lcom/dropbox/android/widget/UnjaggyImageView;->a:Z

    .line 52
    invoke-virtual {p0}, Lcom/dropbox/android/widget/UnjaggyImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 53
    invoke-virtual {p0}, Lcom/dropbox/android/widget/UnjaggyImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 55
    if-eqz v3, :cond_25

    .line 56
    if-eqz v2, :cond_22

    .line 57
    invoke-virtual {v3, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 59
    :cond_22
    invoke-static {p1, v3}, Lcom/dropbox/android/widget/UnjaggyImageView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    .line 62
    :cond_25
    if-eqz v4, :cond_41

    .line 63
    if-eqz v2, :cond_3e

    .line 64
    invoke-virtual {p0}, Lcom/dropbox/android/widget/UnjaggyImageView;->getPaddingLeft()I

    move-result v2

    .line 65
    invoke-virtual {p0}, Lcom/dropbox/android/widget/UnjaggyImageView;->getPaddingRight()I

    move-result v3

    .line 66
    invoke-virtual {p0}, Lcom/dropbox/android/widget/UnjaggyImageView;->getPaddingTop()I

    move-result v5

    .line 67
    invoke-virtual {p0}, Lcom/dropbox/android/widget/UnjaggyImageView;->getPaddingBottom()I

    move-result v6

    .line 68
    sub-int/2addr v0, v3

    sub-int/2addr v1, v6

    invoke-virtual {v4, v2, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 71
    :cond_3e
    invoke-static {p1, v4}, Lcom/dropbox/android/widget/UnjaggyImageView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    .line 74
    :cond_41
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/widget/UnjaggyImageView;->a:Z

    .line 41
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/widget/UnjaggyImageView;->a:Z

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onScrollChanged(IIII)V

    .line 80
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/widget/UnjaggyImageView;->a:Z

    .line 91
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/widget/UnjaggyImageView;->a:Z

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method
