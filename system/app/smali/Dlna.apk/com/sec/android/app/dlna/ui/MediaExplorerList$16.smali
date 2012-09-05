.class Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;
.super Ljava/lang/Object;
.source "MediaExplorerList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/MediaExplorerList;->CreateThumbnailThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V
    .registers 2
    .parameter

    .prologue
    .line 1698
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 1700
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/DLNAManager;->getThumbnailHash()Ljava/util/HashMap;

    move-result-object v5

    .line 1702
    .local v5, thumbnail:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const/4 v2, 0x0

    .line 1703
    .local v2, pos:I
    const-string v6, "DLNA"

    const-string v7, "MediaExplorerList.mThumbnailCreateThread new"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    :cond_10
    :goto_10
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const/4 v7, 0x1

    #setter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isRunningThumbnailThread:Z
    invoke-static {v6, v7}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3702(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Z)Z

    .line 1706
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mBrowsedItemCnt:I
    invoke-static {v6}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1200(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I

    move-result v6

    if-ne v2, v6, :cond_23

    .line 1708
    const-wide/16 v6, 0x1f4

    :try_start_20
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_6f

    .line 1714
    :cond_23
    :goto_23
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsList:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v6}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v6

    if-eqz v6, :cond_3d

    if-eqz v5, :cond_3d

    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsList:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v6}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v6

    if-eqz v6, :cond_74

    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mPageItemCnt:I
    invoke-static {v6}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$800(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I

    move-result v6

    if-gtz v6, :cond_74

    .line 1716
    :cond_3d
    const-string v6, "DLNA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MediaExplorerList.contentsList is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsList:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v8}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    :cond_5b
    const-string v6, "DLNA"

    const-string v7, "MediaExplorerList.mThumbnailCreateThread done"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const/4 v7, 0x0

    #setter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isRunningThumbnailThread:Z
    invoke-static {v6, v7}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3702(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Z)Z

    .line 1763
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const/4 v7, 0x0

    #setter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mThumbnailCreateThread:Ljava/lang/Thread;
    invoke-static {v6, v7}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1102(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1764
    return-void

    .line 1709
    :catch_6f
    move-exception v0

    .line 1710
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_23

    .line 1722
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_74
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mThumbnailCreateThread:Ljava/lang/Thread;
    invoke-static {v6}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1100(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Ljava/lang/Thread;

    move-result-object v6

    if-eqz v6, :cond_5b

    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mPageItemCnt:I
    invoke-static {v6}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$800(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I

    move-result v6

    if-eq v2, v6, :cond_5b

    .line 1730
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mBrowsedItemCnt:I
    invoke-static {v6}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1200(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I

    move-result v6

    if-ge v2, v6, :cond_10

    .line 1732
    :try_start_8c
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsList:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v6}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/sec/android/app/dlna/model/Playlist;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 1735
    .local v1, filePath:Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 1738
    .local v4, thumb:Landroid/graphics/Bitmap;
    if-nez v4, :cond_cf

    .line 1739
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsList:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v6}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/sec/android/app/dlna/model/Playlist;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v3

    .line 1740
    .local v3, selectedItem:Lcom/samsung/api/ContentItem;
    if-eqz v3, :cond_cf

    .line 1741
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-virtual {v3}, Lcom/samsung/api/ContentItem;->getSnapImageUri()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getThumbFromURI(Lcom/samsung/api/ContentItem;Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v6, v3, v7}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3800(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Lcom/samsung/api/ContentItem;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1743
    if-eqz v4, :cond_cf

    .line 1745
    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1746
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    new-instance v7, Lcom/sec/android/app/dlna/ui/MediaExplorerList$16$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList$16$1;-><init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;)V

    invoke-virtual {v6, v7}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_cf} :catch_d3

    .line 1758
    .end local v1           #filePath:Ljava/lang/String;
    .end local v3           #selectedItem:Lcom/samsung/api/ContentItem;
    .end local v4           #thumb:Landroid/graphics/Bitmap;
    :cond_cf
    :goto_cf
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    .line 1755
    :catch_d3
    move-exception v0

    .line 1756
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

    goto :goto_cf
.end method
