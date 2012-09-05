.class Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$3;
.super Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub;
.source "AbstractSocialHubSnsConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->initCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)V
    .registers 2
    .parameter

    .prologue
    .line 1881
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$3;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    invoke-direct {p0}, Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(IZZLandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 33
    .parameter "reqID"
    .parameter "bSuccess"
    .parameter "bContinue"
    .parameter "uri"
    .parameter "httpStatusCode"
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "partialErrMap"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1887
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$3;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    iget-object v0, v2, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 1889
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$3;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    #getter for: Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->access$000(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onResponse()"

    const-string v4, "callback is called."

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$3;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    #getter for: Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->access$000(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onResponse()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reqID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    .line 1894
    .local v16, ReqID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$3;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    iget-object v2, v2, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 1896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$3;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    iget-object v2, v2, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    .line 1898
    .local v20, map:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;
    if-nez v20, :cond_6d

    .line 1900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$3;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    #getter for: Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->access$000(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onResponse()"

    const-string v4, "map is null!!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    monitor-exit v22

    .line 1931
    .end local v20           #map:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;
    :goto_6c
    return-void

    .line 1904
    .restart local v20       #map:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;
    :cond_6d
    if-eqz p8, :cond_d5

    .line 1906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$3;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    iget-object v3, v2, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mErrorMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_76
    .catchall {:try_start_9 .. :try_end_76} :catchall_c2

    .line 1908
    :try_start_76
    invoke-interface/range {p8 .. p8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v19

    .line 1910
    .local v19, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1911
    .local v21, spList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_83
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 1913
    .local v18, key:Ljava/lang/Integer;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$3;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    #getter for: Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->access$000(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "onResponse()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sp type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is returned error."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    .line 1918
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v18           #key:Ljava/lang/Integer;
    .end local v19           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v21           #spList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_bf
    move-exception v2

    monitor-exit v3
    :try_end_c1
    .catchall {:try_start_76 .. :try_end_c1} :catchall_bf

    :try_start_c1
    throw v2

    .line 1930
    .end local v16           #ReqID:Ljava/lang/String;
    .end local v20           #map:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;
    :catchall_c2
    move-exception v2

    monitor-exit v22
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_c2

    throw v2

    .line 1917
    .restart local v16       #ReqID:Ljava/lang/String;
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v19       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v20       #map:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;
    .restart local v21       #spList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_c5
    :try_start_c5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$3;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    iget-object v2, v2, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mErrorMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1918
    monitor-exit v3
    :try_end_d5
    .catchall {:try_start_c5 .. :try_end_d5} :catchall_bf

    .line 1922
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v19           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v21           #spList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_d5
    :try_start_d5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$3;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    #getter for: Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->connector:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;
    invoke-static {v2}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->access$100(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v2

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    iget v4, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;->mSpType:I

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;->mExtra:Ljava/lang/Object;

    move-object/from16 v0, v20

    iget v7, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;->mReqType:I

    move/from16 v6, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    invoke-virtual/range {v2 .. v15}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->onResponse(Landroid/content/Context;ILjava/lang/Object;IIZZLandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V

    .line 1924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$3;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    iget-object v2, v2, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1926
    monitor-exit v22

    goto/16 :goto_6c

    .line 1929
    .end local v20           #map:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;
    :cond_110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$3;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    #getter for: Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->access$000(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onResponse()"

    const-string v4, "does not has key"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    monitor-exit v22
    :try_end_120
    .catchall {:try_start_d5 .. :try_end_120} :catchall_c2

    goto/16 :goto_6c
.end method
