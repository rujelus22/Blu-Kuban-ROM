.class Lcom/samsung/handsfreeactivation/ActSuccess$ProfileToPRLTimer;
.super Landroid/os/CountDownTimer;
.source "ActSuccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/handsfreeactivation/ActSuccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileToPRLTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/handsfreeactivation/ActSuccess;


# direct methods
.method public constructor <init>(Lcom/samsung/handsfreeactivation/ActSuccess;JJ)V
    .registers 6
    .parameter
    .parameter "total"
    .parameter "interval"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/handsfreeactivation/ActSuccess$ProfileToPRLTimer;->this$0:Lcom/samsung/handsfreeactivation/ActSuccess;

    .line 58
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 59
    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 66
    const-string v0, "ActSuccess"

    const-string v1, "starting hfa -> prl !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess$ProfileToPRLTimer;->this$0:Lcom/samsung/handsfreeactivation/ActSuccess;

    invoke-virtual {v0}, Lcom/samsung/handsfreeactivation/ActSuccess;->finish()V

    .line 69
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess$ProfileToPRLTimer;->this$0:Lcom/samsung/handsfreeactivation/ActSuccess;

    #getter for: Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/ActSuccess;->access$100(Lcom/samsung/handsfreeactivation/ActSuccess;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->start_hfa_prl()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 70
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess$ProfileToPRLTimer;->this$0:Lcom/samsung/handsfreeactivation/ActSuccess;

    #getter for: Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/ActSuccess;->access$100(Lcom/samsung/handsfreeactivation/ActSuccess;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->isMdnMsidChanged()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 71
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess$ProfileToPRLTimer;->this$0:Lcom/samsung/handsfreeactivation/ActSuccess;

    #getter for: Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/ActSuccess;->access$100(Lcom/samsung/handsfreeactivation/ActSuccess;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/client/DMApp;->handleReboot(Z)V

    .line 80
    :cond_2e
    :goto_2e
    return-void

    .line 72
    :cond_2f
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess$ProfileToPRLTimer;->this$0:Lcom/samsung/handsfreeactivation/ActSuccess;

    #getter for: Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/ActSuccess;->access$100(Lcom/samsung/handsfreeactivation/ActSuccess;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->isBC10BC14Changed()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 73
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess$ProfileToPRLTimer;->this$0:Lcom/samsung/handsfreeactivation/ActSuccess;

    #getter for: Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/ActSuccess;->access$100(Lcom/samsung/handsfreeactivation/ActSuccess;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/client/DMApp;->handleBC10BC14Changed(Z)V

    goto :goto_2e

    .line 75
    :cond_45
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess$ProfileToPRLTimer;->this$0:Lcom/samsung/handsfreeactivation/ActSuccess;

    #getter for: Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/ActSuccess;->access$100(Lcom/samsung/handsfreeactivation/ActSuccess;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 76
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess$ProfileToPRLTimer;->this$0:Lcom/samsung/handsfreeactivation/ActSuccess;

    #getter for: Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/ActSuccess;->access$100(Lcom/samsung/handsfreeactivation/ActSuccess;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    .line 77
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess$ProfileToPRLTimer;->this$0:Lcom/samsung/handsfreeactivation/ActSuccess;

    #getter for: Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/ActSuccess;->access$100(Lcom/samsung/handsfreeactivation/ActSuccess;)Lcom/samsung/client/DMApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_2e
.end method

.method public onTick(J)V
    .registers 5
    .parameter "millisUntilFinished"

    .prologue
    .line 62
    const-string v0, "ActSuccess"

    const-string v1, "1 second over"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method
