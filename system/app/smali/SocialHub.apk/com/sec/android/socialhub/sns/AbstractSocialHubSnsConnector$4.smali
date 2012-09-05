.class Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$4;
.super Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback$Stub;
.source "AbstractSocialHubSnsConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->initImageCacheCallback()V
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
    .line 1940
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$4;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    invoke-direct {p0}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageGetResponse(IZLandroid/net/Uri;ILjava/lang/String;)V
    .registers 18
    .parameter "reqID"
    .parameter "bSuccess"
    .parameter "uri"
    .parameter "resultCode"
    .parameter "description"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$4;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    iget-object v11, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->img_msg:Ljava/util/HashMap;

    monitor-enter v11

    .line 1947
    :try_start_5
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$4;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    #getter for: Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->access$000(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onImageGetResponse"

    const-string v2, "image cache callback is called"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$4;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    #getter for: Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->access$000(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onResponse()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reqID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1952
    .local v9, ReqID:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$4;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    iget-object v0, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->img_msg:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1954
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$4;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    iget-object v0, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->img_msg:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    .line 1956
    .local v10, map:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;
    if-nez v10, :cond_59

    .line 1958
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$4;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    #getter for: Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->access$000(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onResponse()"

    const-string v2, "map is null!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    monitor-exit v11

    .line 1974
    .end local v10           #map:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;
    :goto_58
    return-void

    .line 1962
    .restart local v10       #map:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;
    :cond_59
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$4;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    #getter for: Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->connector:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;
    invoke-static {v0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->access$100(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    iget-object v1, v10, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;->mContext:Landroid/content/Context;

    iget v2, v10, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;->mSpType:I

    iget-object v3, v10, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;->mExtra:Ljava/lang/Object;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->onImageGetResponse(Landroid/content/Context;ILjava/lang/Object;IZLandroid/net/Uri;ILjava/lang/String;)V

    .line 1964
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$4;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    iget-object v0, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->img_msg:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1966
    monitor-exit v11

    goto :goto_58

    .line 1970
    .end local v9           #ReqID:Ljava/lang/String;
    .end local v10           #map:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;
    :catchall_78
    move-exception v0

    monitor-exit v11
    :try_end_7a
    .catchall {:try_start_5 .. :try_end_7a} :catchall_78

    throw v0

    .line 1969
    .restart local v9       #ReqID:Ljava/lang/String;
    :cond_7b
    :try_start_7b
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$4;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    #getter for: Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->access$000(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onImageGetResponse"

    const-string v2, "does not has key"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    monitor-exit v11
    :try_end_89
    .catchall {:try_start_7b .. :try_end_89} :catchall_78

    goto :goto_58
.end method
