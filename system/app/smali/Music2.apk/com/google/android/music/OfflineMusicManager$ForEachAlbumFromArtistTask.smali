.class Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;
.super Ljava/lang/Object;
.source "OfflineMusicManager.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/OfflineMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForEachAlbumFromArtistTask"
.end annotation


# instance fields
.field private final mAlbumIds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mArtistId:J

.field private final mOp:Z

.field final synthetic this$0:Lcom/google/android/music/OfflineMusicManager;


# direct methods
.method public constructor <init>(Lcom/google/android/music/OfflineMusicManager;JZ)V
    .registers 6
    .parameter
    .parameter "artistId"
    .parameter "op"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->mAlbumIds:Ljava/util/LinkedList;

    .line 236
    iput-wide p2, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->mArtistId:J

    .line 237
    iput-boolean p4, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->mOp:Z

    .line 238
    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 9

    .prologue
    .line 241
    iget-object v4, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #calls: Lcom/google/android/music/OfflineMusicManager;->waitForStoreConnection()V
    invoke-static {v4}, Lcom/google/android/music/OfflineMusicManager;->access$000(Lcom/google/android/music/OfflineMusicManager;)V

    .line 245
    :try_start_5
    iget-object v4, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #getter for: Lcom/google/android/music/OfflineMusicManager;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v4}, Lcom/google/android/music/OfflineMusicManager;->access$100(Lcom/google/android/music/OfflineMusicManager;)Lcom/google/android/music/store/IStoreService;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->mArtistId:J

    invoke-interface {v4, v5, v6}, Lcom/google/android/music/store/IStoreService;->getAlbumIdsAndAlbumKeepOnIdsForArtist(J)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 248
    .local v2, albums:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 249
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 257
    .local v0, albumId:J
    iget-boolean v4, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->mOp:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_68

    .line 258
    iget-object v4, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #calls: Lcom/google/android/music/OfflineMusicManager;->markAlbum(J)Z
    invoke-static {v4, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->access$600(Lcom/google/android/music/OfflineMusicManager;J)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 259
    iget-object v4, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->mAlbumIds:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_45} :catch_46

    goto :goto_19

    .line 271
    .end local v0           #albumId:J
    .end local v2           #albums:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    :catch_46
    move-exception v3

    .line 272
    .local v3, e:Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Store error trying to getAlbumIdsAndAlbumKeepOnIdsForArtist("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->mArtistId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 262
    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v0       #albumId:J
    .restart local v2       #albums:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    :cond_68
    :try_start_68
    iget-object v4, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #calls: Lcom/google/android/music/OfflineMusicManager;->clearAlbum(J)Z
    invoke-static {v4, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->access$700(Lcom/google/android/music/OfflineMusicManager;J)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 263
    iget-object v4, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->mAlbumIds:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_79
    iget-object v4, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    iget-wide v5, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->mArtistId:J

    #calls: Lcom/google/android/music/OfflineMusicManager;->clearArtistsOfAlbum(JJ)Z
    invoke-static {v4, v0, v1, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->access$500(Lcom/google/android/music/OfflineMusicManager;JJ)Z
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_80} :catch_46

    goto :goto_19

    .line 275
    .end local v0           #albumId:J
    :cond_81
    return-void
.end method

.method public taskCompleted()V
    .registers 6

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->mAlbumIds:Ljava/util/LinkedList;

    #calls: Lcom/google/android/music/OfflineMusicManager;->notifyAlbumChangedListeners(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/google/android/music/OfflineMusicManager;->access$800(Lcom/google/android/music/OfflineMusicManager;Ljava/util/List;)V

    .line 285
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    iget-wide v1, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->mArtistId:J

    iget-object v3, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->mAlbumIds:Ljava/util/LinkedList;

    iget-boolean v4, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->mOp:Z

    #calls: Lcom/google/android/music/OfflineMusicManager;->submitUpdateFreespaceTaskForArtist(JLjava/util/List;Z)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->access$900(Lcom/google/android/music/OfflineMusicManager;JLjava/util/List;Z)V

    .line 286
    return-void
.end method
