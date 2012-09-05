.class Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter$1;
.super Ljava/lang/Object;
.source "PhotosHomeGridAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/google/android/apps/plus/content/EsAccount;Landroid/widget/AbsListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 10
    .parameter "view"

    .prologue
    const/4 v7, 0x0

    .line 65
    const v6, 0x7f0d0120

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;

    .line 68
    .local v5, viewItem:Lcom/google/android/apps/plus/views/PhotoHomeViewItem;
    if-nez v5, :cond_d

    .line 90
    :cond_c
    return-void

    .line 72
    :cond_d
    invoke-virtual {v5, v7, v7}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->setPhoto(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;)V

    .line 73
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;

    #getter for: Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->mViews:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->access$000(Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->getMediaRefs()[Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v4

    .line 77
    .local v4, refArray:[Lcom/google/android/apps/plus/api/MediaRef;
    if-eqz v4, :cond_c

    .line 81
    move-object v0, v4

    .local v0, arr$:[Lcom/google/android/apps/plus/api/MediaRef;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_22
    if-ge v1, v2, :cond_c

    aget-object v3, v0, v1

    .line 82
    .local v3, ref:Lcom/google/android/apps/plus/api/MediaRef;
    if-nez v3, :cond_2b

    .line 81
    :cond_28
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 86
    :cond_2b
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;

    #calls: Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->removeViewFromRefs(Lcom/google/android/apps/plus/api/MediaRef;Lcom/google/android/apps/plus/views/PhotoHomeViewItem;)Ljava/util/HashSet;
    invoke-static {v6, v3, v5}, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->access$100(Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;Lcom/google/android/apps/plus/api/MediaRef;Lcom/google/android/apps/plus/views/PhotoHomeViewItem;)Ljava/util/HashSet;

    move-result-object v6

    if-nez v6, :cond_28

    .line 87
    const/4 v6, 0x2

    invoke-static {v3, v6}, Lcom/google/android/apps/plus/service/EsService;->cancelCoverThumbnailLoad(Lcom/google/android/apps/plus/api/MediaRef;I)V

    goto :goto_28
.end method
