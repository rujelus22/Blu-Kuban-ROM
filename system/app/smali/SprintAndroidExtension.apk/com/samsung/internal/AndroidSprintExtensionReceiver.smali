.class public Lcom/samsung/internal/AndroidSprintExtensionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AndroidSprintExtensionReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidsprintExtensionReceiver"

.field static final mStartingServiceSync:Ljava/lang/Object;


# instance fields
.field private DEBUG_LOG:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/internal/AndroidSprintExtensionReceiver;->mStartingServiceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/internal/AndroidSprintExtensionReceiver;->DEBUG_LOG:Z

    return-void
.end method

.method public static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 63
    sget-object v0, Lcom/samsung/internal/AndroidSprintExtensionReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_3
    const-string v1, "AndroidsprintExtensionReceiver"

    const-string v2, "beginStartingService"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 74
    monitor-exit v0

    .line 75
    return-void

    .line 74
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .registers 5
    .parameter "service"
    .parameter "startId"

    .prologue
    .line 82
    sget-object v0, Lcom/samsung/internal/AndroidSprintExtensionReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_3
    const-string v1, "AndroidsprintExtensionReceiver"

    const-string v2, "finishStartingService"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    monitor-exit v0

    .line 90
    return-void

    .line 89
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/samsung/internal/AndroidSprintExtensionReceiver;->DEBUG_LOG:Z

    if-eqz v0, :cond_b

    .line 42
    const-string v0, "AndroidsprintExtensionReceiver"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/internal/AndroidSprintExtensionReceiver;->onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 44
    return-void
.end method

.method protected onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V
    .registers 6
    .parameter "context"
    .parameter "intent"
    .parameter "privileged"

    .prologue
    .line 47
    const-class v0, Lcom/samsung/internal/AndroidSprintExtensionService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 48
    const-string v0, "result"

    invoke-virtual {p0}, Lcom/samsung/internal/AndroidSprintExtensionReceiver;->getResultCode()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    invoke-static {p1, p2}, Lcom/samsung/internal/AndroidSprintExtensionReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 50
    return-void
.end method
