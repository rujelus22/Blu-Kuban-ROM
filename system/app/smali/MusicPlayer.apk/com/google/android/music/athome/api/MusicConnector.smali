.class public Lcom/google/android/music/athome/api/MusicConnector;
.super Ljava/lang/Object;
.source "MusicConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/athome/api/MusicConnector$Presenter;,
        Lcom/google/android/music/athome/api/MusicConnector$Listener;,
        Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;,
        Lcom/google/android/music/athome/api/MusicConnector$OnInsertAndPositionSongs;,
        Lcom/google/android/music/athome/api/MusicConnector$OnGetSessionVariable;,
        Lcom/google/android/music/athome/api/MusicConnector$OnGetRepeatMode;,
        Lcom/google/android/music/athome/api/MusicConnector$OnIsShuffling;,
        Lcom/google/android/music/athome/api/MusicConnector$OnGetPlayState;,
        Lcom/google/android/music/athome/api/MusicConnector$OnRemoveSongsInRange;,
        Lcom/google/android/music/athome/api/MusicConnector$OnRemoveAllSongs;,
        Lcom/google/android/music/athome/api/MusicConnector$OnRemoveSong;,
        Lcom/google/android/music/athome/api/MusicConnector$OnMoveSong;,
        Lcom/google/android/music/athome/api/MusicConnector$OnUpdateSongs;,
        Lcom/google/android/music/athome/api/MusicConnector$OnInsertSongs;,
        Lcom/google/android/music/athome/api/MusicConnector$OnPrependSongs;,
        Lcom/google/android/music/athome/api/MusicConnector$OnAppendSongs;,
        Lcom/google/android/music/athome/api/MusicConnector$OnGetQueue;,
        Lcom/google/android/music/athome/api/MusicConnector$OnGetSessionInfo;,
        Lcom/google/android/music/athome/api/MusicConnector$OnNewSession;,
        Lcom/google/android/music/athome/api/MusicConnector$OnVersionCheck;,
        Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;
    }
.end annotation


# instance fields
.field private _broker:Landroid/support/place/connector/Broker;

.field private _endpoint:Landroid/support/place/rpc/EndpointInfo;

.field private _presenter:Lcom/google/android/music/athome/api/MusicConnector$Presenter;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 3
    .parameter "broker"
    .parameter "endpoint"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    .line 73
    iput-object p2, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    .line 74
    return-void
.end method


