.class Lcom/android/task/WakeLock;
.super Ljava/lang/Object;
.source "TaskAlertActivity.java"


# static fields
.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 346
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static release()V
    .registers 1

    .prologue
    .line 361
    sget-object v0, Lcom/android/task/WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_c

    .line 362
    sget-object v0, Lcom/android/task/WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 363
    const/4 v0, 0x0

    sput-object v0, Lcom/android/task/WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 365
    :cond_c
    return-void
.end method
