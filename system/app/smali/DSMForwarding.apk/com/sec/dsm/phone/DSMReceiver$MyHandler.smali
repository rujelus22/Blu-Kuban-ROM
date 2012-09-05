.class Lcom/sec/dsm/phone/DSMReceiver$MyHandler;
.super Landroid/os/Handler;
.source "DSMReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/dsm/phone/DSMReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/dsm/phone/DSMReceiver;


# direct methods
.method private constructor <init>(Lcom/sec/dsm/phone/DSMReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/dsm/phone/DSMReceiver$MyHandler;->this$0:Lcom/sec/dsm/phone/DSMReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/dsm/phone/DSMReceiver;Lcom/sec/dsm/phone/DSMReceiver$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/sec/dsm/phone/DSMReceiver$MyHandler;-><init>(Lcom/sec/dsm/phone/DSMReceiver;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    .line 105
    :try_start_0
    new-instance v3, Lcom/sec/dsm/phone/DSMRepository;

    iget-object v7, p0, Lcom/sec/dsm/phone/DSMReceiver$MyHandler;->this$0:Lcom/sec/dsm/phone/DSMReceiver;

    #getter for: Lcom/sec/dsm/phone/DSMReceiver;->mcontext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/dsm/phone/DSMReceiver;->access$100(Lcom/sec/dsm/phone/DSMReceiver;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/sec/dsm/phone/DSMRepository;-><init>(Landroid/content/Context;)V

    .line 106
    .local v3, dsmRep:Lcom/sec/dsm/phone/DSMRepository;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 107
    .local v1, ar:Landroid/os/AsyncResult;
    const/16 v6, 0x4b0

    .line 108
    .local v6, result:I
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.dsm.DM_FORWARDING_RESULT"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v5, i:Landroid/content/Intent;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_80

    .line 110
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleGetCFResponse: ar.exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/dsm/phone/Util;->Logd(Ljava/lang/String;)V

    .line 111
    const/16 v6, 0x5bf

    .line 112
    const-string v7, "SMSForwarding"

    invoke-virtual {v3, v7}, Lcom/sec/dsm/phone/DSMRepository;->remove(Ljava/lang/String;)V

    .line 113
    const-string v7, "SMSRecipient"

    invoke-virtual {v3, v7}, Lcom/sec/dsm/phone/DSMRepository;->remove(Ljava/lang/String;)V

    .line 131
    :cond_40
    :goto_40
    const/16 v7, 0x5bf

    if-ne v6, v7, :cond_4d

    iget-object v7, p0, Lcom/sec/dsm/phone/DSMReceiver$MyHandler;->this$0:Lcom/sec/dsm/phone/DSMReceiver;

    iget-boolean v7, v7, Lcom/sec/dsm/phone/DSMReceiver;->smsForwarding:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4d

    .line 132
    const/16 v6, 0x5be

    .line 134
    :cond_4d
    const-string v7, "DSMForwardingResult"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/sec/dsm/phone/DSMRepository;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v7, "result"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Forwarding result is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/dsm/phone/Util;->Logd(Ljava/lang/String;)V

    .line 137
    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 138
    iget-object v7, p0, Lcom/sec/dsm/phone/DSMReceiver$MyHandler;->this$0:Lcom/sec/dsm/phone/DSMReceiver;

    #getter for: Lcom/sec/dsm/phone/DSMReceiver;->mcontext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/dsm/phone/DSMReceiver;->access$100(Lcom/sec/dsm/phone/DSMReceiver;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v3           #dsmRep:Lcom/sec/dsm/phone/DSMRepository;
    .end local v5           #i:Landroid/content/Intent;
    .end local v6           #result:I
    :goto_7f
    return-void

    .line 115
    .restart local v1       #ar:Landroid/os/AsyncResult;
    .restart local v3       #dsmRep:Lcom/sec/dsm/phone/DSMRepository;
    .restart local v5       #i:Landroid/content/Intent;
    .restart local v6       #result:I
    :cond_80
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Throwable;

    if-eqz v7, :cond_97

    .line 116
    const-string v7, "userObj is Throwable instance !!"

    invoke-static {v7}, Lcom/sec/dsm/phone/Util;->Logd(Ljava/lang/String;)V

    .line 117
    const/16 v6, 0x5bf

    .line 118
    const-string v7, "SMSForwarding"

    invoke-virtual {v3, v7}, Lcom/sec/dsm/phone/DSMRepository;->remove(Ljava/lang/String;)V

    .line 119
    const-string v7, "SMSRecipient"

    invoke-virtual {v3, v7}, Lcom/sec/dsm/phone/DSMRepository;->remove(Ljava/lang/String;)V

    .line 121
    :cond_97
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_40

    .line 122
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v7

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v2, v0

    .line 123
    .local v2, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v7, v2

    if-nez v7, :cond_40

    .line 124
    const-string v7, "handleGetCFResponse: cfInfoArray.length==0"

    invoke-static {v7}, Lcom/sec/dsm/phone/Util;->Logd(Ljava/lang/String;)V

    .line 125
    const/16 v6, 0x5bf

    .line 126
    const-string v7, "SMSForwarding"

    invoke-virtual {v3, v7}, Lcom/sec/dsm/phone/DSMRepository;->remove(Ljava/lang/String;)V

    .line 127
    const-string v7, "SMSRecipient"

    invoke-virtual {v3, v7}, Lcom/sec/dsm/phone/DSMRepository;->remove(Ljava/lang/String;)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b7} :catch_b8

    goto :goto_40

    .line 139
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3           #dsmRep:Lcom/sec/dsm/phone/DSMRepository;
    .end local v5           #i:Landroid/content/Intent;
    .end local v6           #result:I
    :catch_b8
    move-exception v4

    .line 140
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7f
.end method
