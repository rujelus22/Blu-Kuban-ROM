.class Lcom/samsung/client/DMApp$2;
.super Lcom/samsung/client/ISyncmlServiceDMCallback$Stub;
.source "DMApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/DMApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/DMApp;


# direct methods
.method constructor <init>(Lcom/samsung/client/DMApp;)V
    .registers 2
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    invoke-direct {p0}, Lcom/samsung/client/ISyncmlServiceDMCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public app_session_prog_cb(III)V
    .registers 8
    .parameter "status"
    .parameter "errcode"
    .parameter "update"

    .prologue
    const/4 v3, 0x0

    .line 367
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_session_prog_cb : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #setter for: Lcom/samsung/client/DMApp;->sessStatus:I
    invoke-static {v0, p1}, Lcom/samsung/client/DMApp;->access$702(Lcom/samsung/client/DMApp;I)I

    .line 370
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #setter for: Lcom/samsung/client/DMApp;->errCode:I
    invoke-static {v0, p2}, Lcom/samsung/client/DMApp;->access$802(Lcom/samsung/client/DMApp;I)I

    .line 371
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #setter for: Lcom/samsung/client/DMApp;->sessUpdate:I
    invoke-static {v0, p3}, Lcom/samsung/client/DMApp;->access$902(Lcom/samsung/client/DMApp;I)I

    .line 372
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    iget-object v0, v0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    iget-object v1, v1, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 373
    return-void
.end method

