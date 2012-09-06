.class public Lcom/google/android/apps/plus/hangout/StressMode;
.super Ljava/lang/Object;
.source "StressMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;
    }
.end annotation


# static fields
.field private static stressMode:Lcom/google/android/apps/plus/hangout/StressMode;


# instance fields
.field private final context:Landroid/content/Context;

.field private disconnectRunnable:Ljava/lang/Runnable;

.field private final eventHandler:Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;

.field private exitMeetingRunnable:Ljava/lang/Runnable;

.field private final gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

.field private final handler:Landroid/os/Handler;

.field private final hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

.field private launchGreenRoomRunnable:Ljava/lang/Runnable;

.field private meetingEnterRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/service/Hangout$Info;)V
    .registers 6
    .parameter "context"
    .parameter "gcommApp"
    .parameter "hangoutInfo"

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/StressMode;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode;->eventHandler:Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode;->handler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/google/android/apps/plus/hangout/StressMode$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/hangout/StressMode$1;-><init>(Lcom/google/android/apps/plus/hangout/StressMode;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode;->launchGreenRoomRunnable:Ljava/lang/Runnable;

    .line 93
    new-instance v0, Lcom/google/android/apps/plus/hangout/StressMode$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/hangout/StressMode$2;-><init>(Lcom/google/android/apps/plus/hangout/StressMode;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode;->meetingEnterRunnable:Ljava/lang/Runnable;

    .line 101
    new-instance v0, Lcom/google/android/apps/plus/hangout/StressMode$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/hangout/StressMode$3;-><init>(Lcom/google/android/apps/plus/hangout/StressMode;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode;->exitMeetingRunnable:Ljava/lang/Runnable;

    .line 109
    new-instance v0, Lcom/google/android/apps/plus/hangout/StressMode$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/hangout/StressMode$4;-><init>(Lcom/google/android/apps/plus/hangout/StressMode;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode;->disconnectRunnable:Ljava/lang/Runnable;

    .line 119
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/StressMode;->context:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/StressMode;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    .line 121
    iput-object p3, p0, Lcom/google/android/apps/plus/hangout/StressMode;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode;->eventHandler:Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->registerForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/StressMode;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode;->meetingEnterRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/StressMode;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/StressMode;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/StressMode;->cancelRunnables()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/hangout/StressMode;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode;->launchGreenRoomRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/hangout/StressMode;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode;->exitMeetingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/hangout/StressMode;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/hangout/StressMode;)Lcom/google/android/apps/plus/hangout/GCommApp;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/hangout/StressMode;)Lcom/google/android/apps/plus/service/Hangout$Info;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    return-object v0
.end method

.method private cancelRunnables()V
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/StressMode;->launchGreenRoomRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/StressMode;->meetingEnterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/StressMode;->disconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method static initialize(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/service/Hangout$Info;)V
    .registers 4
    .parameter "context"
    .parameter "gcommApp"
    .parameter "hangoutInfo"

    .prologue
    .line 126
    invoke-static {}, Lcom/google/android/apps/plus/hangout/StressMode;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/google/android/apps/plus/hangout/StressMode;->stressMode:Lcom/google/android/apps/plus/hangout/StressMode;

    if-nez v0, :cond_11

    .line 127
    new-instance v0, Lcom/google/android/apps/plus/hangout/StressMode;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/plus/hangout/StressMode;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/service/Hangout$Info;)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/StressMode;->stressMode:Lcom/google/android/apps/plus/hangout/StressMode;

    .line 129
    :cond_11
    return-void
.end method

.method static isEnabled()Z
    .registers 2

    .prologue
    .line 132
    sget-object v0, Lcom/google/android/apps/plus/util/Property;->HANGOUT_STRESS_MODE:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
