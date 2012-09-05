.class Lcom/samsung/client/SyncmlService$1;
.super Lcom/samsung/client/ISyncmlService$Stub;
.source "SyncmlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/SyncmlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/SyncmlService;


# direct methods
.method constructor <init>(Lcom/samsung/client/SyncmlService;)V
    .registers 2
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    invoke-direct {p0}, Lcom/samsung/client/ISyncmlService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abortFumoStatusRetry()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x34

    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 651
    const-string v0, "SyncmlService"

    const-string v2, "abortFumoStatusRetry called from SyncmlService "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    sput-boolean v5, Lcom/samsung/client/SyncmlService;->resourcesCleaned:Z

    .line 653
    new-array v6, v5, [B

    aput-byte v1, v6, v9

    .line 654
    .local v6, byteMsg:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 655
    .local v3, data:Ljava/lang/String;
    new-array v7, v5, [B

    aput-byte v5, v7, v9

    .line 656
    .local v7, msgLen:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    .line 657
    .local v4, len:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$400(Lcom/samsung/client/SyncmlService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/16 v2, 0xc

    iget-object v5, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;
    invoke-static {v5}, Lcom/samsung/client/SyncmlService;->access$300(Lcom/samsung/client/SyncmlService;)Lcom/samsung/client/SyncmlService$ServiceHandler;

    move-result-object v5

    const/16 v8, 0x7d1

    invoke-virtual {v5, v8}, Lcom/samsung/client/SyncmlService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 660
    return v9
.end method

.method public areResourcesCleaned()Z
    .registers 4

    .prologue
    .line 715
    const-string v0, "SyncmlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resources Cleaned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/client/SyncmlService;->resourcesCleaned:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    sget-boolean v0, Lcom/samsung/client/SyncmlService;->resourcesCleaned:Z

    return v0
.end method

.method public cancelDownload(I)I
    .registers 12
    .parameter "par"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v1, 0xa

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 677
    const-string v0, "SyncmlService"

    const-string v2, "cancelDownload called from SyncmlService "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    new-array v6, v5, [B

    aput-byte v1, v6, v9

    .line 679
    .local v6, byteMsg:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 680
    .local v3, data:Ljava/lang/String;
    new-array v7, v5, [B

    aput-byte v5, v7, v9

    .line 681
    .local v7, msgLen:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    .line 682
    .local v4, len:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$400(Lcom/samsung/client/SyncmlService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/16 v2, 0xc

    iget-object v5, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;
    invoke-static {v5}, Lcom/samsung/client/SyncmlService;->access$300(Lcom/samsung/client/SyncmlService;)Lcom/samsung/client/SyncmlService$ServiceHandler;

    move-result-object v5

    const/16 v8, 0x7d1

    invoke-virtual {v5, v8}, Lcom/samsung/client/SyncmlService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 686
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$300(Lcom/samsung/client/SyncmlService;)Lcom/samsung/client/SyncmlService$ServiceHandler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/samsung/client/SyncmlService$ServiceHandler;->removeMessages(I)V

    .line 687
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$300(Lcom/samsung/client/SyncmlService;)Lcom/samsung/client/SyncmlService$ServiceHandler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/samsung/client/SyncmlService$ServiceHandler;->removeMessages(I)V

    .line 689
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->sessionResponseTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 690
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->hangedTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 691
    const-string v0, "SyncmlService"

    const-string v1, "cancelDownload called from SyncmlService 2222"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return v9
.end method

.method public cancelUpdate()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x35

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 771
    const-string v0, "SyncmlService"

    const-string v2, "cancelUpdate called from SyncmlService "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    new-array v6, v5, [B

    aput-byte v1, v6, v9

    .line 773
    .local v6, byteMsg:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 774
    .local v3, data:Ljava/lang/String;
    new-array v7, v5, [B

    aput-byte v5, v7, v9

    .line 775
    .local v7, msgLen:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    .line 776
    .local v4, len:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$400(Lcom/samsung/client/SyncmlService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/16 v2, 0xc

    iget-object v5, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;
    invoke-static {v5}, Lcom/samsung/client/SyncmlService;->access$300(Lcom/samsung/client/SyncmlService;)Lcom/samsung/client/SyncmlService$ServiceHandler;

    move-result-object v5

    const/16 v8, 0x7d1

    invoke-virtual {v5, v8}, Lcom/samsung/client/SyncmlService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 780
    sput-boolean v9, Lcom/samsung/client/SyncmlService;->resourcesCleaned:Z

    .line 781
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->sessionResponseTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 782
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->hangedTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 783
    return-void
.end method

.method public fumoAbort()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x5

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 740
    const-string v0, "SyncmlService"

    const-string v2, "fumoAbort called from SyncmlService "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    sput-boolean v5, Lcom/samsung/client/SyncmlService;->resourcesCleaned:Z

    .line 742
    new-array v6, v5, [B

    aput-byte v1, v6, v8

    .line 743
    .local v6, byteMsg:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 744
    .local v3, data:Ljava/lang/String;
    new-array v7, v5, [B

    aput-byte v5, v7, v8

    .line 745
    .local v7, msgLen:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    .line 746
    .local v4, len:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$400(Lcom/samsung/client/SyncmlService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/16 v2, 0xc

    iget-object v5, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;
    invoke-static {v5}, Lcom/samsung/client/SyncmlService;->access$300(Lcom/samsung/client/SyncmlService;)Lcom/samsung/client/SyncmlService$ServiceHandler;

    move-result-object v5

    const/16 v8, 0x7d1

    invoke-virtual {v5, v8}, Lcom/samsung/client/SyncmlService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 748
    return-void
.end method

.method public fumoRun(I)I
    .registers 12
    .parameter "par"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 623
    const-string v0, "SyncmlService"

    const-string v2, "fumoRun called from SyncmlService "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    sput-boolean v9, Lcom/samsung/client/SyncmlService;->resourcesCleaned:Z

    .line 625
    new-array v6, v5, [B

    aput-byte v1, v6, v9

    .line 626
    .local v6, byteMsg:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 627
    .local v3, data:Ljava/lang/String;
    new-array v7, v5, [B

    aput-byte v5, v7, v9

    .line 628
    .local v7, msgLen:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    .line 629
    .local v4, len:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$400(Lcom/samsung/client/SyncmlService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/16 v2, 0xc

    iget-object v5, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;
    invoke-static {v5}, Lcom/samsung/client/SyncmlService;->access$300(Lcom/samsung/client/SyncmlService;)Lcom/samsung/client/SyncmlService$ServiceHandler;

    move-result-object v5

    const/16 v8, 0x7d1

    invoke-virtual {v5, v8}, Lcom/samsung/client/SyncmlService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 631
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->sessionResponseTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 632
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->hangedTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 633
    return v9
.end method

.method public fumo_pending_check()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v1, 0xe

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 786
    invoke-static {v5}, Lcom/samsung/client/SyncmlService;->access$202(Z)Z

    .line 787
    const-string v0, "SyncmlService"

    const-string v2, "fumo_pending_check called from SyncmlService "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    new-array v6, v5, [B

    aput-byte v1, v6, v8

    .line 789
    .local v6, byteMsg:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 790
    .local v3, data:Ljava/lang/String;
    new-array v7, v5, [B

    aput-byte v5, v7, v8

    .line 791
    .local v7, msgLen:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    .line 792
    .local v4, len:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$400(Lcom/samsung/client/SyncmlService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/16 v2, 0xc

    iget-object v5, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;
    invoke-static {v5}, Lcom/samsung/client/SyncmlService;->access$300(Lcom/samsung/client/SyncmlService;)Lcom/samsung/client/SyncmlService$ServiceHandler;

    move-result-object v5

    const/16 v8, 0x7d1

    invoke-virtual {v5, v8}, Lcom/samsung/client/SyncmlService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 795
    return-void
.end method

.method public isBatteryLow()Z
    .registers 4

    .prologue
    .line 720
    const-string v0, "SyncmlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Battery State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mIsBatteryLow:Z
    invoke-static {v2}, Lcom/samsung/client/SyncmlService;->access$800(Lcom/samsung/client/SyncmlService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mIsBatteryLow:Z
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$800(Lcom/samsung/client/SyncmlService;)Z

    move-result v0

    return v0
.end method

.method public pauseFumoDownload(I)I
    .registers 3
    .parameter "par"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 725
    const/4 v0, 0x0

    return v0
.end method

.method public registerDMCallback(Lcom/samsung/client/ISyncmlServiceDMCallback;)V
    .registers 6
    .parameter "cb"

    .prologue
    .line 520
    if-eqz p1, :cond_22

    .line 521
    iget-object v1, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v1, v1, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    .line 522
    .local v0, res:Z
    const-string v1, "SyncmlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register callback result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .end local v0           #res:Z
    :cond_22
    return-void
.end method

.method public resetRadio()V
    .registers 10

    .prologue
    const/16 v1, 0xb

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 760
    const-string v0, "SyncmlService"

    const-string v2, "resetRadio called from SyncmlService "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    new-array v6, v5, [B

    aput-byte v1, v6, v8

    .line 762
    .local v6, byteMsg:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 763
    .local v3, data:Ljava/lang/String;
    new-array v7, v5, [B

    aput-byte v5, v7, v8

    .line 764
    .local v7, msgLen:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    .line 765
    .local v4, len:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$400(Lcom/samsung/client/SyncmlService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/16 v2, 0xc

    iget-object v5, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;
    invoke-static {v5}, Lcom/samsung/client/SyncmlService;->access$300(Lcom/samsung/client/SyncmlService;)Lcom/samsung/client/SyncmlService$ServiceHandler;

    move-result-object v5

    const/16 v8, 0x7d1

    invoke-virtual {v5, v8}, Lcom/samsung/client/SyncmlService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 768
    return-void
.end method

.method public resumeFumoDownload(I)I
    .registers 3
    .parameter "par"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 729
    const/4 v0, 0x0

    return v0
.end method

.method public retryFumoStatus()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x33

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 637
    const-string v0, "SyncmlService"

    const-string v2, "retryFumoStatus called from SyncmlService "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    new-array v6, v5, [B

    aput-byte v1, v6, v9

    .line 639
    .local v6, byteMsg:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 640
    .local v3, data:Ljava/lang/String;
    new-array v7, v5, [B

    aput-byte v5, v7, v9

    .line 641
    .local v7, msgLen:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    .line 642
    .local v4, len:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$400(Lcom/samsung/client/SyncmlService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/16 v2, 0xc

    iget-object v5, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;
    invoke-static {v5}, Lcom/samsung/client/SyncmlService;->access$300(Lcom/samsung/client/SyncmlService;)Lcom/samsung/client/SyncmlService$ServiceHandler;

    move-result-object v5

    const/16 v8, 0x7d1

    invoke-virtual {v5, v8}, Lcom/samsung/client/SyncmlService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 645
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->sessionResponseTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 646
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->hangedTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 647
    return v9
.end method

.method public sendNIAmessage([B)V
    .registers 8
    .parameter "msg"

    .prologue
    const/16 v1, 0xc

    .line 751
    const-string v0, "SyncmlService"

    const-string v2, "sendNIAmessage called from SyncmlService "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/client/SyncmlService;->resourcesCleaned:Z

    .line 753
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #calls: Lcom/samsung/client/SyncmlService;->Bytes2HexString([B)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/samsung/client/SyncmlService;->access$700(Lcom/samsung/client/SyncmlService;[B)Ljava/lang/String;

    move-result-object v3

    .line 754
    .local v3, data:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/client/SyncmlService;->Int2TwoByteString(I)Ljava/lang/String;

    move-result-object v4

    .line 755
    .local v4, len:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$400(Lcom/samsung/client/SyncmlService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;
    invoke-static {v2}, Lcom/samsung/client/SyncmlService;->access$300(Lcom/samsung/client/SyncmlService;)Lcom/samsung/client/SyncmlService$ServiceHandler;

    move-result-object v2

    const/16 v5, 0x7d1

    invoke-virtual {v2, v5}, Lcom/samsung/client/SyncmlService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move v2, v1

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 757
    return-void
.end method

.method public setHfaInitiated(Z)Z
    .registers 3
    .parameter "par"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #setter for: Lcom/samsung/client/SyncmlService;->hfaPrlFumoCheck:Z
    invoke-static {v0, p1}, Lcom/samsung/client/SyncmlService;->access$502(Lcom/samsung/client/SyncmlService;Z)Z

    .line 736
    return p1
.end method

.method public setResourcesState(Z)V
    .registers 5
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 798
    const-string v0, "SyncmlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetResourcesState called from SyncmlService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    sput-boolean p1, Lcom/samsung/client/SyncmlService;->resourcesCleaned:Z

    .line 801
    return-void
.end method

.method public setupDMSession(Lcom/samsung/client/ISyncmlServiceDMCallback;Lcom/samsung/client/Tsldm_ses_opt_binder;)I
    .registers 14
    .parameter "cb"
    .parameter "opt"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 501
    const-string v0, "SyncmlService"

    const-string v2, "setupDMSession called from SyncmlService "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    if-eqz p1, :cond_12

    .line 503
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 505
    :cond_12
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$400(Lcom/samsung/client/SyncmlService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    const/16 v3, 0x4000

    invoke-virtual {v2, v3}, Lcom/samsung/client/SyncmlService;->Int2TwoByteString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    const/16 v3, 0x6000

    invoke-virtual {v2, v3}, Lcom/samsung/client/SyncmlService;->Int2TwoByteString(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "Sprint OMA-DM"

    iget-object v2, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;
    invoke-static {v2}, Lcom/samsung/client/SyncmlService;->access$300(Lcom/samsung/client/SyncmlService;)Lcom/samsung/client/SyncmlService$ServiceHandler;

    move-result-object v2

    const/16 v3, 0x7d1

    invoke-virtual {v2, v3}, Lcom/samsung/client/SyncmlService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    move v2, v1

    move v3, v1

    move v5, v4

    move v8, v1

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/Phone;->SetupSession(IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 509
    invoke-static {v4}, Lcom/samsung/client/SyncmlService;->access$202(Z)Z

    .line 510
    return v1
.end method

.method public shutdownDMSession(I)I
    .registers 10
    .parameter "par"

    .prologue
    .line 611
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/client/SyncmlService;->resourcesCleaned:Z

    .line 612
    const-string v0, "SyncmlService"

    const-string v1, "shutdownDMSession called from SyncmlService "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #calls: Lcom/samsung/client/SyncmlService;->convertInt2Bytes(I)[B
    invoke-static {v0, p1}, Lcom/samsung/client/SyncmlService;->access$600(Lcom/samsung/client/SyncmlService;I)[B

    move-result-object v6

    .line 614
    .local v6, byteMsg:[B
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #calls: Lcom/samsung/client/SyncmlService;->Bytes2HexString([B)Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/samsung/client/SyncmlService;->access$700(Lcom/samsung/client/SyncmlService;[B)Ljava/lang/String;

    move-result-object v3

    .line 615
    .local v3, data:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/client/SyncmlService;->Int2TwoByteString(I)Ljava/lang/String;

    move-result-object v4

    .line 616
    .local v4, len:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$400(Lcom/samsung/client/SyncmlService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x2

    const/16 v2, 0xc

    iget-object v5, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;
    invoke-static {v5}, Lcom/samsung/client/SyncmlService;->access$300(Lcom/samsung/client/SyncmlService;)Lcom/samsung/client/SyncmlService$ServiceHandler;

    move-result-object v5

    const/16 v7, 0x7d1

    invoke-virtual {v5, v7}, Lcom/samsung/client/SyncmlService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 619
    const/4 v0, 0x0

    return v0
.end method

.method public startDMSession(IILcom/samsung/client/Tsldm_start_parm_binder;)I
    .registers 15
    .parameter "type"
    .parameter "par"
    .parameter "start"

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x7d1

    .line 528
    const-string v0, "SyncmlService"

    const-string v1, "startDMSession called from SyncmlService "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    sput-boolean v10, Lcom/samsung/client/SyncmlService;->resourcesCleaned:Z

    .line 531
    packed-switch p1, :pswitch_data_10e

    .line 594
    :goto_f
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->sessionResponseTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 595
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->hangedTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 597
    return v10

    .line 533
    :pswitch_1e
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$400(Lcom/samsung/client/SyncmlService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const-string v2, "sprint"

    const-string v3, "org.openmobilealliance.dm.deviceconfiguration.hfa"

    const-string v4, "format"

    const-string v5, "src"

    const-string v6, "correl"

    const-string v7, "mark"

    const-string v8, "data"

    iget-object v1, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;
    invoke-static {v1}, Lcom/samsung/client/SyncmlService;->access$300(Lcom/samsung/client/SyncmlService;)Lcom/samsung/client/SyncmlService$ServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/samsung/client/SyncmlService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    move v1, p1

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/Phone;->ClientStartSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_f

    .line 541
    :pswitch_41
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->hfaPrlFumoCheck:Z
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$500(Lcom/samsung/client/SyncmlService;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 542
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #setter for: Lcom/samsung/client/SyncmlService;->hfaPrlFumoCheck:Z
    invoke-static {v0, v10}, Lcom/samsung/client/SyncmlService;->access$502(Lcom/samsung/client/SyncmlService;Z)Z

    .line 543
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$400(Lcom/samsung/client/SyncmlService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const-string v2, "sprint"

    const-string v3, "org.openmobilealliance.dm.firmwareupdate.devicerequest"

    const-string v4, "format"

    const-string v5, "src"

    const-string v6, "correl"

    const-string v7, "mark"

    const-string v8, "data"

    iget-object v1, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;
    invoke-static {v1}, Lcom/samsung/client/SyncmlService;->access$300(Lcom/samsung/client/SyncmlService;)Lcom/samsung/client/SyncmlService$ServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/samsung/client/SyncmlService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    move v1, p1

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/Phone;->ClientStartSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_f

    .line 551
    :cond_71
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$400(Lcom/samsung/client/SyncmlService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const-string v2, "sprint"

    const-string v3, "org.openmobilealliance.dm.firmwareupdate.userrequest"

    const-string v4, "format"

    const-string v5, "src"

    const-string v6, "correl"

    const-string v7, "mark"

    const-string v8, "data"

    iget-object v1, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;
    invoke-static {v1}, Lcom/samsung/client/SyncmlService;->access$300(Lcom/samsung/client/SyncmlService;)Lcom/samsung/client/SyncmlService$ServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/samsung/client/SyncmlService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    move v1, p1

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/Phone;->ClientStartSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_f

    .line 563
    :pswitch_95
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->hfaPrlFumoCheck:Z
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$500(Lcom/samsung/client/SyncmlService;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 565
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #setter for: Lcom/samsung/client/SyncmlService;->hfaPrlFumoCheck:Z
    invoke-static {v0, v10}, Lcom/samsung/client/SyncmlService;->access$502(Lcom/samsung/client/SyncmlService;Z)Z

    .line 566
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$400(Lcom/samsung/client/SyncmlService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const-string v2, "sprint"

    const-string v3, "org.openmobilealliance.dm.prlupdate.devicerequest"

    const-string v4, "format"

    const-string v5, "src"

    const-string v6, "correl"

    const-string v7, "mark"

    const-string v8, "data"

    iget-object v1, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;
    invoke-static {v1}, Lcom/samsung/client/SyncmlService;->access$300(Lcom/samsung/client/SyncmlService;)Lcom/samsung/client/SyncmlService$ServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/samsung/client/SyncmlService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    move v1, p1

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/Phone;->ClientStartSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_f

    .line 575
    :cond_c6
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$400(Lcom/samsung/client/SyncmlService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const-string v2, "sprint"

    const-string v3, "org.openmobilealliance.dm.prlupdate.userrequest"

    const-string v4, "format"

    const-string v5, "src"

    const-string v6, "correl"

    const-string v7, "mark"

    const-string v8, "data"

    iget-object v1, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;
    invoke-static {v1}, Lcom/samsung/client/SyncmlService;->access$300(Lcom/samsung/client/SyncmlService;)Lcom/samsung/client/SyncmlService$ServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/samsung/client/SyncmlService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    move v1, p1

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/Phone;->ClientStartSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_f

    .line 583
    :pswitch_ea
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$400(Lcom/samsung/client/SyncmlService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const-string v2, "sprint"

    const-string v3, "org.openmobilealliance.dm.deviceconfiguration.userrequest"

    const-string v4, "format"

    const-string v5, "src"

    const-string v6, "correl"

    const-string v7, "mark"

    const-string v8, "data"

    iget-object v1, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;
    invoke-static {v1}, Lcom/samsung/client/SyncmlService;->access$300(Lcom/samsung/client/SyncmlService;)Lcom/samsung/client/SyncmlService$ServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/samsung/client/SyncmlService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    move v1, p1

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/Phone;->ClientStartSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_f

    .line 531
    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_41
        :pswitch_95
        :pswitch_ea
    .end packed-switch
.end method

.method public stopDMSession(II)I
    .registers 11
    .parameter "id"
    .parameter "flag"

    .prologue
    .line 601
    const-string v0, "SyncmlService"

    const-string v1, "stopDMSession called from SyncmlService "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #calls: Lcom/samsung/client/SyncmlService;->convertInt2Bytes(I)[B
    invoke-static {v0, p1}, Lcom/samsung/client/SyncmlService;->access$600(Lcom/samsung/client/SyncmlService;I)[B

    move-result-object v6

    .line 603
    .local v6, byteMsg:[B
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #calls: Lcom/samsung/client/SyncmlService;->Bytes2HexString([B)Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/samsung/client/SyncmlService;->access$700(Lcom/samsung/client/SyncmlService;[B)Ljava/lang/String;

    move-result-object v3

    .line 604
    .local v3, data:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/client/SyncmlService;->Int2TwoByteString(I)Ljava/lang/String;

    move-result-object v4

    .line 605
    .local v4, len:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$400(Lcom/samsung/client/SyncmlService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0xc

    iget-object v5, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;
    invoke-static {v5}, Lcom/samsung/client/SyncmlService;->access$300(Lcom/samsung/client/SyncmlService;)Lcom/samsung/client/SyncmlService$ServiceHandler;

    move-result-object v5

    const/16 v7, 0x7d1

    invoke-virtual {v5, v7}, Lcom/samsung/client/SyncmlService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 607
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterDMCallback(Lcom/samsung/client/ISyncmlServiceDMCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 514
    if-eqz p1, :cond_9

    .line 515
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 517
    :cond_9
    return-void
.end method

.method public updateFw(I)I
    .registers 13
    .parameter "par"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 696
    const-string v0, "SyncmlService"

    const-string v1, "updateFw called from SyncmlService "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const/4 v0, 0x1

    :try_start_9
    new-array v6, v0, [B

    const/4 v0, 0x0

    const/4 v1, 0x7

    aput-byte v1, v6, v0

    .line 700
    .local v6, byteMsg:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 701
    .local v3, data:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v8, v0, [B

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-byte v1, v8, v0

    .line 702
    .local v8, msgLen:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>([B)V

    .line 703
    .local v4, len:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$400(Lcom/samsung/client/SyncmlService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x7

    const/16 v2, 0xc

    iget-object v5, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;
    invoke-static {v5}, Lcom/samsung/client/SyncmlService;->access$300(Lcom/samsung/client/SyncmlService;)Lcom/samsung/client/SyncmlService$ServiceHandler;

    move-result-object v5

    const/16 v9, 0x7d1

    invoke-virtual {v5, v9}, Lcom/samsung/client/SyncmlService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_38} :catch_39

    .line 711
    .end local v3           #data:Ljava/lang/String;
    .end local v4           #len:Ljava/lang/String;
    .end local v6           #byteMsg:[B
    .end local v8           #msgLen:[B
    :goto_38
    return v10

    .line 707
    :catch_39
    move-exception v7

    .line 708
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "SyncmlService"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38
.end method

.method public wimaxSendResponse(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "id"
    .parameter "data"
    .parameter "len"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$1;->this$0:Lcom/samsung/client/SyncmlService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/client/SyncmlService;->sendResponse(ILjava/lang/String;Ljava/lang/String;)V

    .line 805
    return-void
.end method
