.class public Lcom/android/samsungtest/EtcTest/WakeLockOnService;
.super Landroid/app/Service;
.source "WakeLockOnService.java"


# static fields
.field private static mKeystringWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 16
    const-string v0, "WakeLockOnService"

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/WakeLockOnService;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 27
    const-string v0, "WakeLockOnService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/EtcTest/WakeLockOnService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/WakeLockOnService;->mPowerManager:Landroid/os/PowerManager;

    .line 29
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/WakeLockOnService;->mPowerManager:Landroid/os/PowerManager;

    const/16 v1, 0x1a

    const-string v2, "Keystring Wake Lock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/EtcTest/WakeLockOnService;->mKeystringWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 32
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 33
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v1, 0x0

    .line 38
    const-string v2, "WakeLock"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 40
    .local v0, mWakeLock:Z
    const-string v2, "WakeLockOnService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWakeLock = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    if-eqz v0, :cond_39

    .line 43
    sget-object v2, Lcom/android/samsungtest/EtcTest/WakeLockOnService;->mKeystringWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_50

    .line 44
    sget-object v2, Lcom/android/samsungtest/EtcTest/WakeLockOnService;->mKeystringWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 45
    const-string v2, "Wake LocK ON!"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 46
    const/4 v1, 0x1

    .line 56
    :goto_38
    return v1

    .line 50
    :cond_39
    sget-object v2, Lcom/android/samsungtest/EtcTest/WakeLockOnService;->mKeystringWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 51
    sget-object v2, Lcom/android/samsungtest/EtcTest/WakeLockOnService;->mKeystringWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 52
    const-string v2, "Wake LocK OFF!"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_38

    .line 56
    :cond_50
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    goto :goto_38
.end method
