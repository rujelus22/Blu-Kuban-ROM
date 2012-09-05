.class public Lcom/google/android/apps/plus/views/EsAlbumCoverSwitcher;
.super Landroid/widget/ImageSwitcher;
.source "EsAlbumCoverSwitcher.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ImageSwitcher;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .parameter "drawable"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsAlbumCoverSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 79
    .local v0, context:Landroid/content/Context;
    if-nez p1, :cond_d

    .line 80
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsAlbumCoverSwitcher;->removeAllViews()V

    .line 90
    :cond_9
    :goto_9
    invoke-super {p0, p1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    return-void

    .line 81
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsAlbumCoverSwitcher;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_9

    .line 82
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 83
    .local v1, newImageView:Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EsAlbumCoverSwitcher;->addView(Landroid/view/View;)V

    .line 86
    new-instance v1, Landroid/widget/ImageView;

    .end local v1           #newImageView:Landroid/widget/ImageView;
    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 87
    .restart local v1       #newImageView:Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 88
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EsAlbumCoverSwitcher;->addView(Landroid/view/View;)V

    goto :goto_9
.end method
