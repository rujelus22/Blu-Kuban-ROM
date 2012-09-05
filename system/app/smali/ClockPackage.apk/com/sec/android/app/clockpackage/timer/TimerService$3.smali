.class Lcom/sec/android/app/clockpackage/timer/TimerService$3;
.super Landroid/telephony/PhoneStateListener;
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
    .line 202
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$3;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 4
    .parameter "state"
    .parameter "ignored"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$3;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    iget v0, v0, Lcom/sec/android/app/clockpackage/timer/TimerService;->initialCallState:I

    if-ne p1, v0, :cond_7

    .line 241
    :goto_6
    return-void

    .line 209
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$3;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    iput p1, v0, Lcom/sec/android/app/clockpackage/timer/TimerService;->initialCallState:I

    .line 211
    packed-switch p1, :pswitch_data_26

    :pswitch_e
    goto :goto_6

    .line 215
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$3;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    #calls: Lcom/sec/android/app/clockpackage/timer/TimerService;->popUp()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->access$500(Lcom/sec/android/app/clockpackage/timer/TimerService;)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$3;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    #calls: Lcom/sec/android/app/clockpackage/timer/TimerService;->play()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->access$300(Lcom/sec/android/app/clockpackage/timer/TimerService;)V

    goto :goto_6

    .line 227
    :pswitch_1a
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$3;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    #calls: Lcom/sec/android/app/clockpackage/timer/TimerService;->stopVibrate()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->access$000(Lcom/sec/android/app/clockpackage/timer/TimerService;)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$3;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    #calls: Lcom/sec/android/app/clockpackage/timer/TimerService;->stopRing()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->access$100(Lcom/sec/android/app/clockpackage/timer/TimerService;)V

    goto :goto_6

    .line 211
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_1a
    .end packed-switch
.end method