# virtual methods
.method public appendSongs(JJILjava/util/List;Ljava/lang/String;Lcom/google/android/music/athome/api/MusicConnector$OnAppendSongs;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 17
    .parameter "sessionId"
    .parameter "submitterId"
    .parameter "newVersion"
    .parameter
    .parameter "token"
    .parameter "_result"
    .parameter "_errors"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/music/athome/api/MusicConnector$OnAppendSongs;",
            "Landroid/support/place/rpc/RpcErrorHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1013
    .local p6, songs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 1014
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "sessionId"

    invoke-virtual {v6, v0, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1015
    const-string v0, "submitterId"

    invoke-virtual {v6, v0, p3, p4}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1016
    const-string v0, "newVersion"

    invoke-virtual {v6, v0, p5}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 1017
    const-string v0, "songs"

    invoke-virtual {v6, v0, p6}, Landroid/support/place/rpc/RpcData;->putFlattenableList(Ljava/lang/String;Ljava/util/List;)V

    .line 1018
    const-string v0, "token"

    invoke-virtual {v6, v0, p7}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "appendSongs"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;

    const/4 v5, 0x5

    invoke-direct {v4, p0, v5, p8}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;-><init>(Lcom/google/android/music/athome/api/MusicConnector;ILjava/lang/Object;)V

    move-object/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1020
    return-void
.end method

.method public getPlayState(JJLcom/google/android/music/athome/api/MusicConnector$OnGetPlayState;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 14
    .parameter "sessionId"
    .parameter "submitterId"
    .parameter "_result"
    .parameter "_errors"

    .prologue
    .line 1322
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 1323
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "sessionId"

    invoke-virtual {v6, v0, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1324
    const-string v0, "submitterId"

    invoke-virtual {v6, v0, p3, p4}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1325
    iget-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getPlayState"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;

    const/16 v5, 0x17

    invoke-direct {v4, p0, v5, p5}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;-><init>(Lcom/google/android/music/athome/api/MusicConnector;ILjava/lang/Object;)V

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1326
    return-void
.end method

.method public getQueue(JJLcom/google/android/music/athome/api/MusicConnector$OnGetQueue;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 14
    .parameter "sessionId"
    .parameter "submitterId"
    .parameter "_result"
    .parameter "_errors"

    .prologue
    .line 976
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 977
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "sessionId"

    invoke-virtual {v6, v0, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 978
    const-string v0, "submitterId"

    invoke-virtual {v6, v0, p3, p4}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 979
    iget-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getQueue"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;

    const/4 v5, 0x4

    invoke-direct {v4, p0, v5, p5}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;-><init>(Lcom/google/android/music/athome/api/MusicConnector;ILjava/lang/Object;)V

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 980
    return-void
.end method

.method public getSessionInfo(JLcom/google/android/music/athome/api/MusicConnector$OnGetSessionInfo;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 12
    .parameter "submitterId"
    .parameter "_result"
    .parameter "_errors"

    .prologue
    .line 954
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 955
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "submitterId"

    invoke-virtual {v6, v0, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 956
    iget-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getSessionInfo"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v5, p3}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;-><init>(Lcom/google/android/music/athome/api/MusicConnector;ILjava/lang/Object;)V

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 957
    return-void
.end method

.method public insertAndPositionSongs(JJIJLjava/util/List;Landroid/support/place/rpc/RpcData;Ljava/lang/String;Lcom/google/android/music/athome/api/MusicConnector$OnInsertAndPositionSongs;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 21
    .parameter "sessionId"
    .parameter "submitterId"
    .parameter "newVersion"
    .parameter "lastUnaffectedSongId"
    .parameter
    .parameter "precedingSongIds"
    .parameter "token"
    .parameter "_result"
    .parameter "_errors"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Landroid/support/place/rpc/RpcData;",
            "Ljava/lang/String;",
            "Lcom/google/android/music/athome/api/MusicConnector$OnInsertAndPositionSongs;",
            "Landroid/support/place/rpc/RpcErrorHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1618
    .local p8, newSongs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    new-instance v7, Landroid/support/place/rpc/RpcData;

    invoke-direct {v7}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 1619
    .local v7, _data:Landroid/support/place/rpc/RpcData;
    const-string v1, "sessionId"

    invoke-virtual {v7, v1, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1620
    const-string v1, "submitterId"

    invoke-virtual {v7, v1, p3, p4}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1621
    const-string v1, "newVersion"

    invoke-virtual {v7, v1, p5}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 1622
    const-string v1, "lastUnaffectedSongId"

    invoke-virtual {v7, v1, p6, p7}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1623
    const-string v1, "newSongs"

    move-object/from16 v0, p8

    invoke-virtual {v7, v1, v0}, Landroid/support/place/rpc/RpcData;->putFlattenableList(Ljava/lang/String;Ljava/util/List;)V

    .line 1624
    const-string v1, "precedingSongIds"

    move-object/from16 v0, p9

    invoke-virtual {v7, v1, v0}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 1625
    const-string v1, "token"

    move-object/from16 v0, p10

    invoke-virtual {v7, v1, v0}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v2, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v3, "insertAndPositionSongs"

    invoke-virtual {v7}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v4

    new-instance v5, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;

    const/16 v6, 0x2c

    move-object/from16 v0, p11

    invoke-direct {v5, p0, v6, v0}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;-><init>(Lcom/google/android/music/athome/api/MusicConnector;ILjava/lang/Object;)V

    move-object/from16 v6, p12

    invoke-virtual/range {v1 .. v6}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1627
    return-void
.end method

.method public insertSongs(JJIJLjava/util/List;Ljava/lang/String;Lcom/google/android/music/athome/api/MusicConnector$OnInsertSongs;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 20
    .parameter "sessionId"
    .parameter "submitterId"
    .parameter "newVersion"
    .parameter "insertAfterqueueId"
    .parameter
    .parameter "token"
    .parameter "_result"
    .parameter "_errors"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/music/athome/api/MusicConnector$OnInsertSongs;",
            "Landroid/support/place/rpc/RpcErrorHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1095
    .local p8, songs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    new-instance v7, Landroid/support/place/rpc/RpcData;

    invoke-direct {v7}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 1096
    .local v7, _data:Landroid/support/place/rpc/RpcData;
    const-string v1, "sessionId"

    invoke-virtual {v7, v1, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1097
    const-string v1, "submitterId"

    invoke-virtual {v7, v1, p3, p4}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1098
    const-string v1, "newVersion"

    invoke-virtual {v7, v1, p5}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 1099
    const-string v1, "insertAfterqueueId"

    invoke-virtual {v7, v1, p6, p7}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1100
    const-string v1, "songs"

    move-object/from16 v0, p8

    invoke-virtual {v7, v1, v0}, Landroid/support/place/rpc/RpcData;->putFlattenableList(Ljava/lang/String;Ljava/util/List;)V

    .line 1101
    const-string v1, "token"

    move-object/from16 v0, p9

    invoke-virtual {v7, v1, v0}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v2, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v3, "insertSongs"

    invoke-virtual {v7}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v4

    new-instance v5, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;

    const/16 v6, 0x9

    move-object/from16 v0, p10

    invoke-direct {v5, p0, v6, v0}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;-><init>(Lcom/google/android/music/athome/api/MusicConnector;ILjava/lang/Object;)V

    move-object/from16 v6, p11

    invoke-virtual/range {v1 .. v6}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1103
    return-void
.end method

.method public moveSong(JJIJJLcom/google/android/music/athome/api/MusicConnector$OnMoveSong;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 21
    .parameter "sessionId"
    .parameter "submitterId"
    .parameter "newVersion"
    .parameter "queueIdToMove"
    .parameter "desiredPosisionQueueId"
    .parameter "_result"
    .parameter "_errors"

    .prologue
    .line 1176
    new-instance v8, Landroid/support/place/rpc/RpcData;

    invoke-direct {v8}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 1177
    .local v8, _data:Landroid/support/place/rpc/RpcData;
    const-string v2, "sessionId"

    invoke-virtual {v8, v2, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1178
    const-string v2, "submitterId"

    invoke-virtual {v8, v2, p3, p4}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1179
    const-string v2, "newVersion"

    invoke-virtual {v8, v2, p5}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 1180
    const-string v2, "queueIdToMove"

    move-wide v0, p6

    invoke-virtual {v8, v2, v0, v1}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1181
    const-string v2, "desiredPosisionQueueId"

    move-wide/from16 v0, p8

    invoke-virtual {v8, v2, v0, v1}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1182
    iget-object v2, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v3, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v4, "moveSong"

    invoke-virtual {v8}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v5

    new-instance v6, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;

    const/16 v7, 0xd

    move-object/from16 v0, p10

    invoke-direct {v6, p0, v7, v0}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;-><init>(Lcom/google/android/music/athome/api/MusicConnector;ILjava/lang/Object;)V

    move-object/from16 v7, p11

    invoke-virtual/range {v2 .. v7}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1183
    return-void
.end method

.method public newSession(JIILcom/google/android/music/athome/api/MusicConnector$OnNewSession;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 14
    .parameter "submitterId"
    .parameter "mode"
    .parameter "maxSize"
    .parameter "_result"
    .parameter "_errors"

    .prologue
    .line 930
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 931
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "submitterId"

    invoke-virtual {v6, v0, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 932
    const-string v0, "mode"

    invoke-virtual {v6, v0, p3}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 933
    const-string v0, "maxSize"

    invoke-virtual {v6, v0, p4}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 934
    iget-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "newSession"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5, p5}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;-><init>(Lcom/google/android/music/athome/api/MusicConnector;ILjava/lang/Object;)V

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 935
    return-void
.end method

.method public next(JJLandroid/support/place/rpc/RpcErrorHandler;)V
    .registers 13
    .parameter "sessionId"
    .parameter "submitterId"
    .parameter "_errors"

    .prologue
    .line 1370
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 1371
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "sessionId"

    invoke-virtual {v6, v0, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1372
    const-string v0, "submitterId"

    invoke-virtual {v6, v0, p3, p4}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1373
    iget-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "next"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1374
    return-void
.end method

.method public pause(JJLandroid/support/place/rpc/RpcErrorHandler;)V
    .registers 13
    .parameter "sessionId"
    .parameter "submitterId"
    .parameter "_errors"

    .prologue
    .line 1346
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 1347
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "sessionId"

    invoke-virtual {v6, v0, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1348
    const-string v0, "submitterId"

    invoke-virtual {v6, v0, p3, p4}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1349
    iget-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "pause"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1350
    return-void
.end method

.method public play(JJLandroid/support/place/rpc/RpcErrorHandler;)V
    .registers 13
    .parameter "sessionId"
    .parameter "submitterId"
    .parameter "_errors"

    .prologue
    .line 1334
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 1335
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "sessionId"

    invoke-virtual {v6, v0, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1336
    const-string v0, "submitterId"

    invoke-virtual {v6, v0, p3, p4}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1337
    iget-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "play"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1338
    return-void
.end method

.method public prependSongs(JJILjava/util/List;Ljava/lang/String;Lcom/google/android/music/athome/api/MusicConnector$OnPrependSongs;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 17
    .parameter "sessionId"
    .parameter "submitterId"
    .parameter "newVersion"
    .parameter
    .parameter "token"
    .parameter "_result"
    .parameter "_errors"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/music/athome/api/MusicConnector$OnPrependSongs;",
            "Landroid/support/place/rpc/RpcErrorHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1053
    .local p6, songs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 1054
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "sessionId"

    invoke-virtual {v6, v0, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1055
    const-string v0, "submitterId"

    invoke-virtual {v6, v0, p3, p4}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1056
    const-string v0, "newVersion"

    invoke-virtual {v6, v0, p5}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 1057
    const-string v0, "songs"

    invoke-virtual {v6, v0, p6}, Landroid/support/place/rpc/RpcData;->putFlattenableList(Ljava/lang/String;Ljava/util/List;)V

    .line 1058
    const-string v0, "token"

    invoke-virtual {v6, v0, p7}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "prependSongs"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;

    const/4 v5, 0x7

    invoke-direct {v4, p0, v5, p8}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;-><init>(Lcom/google/android/music/athome/api/MusicConnector;ILjava/lang/Object;)V

    move-object/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1060
    return-void
.end method

.method public prev(JJLandroid/support/place/rpc/RpcErrorHandler;)V
    .registers 13
    .parameter "sessionId"
    .parameter "submitterId"
    .parameter "_errors"

    .prologue
    .line 1384
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 1385
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "sessionId"

    invoke-virtual {v6, v0, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1386
    const-string v0, "submitterId"

    invoke-virtual {v6, v0, p3, p4}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1387
    iget-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "prev"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1388
    return-void
.end method

.method public registerSubmitter(JLcom/google/android/music/athome/api/SubmitterInfo;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 12
    .parameter "sessionId"
    .parameter "submitter"
    .parameter "_errors"

    .prologue
    .line 1515
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 1516
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "sessionId"

    invoke-virtual {v6, v0, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1517
    const-string v0, "submitter"

    invoke-virtual {v6, v0, p3}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 1518
    iget-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "registerSubmitter"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1519
    return-void
.end method

.method public removeAllSongs(JJLcom/google/android/music/athome/api/MusicConnector$OnRemoveAllSongs;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 14
    .parameter "sessionId"
    .parameter "submitterId"
    .parameter "_result"
    .parameter "_errors"

    .prologue
    .line 1237
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 1238
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "sessionId"

    invoke-virtual {v6, v0, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1239
    const-string v0, "submitterId"

    invoke-virtual {v6, v0, p3, p4}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1240
    iget-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "removeAllSongs"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;

    const/16 v5, 0x11

    invoke-direct {v4, p0, v5, p5}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;-><init>(Lcom/google/android/music/athome/api/MusicConnector;ILjava/lang/Object;)V

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1241
    return-void
.end method

.method public removeSong(JJIJLcom/google/android/music/athome/api/MusicConnector$OnRemoveSong;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 17
    .parameter "sessionId"
    .parameter "submitterId"
    .parameter "newVersion"
    .parameter "songQueueId"
    .parameter "_result"
    .parameter "_errors"

    .prologue
    .line 1206
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 1207
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "sessionId"

    invoke-virtual {v6, v0, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1208
    const-string v0, "submitterId"

    invoke-virtual {v6, v0, p3, p4}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1209
    const-string v0, "newVersion"

    invoke-virtual {v6, v0, p5}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 1210
    const-string v0, "songQueueId"

    invoke-virtual {v6, v0, p6, p7}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1211
    iget-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "removeSong"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;

    const/16 v5, 0xf

    invoke-direct {v4, p0, v5, p8}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;-><init>(Lcom/google/android/music/athome/api/MusicConnector;ILjava/lang/Object;)V

    move-object/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1212
    return-void
.end method

.method public removeSongsInRange(JJIJJLcom/google/android/music/athome/api/MusicConnector$OnRemoveSongsInRange;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 21
    .parameter "sessionId"
    .parameter "submitterId"
    .parameter "newVersion"
    .parameter "firstSongQueueId"
    .parameter "lastSongQueueId"
    .parameter "_result"
    .parameter "_errors"

    .prologue
    .line 1282
    new-instance v8, Landroid/support/place/rpc/RpcData;

    invoke-direct {v8}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 1283
    .local v8, _data:Landroid/support/place/rpc/RpcData;
    const-string v2, "sessionId"

    invoke-virtual {v8, v2, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1284
    const-string v2, "submitterId"

    invoke-virtual {v8, v2, p3, p4}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1285
    const-string v2, "newVersion"

    invoke-virtual {v8, v2, p5}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 1286
    const-string v2, "firstSongQueueId"

    move-wide v0, p6

    invoke-virtual {v8, v2, v0, v1}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1287
    const-string v2, "lastSongQueueId"

    move-wide/from16 v0, p8

    invoke-virtual {v8, v2, v0, v1}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1288
    iget-object v2, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v3, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v4, "removeSongsInRange"

    invoke-virtual {v8}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v5

    new-instance v6, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;

    const/16 v7, 0x13

    move-object/from16 v0, p10

    invoke-direct {v6, p0, v7, v0}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;-><init>(Lcom/google/android/music/athome/api/MusicConnector;ILjava/lang/Object;)V

    move-object/from16 v7, p11

    invoke-virtual/range {v2 .. v7}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1289
    return-void
.end method

.method public seek(JJJLandroid/support/place/rpc/RpcErrorHandler;)V
    .registers 15
    .parameter "sessionId"
    .parameter "submitterId"
    .parameter "position"
    .parameter "_errors"

    .prologue
    .line 1398
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 1399
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "sessionId"

    invoke-virtual {v6, v0, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1400
    const-string v0, "submitterId"

    invoke-virtual {v6, v0, p3, p4}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1401
    const-string v0, "position"

    invoke-virtual {v6, v0, p5, p6}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1402
    iget-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "seek"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1403
    return-void
.end method

.method public setQueuePosition(JJJLandroid/support/place/rpc/RpcErrorHandler;)V
    .registers 15
    .parameter "sessionId"
    .parameter "submitterId"
    .parameter "songQueueId"
    .parameter "_errors"

    .prologue
    .line 1300
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 1301
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "sessionId"

    invoke-virtual {v6, v0, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1302
    const-string v0, "submitterId"

    invoke-virtual {v6, v0, p3, p4}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1303
    const-string v0, "songQueueId"

    invoke-virtual {v6, v0, p5, p6}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1304
    iget-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setQueuePosition"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1305
    return-void
.end method

.method public setRepeatMode(JJILandroid/support/place/rpc/RpcErrorHandler;)V
    .registers 14
    .parameter "sessionId"
    .parameter "submitterId"
    .parameter "repeatMode"
    .parameter "_errors"

    .prologue
    .line 1465
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 1466
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "sessionId"

    invoke-virtual {v6, v0, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1467
    const-string v0, "submitterId"

    invoke-virtual {v6, v0, p3, p4}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1468
    const-string v0, "repeatMode"

    invoke-virtual {v6, v0, p5}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 1469
    iget-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setRepeatMode"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1470
    return-void
.end method

.method public setShuffleOff(JJLandroid/support/place/rpc/RpcErrorHandler;)V
    .registers 13
    .parameter "sessionId"
    .parameter "submitterId"
    .parameter "_errors"

    .prologue
    .line 1423
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 1424
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "sessionId"

    invoke-virtual {v6, v0, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1425
    const-string v0, "submitterId"

    invoke-virtual {v6, v0, p3, p4}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1426
    iget-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setShuffleOff"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1427
    return-void
.end method

.method public setShuffleOn(JJLandroid/support/place/rpc/RpcErrorHandler;)V
    .registers 13
    .parameter "sessionId"
    .parameter "submitterId"
    .parameter "_errors"

    .prologue
    .line 1411
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 1412
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "sessionId"

    invoke-virtual {v6, v0, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1413
    const-string v0, "submitterId"

    invoke-virtual {v6, v0, p3, p4}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1414
    iget-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setShuffleOn"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1415
    return-void
.end method

.method public startListening(Lcom/google/android/music/athome/api/MusicConnector$Listener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 2080
    invoke-virtual {p0}, Lcom/google/android/music/athome/api/MusicConnector;->stopListening()V

    .line 2081
    new-instance v0, Lcom/google/android/music/athome/api/MusicConnector$Presenter;

    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/music/athome/api/MusicConnector$Presenter;-><init>(Lcom/google/android/music/athome/api/MusicConnector;Landroid/support/place/connector/Broker;Lcom/google/android/music/athome/api/MusicConnector$Listener;)V

    iput-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_presenter:Lcom/google/android/music/athome/api/MusicConnector$Presenter;

    .line 2082
    iget-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_presenter:Lcom/google/android/music/athome/api/MusicConnector$Presenter;

    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/music/athome/api/MusicConnector$Presenter;->startListening(Landroid/support/place/rpc/EndpointInfo;)V

    .line 2083
    return-void
.end method

.method public stop(JJLandroid/support/place/rpc/RpcErrorHandler;)V
    .registers 13
    .parameter "sessionId"
    .parameter "submitterId"
    .parameter "_errors"

    .prologue
    .line 1358
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 1359
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "sessionId"

    invoke-virtual {v6, v0, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1360
    const-string v0, "submitterId"

    invoke-virtual {v6, v0, p3, p4}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 1361
    iget-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "stop"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1362
    return-void
.end method

.method public stopListening()V
    .registers 2

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_presenter:Lcom/google/android/music/athome/api/MusicConnector$Presenter;

    if-eqz v0, :cond_c

    .line 2087
    iget-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_presenter:Lcom/google/android/music/athome/api/MusicConnector$Presenter;

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/MusicConnector$Presenter;->stopListening()V

    .line 2088
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_presenter:Lcom/google/android/music/athome/api/MusicConnector$Presenter;

    .line 2090
    :cond_c
    return-void
.end method

.method public versionCheck(JIIILcom/google/android/music/athome/api/MusicConnector$OnVersionCheck;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 15
    .parameter "submitterId"
    .parameter "minApiVersion"
    .parameter "maxApiVersion"
    .parameter "buildNumber"
    .parameter "_result"
    .parameter "_errors"

    .prologue
    .line 897
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 898
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "submitterId"

    invoke-virtual {v6, v0, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 899
    const-string v0, "minApiVersion"

    invoke-virtual {v6, v0, p3}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 900
    const-string v0, "maxApiVersion"

    invoke-virtual {v6, v0, p4}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 901
    const-string v0, "buildNumber"

    invoke-virtual {v6, v0, p5}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 902
    iget-object v0, p0, Lcom/google/android/music/athome/api/MusicConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Lcom/google/android/music/athome/api/MusicConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "versionCheck"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, p6}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;-><init>(Lcom/google/android/music/athome/api/MusicConnector;ILjava/lang/Object;)V

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 903
    return-void
.end method