.method public at_omadm_commands([B)V
    .registers 6
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 423
    const-string v0, "DMApp"

    const-string v1, "at_omadm_commands"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    array-length v1, p1

    new-array v1, v1, [B

    #setter for: Lcom/samsung/client/DMApp;->at_cmds:[B
    invoke-static {v0, v1}, Lcom/samsung/client/DMApp;->access$1602(Lcom/samsung/client/DMApp;[B)[B

    .line 425
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->at_cmds:[B
    invoke-static {v0}, Lcom/samsung/client/DMApp;->access$1600(Lcom/samsung/client/DMApp;)[B

    move-result-object v0

    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 426
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    iget-object v0, v0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    iget-object v1, v1, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 428
    return-void
.end method

.method public device_reboot()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 413
    const-string v2, "DMApp"

    const-string v3, "device_reboot"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v2, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    const-string v3, "DMAPP_STATE"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 416
    .local v0, data:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 417
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "UpgradePending"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 418
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 419
    iget-object v2, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    invoke-virtual {v2}, Lcom/samsung/client/DMApp;->rebootFotaDevice()V

    .line 420
    return-void
.end method

.method public fumo_dl_progress(III)V
    .registers 8
    .parameter "id"
    .parameter "cur_sz"
    .parameter "total_sz"

    .prologue
    const/4 v3, 0x0

    .line 376
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fumo_dl_progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    iget-boolean v0, v0, Lcom/samsung/client/DMApp;->userCancelDld:Z

    if-eqz v0, :cond_2a

    .line 386
    :goto_29
    return-void

    .line 381
    :cond_2a
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #setter for: Lcom/samsung/client/DMApp;->total:I
    invoke-static {v0, p3}, Lcom/samsung/client/DMApp;->access$1002(Lcom/samsung/client/DMApp;I)I

    .line 382
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #setter for: Lcom/samsung/client/DMApp;->current:I
    invoke-static {v0, p2}, Lcom/samsung/client/DMApp;->access$1102(Lcom/samsung/client/DMApp;I)I

    .line 383
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    const/4 v1, 0x1

    #setter for: Lcom/samsung/client/DMApp;->downloadInProgress:Z
    invoke-static {v0, v1}, Lcom/samsung/client/DMApp;->access$1202(Lcom/samsung/client/DMApp;Z)Z

    .line 384
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #setter for: Lcom/samsung/client/DMApp;->replace:Z
    invoke-static {v0, v3}, Lcom/samsung/client/DMApp;->access$1302(Lcom/samsung/client/DMApp;Z)Z

    .line 385
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    iget-object v0, v0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    iget-object v1, v1, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_29
.end method

.method public fumo_pending_response(I)V
    .registers 7
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 404
    const-string v1, "DMApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fumo_pending_response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v1, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #setter for: Lcom/samsung/client/DMApp;->fumoRunStatus:I
    invoke-static {v1, p1}, Lcom/samsung/client/DMApp;->access$1502(Lcom/samsung/client/DMApp;I)I

    .line 406
    iget-object v1, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    iget-object v1, v1, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    iget-object v2, v2, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v4, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    .line 408
    .local v0, check:Z
    const-string v1, "DMApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Msg queued "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void
.end method

.method public fumo_update_fw(ILjava/lang/String;)V
    .registers 6
    .parameter "id"
    .parameter "description"

    .prologue
    .line 389
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fumo_update_fw id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/client/DMApp;->downloadInProgress:Z
    invoke-static {v0, v1}, Lcom/samsung/client/DMApp;->access$1202(Lcom/samsung/client/DMApp;Z)Z

    .line 393
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    iget-object v0, v0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    iget-object v1, v1, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 395
    return-void
.end method

.method public ipc_layer_unavailable()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 431
    const-string v0, "DMApp"

    const-string v1, "ipc_layer_unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    const/4 v1, 0x7

    #setter for: Lcom/samsung/client/DMApp;->sessStatus:I
    invoke-static {v0, v1}, Lcom/samsung/client/DMApp;->access$702(Lcom/samsung/client/DMApp;I)I

    .line 433
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    const/4 v1, -0x1

    #setter for: Lcom/samsung/client/DMApp;->errCode:I
    invoke-static {v0, v1}, Lcom/samsung/client/DMApp;->access$802(Lcom/samsung/client/DMApp;I)I

    .line 434
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #setter for: Lcom/samsung/client/DMApp;->sessUpdate:I
    invoke-static {v0, v3}, Lcom/samsung/client/DMApp;->access$902(Lcom/samsung/client/DMApp;I)I

    .line 435
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    iget-object v0, v0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    iget-object v1, v1, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 437
    return-void
.end method

.method public san_auth_err()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 462
    const-string v0, "DMApp"

    const-string v1, "san_auth_err"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #setter for: Lcom/samsung/client/DMApp;->errCode:I
    invoke-static {v0, v2}, Lcom/samsung/client/DMApp;->access$802(Lcom/samsung/client/DMApp;I)I

    .line 464
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    const/4 v1, 0x7

    #setter for: Lcom/samsung/client/DMApp;->sessStatus:I
    invoke-static {v0, v1}, Lcom/samsung/client/DMApp;->access$702(Lcom/samsung/client/DMApp;I)I

    .line 465
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #setter for: Lcom/samsung/client/DMApp;->sessUpdate:I
    invoke-static {v0, v3}, Lcom/samsung/client/DMApp;->access$902(Lcom/samsung/client/DMApp;I)I

    .line 466
    sput v2, Lcom/samsung/client/DMApp;->niaRetries:I

    .line 467
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    iget-object v0, v0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    iget-object v1, v1, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 468
    return-void
.end method

.method public send_status(I)V
    .registers 5
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 440
    const-string v1, "DMApp"

    const-string v2, "send_status"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v1, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->fumoUserStart:Z
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$1700(Lcom/samsung/client/DMApp;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 445
    iget-object v1, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #setter for: Lcom/samsung/client/DMApp;->fumoUpdateStatus:I
    invoke-static {v1, p1}, Lcom/samsung/client/DMApp;->access$1802(Lcom/samsung/client/DMApp;I)I

    .line 447
    iget-object v1, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/client/DMApp;->setUpdateCompleted(Z)V

    .line 449
    iget-object v1, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->acquireWakeLock()V

    .line 450
    iget-object v1, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->disableKeyGuard()V

    .line 452
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.SEND_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 454
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 455
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 457
    iget-object v1, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    invoke-virtual {v1, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    .line 459
    .end local v0           #i:Landroid/content/Intent;
    :cond_40
    return-void
.end method

.method public set_instance_id(I)V
    .registers 5
    .parameter "id"

    .prologue
    .line 398
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_instance_id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #setter for: Lcom/samsung/client/DMApp;->instId:I
    invoke-static {v0, p1}, Lcom/samsung/client/DMApp;->access$1402(Lcom/samsung/client/DMApp;I)I

    .line 401
    return-void
.end method

.method public set_session_type(I)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/high16 v6, 0x80

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 478
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNIAProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/client/DMApp;->mNIAProgress:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/samsung/client/DMApp;->access$2000(Lcom/samsung/client/DMApp;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    sget-boolean v0, Lcom/samsung/client/DMApp;->mNIAProgress:Z

    if-eqz v0, :cond_7b

    .line 485
    invoke-static {}, Lcom/samsung/client/DMApp;->access$2100()I

    move-result v0

    if-eq v0, p1, :cond_7b

    .line 486
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_session_type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-static {p1}, Lcom/samsung/client/DMApp;->access$2102(I)I

    .line 489
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #calls: Lcom/samsung/client/DMApp;->NIASessionBlocked()Z
    invoke-static {v0}, Lcom/samsung/client/DMApp;->access$2200(Lcom/samsung/client/DMApp;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 491
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #calls: Lcom/samsung/client/DMApp;->removeSanMessage_startService()V
    invoke-static {v0}, Lcom/samsung/client/DMApp;->access$2300(Lcom/samsung/client/DMApp;)V

    .line 543
    :cond_7b
    :goto_7b
    return-void

    .line 495
    :cond_7c
    sget-boolean v0, Lcom/samsung/client/DMApp;->isForeground:Z

    if-eqz v0, :cond_7b

    .line 496
    const/4 v0, 0x4

    if-eq p1, v0, :cond_7b

    .line 501
    if-ne p1, v5, :cond_a2

    .line 502
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/client/DMApp;->access$2400()Lcom/samsung/client/DMApp;

    move-result-object v1

    const-class v2, Lcom/samsung/prlupdate/PRLUpdate;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 503
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 504
    const-string v1, "niaprl"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 505
    iget-object v1, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$2000(Lcom/samsung/client/DMApp;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_7b

    .line 506
    :cond_a2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7b

    .line 508
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #setter for: Lcom/samsung/client/DMApp;->fumoUserStart:Z
    invoke-static {v0, v3}, Lcom/samsung/client/DMApp;->access$1702(Lcom/samsung/client/DMApp;Z)Z

    .line 509
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    iput-boolean v4, v0, Lcom/samsung/client/DMApp;->userCancelDld:Z

    .line 511
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    const-string v1, "DMAPP_STATE"

    invoke-virtual {v0, v1, v5}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 513
    const-string v1, "UpgradePending"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v3, :cond_d3

    .line 514
    const-string v1, "DMApp"

    const-string v2, "Upgrade Pending"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v1, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    const-string v2, "FUMO_DESCRIPTION"

    const-string v3, "Firmware Update Package"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/client/DMApp;->gotoUpdate(Ljava/lang/String;)V

    goto :goto_7b

    .line 518
    :cond_d3
    invoke-static {}, Lcom/samsung/client/DMApp;->access$2400()Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->checkDunEnabled()Z

    move-result v0

    if-nez v0, :cond_ef

    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->checkRadioState_DisplayError()Z

    move-result v0

    if-eqz v0, :cond_ef

    invoke-static {}, Lcom/samsung/client/DMApp;->access$2400()Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->checkAirplaneMode()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 520
    :cond_ef
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #calls: Lcom/samsung/client/DMApp;->removeSanMessage_startService()V
    invoke-static {v0}, Lcom/samsung/client/DMApp;->access$2300(Lcom/samsung/client/DMApp;)V

    goto :goto_7b

    .line 526
    :cond_f5
    :try_start_f5
    invoke-static {}, Lcom/samsung/client/DMApp;->access$500()Lcom/samsung/client/ISyncmlService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/client/ISyncmlService;->isBatteryLow()Z

    move-result v0

    if-eqz v0, :cond_110

    .line 527
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #calls: Lcom/samsung/client/DMApp;->removeSanMessage_startService()V
    invoke-static {v0}, Lcom/samsung/client/DMApp;->access$2300(Lcom/samsung/client/DMApp;)V
    :try_end_104
    .catch Landroid/os/RemoteException; {:try_start_f5 .. :try_end_104} :catch_106

    goto/16 :goto_7b

    .line 530
    :catch_106
    move-exception v0

    .line 531
    const-string v1, "DMApp"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 534
    :cond_110
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/client/DMApp;->access$2400()Lcom/samsung/client/DMApp;

    move-result-object v1

    const-class v2, Lcom/samsung/fumo/FirmwareUpdate;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 535
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 536
    const-string v1, "firmware_download_started"

    iget-object v2, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->downloadInProgress:Z
    invoke-static {v2}, Lcom/samsung/client/DMApp;->access$1200(Lcom/samsung/client/DMApp;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 537
    iget-object v1, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$2000(Lcom/samsung/client/DMApp;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7b
.end method

.method public wimaxProcessRilResponse(B[BI)V
    .registers 6
    .parameter "id"
    .parameter "arr"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 472
    const-string v0, "DMApp"

    const-string v1, "wimaxProcessRilResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/samsung/client/DMApp$2;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->mWimaxHandler:Lcom/samsung/client/WimaxHandler;
    invoke-static {v0}, Lcom/samsung/client/DMApp;->access$1900(Lcom/samsung/client/DMApp;)Lcom/samsung/client/WimaxHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/client/WimaxHandler;->processRilRequest(B[BI)V

    .line 475
    return-void
.end method
