.class Lcom/samsung/client/SyncmlService$2;
.super Landroid/telephony/PhoneStateListener;
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
    .line 809
    iput-object p1, p0, Lcom/samsung/client/SyncmlService$2;->this$0:Lcom/samsung/client/SyncmlService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 5
    .parameter "serviceState"

    .prologue
    .line 812
    const-string v0, "SyncmlService"

    const-string v1, "*******************************************"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const-string v0, "SyncmlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service state - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const-string v0, "SyncmlService"

    const-string v1, "*******************************************"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_4e

    .line 816
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$2;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mTelManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$900(Lcom/samsung/client/SyncmlService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 817
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$2;->this$0:Lcom/samsung/client/SyncmlService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/client/SyncmlService;->isInService:Z

    .line 818
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$2;->this$0:Lcom/samsung/client/SyncmlService;

    #calls: Lcom/samsung/client/SyncmlService;->isInRestrictLockMode()Z
    invoke-static {v0}, Lcom/samsung/client/SyncmlService;->access$1000(Lcom/samsung/client/SyncmlService;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 819
    iget-object v0, p0, Lcom/samsung/client/SyncmlService$2;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->delayTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 823
    :cond_4e
    return-void
.end method
