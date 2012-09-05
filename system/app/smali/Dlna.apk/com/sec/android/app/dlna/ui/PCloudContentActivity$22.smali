.class Lcom/sec/android/app/dlna/ui/PCloudContentActivity$22;
.super Ljava/lang/Object;
.source "PCloudContentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->CreateThumbnailThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$22;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 747
    const-string v0, "DLNA"

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$22;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 750
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/DLNAManager;->getThumbnailHash()Ljava/util/HashMap;

    move-result-object v5

    .line 752
    .local v5, thumbnail:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const/4 v2, 0x0

    .line 753
    .local v2, pos:I
    const-string v6, "DLNA"

    const-string v7, "Started "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const-string v6, "DLNA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "thumbnail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_28
    :goto_28
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$22;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v6}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$800(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v6

    if-eqz v6, :cond_46

    if-eqz v5, :cond_46

    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$22;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v6}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$800(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v6

    if-eqz v6, :cond_ab

    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$22;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v6}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$800(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/model/Playlist;->size()I

    move-result v6

    if-gtz v6, :cond_ab

    .line 758
    :cond_46
    const-string v6, "DLNA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contentsList "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$22;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v8}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$800(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const-string v6, "DLNA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contentsList size:\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$22;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v8}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$800(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/dlna/model/Playlist;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const-string v6, "DLNA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "thumbnail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_9e
    const-string v6, "DLNA"

    const-string v7, "Terminated "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$22;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mThumbnailCreateThread:Ljava/lang/Thread;

    .line 801
    return-void

    .line 764
    :cond_ab
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$22;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    iget-object v6, v6, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mThumbnailCreateThread:Ljava/lang/Thread;

    if-eqz v6, :cond_9e

    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$22;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v6}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$800(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/model/Playlist;->size()I

    move-result v6

    if-eq v2, v6, :cond_9e

    .line 768
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$22;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v6}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$800(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/model/Playlist;->size()I

    move-result v6

    if-ge v2, v6, :cond_28

    .line 770
    :try_start_c9
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$22;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v6}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$800(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/sec/android/app/dlna/model/Playlist;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 773
    .local v1, filePath:Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 774
    .local v4, thumb:Landroid/graphics/Bitmap;
    const-string v6, "DLNA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "make thumbnail Pos : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " thumb : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    if-nez v4, :cond_13f

    .line 778
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$22;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v6}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$800(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/sec/android/app/dlna/model/Playlist;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v3

    .line 780
    .local v3, selectedItem:Lcom/samsung/api/ContentItem;
    if-eqz v3, :cond_13f

    .line 782
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$22;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    invoke-virtual {v3}, Lcom/samsung/api/ContentItem;->getThumbnailResource()Lcom/samsung/api/ContentResource;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->getThumbFromURI(Lcom/samsung/api/ContentItem;Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v6, v3, v7}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$1500(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;Lcom/samsung/api/ContentItem;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 785
    if-eqz v4, :cond_13f

    .line 786
    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$22;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->hasWindowFocus()Z

    move-result v6

    if-eqz v6, :cond_13f

    .line 788
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$22;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #calls: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->inNotifyDataSetChanged(I)V
    invoke-static {v6, v2}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$1600(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;I)V
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_13f} :catch_143

    .line 796
    .end local v1           #filePath:Ljava/lang/String;
    .end local v3           #selectedItem:Lcom/samsung/api/ContentItem;
    .end local v4           #thumb:Landroid/graphics/Bitmap;
    :cond_13f
    :goto_13f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_28

    .line 793
    :catch_143
    move-exception v0

    .line 794
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "DLNA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception occurred : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13f
.end method
