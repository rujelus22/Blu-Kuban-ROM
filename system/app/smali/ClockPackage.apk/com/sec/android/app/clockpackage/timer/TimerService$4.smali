.class Lcom/sec/android/app/clockpackage/timer/TimerService$4;
.super Ljava/lang/Object;
.source "TimerService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 689
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$4;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 5
    .parameter "focusChange"

    .prologue
    .line 691
    const-string v0, "TimerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange - focusChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    packed-switch p1, :pswitch_data_22

    .line 714
    :goto_1b
    return-void

    .line 698
    :pswitch_1c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$4;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    #calls: Lcom/sec/android/app/clockpackage/timer/TimerService;->stopRing()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->access$100(Lcom/sec/android/app/clockpackage/timer/TimerService;)V

    goto :goto_1b

    .line 692
    :pswitch_data_22
    .packed-switch -0x2
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method
