.class final Lcom/sec/android/app/music/MediaButtonIntentReceiver$1;
.super Landroid/os/Handler;
.source "MediaButtonIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MediaButtonIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter

    .prologue
    const/16 v7, 0x4f

    const/16 v6, 0x19

    const/16 v5, 0x18

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_51

    .line 70
    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/MediaButtonIntentReceiver$1;->removeMessages(I)V

    .line 71
    invoke-static {v4}, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->access$002(I)I

    .line 72
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 73
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 74
    if-ne v1, v7, :cond_1f

    .line 90
    :cond_1b
    :goto_1b
    invoke-static {v4}, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->access$102(Z)Z

    .line 113
    :cond_1e
    :goto_1e
    return-void

    .line 78
    :cond_1f
    if-ne v1, v6, :cond_38

    .line 79
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    const-string v2, "com.android.music.musicservicecommand"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v2, "command"

    const-string v3, "previous"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1b

    .line 83
    :cond_38
    if-ne v1, v5, :cond_1b

    .line 84
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    const-string v2, "com.android.music.musicservicecommand"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v2, "command"

    const-string v3, "next"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1b

    .line 91
    :cond_51
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_1e

    .line 93
    invoke-static {}, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_HEADSET_HOOK="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->access$000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 95
    const-string v1, "togglepause"

    .line 96
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 97
    if-ne v2, v7, :cond_9d

    .line 98
    invoke-static {}, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->access$000()I

    move-result v2

    if-lt v2, v3, :cond_85

    .line 99
    const-string v1, "next"

    .line 107
    :cond_85
    :goto_85
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    const-string v3, "com.android.music.musicservicecommand"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v3, "command"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 111
    invoke-static {v4}, Lcom/sec/android/app/music/MediaButtonIntentReceiver;->access$002(I)I

    goto :goto_1e

    .line 101
    :cond_9d
    if-ne v2, v6, :cond_a2

    .line 102
    const-string v1, "volume_down"

    goto :goto_85

    .line 103
    :cond_a2
    if-ne v2, v5, :cond_85

    .line 104
    const-string v1, "volume_up"

    goto :goto_85
.end method
