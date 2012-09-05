.class public Lcom/infraware/filemanager/webstorage/thread/LoginThread;
.super Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
.source "LoginThread.java"


# instance fields
.field private loginMode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/os/Handler;)V
    .registers 5
    .parameter "serviceType"
    .parameter "userId"
    .parameter "resultHandler"

    .prologue
    .line 15
    const-string v0, "LOGIN"

    invoke-direct {p0, v0, p3}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->loginMode:I

    .line 17
    const-string v0, "LOGIN"

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->threadType:Ljava/lang/String;

    .line 19
    iput p1, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->serviceType:I

    .line 20
    iput-object p2, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->userId:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v4, 0x1

    const/4 v10, -0x7

    const/4 v9, 0x5

    const/16 v8, 0xa

    const/4 v7, -0x1

    .line 30
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v0

    .line 31
    .local v0, webManager:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    const/4 v6, 0x1

    .line 33
    .local v6, bResult:Z
    const-string v1, ""

    invoke-virtual {p0, v8, v4, v7, v1}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->sendMessage(IIILjava/lang/String;)V

    .line 34
    iget v1, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->loginMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_20

    .line 35
    iget v1, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->serviceType:I

    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->password:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->login(ILjava/lang/String;Ljava/lang/String;ZLcom/infraware/filemanager/webstorage/thread/AbstractThread;)Z

    move-result v6

    .line 37
    :cond_20
    invoke-virtual {p0}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->isCancel()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 39
    const-string v1, ""

    invoke-virtual {p0, v8, v10, v7, v1}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->sendMessage(IIILjava/lang/String;)V

    .line 40
    const-string v1, ""

    invoke-virtual {p0, v8, v9, v7, v1}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->sendMessage(IIILjava/lang/String;)V

    .line 42
    invoke-super {p0}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->done()V

    .line 79
    :goto_33
    return-void

    .line 46
    :cond_34
    if-nez v6, :cond_50

    .line 48
    iget v1, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->loginMode:I

    if-nez v1, :cond_4a

    .line 49
    const/16 v1, -0x11

    const-string v2, ""

    invoke-virtual {p0, v8, v1, v7, v2}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->sendMessage(IIILjava/lang/String;)V

    .line 53
    :goto_41
    const-string v1, ""

    invoke-virtual {p0, v8, v9, v7, v1}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->sendMessage(IIILjava/lang/String;)V

    .line 55
    invoke-super {p0}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->done()V

    goto :goto_33

    .line 51
    :cond_4a
    const-string v1, ""

    invoke-virtual {p0, v8, v7, v7, v1}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->sendMessage(IIILjava/lang/String;)V

    goto :goto_41

    .line 59
    :cond_50
    const/4 v1, 0x3

    const-string v2, ""

    invoke-virtual {p0, v8, v1, v7, v2}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->sendMessage(IIILjava/lang/String;)V

    .line 60
    iget v1, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->loginMode:I

    if-eqz v1, :cond_62

    .line 61
    iget v1, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->serviceType:I

    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->refreshData(ILjava/lang/String;)Z

    move-result v6

    .line 63
    :cond_62
    invoke-virtual {p0}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->isCancel()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 65
    const-string v1, ""

    invoke-virtual {p0, v8, v10, v7, v1}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->sendMessage(IIILjava/lang/String;)V

    .line 66
    const-string v1, ""

    invoke-virtual {p0, v8, v9, v7, v1}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->sendMessage(IIILjava/lang/String;)V

    .line 68
    invoke-super {p0}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->done()V

    goto :goto_33

    .line 72
    :cond_76
    if-eqz v6, :cond_87

    .line 73
    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {p0, v8, v1, v7, v2}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->sendMessage(IIILjava/lang/String;)V

    .line 77
    :goto_7e
    const-string v1, ""

    invoke-virtual {p0, v8, v9, v7, v1}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->sendMessage(IIILjava/lang/String;)V

    .line 78
    invoke-super {p0}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->done()V

    goto :goto_33

    .line 75
    :cond_87
    const-string v1, ""

    invoke-virtual {p0, v8, v7, v7, v1}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->sendMessage(IIILjava/lang/String;)V

    goto :goto_7e
.end method

.method public setMode(I)V
    .registers 2
    .parameter "loginMode"

    .prologue
    .line 25
    iput p1, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->loginMode:I

    .line 26
    return-void
.end method
