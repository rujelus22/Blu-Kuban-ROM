.class public Lcom/google/android/apps/plus/service/EventFinishedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EventFinishedReceiver.java"


# static fields
.field public static final sIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.plus.eventfinished"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/service/EventFinishedReceiver;->sIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 32
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 33
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "EventFinishedReceiver"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 35
    .local v2, wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 37
    const-string v3, "event_id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, eventId:Ljava/lang/String;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/android/apps/plus/service/EventFinishedReceiver$1;

    invoke-direct {v4, p0, v0, p1, v2}, Lcom/google/android/apps/plus/service/EventFinishedReceiver$1;-><init>(Lcom/google/android/apps/plus/service/EventFinishedReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 50
    return-void
.end method
