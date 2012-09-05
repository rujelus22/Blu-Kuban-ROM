.class Lcom/samsung/client/DMApp$9;
.super Landroid/os/CountDownTimer;
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
.method constructor <init>(Lcom/samsung/client/DMApp;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2894
    iput-object p1, p0, Lcom/samsung/client/DMApp$9;->this$0:Lcom/samsung/client/DMApp;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2906
    iget-object v0, p0, Lcom/samsung/client/DMApp$9;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/client/DMApp;->access$2000(Lcom/samsung/client/DMApp;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/samsung/client/DMApp$9;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/client/DMApp;->access$2000(Lcom/samsung/client/DMApp;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/fumo/UpdateSoftware;

    if-nez v0, :cond_36

    .line 2908
    iget-object v0, p0, Lcom/samsung/client/DMApp$9;->this$0:Lcom/samsung/client/DMApp;

    const/4 v1, 0x7

    #setter for: Lcom/samsung/client/DMApp;->sessStatus:I
    invoke-static {v0, v1}, Lcom/samsung/client/DMApp;->access$702(Lcom/samsung/client/DMApp;I)I

    .line 2909
    iget-object v0, p0, Lcom/samsung/client/DMApp$9;->this$0:Lcom/samsung/client/DMApp;

    const/4 v1, -0x2

    #setter for: Lcom/samsung/client/DMApp;->errCode:I
    invoke-static {v0, v1}, Lcom/samsung/client/DMApp;->access$802(Lcom/samsung/client/DMApp;I)I

    .line 2910
    iget-object v0, p0, Lcom/samsung/client/DMApp$9;->this$0:Lcom/samsung/client/DMApp;

    #setter for: Lcom/samsung/client/DMApp;->sessUpdate:I
    invoke-static {v0, v3}, Lcom/samsung/client/DMApp;->access$902(Lcom/samsung/client/DMApp;I)I

    .line 2911
    iget-object v0, p0, Lcom/samsung/client/DMApp$9;->this$0:Lcom/samsung/client/DMApp;

    iget-object v0, v0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/client/DMApp$9;->this$0:Lcom/samsung/client/DMApp;

    iget-object v1, v1, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2914
    :cond_36
    return-void
.end method

.method public onTick(J)V
    .registers 6
    .parameter "millisUntilFinished"

    .prologue
    .line 2897
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangedTimer:onTick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    return-void
.end method
