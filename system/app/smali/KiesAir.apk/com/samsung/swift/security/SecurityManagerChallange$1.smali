.class Lcom/samsung/swift/security/SecurityManagerChallange$1;
.super Ljava/lang/Object;
.source "SecurityManagerChallange.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/security/SecurityManagerChallange;->findHostName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/security/SecurityManagerChallange;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$ipAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/swift/security/SecurityManagerChallange;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/samsung/swift/security/SecurityManagerChallange$1;->this$0:Lcom/samsung/swift/security/SecurityManagerChallange;

    iput-object p2, p0, Lcom/samsung/swift/security/SecurityManagerChallange$1;->val$ipAddress:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/swift/security/SecurityManagerChallange$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 335
    :try_start_1
    invoke-static {}, Lcom/samsung/swift/security/SecurityManagerChallange;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Starting NetBIOS hostname lookup"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v4, p0, Lcom/samsung/swift/security/SecurityManagerChallange$1;->this$0:Lcom/samsung/swift/security/SecurityManagerChallange;

    const/4 v5, 0x1

    #calls: Lcom/samsung/swift/security/SecurityManagerChallange;->setHostNameThreadRunning(Z)V
    invoke-static {v4, v5}, Lcom/samsung/swift/security/SecurityManagerChallange;->access$100(Lcom/samsung/swift/security/SecurityManagerChallange;Z)V

    .line 338
    iget-object v4, p0, Lcom/samsung/swift/security/SecurityManagerChallange$1;->val$ipAddress:Ljava/lang/String;

    invoke-static {v4}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v0

    .line 340
    .local v0, addr:Ljcifs/UniAddress;
    invoke-virtual {v0}, Ljcifs/UniAddress;->firstCalledName()Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, name:Ljava/lang/String;
    if-nez v3, :cond_2b

    .line 344
    invoke-static {}, Lcom/samsung/swift/security/SecurityManagerChallange;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "hostName check failed we have null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_6d
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_25} :catch_5d

    .line 382
    iget-object v4, p0, Lcom/samsung/swift/security/SecurityManagerChallange$1;->this$0:Lcom/samsung/swift/security/SecurityManagerChallange;

    #calls: Lcom/samsung/swift/security/SecurityManagerChallange;->setHostNameThreadRunning(Z)V
    invoke-static {v4, v6}, Lcom/samsung/swift/security/SecurityManagerChallange;->access$100(Lcom/samsung/swift/security/SecurityManagerChallange;Z)V

    .line 384
    .end local v0           #addr:Ljcifs/UniAddress;
    .end local v3           #name:Ljava/lang/String;
    :goto_2a
    return-void

    .line 348
    .restart local v0       #addr:Ljcifs/UniAddress;
    .restart local v3       #name:Ljava/lang/String;
    :cond_2b
    :try_start_2b
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 350
    const-string v4, "*SMBSERVER"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 353
    invoke-virtual {v0}, Ljcifs/UniAddress;->nextCalledName()Ljava/lang/String;

    move-result-object v3

    .line 356
    :cond_3b
    if-nez v3, :cond_4c

    .line 358
    invoke-static {}, Lcom/samsung/swift/security/SecurityManagerChallange;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "hostName check failed we have null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_2b .. :try_end_46} :catchall_6d
    .catch Ljava/net/UnknownHostException; {:try_start_2b .. :try_end_46} :catch_5d

    .line 382
    iget-object v4, p0, Lcom/samsung/swift/security/SecurityManagerChallange$1;->this$0:Lcom/samsung/swift/security/SecurityManagerChallange;

    #calls: Lcom/samsung/swift/security/SecurityManagerChallange;->setHostNameThreadRunning(Z)V
    invoke-static {v4, v6}, Lcom/samsung/swift/security/SecurityManagerChallange;->access$100(Lcom/samsung/swift/security/SecurityManagerChallange;Z)V

    goto :goto_2a

    .line 362
    :cond_4c
    move-object v2, v3

    .line 366
    .local v2, hostName:Ljava/lang/String;
    :try_start_4d
    iget-object v4, p0, Lcom/samsung/swift/security/SecurityManagerChallange$1;->val$handler:Landroid/os/Handler;

    new-instance v5, Lcom/samsung/swift/security/SecurityManagerChallange$1$1;

    invoke-direct {v5, p0, v2}, Lcom/samsung/swift/security/SecurityManagerChallange$1$1;-><init>(Lcom/samsung/swift/security/SecurityManagerChallange$1;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_6d
    .catch Ljava/net/UnknownHostException; {:try_start_4d .. :try_end_57} :catch_5d

    .line 382
    iget-object v4, p0, Lcom/samsung/swift/security/SecurityManagerChallange$1;->this$0:Lcom/samsung/swift/security/SecurityManagerChallange;

    #calls: Lcom/samsung/swift/security/SecurityManagerChallange;->setHostNameThreadRunning(Z)V
    invoke-static {v4, v6}, Lcom/samsung/swift/security/SecurityManagerChallange;->access$100(Lcom/samsung/swift/security/SecurityManagerChallange;Z)V

    goto :goto_2a

    .line 376
    .end local v0           #addr:Ljcifs/UniAddress;
    .end local v2           #hostName:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    :catch_5d
    move-exception v1

    .line 378
    .local v1, e:Ljava/net/UnknownHostException;
    :try_start_5e
    invoke-static {}, Lcom/samsung/swift/security/SecurityManagerChallange;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getHostName failed UnknownHostException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_6d

    .line 382
    iget-object v4, p0, Lcom/samsung/swift/security/SecurityManagerChallange$1;->this$0:Lcom/samsung/swift/security/SecurityManagerChallange;

    #calls: Lcom/samsung/swift/security/SecurityManagerChallange;->setHostNameThreadRunning(Z)V
    invoke-static {v4, v6}, Lcom/samsung/swift/security/SecurityManagerChallange;->access$100(Lcom/samsung/swift/security/SecurityManagerChallange;Z)V

    goto :goto_2a

    .end local v1           #e:Ljava/net/UnknownHostException;
    :catchall_6d
    move-exception v4

    iget-object v5, p0, Lcom/samsung/swift/security/SecurityManagerChallange$1;->this$0:Lcom/samsung/swift/security/SecurityManagerChallange;

    #calls: Lcom/samsung/swift/security/SecurityManagerChallange;->setHostNameThreadRunning(Z)V
    invoke-static {v5, v6}, Lcom/samsung/swift/security/SecurityManagerChallange;->access$100(Lcom/samsung/swift/security/SecurityManagerChallange;Z)V

    throw v4
.end method
