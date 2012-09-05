.class public Lcom/sec/app/RilErrorNotifier/PhoneErrorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneErrorReceiver.java"


# static fields
.field static mStartingService:Landroid/os/PowerManager$WakeLock;

.field static final mStartingServiceSync:Ljava/lang/Object;


# instance fields
.field private rebootStarted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/app/RilErrorNotifier/PhoneErrorReceiver;->mStartingServiceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrorReceiver;->rebootStarted:Z

    return-void
.end method

.method public static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 82
    sget-object v2, Lcom/sec/app/RilErrorNotifier/PhoneErrorReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v2

    .line 83
    :try_start_3
    const-string v1, "PhoneErrorReceiver"

    const-string v3, "beginStartingService"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v1, Lcom/sec/app/RilErrorNotifier/PhoneErrorReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_25

    .line 85
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 87
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v3, "StartingAlertService"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/sec/app/RilErrorNotifier/PhoneErrorReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    .line 88
    sget-object v1, Lcom/sec/app/RilErrorNotifier/PhoneErrorReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 90
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_25
    sget-object v1, Lcom/sec/app/RilErrorNotifier/PhoneErrorReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 91
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 92
    monitor-exit v2

    .line 93
    return-void

    .line 92
    :catchall_2f
    move-exception v1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .registers 5
    .parameter "service"
    .parameter "startId"

    .prologue
    .line 100
    sget-object v1, Lcom/sec/app/RilErrorNotifier/PhoneErrorReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_3
    const-string v0, "PhoneErrorReceiver"

    const-string v2, "finishStartingService"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v0, Lcom/sec/app/RilErrorNotifier/PhoneErrorReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_19

    .line 103
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 104
    sget-object v0, Lcom/sec/app/RilErrorNotifier/PhoneErrorReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 107
    :cond_19
    monitor-exit v1

    .line 108
    return-void

    .line 107
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    const-string v0, "PhoneErrorReceiver"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 51
    iput-boolean v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrorReceiver;->rebootStarted:Z

    .line 52
    invoke-virtual {p0, p1, p2, v2}, Lcom/sec/app/RilErrorNotifier/PhoneErrorReceiver;->onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 64
    :cond_1a
    :goto_1a
    return-void

    .line 55
    :cond_1b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.NO_SIM_NOTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_NO_SIM_NOTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_33
    iget-boolean v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrorReceiver;->rebootStarted:Z

    if-eq v0, v3, :cond_1a

    .line 62
    :cond_37
    invoke-virtual {p0, p1, p2, v2}, Lcom/sec/app/RilErrorNotifier/PhoneErrorReceiver;->onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_1a
.end method

.method protected onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    const-class v0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 67
    const-string v0, "result"

    invoke-virtual {p0}, Lcom/sec/app/RilErrorNotifier/PhoneErrorReceiver;->getResultCode()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    invoke-static {p1, p2}, Lcom/sec/app/RilErrorNotifier/PhoneErrorReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 69
    return-void
.end method
