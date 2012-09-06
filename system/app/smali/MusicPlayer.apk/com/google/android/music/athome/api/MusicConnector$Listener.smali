.class public Lcom/google/android/music/athome/api/MusicConnector$Listener;
.super Landroid/support/place/connector/EventListener$Listener;
.source "MusicConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/api/MusicConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1849
    invoke-direct {p0}, Landroid/support/place/connector/EventListener$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllSongsRemoved(JILandroid/support/place/rpc/RpcContext;)V
    .registers 5
    .parameter "sessionId"
    .parameter "newQueueVersion"
    .parameter "context"

    .prologue
    .line 1874
    return-void
.end method

.method public onPlayStateChanged(JLcom/google/android/music/athome/api/AtHomePlayState;Landroid/support/place/rpc/RpcContext;)V
    .registers 5
    .parameter "sessionId"
    .parameter "state"
    .parameter "context"

    .prologue
    .line 1883
    return-void
.end method

.method public onRegisteredSubmitter(JLcom/google/android/music/athome/api/SubmitterInfo;Landroid/support/place/rpc/RpcContext;)V
    .registers 5
    .parameter "sessionId"
    .parameter "submitter"
    .parameter "context"

    .prologue
    .line 1892
    return-void
.end method

.method public onRepeatModeChanged(JILandroid/support/place/rpc/RpcContext;)V
    .registers 5
    .parameter "sessionId"
    .parameter "repeatMode"
    .parameter "context"

    .prologue
    .line 1889
    return-void
.end method

.method public onSessionEnded(JLandroid/support/place/rpc/RpcContext;)V
    .registers 4
    .parameter "sessionId"
    .parameter "context"

    .prologue
    .line 1853
    return-void
.end method

.method public onSessionVariableChanged(JLjava/lang/String;Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)V
    .registers 6
    .parameter "sessionId"
    .parameter "name"
    .parameter "value"
    .parameter "context"

    .prologue
    .line 1895
    return-void
.end method

.method public onShuffleChanged(JZLandroid/support/place/rpc/RpcContext;)V
    .registers 5
    .parameter "sessionId"
    .parameter "shuffled"
    .parameter "context"

    .prologue
    .line 1886
    return-void
.end method

.method public onSongMoved(JIJJLandroid/support/place/rpc/RpcContext;)V
    .registers 9
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter "movedQueueId"
    .parameter "desiredPosisionQueueId"
    .parameter "context"

    .prologue
    .line 1868
    return-void
.end method

.method public onSongRangeRemoved(JIJJLandroid/support/place/rpc/RpcContext;)V
    .registers 9
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter "firstSongQueueId"
    .parameter "lastSongQueueId"
    .parameter "context"

    .prologue
    .line 1877
    return-void
.end method

.method public onSongRemoved(JIJLandroid/support/place/rpc/RpcContext;)V
    .registers 7
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter "songQueueId"
    .parameter "context"

    .prologue
    .line 1871
    return-void
.end method

.method public onSongsAppended(JILjava/util/List;Landroid/support/place/rpc/RpcContext;)V
    .registers 6
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Landroid/support/place/rpc/RpcContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1856
    .local p4, addedSongs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    return-void
.end method

.method public onSongsInserted(JIJLjava/util/List;Landroid/support/place/rpc/RpcContext;)V
    .registers 8
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter "insertAfterqueueId"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Landroid/support/place/rpc/RpcContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1862
    .local p6, songs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    return-void
.end method

.method public onSongsInsertedAndPositioned(JIJLjava/util/List;Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)V
    .registers 9
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter "lastUnaffectedSongId"
    .parameter
    .parameter "previousSongIds"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Landroid/support/place/rpc/RpcData;",
            "Landroid/support/place/rpc/RpcContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1901
    .local p6, newSongs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    return-void
.end method

.method public onSongsPrepended(JILjava/util/List;Landroid/support/place/rpc/RpcContext;)V
    .registers 6
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Landroid/support/place/rpc/RpcContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1859
    .local p4, songs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    return-void
.end method

.method public onSongsReodered(JIJLandroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)V
    .registers 8
    .parameter "sessionId"
    .parameter "newQueueVersion"
    .parameter "lastUnaffectedSongId"
    .parameter "reorderedSongIds"
    .parameter "context"

    .prologue
    .line 1898
    return-void
.end method

.method public onSongsUpdated(JILjava/util/List;Landroid/support/place/rpc/RpcContext;)V
    .registers 6
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Landroid/support/place/rpc/RpcContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1865
    .local p4, songs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    return-void
.end method

.method public onSubmitterSongsRemoved(JIJLandroid/support/place/rpc/RpcContext;)V
    .registers 7
    .parameter "sessionId"
    .parameter "newQueueVersion"
    .parameter "submitterId"
    .parameter "context"

    .prologue
    .line 1880
    return-void
.end method
