.class public Lcom/google/android/gsf/gtalkservice/EndpointMessageHandler;
.super Landroid/os/Handler;
.source "EndpointMessageHandler.java"


# instance fields
.field private mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/Endpoint;Landroid/os/Looper;)V
    .registers 3
    .parameter "endpoint"
    .parameter "looper"

    .prologue
    .line 26
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 27
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/EndpointMessageHandler;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    .line 28
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 78
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EndpointMessageHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 31
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_5e

    .line 75
    :cond_6
    :goto_6
    return-void

    .line 33
    :sswitch_7
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/EndpointMessageHandler;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->doConnect()V

    goto :goto_6

    .line 37
    :sswitch_d
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/EndpointMessageHandler;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->doLogout()V

    goto :goto_6

    .line 41
    :sswitch_13
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/EndpointMessageHandler;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isConnected()Z

    move-result v2

    .line 42
    .local v2, isConnected:Z
    if-eqz v2, :cond_6

    .line 43
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/EndpointMessageHandler;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v5, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->closeConnection(ZZZ)V

    goto :goto_6

    .line 50
    .end local v2           #isConnected:Z
    :sswitch_22
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/EndpointMessageHandler;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->updateAccountStatus()V

    goto :goto_6

    .line 54
    :sswitch_28
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 55
    .local v1, error:I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 56
    .local v0, connectionId:I
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/EndpointMessageHandler;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v3, v0, v1, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->connectionClosed(IIZ)V

    goto :goto_6

    .line 60
    .end local v0           #connectionId:I
    .end local v1           #error:I
    :sswitch_32
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/EndpointMessageHandler;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->closeSettingsQueryMap()V

    goto :goto_6

    .line 64
    :sswitch_38
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/EndpointMessageHandler;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isConnected()Z

    move-result v3

    if-nez v3, :cond_46

    .line 65
    const-string v3, "EVENT_GO_ONLINE: not connected"

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/EndpointMessageHandler;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 68
    :cond_46
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/EndpointMessageHandler;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gtalkservice/ConnectionState;->isOnline()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 69
    const-string v3, "EVENT_GO_ONLINE: already ONLINE, ignore"

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/EndpointMessageHandler;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 72
    :cond_58
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/EndpointMessageHandler;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->goOnline()Z

    goto :goto_6

    .line 31
    :sswitch_data_5e
    .sparse-switch
        0x64 -> :sswitch_7
        0xc8 -> :sswitch_d
        0x12c -> :sswitch_13
        0x190 -> :sswitch_22
        0x1f4 -> :sswitch_28
        0x258 -> :sswitch_32
        0x2bc -> :sswitch_38
    .end sparse-switch
.end method
