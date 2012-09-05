.class Lcom/samsung/client/DeviceManagement$6;
.super Landroid/os/CountDownTimer;
.source "DeviceManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/DeviceManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/DeviceManagement;


# direct methods
.method constructor <init>(Lcom/samsung/client/DeviceManagement;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/samsung/client/DeviceManagement$6;->this$0:Lcom/samsung/client/DeviceManagement;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    .line 283
    const-string v0, "DeviceManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sec10:onFinish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/client/DeviceManagement$6;->this$0:Lcom/samsung/client/DeviceManagement;

    #getter for: Lcom/samsung/client/DeviceManagement;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v2}, Lcom/samsung/client/DeviceManagement;->access$000(Lcom/samsung/client/DeviceManagement;)Lcom/samsung/client/DMApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/client/DMApp;->isDMSessionNotActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/samsung/client/DeviceManagement$6;->this$0:Lcom/samsung/client/DeviceManagement;

    #getter for: Lcom/samsung/client/DeviceManagement;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/client/DeviceManagement;->access$000(Lcom/samsung/client/DeviceManagement;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->isDMSessionNotActive()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 285
    sget-object v0, Lcom/samsung/client/DeviceManagement;->mDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 290
    :goto_33
    return-void

    .line 288
    :cond_34
    iget-object v0, p0, Lcom/samsung/client/DeviceManagement$6;->this$0:Lcom/samsung/client/DeviceManagement;

    iget-object v0, v0, Lcom/samsung/client/DeviceManagement;->sec10:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_33
.end method

.method public onTick(J)V
    .registers 5
    .parameter "millisUntilFinished"

    .prologue
    .line 278
    const-string v0, "DeviceManagement"

    const-string v1, "onTick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void
.end method
