.class Lcom/google/android/apps/plus/phone/AlbumViewAdapter$1;
.super Ljava/lang/Object;
.source "AlbumViewAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/AlbumViewAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/google/android/apps/plus/content/EsAccount;Landroid/widget/AbsListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/AlbumViewAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/AlbumViewAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/AlbumViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 52
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/AlbumViewAdapter;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/AlbumViewAdapter;

    #getter for: Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mDobjanschiContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->access$000(Lcom/google/android/apps/plus/phone/AlbumViewAdapter;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    #calls: Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->bindThumbnail(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;)V
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->access$100(Lcom/google/android/apps/plus/phone/AlbumViewAdapter;Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 53
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/AlbumViewAdapter;

    #getter for: Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mViews:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->access$200(Lcom/google/android/apps/plus/phone/AlbumViewAdapter;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/api/MediaRef;

    .line 55
    .local v0, ref:Lcom/google/android/apps/plus/api/MediaRef;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/AlbumViewAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/AlbumViewAdapter;

    #getter for: Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->mViews:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->access$200(Lcom/google/android/apps/plus/phone/AlbumViewAdapter;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 56
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/service/EsService;->cancelCoverThumbnailLoad(Lcom/google/android/apps/plus/api/MediaRef;I)V

    .line 58
    :cond_2c
    return-void
.end method
