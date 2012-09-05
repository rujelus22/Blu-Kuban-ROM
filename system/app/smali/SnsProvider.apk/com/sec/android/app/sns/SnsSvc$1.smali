.class Lcom/sec/android/app/sns/SnsSvc$1;
.super Landroid/os/Handler;
.source "SnsSvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sns/SnsSvc;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sns/SnsSvc;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sns/SnsSvc;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/android/app/sns/SnsSvc$1;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .parameter "msg"

    .prologue
    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_156

    .line 179
    :goto_5
    :pswitch_5
    return-void

    .line 85
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 86
    .local v9, pollingID:I
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc$1;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    #getter for: Lcom/sec/android/app/sns/SnsSvc;->mPollingMgr:Lcom/sec/android/app/sns/polling/SnsPollingMgr;
    invoke-static {v0}, Lcom/sec/android/app/sns/SnsSvc;->access$000(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/polling/SnsPollingMgr;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->processPollingRequest(I)Z

    goto :goto_5

    .line 91
    .end local v9           #pollingID:I
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sns/result/SnsResultData;

    move-object v13, v0

    check-cast v13, Lcom/sec/android/app/sns/result/SnsResultData;

    .line 92
    .local v13, resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc$1;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    #getter for: Lcom/sec/android/app/sns/SnsSvc;->mPollingMgr:Lcom/sec/android/app/sns/polling/SnsPollingMgr;
    invoke-static {v0}, Lcom/sec/android/app/sns/SnsSvc;->access$000(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/polling/SnsPollingMgr;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->processPollingResponse(Lcom/sec/android/app/sns/result/SnsResultData;)Z

    goto :goto_5

    .line 97
    .end local v13           #resultData:Lcom/sec/android/app/sns/result/SnsResultData;
    :pswitch_2b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 98
    .local v11, reqID:I
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc$1;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    #getter for: Lcom/sec/android/app/sns/SnsSvc;->mRequestMgr:Lcom/sec/android/app/sns/request/SnsRequestMgr;
    invoke-static {v0}, Lcom/sec/android/app/sns/SnsSvc;->access$100(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/request/SnsRequestMgr;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->processRequest(I)Z

    goto :goto_5

    .line 103
    .end local v11           #reqID:I
    :pswitch_3d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sns/response/data/SnsResponse;

    move-object v12, v0

    check-cast v12, Lcom/sec/android/app/sns/response/data/SnsResponse;

    .line 104
    .local v12, response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc$1;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    #getter for: Lcom/sec/android/app/sns/SnsSvc;->mRequestMgr:Lcom/sec/android/app/sns/request/SnsRequestMgr;
    invoke-static {v0}, Lcom/sec/android/app/sns/SnsSvc;->access$100(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/request/SnsRequestMgr;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->processResponse(Lcom/sec/android/app/sns/response/data/SnsResponse;)Z

    goto :goto_5

    .line 109
    .end local v12           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    :pswitch_4e
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/sec/android/app/sns/request/data/SnsRequest;

    .line 110
    .local v10, req:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc$1;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    #getter for: Lcom/sec/android/app/sns/SnsSvc;->mFramework:Lcom/sec/android/app/sns/framework/SnsFramework;
    invoke-static {v0}, Lcom/sec/android/app/sns/SnsSvc;->access$400(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/framework/SnsFramework;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/SnsSvc$1;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    #getter for: Lcom/sec/android/app/sns/SnsSvc;->mHttpMgr:Lcom/sec/android/app/sns/http/SnsHttpMgr;
    invoke-static {v1}, Lcom/sec/android/app/sns/SnsSvc;->access$200(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/http/SnsHttpMgr;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sns/SnsSvc$1;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    #getter for: Lcom/sec/android/app/sns/SnsSvc;->mSessionMgr:Lcom/sec/android/app/sns/session/SnsSessionMgr;
    invoke-static {v2}, Lcom/sec/android/app/sns/SnsSvc;->access$300(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/session/SnsSessionMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->getSessionKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sns/SnsSvc$1;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    #getter for: Lcom/sec/android/app/sns/SnsSvc;->mSessionMgr:Lcom/sec/android/app/sns/session/SnsSessionMgr;
    invoke-static {v3}, Lcom/sec/android/app/sns/SnsSvc;->access$300(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/session/SnsSessionMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->getCryptSessionCredential()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/sec/android/app/sns/framework/SnsFramework;->processRequest(Lcom/sec/android/app/sns/http/SnsHttpMgr;Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .line 116
    .end local v10           #req:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :pswitch_76
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sns/response/data/SnsResponse;

    move-object v12, v0

    check-cast v12, Lcom/sec/android/app/sns/response/data/SnsResponse;

    .line 117
    .restart local v12       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc$1;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    #getter for: Lcom/sec/android/app/sns/SnsSvc;->mFramework:Lcom/sec/android/app/sns/framework/SnsFramework;
    invoke-static {v0}, Lcom/sec/android/app/sns/SnsSvc;->access$400(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/framework/SnsFramework;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/sns/framework/SnsFramework;->processResponse(Lcom/sec/android/app/sns/response/data/SnsResponse;)V

    goto/16 :goto_5

    .line 122
    .end local v12           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    :pswitch_88
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 123
    .local v6, bundle:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc$1;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    #getter for: Lcom/sec/android/app/sns/SnsSvc;->mRequestMgr:Lcom/sec/android/app/sns/request/SnsRequestMgr;
    invoke-static {v0}, Lcom/sec/android/app/sns/SnsSvc;->access$100(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/request/SnsRequestMgr;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "_id"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "read"

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->processDataBaseUpdate(IJZ)V

    goto/16 :goto_5

    .line 130
    .end local v6           #bundle:Landroid/os/Bundle;
    :pswitch_a5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 131
    .restart local v6       #bundle:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc$1;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    #getter for: Lcom/sec/android/app/sns/SnsSvc;->mRequestMgr:Lcom/sec/android/app/sns/request/SnsRequestMgr;
    invoke-static {v0}, Lcom/sec/android/app/sns/SnsSvc;->access$100(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/request/SnsRequestMgr;

    move-result-object v0

    const/16 v1, 0x9

    const-string v2, "sp"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v6}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->processDataBaseUpdate(IILandroid/os/Bundle;)V

    goto/16 :goto_5

    .line 138
    .end local v6           #bundle:Landroid/os/Bundle;
    :pswitch_bc
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 139
    .restart local v6       #bundle:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc$1;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    #getter for: Lcom/sec/android/app/sns/SnsSvc;->mRequestMgr:Lcom/sec/android/app/sns/request/SnsRequestMgr;
    invoke-static {v0}, Lcom/sec/android/app/sns/SnsSvc;->access$100(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/request/SnsRequestMgr;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, "oldContactId"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "newContactId"

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->processDataBaseUpdateLong(IJJ)V

    goto/16 :goto_5

    .line 146
    .end local v6           #bundle:Landroid/os/Bundle;
    :pswitch_d9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 147
    .restart local v6       #bundle:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc$1;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    #getter for: Lcom/sec/android/app/sns/SnsSvc;->mRequestMgr:Lcom/sec/android/app/sns/request/SnsRequestMgr;
    invoke-static {v0}, Lcom/sec/android/app/sns/SnsSvc;->access$100(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/request/SnsRequestMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/SnsSvc$1;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    #getter for: Lcom/sec/android/app/sns/SnsSvc;->mHttpMgr:Lcom/sec/android/app/sns/http/SnsHttpMgr;
    invoke-static {v1}, Lcom/sec/android/app/sns/SnsSvc;->access$200(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/http/SnsHttpMgr;

    move-result-object v1

    const-string v2, "appID"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "reqID"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->abortRequest(Lcom/sec/android/app/sns/http/SnsHttpMgr;II)V

    goto/16 :goto_5

    .line 152
    .end local v6           #bundle:Landroid/os/Bundle;
    :pswitch_fa
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 153
    .restart local v6       #bundle:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc$1;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    #getter for: Lcom/sec/android/app/sns/SnsSvc;->mRequestMgr:Lcom/sec/android/app/sns/request/SnsRequestMgr;
    invoke-static {v0}, Lcom/sec/android/app/sns/SnsSvc;->access$100(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/request/SnsRequestMgr;

    move-result-object v0

    const-string v1, "pollingID"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->setRequestCancelling(I)V

    goto/16 :goto_5

    .line 158
    .end local v6           #bundle:Landroid/os/Bundle;
    :pswitch_10f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 159
    .restart local v6       #bundle:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc$1;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    #getter for: Lcom/sec/android/app/sns/SnsSvc;->mRequestMgr:Lcom/sec/android/app/sns/request/SnsRequestMgr;
    invoke-static {v0}, Lcom/sec/android/app/sns/SnsSvc;->access$100(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/request/SnsRequestMgr;

    move-result-object v0

    const-string v1, "pollingID"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->setRequestPending(I)V

    goto/16 :goto_5

    .line 164
    .end local v6           #bundle:Landroid/os/Bundle;
    :pswitch_124
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/sec/android/app/sns/request/data/SnsRequest;

    .line 165
    .restart local v10       #req:Lcom/sec/android/app/sns/request/data/SnsRequest;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc$1;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsSvc;->getRequestMgr()Lcom/sec/android/app/sns/request/SnsRequestMgr;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->addToRequestMap(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 167
    const/4 v8, 0x2

    .line 168
    .local v8, msgTypeManageReq:I
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc$1;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsSvc;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v10}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 169
    .local v7, msgManageReq:Landroid/os/Message;
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc$1;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsSvc;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 171
    const-string v0, "SnsSvc"

    const-string v1, "SnsSvc : handleMessage() : sendThreadMessage[ MANAGING_REQUEST ]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 82
    :pswitch_data_156
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1a
        :pswitch_2b
        :pswitch_3d
        :pswitch_4e
        :pswitch_76
        :pswitch_5
        :pswitch_5
        :pswitch_88
        :pswitch_a5
        :pswitch_bc
        :pswitch_d9
        :pswitch_5
        :pswitch_fa
        :pswitch_10f
        :pswitch_124
    .end packed-switch
.end method
