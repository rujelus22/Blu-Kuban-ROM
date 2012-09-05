.class public Lcom/syncmldstmo/network/smlNetworkTimer$HttpTimerTask;
.super Ljava/util/TimerTask;
.source "smlNetworkTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/network/smlNetworkTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HttpTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/network/smlNetworkTimer;


# direct methods
.method public constructor <init>(Lcom/syncmldstmo/network/smlNetworkTimer;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/syncmldstmo/network/smlNetworkTimer$HttpTimerTask;->this$0:Lcom/syncmldstmo/network/smlNetworkTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 72
    const-string v0, "======================"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->access$100()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 74
    const-string v0, "======================"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 76
    const/16 v0, 0x1388

    invoke-static {v0}, Lcom/syncmldstmo/network/smlNetworkTimer;->access$112(I)I

    .line 78
    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->access$100()I

    move-result v0

    const v1, 0x1d4c0

    if-le v0, v1, :cond_57

    .line 80
    const-string v0, "HTTP_MAX_TIMEOUT_MSEC over!!"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 81
    sget-object v0, Lcom/syncmldstmo/DSService;->_task:Lcom/syncmldstmo/base/smlTask;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlTask;->smltpInterruptNetwork()I

    .line 82
    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->smlEndTimer()V

    .line 84
    :cond_57
    return-void
.end method
