.class Lcom/sprint/w/installer/BootListener$1;
.super Ljava/lang/Thread;
.source "BootListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/BootListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/BootListener;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/BootListener;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sprint/w/installer/BootListener$1;->this$0:Lcom/sprint/w/installer/BootListener;

    iput-object p2, p0, Lcom/sprint/w/installer/BootListener$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 53
    .local v0, lock:Ljava/lang/Object;
    :goto_5
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->isProvisioningComplete()Z

    move-result v1

    if-nez v1, :cond_18

    .line 55
    :try_start_b
    monitor-enter v0
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_c} :catch_16

    .line 56
    const-wide/16 v1, 0x3e8

    :try_start_e
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 57
    monitor-exit v0

    goto :goto_5

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_13

    :try_start_15
    throw v1
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_16} :catch_16

    .line 58
    :catch_16
    move-exception v1

    goto :goto_5

    .line 63
    :cond_18
    iget-object v1, p0, Lcom/sprint/w/installer/BootListener$1;->val$context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sprint/w/installer/BootListener$1;->val$context:Landroid/content/Context;

    const-class v4, Lcom/sprint/w/installer/BootListener;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 67
    return-void
.end method
