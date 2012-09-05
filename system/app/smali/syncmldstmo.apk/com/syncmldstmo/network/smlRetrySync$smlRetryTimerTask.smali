.class public Lcom/syncmldstmo/network/smlRetrySync$smlRetryTimerTask;
.super Ljava/util/TimerTask;
.source "smlRetrySync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/network/smlRetrySync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "smlRetryTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/network/smlRetrySync;


# direct methods
.method public constructor <init>(Lcom/syncmldstmo/network/smlRetrySync;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/syncmldstmo/network/smlRetrySync$smlRetryTimerTask;->this$0:Lcom/syncmldstmo/network/smlRetrySync;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0x8

    .line 77
    invoke-static {}, Lcom/syncmldstmo/network/smlRetrySync;->access$000()I

    move-result v1

    invoke-static {}, Lcom/syncmldstmo/network/smlRetrySync;->access$100()I

    move-result v2

    if-lt v1, v2, :cond_5e

    .line 79
    invoke-static {}, Lcom/syncmldstmo/network/smlRetrySync;->smlRetryEndTimer()V

    .line 81
    const-string v1, "=== Attatch RetryStartTime!! SyncNow ==="

    invoke-static {v3, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getSyncStart()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 84
    const-string v1, "synchronizing..."

    invoke-static {v3, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 114
    :goto_21
    return-void

    .line 88
    :cond_22
    invoke-static {}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlGetRomingState()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 90
    const/16 v1, 0x40

    const-string v2, "Roming true..."

    invoke-static {v1, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 91
    invoke-static {v4}, Lcom/syncmldstmo/base/smlAgent;->smlSetBackgroundState(Z)V

    .line 92
    invoke-static {v4}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlSetRoamingUI(Z)V

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, i:Landroid/content/Intent;
    invoke-static {}, Lcom/syncmldstmo/DSService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/syncmldstmo/smlCheckRoaming;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 95
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    invoke-static {}, Lcom/syncmldstmo/DSService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_21

    .line 100
    .end local v0           #i:Landroid/content/Intent;
    :cond_52
    invoke-static {v4}, Lcom/syncmldstmo/base/smlAgent;->setSyncStart(Z)V

    .line 101
    invoke-static {v4}, Lcom/syncmldstmo/base/smlAgent;->smlSetBackgroundState(Z)V

    .line 102
    const/16 v1, 0x20

    invoke-static {v1, v5, v5}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_21

    .line 109
    :cond_5e
    const-string v1, "========================================="

    invoke-static {v3, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== retry time ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/syncmldstmo/network/smlRetrySync;->access$000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", retryStartTime ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/syncmldstmo/network/smlRetrySync;->access$100()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 111
    const-string v1, "========================================="

    invoke-static {v3, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 113
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/syncmldstmo/network/smlRetrySync;->access$012(I)I

    goto :goto_21
.end method
