.class Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$5;
.super Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback$Stub;
.source "WidgetServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->initImageCacheCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)V
    .registers 2
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$5;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    invoke-direct {p0}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageGetResponse(IZLandroid/net/Uri;ILjava/lang/String;)V
    .registers 17
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
    .line 205
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$5;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    iget-object v10, v1, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->img_msg:Ljava/util/HashMap;

    monitor-enter v10

    .line 207
    :try_start_5
    const-string v1, "WidgetServiceConnector"

    const-string v2, "onImageGetResponse"

    const-string v3, "image cache callback is called"

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v1, "WidgetServiceConnector"

    const-string v2, "onResponse()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reqID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 212
    .local v8, ReqID:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$5;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    iget-object v1, v1, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->img_msg:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 214
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$5;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    #getter for: Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->access$700(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/socialhub/WidgetMain;

    .line 215
    .local v0, instance:Lcom/sec/android/widgetapp/socialhub/WidgetMain;
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$5;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    iget-object v1, v1, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->img_msg:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$MessageMap;

    .line 217
    .local v9, map:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$MessageMap;
    if-nez v9, :cond_55

    .line 219
    const-string v1, "WidgetServiceConnector"

    const-string v2, "onResponse()"

    const-string v3, "map is null!!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    monitor-exit v10

    .line 236
    .end local v0           #instance:Lcom/sec/android/widgetapp/socialhub/WidgetMain;
    .end local v9           #map:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$MessageMap;
    :goto_54
    return-void

    .line 224
    .restart local v0       #instance:Lcom/sec/android/widgetapp/socialhub/WidgetMain;
    .restart local v9       #map:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$MessageMap;
    :cond_55
    const/4 v1, 0x1

    if-ne p2, v1, :cond_6a

    .line 225
    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p3, v2}, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->onCallbackHandler(IILandroid/net/Uri;Z)V

    .line 229
    :goto_5e
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$5;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    iget-object v1, v1, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->img_msg:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    monitor-exit v10

    goto :goto_54

    .line 235
    .end local v0           #instance:Lcom/sec/android/widgetapp/socialhub/WidgetMain;
    .end local v8           #ReqID:Ljava/lang/String;
    .end local v9           #map:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$MessageMap;
    :catchall_67
    move-exception v1

    monitor-exit v10
    :try_end_69
    .catchall {:try_start_5 .. :try_end_69} :catchall_67

    throw v1

    .line 227
    .restart local v0       #instance:Lcom/sec/android/widgetapp/socialhub/WidgetMain;
    .restart local v8       #ReqID:Ljava/lang/String;
    .restart local v9       #map:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$MessageMap;
    :cond_6a
    const/16 v2, 0x32

    const/4 v4, -0x1

    const/4 v6, -0x1

    move v1, p1

    move-object v3, p3

    move v5, p4

    move-object/from16 v7, p5

    :try_start_73
    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->onErrorCallbackHandler(IILandroid/net/Uri;IIILjava/lang/String;)V

    goto :goto_5e

    .line 234
    .end local v0           #instance:Lcom/sec/android/widgetapp/socialhub/WidgetMain;
    .end local v9           #map:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$MessageMap;
    :cond_77
    const-string v1, "WidgetServiceConnector"

    const-string v2, "onImageGetResponse"

    const-string v3, "does not has key"

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    monitor-exit v10
    :try_end_81
    .catchall {:try_start_73 .. :try_end_81} :catchall_67

    goto :goto_54
.end method
