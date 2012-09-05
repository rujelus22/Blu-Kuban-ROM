.class Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;
.super Ljava/lang/Thread;
.source "smlBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/smlBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceStartThread"
.end annotation


# instance fields
.field public mCategory:I

.field mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/syncmldstmo/smlBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smlBroadcastReceiver;Landroid/os/Handler;I)V
    .registers 4
    .parameter
    .parameter "h"
    .parameter "category"

    .prologue
    .line 519
    iput-object p1, p0, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;->this$0:Lcom/syncmldstmo/smlBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 520
    iput-object p2, p0, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;->mHandler:Landroid/os/Handler;

    .line 521
    iput p3, p0, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;->mCategory:I

    .line 522
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/16 v3, 0x40

    .line 526
    const-string v2, "Run Start"

    invoke-static {v3, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 528
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    const/16 v2, 0x14

    if-ge v1, v2, :cond_12

    .line 530
    invoke-static {}, Lcom/syncmldstmo/DSApplication;->getIsDSServiceRunning()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 546
    :cond_12
    iget-object v2, p0, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;->mCategory:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 548
    return-void

    .line 537
    :cond_1a
    const/16 v2, 0x40

    :try_start_1c
    const-string v3, "Waiting for DS Service Start"

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 538
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_29

    .line 528
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 540
    :catch_29
    move-exception v0

    .line 542
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_26
.end method
