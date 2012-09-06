.class Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;
.super Ljava/lang/Object;
.source "ShareFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaGallery"
.end annotation


# instance fields
.field private mGalleryView:Landroid/view/ViewGroup;

.field private mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/ViewGroup;)V
    .registers 8
    .parameter "context"
    .parameter
    .parameter "galleryView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    const/4 v3, 0x0

    .line 2019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2020
    new-instance v1, Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    invoke-direct {v1, p1, p2}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    .line 2021
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;->mGalleryView:Landroid/view/ViewGroup;

    .line 2023
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 2024
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;->mGalleryView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    invoke-virtual {v2, v0, v3, v3}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2023
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2026
    :cond_24
    return-void
.end method

.method static synthetic access$2700(Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2012
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;->add(Lcom/google/android/apps/plus/api/MediaRef;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2012
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;->remove(Lcom/google/android/apps/plus/api/MediaRef;)V

    return-void
.end method

.method private add(Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 6
    .parameter "mediaRef"

    .prologue
    const/4 v3, 0x0

    .line 2029
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->add(Lcom/google/android/apps/plus/api/MediaRef;)V

    .line 2030
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;->mGalleryView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2031
    return-void
.end method

.method private remove(Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 6
    .parameter "mediaRef"

    .prologue
    .line 2034
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->remove(Lcom/google/android/apps/plus/api/MediaRef;)V

    .line 2036
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;->mGalleryView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_25

    .line 2037
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;->mGalleryView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2038
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/api/MediaRef;

    .line 2039
    .local v2, ref:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/api/MediaRef;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 2040
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;->mGalleryView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2044
    .end local v0           #child:Landroid/view/View;
    .end local v2           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_25
    return-void

    .line 2036
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #ref:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method
