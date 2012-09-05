.class Lcom/samsung/handsfreeactivation/ActSuccess$1;
.super Ljava/lang/Object;
.source "ActSuccess.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/handsfreeactivation/ActSuccess;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/handsfreeactivation/ActSuccess;


# direct methods
.method constructor <init>(Lcom/samsung/handsfreeactivation/ActSuccess;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/samsung/handsfreeactivation/ActSuccess$1;->this$0:Lcom/samsung/handsfreeactivation/ActSuccess;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 37
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess$1;->this$0:Lcom/samsung/handsfreeactivation/ActSuccess;

    #getter for: Lcom/samsung/handsfreeactivation/ActSuccess;->profileToPrlTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/ActSuccess;->access$000(Lcom/samsung/handsfreeactivation/ActSuccess;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 38
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess$1;->this$0:Lcom/samsung/handsfreeactivation/ActSuccess;

    invoke-virtual {v0}, Lcom/samsung/handsfreeactivation/ActSuccess;->finish()V

    .line 40
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess$1;->this$0:Lcom/samsung/handsfreeactivation/ActSuccess;

    #getter for: Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/ActSuccess;->access$100(Lcom/samsung/handsfreeactivation/ActSuccess;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->start_hfa_prl()Z

    move-result v0

    if-nez v0, :cond_30

    .line 41
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess$1;->this$0:Lcom/samsung/handsfreeactivation/ActSuccess;

    #getter for: Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/ActSuccess;->access$100(Lcom/samsung/handsfreeactivation/ActSuccess;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->isMdnMsidChanged()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 42
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess$1;->this$0:Lcom/samsung/handsfreeactivation/ActSuccess;

    #getter for: Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/ActSuccess;->access$100(Lcom/samsung/handsfreeactivation/ActSuccess;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/client/DMApp;->handleReboot(Z)V

    .line 51
    :cond_30
    :goto_30
    return-void

    .line 43
    :cond_31
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess$1;->this$0:Lcom/samsung/handsfreeactivation/ActSuccess;

    #getter for: Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/ActSuccess;->access$100(Lcom/samsung/handsfreeactivation/ActSuccess;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->isBC10BC14Changed()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 44
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess$1;->this$0:Lcom/samsung/handsfreeactivation/ActSuccess;

    #getter for: Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/ActSuccess;->access$100(Lcom/samsung/handsfreeactivation/ActSuccess;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/client/DMApp;->handleBC10BC14Changed(Z)V

    goto :goto_30

    .line 46
    :cond_47
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess$1;->this$0:Lcom/samsung/handsfreeactivation/ActSuccess;

    #getter for: Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/ActSuccess;->access$100(Lcom/samsung/handsfreeactivation/ActSuccess;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 47
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess$1;->this$0:Lcom/samsung/handsfreeactivation/ActSuccess;

    #getter for: Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/ActSuccess;->access$100(Lcom/samsung/handsfreeactivation/ActSuccess;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    .line 48
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess$1;->this$0:Lcom/samsung/handsfreeactivation/ActSuccess;

    #getter for: Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/ActSuccess;->access$100(Lcom/samsung/handsfreeactivation/ActSuccess;)Lcom/samsung/client/DMApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_30
.end method
