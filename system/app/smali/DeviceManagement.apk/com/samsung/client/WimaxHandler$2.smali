.class Lcom/samsung/client/WimaxHandler$2;
.super Landroid/os/CountDownTimer;
.source "WimaxHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/WimaxHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/WimaxHandler;


# direct methods
.method constructor <init>(Lcom/samsung/client/WimaxHandler;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 521
    iput-object p1, p0, Lcom/samsung/client/WimaxHandler$2;->this$0:Lcom/samsung/client/WimaxHandler;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 530
    const-string v0, "WimaxHandler"

    const-string v1, "mWimaxTurnOffTimer: onFinish "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/samsung/client/WimaxHandler$2;->this$0:Lcom/samsung/client/WimaxHandler;

    #getter for: Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;
    invoke-static {v0}, Lcom/samsung/client/WimaxHandler;->access$600(Lcom/samsung/client/WimaxHandler;)Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    move-result-object v0

    invoke-virtual {v0}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->wimaxTurnOff()I

    .line 532
    iget-object v0, p0, Lcom/samsung/client/WimaxHandler$2;->this$0:Lcom/samsung/client/WimaxHandler;

    invoke-virtual {v0}, Lcom/samsung/client/WimaxHandler;->enableJavaWimax()V

    .line 533
    return-void
.end method

.method public onTick(J)V
    .registers 6
    .parameter "arg0"

    .prologue
    .line 525
    const-string v0, "WimaxHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWimaxTurnOffTimer: onTick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return-void
.end method
