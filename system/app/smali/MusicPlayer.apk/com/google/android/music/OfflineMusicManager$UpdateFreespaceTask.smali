.class Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;
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
    name = "UpdateFreespaceTask"
.end annotation


# instance fields
.field private mAdded:Z

.field private mArtistId:J

.field private mFromArtist:Z

.field private final mIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I

.field final synthetic this$0:Lcom/google/android/music/OfflineMusicManager;


# direct methods
.method public constructor <init>(Lcom/google/android/music/OfflineMusicManager;Ljava/util/List;IZ)V
    .registers 5
    .parameter
    .parameter
    .parameter "type"
    .parameter "added"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 751
    .local p2, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    iput-object p2, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->mIds:Ljava/util/List;

    .line 753
    iput p3, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->mType:I

    .line 754
    iput-boolean p4, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->mAdded:Z

    .line 755
    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 14

    .prologue
    const-wide/16 v11, 0x0

    const/4 v1, 0x1

    .line 766
    const-wide/16 v5, 0x0

    .line 767
    .local v5, totalSize:J
    iget-object v7, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #calls: Lcom/google/android/music/OfflineMusicManager;->waitForStoreConnection()V
    invoke-static {v7}, Lcom/google/android/music/OfflineMusicManager;->access$000(Lcom/google/android/music/OfflineMusicManager;)V

    .line 769
    :try_start_a
    iget-object v7, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->mIds:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 770
    .local v3, id:J
    iget v7, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->mType:I

    packed-switch v7, :pswitch_data_ac

    .line 778
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->mType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_40} :catch_40

    .line 781
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:J
    :catch_40
    move-exception v0

    .line 782
    .local v0, e:Landroid/os/RemoteException;
    const-string v7, "OfflineMusicManager"

    const-string v8, "Remote error when trying to get size to download"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_48
    return-void

    .line 772
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #id:J
    :pswitch_49
    :try_start_49
    iget-object v7, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #getter for: Lcom/google/android/music/OfflineMusicManager;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v7}, Lcom/google/android/music/OfflineMusicManager;->access$100(Lcom/google/android/music/OfflineMusicManager;)Lcom/google/android/music/store/IStoreService;

    move-result-object v7

    invoke-interface {v7, v3, v4}, Lcom/google/android/music/store/IStoreService;->getSizeToDownloadAlbum(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 773
    goto :goto_10

    .line 775
    :pswitch_55
    iget-object v7, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #getter for: Lcom/google/android/music/OfflineMusicManager;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v7}, Lcom/google/android/music/OfflineMusicManager;->access$100(Lcom/google/android/music/OfflineMusicManager;)Lcom/google/android/music/store/IStoreService;

    move-result-object v7

    invoke-interface {v7, v3, v4}, Lcom/google/android/music/store/IStoreService;->getSizeToDownloadPlaylist(J)J
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_5e} :catch_40

    move-result-wide v7

    add-long/2addr v5, v7

    .line 776
    goto :goto_10

    .line 786
    .end local v3           #id:J
    :cond_61
    iget-object v7, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #getter for: Lcom/google/android/music/OfflineMusicManager;->mSpaceVariablesLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/google/android/music/OfflineMusicManager;->access$2100(Lcom/google/android/music/OfflineMusicManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 787
    :try_start_68
    iget-object v7, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #getter for: Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J
    invoke-static {v7}, Lcom/google/android/music/OfflineMusicManager;->access$2300(Lcom/google/android/music/OfflineMusicManager;)J

    move-result-wide v9

    cmp-long v7, v9, v11

    if-lez v7, :cond_92

    .line 788
    .local v1, freeSpaceAvailable:Z
    :goto_72
    iget-boolean v7, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->mAdded:Z

    if-eqz v7, :cond_94

    .line 789
    iget-object v7, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v7, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->access$2322(Lcom/google/android/music/OfflineMusicManager;J)J

    .line 790
    if-eqz v1, :cond_8d

    iget-object v7, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #getter for: Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J
    invoke-static {v7}, Lcom/google/android/music/OfflineMusicManager;->access$2300(Lcom/google/android/music/OfflineMusicManager;)J

    move-result-wide v9

    cmp-long v7, v9, v11

    if-gtz v7, :cond_8d

    .line 791
    iget-object v7, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    const/4 v9, 0x1

    #setter for: Lcom/google/android/music/OfflineMusicManager;->mAvailabilityTransition:Z
    invoke-static {v7, v9}, Lcom/google/android/music/OfflineMusicManager;->access$2502(Lcom/google/android/music/OfflineMusicManager;Z)Z

    .line 799
    :cond_8d
    :goto_8d
    monitor-exit v8

    goto :goto_48

    .end local v1           #freeSpaceAvailable:Z
    :catchall_8f
    move-exception v7

    monitor-exit v8
    :try_end_91
    .catchall {:try_start_68 .. :try_end_91} :catchall_8f

    throw v7

    .line 787
    :cond_92
    const/4 v1, 0x0

    goto :goto_72

    .line 794
    .restart local v1       #freeSpaceAvailable:Z
    :cond_94
    :try_start_94
    iget-object v7, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v7, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->access$2314(Lcom/google/android/music/OfflineMusicManager;J)J

    .line 795
    if-nez v1, :cond_8d

    iget-object v7, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #getter for: Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J
    invoke-static {v7}, Lcom/google/android/music/OfflineMusicManager;->access$2300(Lcom/google/android/music/OfflineMusicManager;)J

    move-result-wide v9

    cmp-long v7, v9, v11

    if-lez v7, :cond_8d

    .line 796
    iget-object v7, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    const/4 v9, 0x1

    #setter for: Lcom/google/android/music/OfflineMusicManager;->mAvailabilityTransition:Z
    invoke-static {v7, v9}, Lcom/google/android/music/OfflineMusicManager;->access$2502(Lcom/google/android/music/OfflineMusicManager;Z)Z
    :try_end_ab
    .catchall {:try_start_94 .. :try_end_ab} :catchall_8f

    goto :goto_8d

    .line 770
    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_49
        :pswitch_55
    .end packed-switch
