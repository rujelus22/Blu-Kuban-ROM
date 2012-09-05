.class public Lcom/google/android/music/MediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonIntentReceiver.java"


# static fields
.field public static RELEASE_RECEIVER_LOCK:Ljava/lang/String;

.field private static mDown:Z

.field private static mHandler:Landroid/os/Handler;

.field private static mLastClickTime:J

.field private static mLaunched:Z

.field public static sWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 27
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    .line 28
    sput-boolean v2, Lcom/google/android/music/MediaButtonIntentReceiver;->mDown:Z

    .line 29
    sput-boolean v2, Lcom/google/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    .line 31
    const-string v0, "releasereceiverlock"

    sput-object v0, Lcom/google/android/music/MediaButtonIntentReceiver;->RELEASE_RECEIVER_LOCK:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/google/android/music/MediaButtonIntentReceiver$1;

    invoke-direct {v0}, Lcom/google/android/music/MediaButtonIntentReceiver$1;-><init>()V

    sput-object v0, Lcom/google/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/google/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 22
    sput-boolean p0, Lcom/google/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_11

    .line 57
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    .line 59
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 60
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/MediaButtonIntentReceiver;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 148
    :cond_4f
    :goto_4f
    return-void

    .line 65
    :cond_50
    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 66
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 69
    if-eqz v0, :cond_4f

    .line 73
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 74
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    .line 75
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    .line 81
    const/4 v1, 0x0

    .line 82
    sparse-switch v2, :sswitch_data_10a

    .line 104
    :goto_72
    if-eqz v1, :cond_4f

    .line 105
    if-nez v3, :cond_102

    .line 106
    sget-boolean v3, Lcom/google/android/music/MediaButtonIntentReceiver;->mDown:Z

    if-eqz v3, :cond_c1

    .line 107
    const-string v0, "togglepause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    const-string v0, "play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    :cond_8a
    sget-wide v0, Lcom/google/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_a5

    sget-wide v0, Lcom/google/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    sub-long v0, v4, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_a5

    .line 111
    sget-object v0, Lcom/google/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/google/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    :cond_a5
    :goto_a5
    invoke-virtual {p0}, Lcom/google/android/music/MediaButtonIntentReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 144
    invoke-virtual {p0}, Lcom/google/android/music/MediaButtonIntentReceiver;->abortBroadcast()V

    goto :goto_4f

    .line 84
    :sswitch_af
    const-string v1, "stop"

    goto :goto_72

    .line 88
    :sswitch_b2
    const-string v1, "togglepause"

    goto :goto_72

    .line 91
    :sswitch_b5
    const-string v1, "next"

    goto :goto_72

    .line 94
    :sswitch_b8
    const-string v1, "previous"

    goto :goto_72

    .line 97
    :sswitch_bb
    const-string v1, "pause"

    goto :goto_72

    .line 100
    :sswitch_be
    const-string v1, "play"

    goto :goto_72

    .line 114
    :cond_c1
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_a5

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    const-string v3, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/16 v3, 0x4f

    if-ne v2, v3, :cond_f2

    sget-wide v2, Lcom/google/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    sub-long v2, v4, v2

    const-wide/16 v6, 0x12c

    cmp-long v2, v2, v6

    if-gez v2, :cond_f2

    .line 126
    const-string v1, "command"

    const-string v2, "next"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/MediaButtonIntentReceiver;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 128
    sput-wide v10, Lcom/google/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    .line 136
    :goto_ed
    sput-boolean v9, Lcom/google/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    .line 137
    sput-boolean v8, Lcom/google/android/music/MediaButtonIntentReceiver;->mDown:Z

    goto :goto_a5

    .line 130
    :cond_f2
    const-string v2, "command"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v1, "removeNotification"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/MediaButtonIntentReceiver;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 133
    sput-wide v4, Lcom/google/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    goto :goto_ed

    .line 140
    :cond_102
    sget-object v0, Lcom/google/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 141
    sput-boolean v9, Lcom/google/android/music/MediaButtonIntentReceiver;->mDown:Z

    goto :goto_a5

    .line 82
    :sswitch_data_10a
    .sparse-switch
        0x4f -> :sswitch_b2
        0x55 -> :sswitch_b2
        0x56 -> :sswitch_af
        0x57 -> :sswitch_b5
        0x58 -> :sswitch_b8
        0x7e -> :sswitch_be
        0x7f -> :sswitch_bb
    .end sparse-switch
.end method

.method startService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "i"

    .prologue
    const/4 v2, 0x1

    .line 151
    sget-object v1, Lcom/google/android/music/MediaButtonIntentReceiver;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1b

    .line 152
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 153
    .local v0, pmgr:Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/google/android/music/MediaButtonIntentReceiver;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 155
    .end local v0           #pmgr:Landroid/os/PowerManager;
    :cond_1b
    sget-object v1, Lcom/google/android/music/MediaButtonIntentReceiver;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 156
    sget-object v1, Lcom/google/android/music/MediaButtonIntentReceiver;->RELEASE_RECEIVER_LOCK:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 158
    return-void
.end method
