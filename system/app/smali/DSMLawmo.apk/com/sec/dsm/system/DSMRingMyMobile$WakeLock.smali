.class Lcom/sec/dsm/system/DSMRingMyMobile$WakeLock;
.super Ljava/lang/Object;
.source "DSMRingMyMobile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/dsm/system/DSMRingMyMobile;
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
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acquire(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 63
    sget-object v1, Lcom/sec/dsm/system/DSMRingMyMobile$WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_9

    .line 64
    sget-object v1, Lcom/sec/dsm/system/DSMRingMyMobile$WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 66
    :cond_9
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 68
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000000a

    const-string v2, "PopupDlgPCW"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/sec/dsm/system/DSMRingMyMobile$WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 71
    sget-object v1, Lcom/sec/dsm/system/DSMRingMyMobile$WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 72
    return-void
.end method

.method static goToSleepLCD(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    .line 74
    const-string v3, "gotoSleep + "

    invoke-static {v3}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 75
    const-string v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 76
    .local v2, pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    add-long v0, v3, v5

    .line 77
    .local v0, offtime:J
    invoke-virtual {v2, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 78
    const-string v3, "gotoSleep - "

    invoke-static {v3}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method static release()V
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/sec/dsm/system/DSMRingMyMobile$WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_c

    .line 82
    sget-object v0, Lcom/sec/dsm/system/DSMRingMyMobile$WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/dsm/system/DSMRingMyMobile$WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 85
    :cond_c
    return-void
.end method
