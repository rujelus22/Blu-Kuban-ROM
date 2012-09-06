.class public abstract Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;
.super Landroid/support/place/connector/Connector;
.source "MusicConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/api/MusicConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EndpointBase"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/place/connector/Broker;Landroid/support/place/connector/PlaceInfo;)V
    .registers 4
    .parameter "context"
    .parameter "broker"
    .parameter "placeInfo"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/support/place/connector/Connector;-><init>(Landroid/content/Context;Landroid/support/place/connector/Broker;Landroid/support/place/connector/PlaceInfo;)V

    .line 85
    return-void
.end method


# virtual methods
.method public abstract appendSongs(JJILjava/util/List;Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/support/place/rpc/RpcContext;",
            ")",
            "Lcom/google/android/music/athome/api/AtHomeModificationResult;"
        }
    .end annotation
.end method

.method public abstract getPlayState(JJLandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomePlayState;
.end method

.method public abstract getQueue(JJLandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomePlayQueueContent;
.end method

.method public abstract getRepeatMode(JJLandroid/support/place/rpc/RpcContext;)I
.end method

.method public abstract getSessionInfo(JLandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeSessionInfo;
.end method

.method public abstract getSessionVariable(JLjava/lang/String;Landroid/support/place/rpc/RpcContext;)Landroid/support/place/rpc/RpcData;
.end method

.method public abstract insertAndPositionSongs(JJIJLjava/util/List;Landroid/support/place/rpc/RpcData;Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Landroid/support/place/rpc/RpcData;",
            "Ljava/lang/String;",
            "Landroid/support/place/rpc/RpcContext;",
            ")",
            "Lcom/google/android/music/athome/api/AtHomeModificationResult;"
        }
    .end annotation
.end method

.method public abstract insertSongs(JJIJLjava/util/List;Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/support/place/rpc/RpcContext;",
            ")",
            "Lcom/google/android/music/athome/api/AtHomeModificationResult;"
        }
    .end annotation
.end method

.method public abstract isShuffling(JJLandroid/support/place/rpc/RpcContext;)Z
.end method

.method public abstract moveSong(JJIJJLandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;
.end method

.method public abstract newSession(JIILandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeSessionInfo;
.end method

.method public abstract next(JJLandroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract pause(JJLandroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract play(JJLandroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract prependSongs(JJILjava/util/List;Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/support/place/rpc/RpcContext;",
            ")",
            "Lcom/google/android/music/athome/api/AtHomeModificationResult;"
        }
    .end annotation
.end method

.method public abstract prev(JJLandroid/support/place/rpc/RpcContext;)V
.end method

.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 53
    .parameter "action"
    .parameter "requestParam"
    .parameter "context"
    .parameter "errorParam"

    .prologue
    .line 531
    new-instance v46, Landroid/support/place/rpc/RpcData;

    move-object/from16 v0, v46

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 532
    .local v46, request:Landroid/support/place/rpc/RpcData;
    const/16 v47, 0x0

    .line 533
    .local v47, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "versionCheck"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 535
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 537
    .local v3, _arg0:J
    const-string v2, "minApiVersion"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 539
    .local v5, _arg1:I
    const-string v2, "maxApiVersion"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 541
    .local v6, _arg2:I
    const-string v2, "buildNumber"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v7

    .local v7, _arg3:I
    move-object/from16 v2, p0

    move-object/from16 v8, p3

    .line 542
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->versionCheck(JIIILandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeVersionCheck;

    move-result-object v45

    .line 543
    .local v45, _result:Lcom/google/android/music/athome/api/AtHomeVersionCheck;
    new-instance v47, Landroid/support/place/rpc/RpcData;

    .end local v47           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct/range {v47 .. v47}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 544
    .restart local v47       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 837
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    .end local v45           #_result:Lcom/google/android/music/athome/api/AtHomeVersionCheck;
    :goto_4b
    if-eqz v47, :cond_665

    .line 838
    invoke-virtual/range {v47 .. v47}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v2

    .line 841
    .end local v3           #_arg0:J
    :goto_51
    return-object v2

    .line 546
    :cond_52
    const-string v2, "newSession"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 548
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 550
    .restart local v3       #_arg0:J
    const-string v2, "mode"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 552
    .restart local v5       #_arg1:I
    const-string v2, "maxSize"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v6

    .restart local v6       #_arg2:I
    move-object/from16 v8, p0

    move-wide v9, v3

    move v11, v5

    move v12, v6

    move-object/from16 v13, p3

    .line 553
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->newSession(JIILandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    move-result-object v45

    .line 554
    .local v45, _result:Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    new-instance v47, Landroid/support/place/rpc/RpcData;

    .end local v47           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct/range {v47 .. v47}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 555
    .restart local v47       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    goto :goto_4b

    .line 557
    .end local v3           #_arg0:J
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v45           #_result:Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    :cond_8e
    const-string v2, "getSessionInfo"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 559
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 560
    .restart local v3       #_arg0:J
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v4, v1}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->getSessionInfo(JLandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    move-result-object v45

    .line 561
    .restart local v45       #_result:Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    new-instance v47, Landroid/support/place/rpc/RpcData;

    .end local v47           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct/range {v47 .. v47}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 562
    .restart local v47       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    goto :goto_4b

    .line 564
    .end local v3           #_arg0:J
    .end local v45           #_result:Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    :cond_b7
    const-string v2, "getQueue"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 566
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 568
    .restart local v3       #_arg0:J
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .local v11, _arg1:J
    move-object/from16 v8, p0

    move-wide v9, v3

    move-object/from16 v13, p3

    .line 569
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->getQueue(JJLandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomePlayQueueContent;

    move-result-object v45

    .line 570
    .local v45, _result:Lcom/google/android/music/athome/api/AtHomePlayQueueContent;
    new-instance v47, Landroid/support/place/rpc/RpcData;

    .end local v47           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct/range {v47 .. v47}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 571
    .restart local v47       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    goto/16 :goto_4b

    .line 573
    .end local v3           #_arg0:J
    .end local v11           #_arg1:J
    .end local v45           #_result:Lcom/google/android/music/athome/api/AtHomePlayQueueContent;
    :cond_ea
    const-string v2, "appendSongs"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    .line 575
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 577
    .restart local v3       #_arg0:J
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 579
    .restart local v11       #_arg1:J
    const-string v2, "newVersion"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 581
    .restart local v6       #_arg2:I
    const-string v2, "songs"

    sget-object v8, Lcom/google/android/music/athome/api/AtHomeSongInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    move-object/from16 v0, v46

    invoke-virtual {v0, v2, v8}, Landroid/support/place/rpc/RpcData;->getFlattenableList(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Ljava/util/List;

    move-result-object v14

    .line 583
    .local v14, _arg3:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    const-string v2, "token"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, _arg4:Ljava/lang/String;
    move-object/from16 v8, p0

    move-wide v9, v3

    move v13, v6

    move-object/from16 v16, p3

    .line 584
    invoke-virtual/range {v8 .. v16}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->appendSongs(JJILjava/util/List;Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v45

    .line 585
    .local v45, _result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    new-instance v47, Landroid/support/place/rpc/RpcData;

    .end local v47           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct/range {v47 .. v47}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 586
    .restart local v47       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    goto/16 :goto_4b

    .line 588
    .end local v3           #_arg0:J
    .end local v6           #_arg2:I
    .end local v11           #_arg1:J
    .end local v14           #_arg3:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .end local v15           #_arg4:Ljava/lang/String;
    .end local v45           #_result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :cond_138
    const-string v2, "prependSongs"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_186

    .line 590
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 592
    .restart local v3       #_arg0:J
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 594
    .restart local v11       #_arg1:J
    const-string v2, "newVersion"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 596
    .restart local v6       #_arg2:I
    const-string v2, "songs"

    sget-object v8, Lcom/google/android/music/athome/api/AtHomeSongInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    move-object/from16 v0, v46

    invoke-virtual {v0, v2, v8}, Landroid/support/place/rpc/RpcData;->getFlattenableList(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Ljava/util/List;

    move-result-object v14

    .line 598
    .restart local v14       #_arg3:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    const-string v2, "token"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .restart local v15       #_arg4:Ljava/lang/String;
    move-object/from16 v8, p0

    move-wide v9, v3

    move v13, v6

    move-object/from16 v16, p3

    .line 599
    invoke-virtual/range {v8 .. v16}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->prependSongs(JJILjava/util/List;Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v45

    .line 600
    .restart local v45       #_result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    new-instance v47, Landroid/support/place/rpc/RpcData;

    .end local v47           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct/range {v47 .. v47}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 601
    .restart local v47       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    goto/16 :goto_4b

    .line 603
    .end local v3           #_arg0:J
    .end local v6           #_arg2:I
    .end local v11           #_arg1:J
    .end local v14           #_arg3:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .end local v15           #_arg4:Ljava/lang/String;
    .end local v45           #_result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :cond_186
    const-string v2, "insertSongs"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e0

    .line 605
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 607
    .restart local v3       #_arg0:J
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 609
    .restart local v11       #_arg1:J
    const-string v2, "newVersion"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 611
    .restart local v6       #_arg2:I
    const-string v2, "insertAfterqueueId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 613
    .local v22, _arg3:J
    const-string v2, "songs"

    sget-object v8, Lcom/google/android/music/athome/api/AtHomeSongInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    move-object/from16 v0, v46

    invoke-virtual {v0, v2, v8}, Landroid/support/place/rpc/RpcData;->getFlattenableList(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Ljava/util/List;

    move-result-object v24

    .line 615
    .local v24, _arg4:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    const-string v2, "token"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .local v25, _arg5:Ljava/lang/String;
    move-object/from16 v16, p0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v11

    move/from16 v21, v6

    move-object/from16 v26, p3

    .line 616
    invoke-virtual/range {v16 .. v26}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->insertSongs(JJIJLjava/util/List;Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v45

    .line 617
    .restart local v45       #_result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    new-instance v47, Landroid/support/place/rpc/RpcData;

    .end local v47           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct/range {v47 .. v47}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 618
    .restart local v47       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    goto/16 :goto_4b

    .line 620
    .end local v3           #_arg0:J
    .end local v6           #_arg2:I
    .end local v11           #_arg1:J
    .end local v22           #_arg3:J
    .end local v24           #_arg4:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .end local v25           #_arg5:Ljava/lang/String;
    .end local v45           #_result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :cond_1e0
    const-string v2, "updateSongs"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22e

    .line 622
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 624
    .restart local v3       #_arg0:J
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 626
    .restart local v11       #_arg1:J
    const-string v2, "newVersion"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 628
    .restart local v6       #_arg2:I
    const-string v2, "songs"

    sget-object v8, Lcom/google/android/music/athome/api/AtHomeSongInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    move-object/from16 v0, v46

    invoke-virtual {v0, v2, v8}, Landroid/support/place/rpc/RpcData;->getFlattenableList(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Ljava/util/List;

    move-result-object v14

    .line 630
    .restart local v14       #_arg3:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    const-string v2, "token"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .restart local v15       #_arg4:Ljava/lang/String;
    move-object/from16 v8, p0

    move-wide v9, v3

    move v13, v6

    move-object/from16 v16, p3

    .line 631
    invoke-virtual/range {v8 .. v16}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->updateSongs(JJILjava/util/List;Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v45

    .line 632
    .restart local v45       #_result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    new-instance v47, Landroid/support/place/rpc/RpcData;

    .end local v47           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct/range {v47 .. v47}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 633
    .restart local v47       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    goto/16 :goto_4b

    .line 635
    .end local v3           #_arg0:J
    .end local v6           #_arg2:I
    .end local v11           #_arg1:J
    .end local v14           #_arg3:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .end local v15           #_arg4:Ljava/lang/String;
    .end local v45           #_result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :cond_22e
    const-string v2, "moveSong"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_280

    .line 637
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 639
    .restart local v3       #_arg0:J
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 641
    .restart local v11       #_arg1:J
    const-string v2, "newVersion"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 643
    .restart local v6       #_arg2:I
    const-string v2, "queueIdToMove"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 645
    .restart local v22       #_arg3:J
    const-string v2, "desiredPosisionQueueId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v34

    .local v34, _arg4:J
    move-object/from16 v26, p0

    move-wide/from16 v27, v3

    move-wide/from16 v29, v11

    move/from16 v31, v6

    move-wide/from16 v32, v22

    move-object/from16 v36, p3

    .line 646
    invoke-virtual/range {v26 .. v36}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->moveSong(JJIJJLandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v45

    .line 647
    .restart local v45       #_result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    new-instance v47, Landroid/support/place/rpc/RpcData;

    .end local v47           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct/range {v47 .. v47}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 648
    .restart local v47       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    goto/16 :goto_4b

    .line 650
    .end local v3           #_arg0:J
    .end local v6           #_arg2:I
    .end local v11           #_arg1:J
    .end local v22           #_arg3:J
    .end local v34           #_arg4:J
    .end local v45           #_result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :cond_280
    const-string v2, "removeSong"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ca

    .line 652
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 654
    .restart local v3       #_arg0:J
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 656
    .restart local v11       #_arg1:J
    const-string v2, "newVersion"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 658
    .restart local v6       #_arg2:I
    const-string v2, "songQueueId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    .restart local v22       #_arg3:J
    move-object/from16 v36, p0

    move-wide/from16 v37, v3

    move-wide/from16 v39, v11

    move/from16 v41, v6

    move-wide/from16 v42, v22

    move-object/from16 v44, p3

    .line 659
    invoke-virtual/range {v36 .. v44}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->removeSong(JJIJLandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v45

    .line 660
    .restart local v45       #_result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    new-instance v47, Landroid/support/place/rpc/RpcData;

    .end local v47           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct/range {v47 .. v47}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 661
    .restart local v47       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    goto/16 :goto_4b

    .line 663
    .end local v3           #_arg0:J
    .end local v6           #_arg2:I
    .end local v11           #_arg1:J
    .end local v22           #_arg3:J
    .end local v45           #_result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :cond_2ca
    const-string v2, "removeAllSongs"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2fd

    .line 665
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 667
    .restart local v3       #_arg0:J
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .restart local v11       #_arg1:J
    move-object/from16 v8, p0

    move-wide v9, v3

    move-object/from16 v13, p3

    .line 668
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->removeAllSongs(JJLandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v45

    .line 669
    .restart local v45       #_result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    new-instance v47, Landroid/support/place/rpc/RpcData;

    .end local v47           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct/range {v47 .. v47}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 670
    .restart local v47       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    goto/16 :goto_4b

    .line 672
    .end local v3           #_arg0:J
    .end local v11           #_arg1:J
    .end local v45           #_result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :cond_2fd
    const-string v2, "removeSongsInRange"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34f

    .line 674
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 676
    .restart local v3       #_arg0:J
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 678
    .restart local v11       #_arg1:J
    const-string v2, "newVersion"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 680
    .restart local v6       #_arg2:I
    const-string v2, "firstSongQueueId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 682
    .restart local v22       #_arg3:J
    const-string v2, "lastSongQueueId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v34

    .restart local v34       #_arg4:J
    move-object/from16 v26, p0

    move-wide/from16 v27, v3

    move-wide/from16 v29, v11

    move/from16 v31, v6

    move-wide/from16 v32, v22

    move-object/from16 v36, p3

    .line 683
    invoke-virtual/range {v26 .. v36}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->removeSongsInRange(JJIJJLandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v45

    .line 684
    .restart local v45       #_result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    new-instance v47, Landroid/support/place/rpc/RpcData;

    .end local v47           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct/range {v47 .. v47}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 685
    .restart local v47       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    goto/16 :goto_4b

    .line 687
    .end local v3           #_arg0:J
    .end local v6           #_arg2:I
    .end local v11           #_arg1:J
    .end local v22           #_arg3:J
    .end local v34           #_arg4:J
    .end local v45           #_result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :cond_34f
    const-string v2, "setQueuePosition"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37e

    .line 689
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 691
    .restart local v3       #_arg0:J
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 693
    .restart local v11       #_arg1:J
    const-string v2, "songQueueId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v31

    .local v31, _arg2:J
    move-object/from16 v26, p0

    move-wide/from16 v27, v3

    move-wide/from16 v29, v11

    move-object/from16 v33, p3

    .line 694
    invoke-virtual/range {v26 .. v33}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->setQueuePosition(JJJLandroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_4b

    .line 696
    .end local v3           #_arg0:J
    .end local v11           #_arg1:J
    .end local v31           #_arg2:J
    :cond_37e
    const-string v2, "getPlayState"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b1

    .line 698
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 700
    .restart local v3       #_arg0:J
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .restart local v11       #_arg1:J
    move-object/from16 v8, p0

    move-wide v9, v3

    move-object/from16 v13, p3

    .line 701
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->getPlayState(JJLandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomePlayState;

    move-result-object v45

    .line 702
    .local v45, _result:Lcom/google/android/music/athome/api/AtHomePlayState;
    new-instance v47, Landroid/support/place/rpc/RpcData;

    .end local v47           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct/range {v47 .. v47}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 703
    .restart local v47       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    goto/16 :goto_4b

    .line 705
    .end local v3           #_arg0:J
    .end local v11           #_arg1:J
    .end local v45           #_result:Lcom/google/android/music/athome/api/AtHomePlayState;
    :cond_3b1
    const-string v2, "play"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d5

    .line 707
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 709
    .restart local v3       #_arg0:J
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .restart local v11       #_arg1:J
    move-object/from16 v8, p0

    move-wide v9, v3

    move-object/from16 v13, p3

    .line 710
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->play(JJLandroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_4b

    .line 712
    .end local v3           #_arg0:J
    .end local v11           #_arg1:J
    :cond_3d5
    const-string v2, "pause"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f9

    .line 714
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 716
    .restart local v3       #_arg0:J
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .restart local v11       #_arg1:J
    move-object/from16 v8, p0

    move-wide v9, v3

    move-object/from16 v13, p3

    .line 717
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->pause(JJLandroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_4b

    .line 719
    .end local v3           #_arg0:J
    .end local v11           #_arg1:J
    :cond_3f9
    const-string v2, "stop"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41d

    .line 721
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 723
    .restart local v3       #_arg0:J
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .restart local v11       #_arg1:J
    move-object/from16 v8, p0

    move-wide v9, v3

    move-object/from16 v13, p3

    .line 724
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->stop(JJLandroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_4b

    .line 726
    .end local v3           #_arg0:J
    .end local v11           #_arg1:J
    :cond_41d
    const-string v2, "next"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_441

    .line 728
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 730
    .restart local v3       #_arg0:J
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .restart local v11       #_arg1:J
    move-object/from16 v8, p0

    move-wide v9, v3

    move-object/from16 v13, p3

    .line 731
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->next(JJLandroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_4b

    .line 733
    .end local v3           #_arg0:J
    .end local v11           #_arg1:J
    :cond_441
    const-string v2, "prev"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_465

    .line 735
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 737
    .restart local v3       #_arg0:J
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .restart local v11       #_arg1:J
    move-object/from16 v8, p0

    move-wide v9, v3

    move-object/from16 v13, p3

    .line 738
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->prev(JJLandroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_4b

    .line 740
    .end local v3           #_arg0:J
    .end local v11           #_arg1:J
    :cond_465
    const-string v2, "seek"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_494

    .line 742
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 744
    .restart local v3       #_arg0:J
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 746
    .restart local v11       #_arg1:J
    const-string v2, "position"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v31

    .restart local v31       #_arg2:J
    move-object/from16 v26, p0

    move-wide/from16 v27, v3

    move-wide/from16 v29, v11

    move-object/from16 v33, p3

    .line 747
    invoke-virtual/range {v26 .. v33}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->seek(JJJLandroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_4b

    .line 749
    .end local v3           #_arg0:J
    .end local v11           #_arg1:J
    .end local v31           #_arg2:J
    :cond_494
    const-string v2, "setShuffleOn"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b8

    .line 751
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 753
    .restart local v3       #_arg0:J
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .restart local v11       #_arg1:J
    move-object/from16 v8, p0

    move-wide v9, v3

    move-object/from16 v13, p3

    .line 754
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->setShuffleOn(JJLandroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_4b

    .line 756
    .end local v3           #_arg0:J
    .end local v11           #_arg1:J
    :cond_4b8
    const-string v2, "setShuffleOff"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4dc

    .line 758
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 760
    .restart local v3       #_arg0:J
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .restart local v11       #_arg1:J
    move-object/from16 v8, p0

    move-wide v9, v3

    move-object/from16 v13, p3

    .line 761
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->setShuffleOff(JJLandroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_4b

    .line 763
    .end local v3           #_arg0:J
    .end local v11           #_arg1:J
    :cond_4dc
    const-string v2, "isShuffling"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50f

    .line 765
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 767
    .restart local v3       #_arg0:J
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .restart local v11       #_arg1:J
    move-object/from16 v8, p0

    move-wide v9, v3

    move-object/from16 v13, p3

    .line 768
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->isShuffling(JJLandroid/support/place/rpc/RpcContext;)Z

    move-result v45

    .line 769
    .local v45, _result:Z
    new-instance v47, Landroid/support/place/rpc/RpcData;

    .end local v47           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct/range {v47 .. v47}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 770
    .restart local v47       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4b

    .line 772
    .end local v3           #_arg0:J
    .end local v11           #_arg1:J
    .end local v45           #_result:Z
    :cond_50f
    const-string v2, "setRepeatMode"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_540

    .line 774
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 776
    .restart local v3       #_arg0:J
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 778
    .restart local v11       #_arg1:J
    const-string v2, "repeatMode"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v6

    .restart local v6       #_arg2:I
    move-object/from16 v36, p0

    move-wide/from16 v37, v3

    move-wide/from16 v39, v11

    move/from16 v41, v6

    move-object/from16 v42, p3

    .line 779
    invoke-virtual/range {v36 .. v42}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->setRepeatMode(JJILandroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_4b

    .line 781
    .end local v3           #_arg0:J
    .end local v6           #_arg2:I
    .end local v11           #_arg1:J
    :cond_540
    const-string v2, "getRepeatMode"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_573

    .line 783
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 785
    .restart local v3       #_arg0:J
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .restart local v11       #_arg1:J
    move-object/from16 v8, p0

    move-wide v9, v3

    move-object/from16 v13, p3

    .line 786
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->getRepeatMode(JJLandroid/support/place/rpc/RpcContext;)I

    move-result v45

    .line 787
    .local v45, _result:I
    new-instance v47, Landroid/support/place/rpc/RpcData;

    .end local v47           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct/range {v47 .. v47}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 788
    .restart local v47       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    goto/16 :goto_4b

    .line 790
    .end local v3           #_arg0:J
    .end local v11           #_arg1:J
    .end local v45           #_result:I
    :cond_573
    const-string v2, "registerSubmitter"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59a

    .line 792
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 794
    .restart local v3       #_arg0:J
    const-string v2, "submitter"

    sget-object v8, Lcom/google/android/music/athome/api/SubmitterInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    move-object/from16 v0, v46

    invoke-virtual {v0, v2, v8}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/athome/api/SubmitterInfo;

    .line 795
    .local v5, _arg1:Lcom/google/android/music/athome/api/SubmitterInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->registerSubmitter(JLcom/google/android/music/athome/api/SubmitterInfo;Landroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_4b

    .line 797
    .end local v3           #_arg0:J
    .end local v5           #_arg1:Lcom/google/android/music/athome/api/SubmitterInfo;
    :cond_59a
    const-string v2, "getSessionVariable"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5cc

    .line 799
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 801
    .restart local v3       #_arg0:J
    const-string v2, "name"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 802
    .local v5, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->getSessionVariable(JLjava/lang/String;Landroid/support/place/rpc/RpcContext;)Landroid/support/place/rpc/RpcData;

    move-result-object v45

    .line 803
    .local v45, _result:Landroid/support/place/rpc/RpcData;
    new-instance v47, Landroid/support/place/rpc/RpcData;

    .end local v47           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct/range {v47 .. v47}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 804
    .restart local v47       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    goto/16 :goto_4b

    .line 806
    .end local v3           #_arg0:J
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v45           #_result:Landroid/support/place/rpc/RpcData;
    :cond_5cc
    const-string v2, "setSessionVariable"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5fd

    .line 808
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 810
    .restart local v3       #_arg0:J
    const-string v2, "name"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 812
    .restart local v5       #_arg1:Ljava/lang/String;
    const-string v2, "value"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v6

    .local v6, _arg2:Landroid/support/place/rpc/RpcData;
    move-object/from16 v16, p0

    move-wide/from16 v17, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, p3

    .line 813
    invoke-virtual/range {v16 .. v21}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->setSessionVariable(JLjava/lang/String;Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_4b

    .line 815
    .end local v3           #_arg0:J
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Landroid/support/place/rpc/RpcData;
    :cond_5fd
    const-string v2, "insertAndPositionSongs"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65f

    .line 817
    const-string v2, "sessionId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 819
    .restart local v3       #_arg0:J
    const-string v2, "submitterId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 821
    .restart local v11       #_arg1:J
    const-string v2, "newVersion"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 823
    .local v6, _arg2:I
    const-string v2, "lastUnaffectedSongId"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 825
    .restart local v22       #_arg3:J
    const-string v2, "newSongs"

    sget-object v8, Lcom/google/android/music/athome/api/AtHomeSongInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    move-object/from16 v0, v46

    invoke-virtual {v0, v2, v8}, Landroid/support/place/rpc/RpcData;->getFlattenableList(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Ljava/util/List;

    move-result-object v24

    .line 827
    .restart local v24       #_arg4:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    const-string v2, "precedingSongIds"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v25

    .line 829
    .local v25, _arg5:Landroid/support/place/rpc/RpcData;
    const-string v2, "token"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .local v26, _arg6:Ljava/lang/String;
    move-object/from16 v16, p0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v11

    move/from16 v21, v6

    move-object/from16 v27, p3

    .line 830
    invoke-virtual/range {v16 .. v27}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->insertAndPositionSongs(JJIJLjava/util/List;Landroid/support/place/rpc/RpcData;Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v45

    .line 831
    .local v45, _result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    new-instance v47, Landroid/support/place/rpc/RpcData;

    .end local v47           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct/range {v47 .. v47}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 832
    .restart local v47       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    goto/16 :goto_4b

    .line 835
    .end local v3           #_arg0:J
    .end local v6           #_arg2:I
    .end local v11           #_arg1:J
    .end local v22           #_arg3:J
    .end local v24           #_arg4:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .end local v25           #_arg5:Landroid/support/place/rpc/RpcData;
    .end local v26           #_arg6:Ljava/lang/String;
    .end local v45           #_result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :cond_65f
    invoke-super/range {p0 .. p4}, Landroid/support/place/connector/Connector;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v2

    goto/16 :goto_51

    .line 841
    .restart local v3       #_arg0:J
    :cond_665
    const/4 v2, 0x0

    goto/16 :goto_51
.end method

.method public pushOnAllSongsRemoved(JI)V
    .registers 7
    .parameter "sessionId"
    .parameter "newQueueVersion"

    .prologue
    .line 283
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 284
    .local v0, _data:Landroid/support/place/rpc/RpcData;
    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 285
    const-string v1, "newQueueVersion"

    invoke-virtual {v0, v1, p3}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 286
    const-string v1, "onAllSongsRemoved"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 287
    return-void
.end method

.method public pushOnPlayStateChanged(JLcom/google/android/music/athome/api/AtHomePlayState;)V
    .registers 7
    .parameter "sessionId"
    .parameter "state"

    .prologue
    .line 340
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 341
    .local v0, _data:Landroid/support/place/rpc/RpcData;
    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 342
    const-string v1, "state"

    invoke-virtual {v0, v1, p3}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 343
    const-string v1, "onPlayStateChanged"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 344
    return-void
.end method

.method public pushOnRegisteredSubmitter(JLcom/google/android/music/athome/api/SubmitterInfo;)V
    .registers 7
    .parameter "sessionId"
    .parameter "submitter"

    .prologue
    .line 454
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 455
    .local v0, _data:Landroid/support/place/rpc/RpcData;
    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 456
    const-string v1, "submitter"

    invoke-virtual {v0, v1, p3}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 457
    const-string v1, "onRegisteredSubmitter"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 458
    return-void
.end method

.method public pushOnRepeatModeChanged(JI)V
    .registers 7
    .parameter "sessionId"
    .parameter "repeatMode"

    .prologue
    .line 439
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 440
    .local v0, _data:Landroid/support/place/rpc/RpcData;
    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 441
    const-string v1, "repeatMode"

    invoke-virtual {v0, v1, p3}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 442
    const-string v1, "onRepeatModeChanged"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 443
    return-void
.end method

.method public pushOnSessionEnded(J)V
    .registers 6
    .parameter "sessionId"

    .prologue
    .line 123
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 124
    .local v0, _data:Landroid/support/place/rpc/RpcData;
    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 125
    const-string v1, "onSessionEnded"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 126
    return-void
.end method

.method public pushOnSessionVariableChanged(JLjava/lang/String;Landroid/support/place/rpc/RpcData;)V
    .registers 8
    .parameter "sessionId"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 478
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 479
    .local v0, _data:Landroid/support/place/rpc/RpcData;
    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 480
    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v1, "value"

    invoke-virtual {v0, v1, p4}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 482
    const-string v1, "onSessionVariableChanged"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 483
    return-void
.end method

.method public pushOnShuffleChanged(JZ)V
    .registers 7
    .parameter "sessionId"
    .parameter "shuffled"

    .prologue
    .line 406
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 407
    .local v0, _data:Landroid/support/place/rpc/RpcData;
    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 408
    const-string v1, "shuffled"

    invoke-virtual {v0, v1, p3}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 409
    const-string v1, "onShuffleChanged"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 410
    return-void
.end method

.method public pushOnSongMoved(JIJJ)V
    .registers 11
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter "movedQueueId"
    .parameter "desiredPosisionQueueId"

    .prologue
    .line 247
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 248
    .local v0, _data:Landroid/support/place/rpc/RpcData;
    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 249
    const-string v1, "newVersion"

    invoke-virtual {v0, v1, p3}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 250
    const-string v1, "movedQueueId"

    invoke-virtual {v0, v1, p4, p5}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 251
    const-string v1, "desiredPosisionQueueId"

    invoke-virtual {v0, v1, p6, p7}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 252
    const-string v1, "onSongMoved"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 253
    return-void
.end method

.method public pushOnSongRangeRemoved(JIJJ)V
    .registers 11
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter "firstSongQueueId"
    .parameter "lastSongQueueId"

    .prologue
    .line 308
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 309
    .local v0, _data:Landroid/support/place/rpc/RpcData;
    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 310
    const-string v1, "newVersion"

    invoke-virtual {v0, v1, p3}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 311
    const-string v1, "firstSongQueueId"

    invoke-virtual {v0, v1, p4, p5}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 312
    const-string v1, "lastSongQueueId"

    invoke-virtual {v0, v1, p6, p7}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 313
    const-string v1, "onSongRangeRemoved"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 314
    return-void
.end method

.method public pushOnSongRemoved(JIJ)V
    .registers 9
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter "songQueueId"

    .prologue
    .line 265
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 266
    .local v0, _data:Landroid/support/place/rpc/RpcData;
    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 267
    const-string v1, "newVersion"

    invoke-virtual {v0, v1, p3}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 268
    const-string v1, "songQueueId"

    invoke-virtual {v0, v1, p4, p5}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 269
    const-string v1, "onSongRemoved"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 270
    return-void
.end method

.method public pushOnSongsAppended(JILjava/util/List;)V
    .registers 8
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p4, addedSongs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 158
    .local v0, _data:Landroid/support/place/rpc/RpcData;
    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 159
    const-string v1, "newVersion"

    invoke-virtual {v0, v1, p3}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 160
    const-string v1, "addedSongs"

    invoke-virtual {v0, v1, p4}, Landroid/support/place/rpc/RpcData;->putFlattenableList(Ljava/lang/String;Ljava/util/List;)V

    .line 161
    const-string v1, "onSongsAppended"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 162
    return-void
.end method

.method public pushOnSongsInserted(JIJLjava/util/List;)V
    .registers 10
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter "insertAfterqueueId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p6, songs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 203
    .local v0, _data:Landroid/support/place/rpc/RpcData;
    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 204
    const-string v1, "newVersion"

    invoke-virtual {v0, v1, p3}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 205
    const-string v1, "insertAfterqueueId"

    invoke-virtual {v0, v1, p4, p5}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 206
    const-string v1, "songs"

    invoke-virtual {v0, v1, p6}, Landroid/support/place/rpc/RpcData;->putFlattenableList(Ljava/lang/String;Ljava/util/List;)V

    .line 207
    const-string v1, "onSongsInserted"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 208
    return-void
.end method

.method public pushOnSongsInsertedAndPositioned(JIJLjava/util/List;Landroid/support/place/rpc/RpcData;)V
    .registers 11
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter "lastUnaffectedSongId"
    .parameter
    .parameter "previousSongIds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Landroid/support/place/rpc/RpcData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 521
    .local p6, newSongs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 522
    .local v0, _data:Landroid/support/place/rpc/RpcData;
    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 523
    const-string v1, "newVersion"

    invoke-virtual {v0, v1, p3}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 524
    const-string v1, "lastUnaffectedSongId"

    invoke-virtual {v0, v1, p4, p5}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 525
    const-string v1, "newSongs"

    invoke-virtual {v0, v1, p6}, Landroid/support/place/rpc/RpcData;->putFlattenableList(Ljava/lang/String;Ljava/util/List;)V

    .line 526
    const-string v1, "previousSongIds"

    invoke-virtual {v0, v1, p7}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 527
    const-string v1, "onSongsInsertedAndPositioned"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 528
    return-void
.end method

.method public pushOnSongsPrepended(JILjava/util/List;)V
    .registers 8
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p4, songs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 180
    .local v0, _data:Landroid/support/place/rpc/RpcData;
    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 181
    const-string v1, "newVersion"

    invoke-virtual {v0, v1, p3}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 182
    const-string v1, "songs"

    invoke-virtual {v0, v1, p4}, Landroid/support/place/rpc/RpcData;->putFlattenableList(Ljava/lang/String;Ljava/util/List;)V

    .line 183
    const-string v1, "onSongsPrepended"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 184
    return-void
.end method

.method public pushOnSongsReodered(JIJLandroid/support/place/rpc/RpcData;)V
    .registers 10
    .parameter "sessionId"
    .parameter "newQueueVersion"
    .parameter "lastUnaffectedSongId"
    .parameter "reorderedSongIds"

    .prologue
    .line 486
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 487
    .local v0, _data:Landroid/support/place/rpc/RpcData;
    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 488
    const-string v1, "newQueueVersion"

    invoke-virtual {v0, v1, p3}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 489
    const-string v1, "lastUnaffectedSongId"

    invoke-virtual {v0, v1, p4, p5}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 490
    const-string v1, "reorderedSongIds"

    invoke-virtual {v0, v1, p6}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 491
    const-string v1, "onSongsReodered"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 492
    return-void
.end method

.method public pushOnSongsUpdated(JILjava/util/List;)V
    .registers 8
    .parameter "sessionId"
    .parameter "newVersion"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p4, songs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 227
    .local v0, _data:Landroid/support/place/rpc/RpcData;
    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 228
    const-string v1, "newVersion"

    invoke-virtual {v0, v1, p3}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 229
    const-string v1, "songs"

    invoke-virtual {v0, v1, p4}, Landroid/support/place/rpc/RpcData;->putFlattenableList(Ljava/lang/String;Ljava/util/List;)V

    .line 230
    const-string v1, "onSongsUpdated"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 231
    return-void
.end method

.method public pushOnSubmitterSongsRemoved(JIJ)V
    .registers 9
    .parameter "sessionId"
    .parameter "newQueueVersion"
    .parameter "submitterId"

    .prologue
    .line 317
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 318
    .local v0, _data:Landroid/support/place/rpc/RpcData;
    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 319
    const-string v1, "newQueueVersion"

    invoke-virtual {v0, v1, p3}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 320
    const-string v1, "submitterId"

    invoke-virtual {v0, v1, p4, p5}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 321
    const-string v1, "onSubmitterSongsRemoved"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 322
    return-void
.end method

.method public abstract registerSubmitter(JLcom/google/android/music/athome/api/SubmitterInfo;Landroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract removeAllSongs(JJLandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;
.end method

.method public abstract removeSong(JJIJLandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;
.end method

.method public abstract removeSongsInRange(JJIJJLandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;
.end method

.method public abstract seek(JJJLandroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract setQueuePosition(JJJLandroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract setRepeatMode(JJILandroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract setSessionVariable(JLjava/lang/String;Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract setShuffleOff(JJLandroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract setShuffleOn(JJLandroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract stop(JJLandroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract updateSongs(JJILjava/util/List;Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/support/place/rpc/RpcContext;",
            ")",
            "Lcom/google/android/music/athome/api/AtHomeModificationResult;"
        }
    .end annotation
.end method

.method public abstract versionCheck(JIIILandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeVersionCheck;
.end method
