.class Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$4;
.super Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub;
.source "WidgetServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->initRequesterCallback()V
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
    .line 166
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$4;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    invoke-direct {p0}, Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(IZZLandroid/net/Uri;IIILjava/lang/String;)V
    .registers 20
    .parameter "reqID"
    .parameter "bSuccess"
    .parameter "bContinue"
    .parameter "uri"
    .parameter "httpStatusCode"
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$4;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    #getter for: Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mMessageMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->access$600(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)Ljava/util/HashMap;

    move-result-object v10

    monitor-enter v10

    .line 173
    :try_start_7
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$4;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    #getter for: Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mMessageMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->access$600(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 175
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$4;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    #getter for: Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mMessageMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->access$600(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$HandleMessage;

    .line 176
    .local v9, message:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$HandleMessage;
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$4;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    #getter for: Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->access$700(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/socialhub/WidgetMain;

    .line 178
    .local v1, instance:Lcom/sec/android/widgetapp/socialhub/WidgetMain;
    const-string v2, "WidgetServiceConnector"

    const-string v3, "onResponse()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reqID = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "reqType = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/sns/type/SnsReqType;->NAME:[Ljava/lang/String;

    iget v6, v9, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$HandleMessage;->reqType:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bSuccess = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bContinue = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "httpStatusCode = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "errorCode = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "reason = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    if-eqz p2, :cond_d1

    .line 187
    iget v2, v9, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$HandleMessage;->reqType:I

    invoke-virtual {v1, p1, v2, p4, p3}, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->onCallbackHandler(IILandroid/net/Uri;Z)V

    .line 191
    :goto_c2
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$4;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    #getter for: Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mMessageMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->access$600(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .end local v1           #instance:Lcom/sec/android/widgetapp/socialhub/WidgetMain;
    .end local v9           #message:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$HandleMessage;
    :cond_cf
    monitor-exit v10

    .line 194
    return-void

    .line 189
    .restart local v1       #instance:Lcom/sec/android/widgetapp/socialhub/WidgetMain;
    .restart local v9       #message:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$HandleMessage;
    :cond_d1
    iget v3, v9, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$HandleMessage;->reqType:I

    move v2, p1

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->onErrorCallbackHandler(IILandroid/net/Uri;IIILjava/lang/String;)V

    goto :goto_c2

    .line 193
    .end local v1           #instance:Lcom/sec/android/widgetapp/socialhub/WidgetMain;
    .end local v9           #message:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$HandleMessage;
    :catchall_e1
    move-exception v2

    monitor-exit v10
    :try_end_e3
    .catchall {:try_start_7 .. :try_end_e3} :catchall_e1

    throw v2
.end method
