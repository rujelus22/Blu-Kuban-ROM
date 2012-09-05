.class Lcom/google/android/music/dl/DownloadManager$4;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/DownloadManager;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/DownloadManager;)V
    .registers 2
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadManager$4;->this$0:Lcom/google/android/music/dl/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDoNotDeletes()Ljava/util/HashSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/music/dl/ContentIdentifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadManager$4;->this$0:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/google/android/music/dl/DownloadManager;->access$400(Lcom/google/android/music/dl/DownloadManager;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4

    .line 248
    :try_start_7
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/google/android/music/dl/DownloadManager$4;->this$0:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/google/android/music/dl/DownloadManager;->access$400(Lcom/google/android/music/dl/DownloadManager;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 249
    .local v2, ret:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/google/android/music/dl/ContentIdentifier;>;"
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadManager$4;->this$0:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/google/android/music/dl/DownloadManager;->access$400(Lcom/google/android/music/dl/DownloadManager;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/DownloadOrder;

    .line 250
    .local v1, order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 253
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #order:Lcom/google/android/music/dl/DownloadOrder;
    .end local v2           #ret:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/google/android/music/dl/ContentIdentifier;>;"
    :catchall_34
    move-exception v3

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v3

    .line 252
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #ret:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/google/android/music/dl/ContentIdentifier;>;"
    :cond_37
    :try_start_37
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_34

    return-object v2
.end method

.method public requestDeleteFile(Ljava/io/File;)Z
    .registers 10
    .parameter "file"

    .prologue
    .line 261
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager$4;->this$0:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/google/android/music/dl/DownloadManager;->access$400(Lcom/google/android/music/dl/DownloadManager;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 262
    :try_start_7
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager$4;->this$0:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/google/android/music/dl/DownloadManager;->access$400(Lcom/google/android/music/dl/DownloadManager;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/dl/DownloadOrder;

    .line 263
    .local v2, order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->getLocalLocation()Ljava/io/File;

    move-result-object v1

    .line 264
    .local v1, localLocation:Ljava/io/File;
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 266
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager$4;->this$0:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->LOGV:Z
    invoke-static {v4}, Lcom/google/android/music/dl/DownloadManager;->access$500(Lcom/google/android/music/dl/DownloadManager;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 267
    const-string v4, "MusicDL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " as it is protected by DoNotDelete."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_5b
    const/4 v3, 0x0

    monitor-exit v5

    .line 277
    .end local v1           #localLocation:Ljava/io/File;
    .end local v2           #order:Lcom/google/android/music/dl/DownloadOrder;
    :goto_5d
    return v3

    .line 273
    :cond_5e
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    .line 274
    .local v3, res:Z
    if-nez v3, :cond_80

    .line 275
    const-string v4, "MusicDL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not delete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_80
    monitor-exit v5

    goto :goto_5d

    .line 278
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #res:Z
    :catchall_82
    move-exception v4

    monitor-exit v5
    :try_end_84
    .catchall {:try_start_7 .. :try_end_84} :catchall_82

    throw v4
.end method
