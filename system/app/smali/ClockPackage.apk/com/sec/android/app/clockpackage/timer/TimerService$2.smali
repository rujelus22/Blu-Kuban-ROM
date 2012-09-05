.class Lcom/sec/android/app/clockpackage/timer/TimerService$2;
.super Landroid/content/BroadcastReceiver;
.source "TimerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/timer/TimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/timer/TimerService;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$2;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 150
    if-nez p2, :cond_3

    .line 198
    :cond_2
    :goto_2
    return-void

    .line 156
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 160
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$2;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    #calls: Lcom/sec/android/app/clockpackage/timer/TimerService;->isVibrateMode()Z
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/timer/TimerService;->access$200(Lcom/sec/android/app/clockpackage/timer/TimerService;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$2;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    #calls: Lcom/sec/android/app/clockpackage/timer/TimerService;->play()V
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/timer/TimerService;->access$300(Lcom/sec/android/app/clockpackage/timer/TimerService;)V

    goto :goto_2

    .line 170
    :cond_1d
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 172
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$2;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerService;->audioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/timer/TimerService;->access$400(Lcom/sec/android/app/clockpackage/timer/TimerService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 174
    .local v1, currentRingerMode:I
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$2;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    iget v3, v3, Lcom/sec/android/app/clockpackage/timer/TimerService;->initialRingState:I

    if-eq v3, v1, :cond_2

    .line 175
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$2;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    #calls: Lcom/sec/android/app/clockpackage/timer/TimerService;->play()V
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/timer/TimerService;->access$300(Lcom/sec/android/app/clockpackage/timer/TimerService;)V

    .line 176
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$2;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    iput v1, v3, Lcom/sec/android/app/clockpackage/timer/TimerService;->initialRingState:I

    goto :goto_2

    .line 182
    .end local v1           #currentRingerMode:I
    :cond_3f
    const-string v3, "timer_volume_change"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    const-string v3, "volume_level"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 190
    .local v2, currentVolume:I
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$2;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    iget v3, v3, Lcom/sec/android/app/clockpackage/timer/TimerService;->volumeValue:I

    if-eq v3, v2, :cond_2

    .line 192
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$2;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    iput v2, v3, Lcom/sec/android/app/clockpackage/timer/TimerService;->volumeValue:I

    .line 194
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$2;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    #calls: Lcom/sec/android/app/clockpackage/timer/TimerService;->play()V
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/timer/TimerService;->access$300(Lcom/sec/android/app/clockpackage/timer/TimerService;)V

    goto :goto_2
.end method
