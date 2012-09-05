.class Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$WakeLock;
.super Ljava/lang/Object;
.source "AlarmAlertInCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WakeLock"
.end annotation


# static fields
.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 165
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acquire(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 170
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_9

    .line 171
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 174
    :cond_9
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 177
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x30000001

    const-string v2, "AlarmAlert"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 181
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 182
    return-void
.end method

.method static release()V
    .registers 1

    .prologue
    .line 186
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_c

    .line 187
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 188
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 190
    :cond_c
    return-void
.end method
