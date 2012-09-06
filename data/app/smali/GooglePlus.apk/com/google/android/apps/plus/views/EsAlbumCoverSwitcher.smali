.class public Lcom/google/android/apps/plus/views/EsAlbumCoverSwitcher;
.super Landroid/widget/ImageSwitcher;
.source "EsAlbumCoverSwitcher.java"


# instance fields
.field private mCurrentRefIndex:I

.field private mRefArray:[Lcom/google/android/apps/plus/api/MediaRef;


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

.method public setRefs([Lcom/google/android/apps/plus/api/MediaRef;Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 9
    .parameter "refArray"
    .parameter "currentRef"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/apps/plus/views/EsAlbumCoverSwitcher;->mRefArray:[Lcom/google/android/apps/plus/api/MediaRef;

    .line 36
    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    .line 37
    const/4 v2, 0x0

    .line 38
    .local v2, index:I
    move-object v0, p1

    .local v0, arr$:[Lcom/google/android/apps/plus/api/MediaRef;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_a
    if-ge v1, v3, :cond_14

    aget-object v4, v0, v1

    .line 39
    .local v4, ref:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-virtual {p2, v4}, Lcom/google/android/apps/plus/api/MediaRef;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 44
    .end local v4           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_14
    iput v2, p0, Lcom/google/android/apps/plus/views/EsAlbumCoverSwitcher;->mCurrentRefIndex:I

    .line 46
    .end local v0           #arr$:[Lcom/google/android/apps/plus/api/MediaRef;
    .end local v1           #i$:I
    .end local v2           #index:I
    .end local v3           #len$:I
    :cond_16
    return-void

    .line 42
    .restart local v0       #arr$:[Lcom/google/android/apps/plus/api/MediaRef;
    .restart local v1       #i$:I
    .restart local v2       #index:I
    .restart local v3       #len$:I
    .restart local v4       #ref:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_17
    add-int/lit8 v2, v2, 0x1

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method
