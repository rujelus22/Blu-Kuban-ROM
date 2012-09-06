.class final Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ScreenshotsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/ScreenshotsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImagePagerAdapter"
.end annotation


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mContext:Landroid/content/Context;

.field private final mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .registers 4
    .parameter
    .parameter "context"
    .parameter "bitmapLoader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/google/android/finsky/utils/BitmapLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, images:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;->mImages:Ljava/util/List;

    .line 64
    iput-object p2, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;->mContext:Landroid/content/Context;

    .line 65
    iput-object p3, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 66
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 90
    move-object v0, p3

    check-cast v0, Lcom/google/android/finsky/layout/FifeImageView;

    .line 91
    .local v0, imageView:Lcom/google/android/finsky/layout/FifeImageView;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 92
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 6
    .parameter "container"
    .parameter "position"

    .prologue
    const/4 v2, -0x1

    .line 80
    new-instance v0, Lcom/google/android/finsky/layout/FifeImageView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/layout/FifeImageView;-><init>(Landroid/content/Context;)V

    .line 81
    .local v0, imageView:Lcom/google/android/finsky/layout/FifeImageView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/FifeImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v1, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;->mImages:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .parameter "view"
    .parameter "object"

    .prologue
    .line 75
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