.end method

.method public markAsFromArtist(J)V
    .registers 5
    .parameter "artistId"

    .prologue
    .line 758
    iget v0, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 759
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not mark a TYPE_PLAYLIST with an artist id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->mFromArtist:Z

    .line 762
    iput-wide p1, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->mArtistId:J

    .line 763
    return-void
.end method

.method public taskCompleted()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 803
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #calls: Lcom/google/android/music/OfflineMusicManager;->notifyAvailableSpaceChangedListener()V
    invoke-static {v0}, Lcom/google/android/music/OfflineMusicManager;->access$2400(Lcom/google/android/music/OfflineMusicManager;)V

    .line 804
    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    iget v0, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->mType:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_26

    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->mIds:Ljava/util/List;

    :goto_f
    #calls: Lcom/google/android/music/OfflineMusicManager;->notifyAlbumChangedListeners(Ljava/util/List;)V
    invoke-static {v2, v0}, Lcom/google/android/music/OfflineMusicManager;->access$800(Lcom/google/android/music/OfflineMusicManager;Ljava/util/List;)V

    .line 806
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    iget-boolean v2, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->mFromArtist:Z

    if-eqz v2, :cond_22

    iget-wide v1, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->mArtistId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :cond_22
    #calls: Lcom/google/android/music/OfflineMusicManager;->notifyArtistChangedListeners(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/google/android/music/OfflineMusicManager;->access$300(Lcom/google/android/music/OfflineMusicManager;Ljava/util/List;)V

    .line 808
    return-void

    :cond_26
    move-object v0, v1

    .line 804
    goto :goto_f
.end method
