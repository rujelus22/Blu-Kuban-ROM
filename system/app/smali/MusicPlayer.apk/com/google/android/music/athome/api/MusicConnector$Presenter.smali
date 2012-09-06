.class Lcom/google/android/music/athome/api/MusicConnector$Presenter;
.super Landroid/support/place/connector/EventListener;
.source "MusicConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/api/MusicConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Presenter"
.end annotation


# instance fields
.field private _listener:Lcom/google/android/music/athome/api/MusicConnector$Listener;

.field final synthetic this$0:Lcom/google/android/music/athome/api/MusicConnector;


# direct methods
.method public constructor <init>(Lcom/google/android/music/athome/api/MusicConnector;Landroid/support/place/connector/Broker;Lcom/google/android/music/athome/api/MusicConnector$Listener;)V
    .registers 4
    .parameter
    .parameter "broker"
    .parameter "listener"

    .prologue
    .line 1907
    iput-object p1, p0, Lcom/google/android/music/athome/api/MusicConnector$Presenter;->this$0:Lcom/google/android/music/athome/api/MusicConnector;

    .line 1908
    invoke-direct {p0, p2, p3}, Landroid/support/place/connector/EventListener;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/connector/EventListener$Listener;)V

    .line 1909
    iput-object p3, p0, Lcom/google/android/music/athome/api/MusicConnector$Presenter;->_listener:Lcom/google/android/music/athome/api/MusicConnector$Listener;

    .line 1910
    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 37
    .parameter "action"
    .parameter "requestParam"
    .parameter "context"
    .parameter "errorParam"

    .prologue
    .line 1913
    new-instance v30, Landroid/support/place/rpc/RpcData;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 1914
    .local v30, request:Landroid/support/place/rpc/RpcData;
    const/16 v31, 0x0

    .line 1915
    .local v31, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "onSessionEnded"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1917
    const-string v2, "sessionId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1918
    .local v3, _arg0:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/athome/api/MusicConnector$Presenter;->_listener:Lcom/google/android/music/athome/api/MusicConnector$Listener;

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/music/athome/api/MusicConnector$Listener;->onSessionEnded(JLandroid/support/place/rpc/RpcContext;)V

    .line 2069
    :goto_26
    if-eqz v31, :cond_348

    .line 2070
    invoke-virtual/range {v31 .. v31}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v2

    .line 2073
    .end local v3           #_arg0:J
    :goto_2c
    return-object v2

    .line 1920
    :cond_2d
    const-string v2, "onSongsAppended"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1922
    const-string v2, "sessionId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1924
    .restart local v3       #_arg0:J
    const-string v2, "newVersion"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 1926
    .local v5, _arg1:I
    const-string v2, "addedSongs"

    sget-object v7, Lcom/google/android/music/athome/api/AtHomeSongInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v7}, Landroid/support/place/rpc/RpcData;->getFlattenableList(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Ljava/util/List;

    move-result-object v6

    .line 1927
    .local v6, _arg2:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/athome/api/MusicConnector$Presenter;->_listener:Lcom/google/android/music/athome/api/MusicConnector$Listener;

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/music/athome/api/MusicConnector$Listener;->onSongsAppended(JILjava/util/List;Landroid/support/place/rpc/RpcContext;)V

    goto :goto_26

    .line 1929
    .end local v3           #_arg0:J
    .end local v5           #_arg1:I
    .end local v6           #_arg2:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :cond_5b
    const-string v2, "onSongsPrepended"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 1931
    const-string v2, "sessionId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1933
    .restart local v3       #_arg0:J
    const-string v2, "newVersion"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 1935
    .restart local v5       #_arg1:I
    const-string v2, "songs"

    sget-object v7, Lcom/google/android/music/athome/api/AtHomeSongInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v7}, Landroid/support/place/rpc/RpcData;->getFlattenableList(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Ljava/util/List;

    move-result-object v6

    .line 1936
    .restart local v6       #_arg2:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/athome/api/MusicConnector$Presenter;->_listener:Lcom/google/android/music/athome/api/MusicConnector$Listener;

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/music/athome/api/MusicConnector$Listener;->onSongsPrepended(JILjava/util/List;Landroid/support/place/rpc/RpcContext;)V

    goto :goto_26

    .line 1938
    .end local v3           #_arg0:J
    .end local v5           #_arg1:I
    .end local v6           #_arg2:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :cond_89
    const-string v2, "onSongsInserted"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 1940
    const-string v2, "sessionId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1942
    .restart local v3       #_arg0:J
    const-string v2, "newVersion"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 1944
    .restart local v5       #_arg1:I
    const-string v2, "insertAfterqueueId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1946
    .local v11, _arg2:J
    const-string v2, "songs"

    sget-object v7, Lcom/google/android/music/athome/api/AtHomeSongInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v7}, Landroid/support/place/rpc/RpcData;->getFlattenableList(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Ljava/util/List;

    move-result-object v13

    .line 1947
    .local v13, _arg3:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/athome/api/MusicConnector$Presenter;->_listener:Lcom/google/android/music/athome/api/MusicConnector$Listener;

    move-wide v8, v3

    move v10, v5

    move-object/from16 v14, p3

    invoke-virtual/range {v7 .. v14}, Lcom/google/android/music/athome/api/MusicConnector$Listener;->onSongsInserted(JIJLjava/util/List;Landroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_26

    .line 1949
    .end local v3           #_arg0:J
    .end local v5           #_arg1:I
    .end local v11           #_arg2:J
    .end local v13           #_arg3:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :cond_c2
    const-string v2, "onSongsUpdated"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 1951
    const-string v2, "sessionId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1953
    .restart local v3       #_arg0:J
    const-string v2, "newVersion"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 1955
    .restart local v5       #_arg1:I
    const-string v2, "songs"

    sget-object v7, Lcom/google/android/music/athome/api/AtHomeSongInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v7}, Landroid/support/place/rpc/RpcData;->getFlattenableList(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Ljava/util/List;

    move-result-object v6

    .line 1956
    .restart local v6       #_arg2:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/athome/api/MusicConnector$Presenter;->_listener:Lcom/google/android/music/athome/api/MusicConnector$Listener;

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/music/athome/api/MusicConnector$Listener;->onSongsUpdated(JILjava/util/List;Landroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_26

    .line 1958
    .end local v3           #_arg0:J
    .end local v5           #_arg1:I
    .end local v6           #_arg2:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :cond_f1
    const-string v2, "onSongMoved"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12b

    .line 1960
    const-string v2, "sessionId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1962
    .restart local v3       #_arg0:J
    const-string v2, "newVersion"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 1964
    .restart local v5       #_arg1:I
    const-string v2, "movedQueueId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1966
    .restart local v11       #_arg2:J
    const-string v2, "desiredPosisionQueueId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 1967
    .local v20, _arg3:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/athome/api/MusicConnector$Presenter;->_listener:Lcom/google/android/music/athome/api/MusicConnector$Listener;

    move-wide v15, v3

    move/from16 v17, v5

    move-wide/from16 v18, v11

    move-object/from16 v22, p3

    invoke-virtual/range {v14 .. v22}, Lcom/google/android/music/athome/api/MusicConnector$Listener;->onSongMoved(JIJJLandroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_26

    .line 1969
    .end local v3           #_arg0:J
    .end local v5           #_arg1:I
    .end local v11           #_arg2:J
    .end local v20           #_arg3:J
    :cond_12b
    const-string v2, "onSongRemoved"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_160

    .line 1971
    const-string v2, "sessionId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1973
    .restart local v3       #_arg0:J
    const-string v2, "newVersion"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 1975
    .restart local v5       #_arg1:I
    const-string v2, "songQueueId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1976
    .restart local v11       #_arg2:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/athome/api/MusicConnector$Presenter;->_listener:Lcom/google/android/music/athome/api/MusicConnector$Listener;

    move-object/from16 v22, v0

    move-wide/from16 v23, v3

    move/from16 v25, v5

    move-wide/from16 v26, v11

    move-object/from16 v28, p3

    invoke-virtual/range {v22 .. v28}, Lcom/google/android/music/athome/api/MusicConnector$Listener;->onSongRemoved(JIJLandroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_26

    .line 1978
    .end local v3           #_arg0:J
    .end local v5           #_arg1:I
    .end local v11           #_arg2:J
    :cond_160
    const-string v2, "onAllSongsRemoved"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_185

    .line 1980
    const-string v2, "sessionId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1982
    .restart local v3       #_arg0:J
    const-string v2, "newQueueVersion"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 1983
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/athome/api/MusicConnector$Presenter;->_listener:Lcom/google/android/music/athome/api/MusicConnector$Listener;

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/google/android/music/athome/api/MusicConnector$Listener;->onAllSongsRemoved(JILandroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_26

    .line 1985
    .end local v3           #_arg0:J
    .end local v5           #_arg1:I
    :cond_185
    const-string v2, "onSongRangeRemoved"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bf

    .line 1987
    const-string v2, "sessionId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1989
    .restart local v3       #_arg0:J
    const-string v2, "newVersion"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 1991
    .restart local v5       #_arg1:I
    const-string v2, "firstSongQueueId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1993
    .restart local v11       #_arg2:J
    const-string v2, "lastSongQueueId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 1994
    .restart local v20       #_arg3:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/athome/api/MusicConnector$Presenter;->_listener:Lcom/google/android/music/athome/api/MusicConnector$Listener;

    move-wide v15, v3

    move/from16 v17, v5

    move-wide/from16 v18, v11

    move-object/from16 v22, p3

    invoke-virtual/range {v14 .. v22}, Lcom/google/android/music/athome/api/MusicConnector$Listener;->onSongRangeRemoved(JIJJLandroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_26

    .line 1996
    .end local v3           #_arg0:J
    .end local v5           #_arg1:I
    .end local v11           #_arg2:J
    .end local v20           #_arg3:J
    :cond_1bf
    const-string v2, "onSubmitterSongsRemoved"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f4

    .line 1998
    const-string v2, "sessionId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2000
    .restart local v3       #_arg0:J
    const-string v2, "newQueueVersion"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 2002
    .restart local v5       #_arg1:I
    const-string v2, "submitterId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 2003
    .restart local v11       #_arg2:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/athome/api/MusicConnector$Presenter;->_listener:Lcom/google/android/music/athome/api/MusicConnector$Listener;

    move-object/from16 v22, v0

    move-wide/from16 v23, v3

    move/from16 v25, v5

    move-wide/from16 v26, v11

    move-object/from16 v28, p3

    invoke-virtual/range {v22 .. v28}, Lcom/google/android/music/athome/api/MusicConnector$Listener;->onSubmitterSongsRemoved(JIJLandroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_26

    .line 2005
    .end local v3           #_arg0:J
    .end local v5           #_arg1:I
    .end local v11           #_arg2:J
    :cond_1f4
    const-string v2, "onPlayStateChanged"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21d

    .line 2007
    const-string v2, "sessionId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2009
    .restart local v3       #_arg0:J
    const-string v2, "state"

    sget-object v7, Lcom/google/android/music/athome/api/AtHomePlayState;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v7}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/athome/api/AtHomePlayState;

    .line 2010
    .local v5, _arg1:Lcom/google/android/music/athome/api/AtHomePlayState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/athome/api/MusicConnector$Presenter;->_listener:Lcom/google/android/music/athome/api/MusicConnector$Listener;

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/google/android/music/athome/api/MusicConnector$Listener;->onPlayStateChanged(JLcom/google/android/music/athome/api/AtHomePlayState;Landroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_26

    .line 2012
    .end local v3           #_arg0:J
    .end local v5           #_arg1:Lcom/google/android/music/athome/api/AtHomePlayState;
    :cond_21d
    const-string v2, "onShuffleChanged"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_242

    .line 2014
    const-string v2, "sessionId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2016
    .restart local v3       #_arg0:J
    const-string v2, "shuffled"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 2017
    .local v5, _arg1:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/athome/api/MusicConnector$Presenter;->_listener:Lcom/google/android/music/athome/api/MusicConnector$Listener;

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/google/android/music/athome/api/MusicConnector$Listener;->onShuffleChanged(JZLandroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_26

    .line 2019
    .end local v3           #_arg0:J
    .end local v5           #_arg1:Z
    :cond_242
    const-string v2, "onRepeatModeChanged"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_267

    .line 2021
    const-string v2, "sessionId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2023
    .restart local v3       #_arg0:J
    const-string v2, "repeatMode"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 2024
    .local v5, _arg1:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/athome/api/MusicConnector$Presenter;->_listener:Lcom/google/android/music/athome/api/MusicConnector$Listener;

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/google/android/music/athome/api/MusicConnector$Listener;->onRepeatModeChanged(JILandroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_26

    .line 2026
    .end local v3           #_arg0:J
    .end local v5           #_arg1:I
    :cond_267
    const-string v2, "onRegisteredSubmitter"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_290

    .line 2028
    const-string v2, "sessionId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2030
    .restart local v3       #_arg0:J
    const-string v2, "submitter"

    sget-object v7, Lcom/google/android/music/athome/api/SubmitterInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v7}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/athome/api/SubmitterInfo;

    .line 2031
    .local v5, _arg1:Lcom/google/android/music/athome/api/SubmitterInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/athome/api/MusicConnector$Presenter;->_listener:Lcom/google/android/music/athome/api/MusicConnector$Listener;

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/google/android/music/athome/api/MusicConnector$Listener;->onRegisteredSubmitter(JLcom/google/android/music/athome/api/SubmitterInfo;Landroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_26

    .line 2033
    .end local v3           #_arg0:J
    .end local v5           #_arg1:Lcom/google/android/music/athome/api/SubmitterInfo;
    :cond_290
    const-string v2, "onSessionVariableChanged"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c2

    .line 2035
    const-string v2, "sessionId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2037
    .restart local v3       #_arg0:J
    const-string v2, "name"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2039
    .local v5, _arg1:Ljava/lang/String;
    const-string v2, "value"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v11

    .line 2040
    .local v11, _arg2:Landroid/support/place/rpc/RpcData;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/athome/api/MusicConnector$Presenter;->_listener:Lcom/google/android/music/athome/api/MusicConnector$Listener;

    move-wide v15, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v11

    move-object/from16 v19, p3

    invoke-virtual/range {v14 .. v19}, Lcom/google/android/music/athome/api/MusicConnector$Listener;->onSessionVariableChanged(JLjava/lang/String;Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_26

    .line 2042
    .end local v3           #_arg0:J
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v11           #_arg2:Landroid/support/place/rpc/RpcData;
    :cond_2c2
    const-string v2, "onSongsReodered"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_301

    .line 2044
    const-string v2, "sessionId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2046
    .restart local v3       #_arg0:J
    const-string v2, "newQueueVersion"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 2048
    .local v5, _arg1:I
    const-string v2, "lastUnaffectedSongId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 2050
    .local v11, _arg2:J
    const-string v2, "reorderedSongIds"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v20

    .line 2051
    .local v20, _arg3:Landroid/support/place/rpc/RpcData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/athome/api/MusicConnector$Presenter;->_listener:Lcom/google/android/music/athome/api/MusicConnector$Listener;

    move-object/from16 v22, v0

    move-wide/from16 v23, v3

    move/from16 v25, v5

    move-wide/from16 v26, v11

    move-object/from16 v28, v20

    move-object/from16 v29, p3

    invoke-virtual/range {v22 .. v29}, Lcom/google/android/music/athome/api/MusicConnector$Listener;->onSongsReodered(JIJLandroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_26

    .line 2053
    .end local v3           #_arg0:J
    .end local v5           #_arg1:I
    .end local v11           #_arg2:J
    .end local v20           #_arg3:Landroid/support/place/rpc/RpcData;
    :cond_301
    const-string v2, "onSongsInsertedAndPositioned"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_342

    .line 2055
    const-string v2, "sessionId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2057
    .restart local v3       #_arg0:J
    const-string v2, "newVersion"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 2059
    .restart local v5       #_arg1:I
    const-string v2, "lastUnaffectedSongId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 2061
    .restart local v11       #_arg2:J
    const-string v2, "newSongs"

    sget-object v7, Lcom/google/android/music/athome/api/AtHomeSongInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v7}, Landroid/support/place/rpc/RpcData;->getFlattenableList(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Ljava/util/List;

    move-result-object v13

    .line 2063
    .restart local v13       #_arg3:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    const-string v2, "previousSongIds"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v14

    .line 2064
    .local v14, _arg4:Landroid/support/place/rpc/RpcData;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/athome/api/MusicConnector$Presenter;->_listener:Lcom/google/android/music/athome/api/MusicConnector$Listener;

    move-wide v8, v3

    move v10, v5

    move-object/from16 v15, p3

    invoke-virtual/range {v7 .. v15}, Lcom/google/android/music/athome/api/MusicConnector$Listener;->onSongsInsertedAndPositioned(JIJLjava/util/List;Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_26

    .line 2067
    .end local v3           #_arg0:J
    .end local v5           #_arg1:I
    .end local v11           #_arg2:J
    .end local v13           #_arg3:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .end local v14           #_arg4:Landroid/support/place/rpc/RpcData;
    :cond_342
    invoke-super/range {p0 .. p4}, Landroid/support/place/connector/EventListener;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v2

    goto/16 :goto_2c

    .line 2073
    .restart local v3       #_arg0:J
    :cond_348
    const/4 v2, 0x0

    goto/16 :goto_2c
.end method
