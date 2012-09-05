.class Lcom/sec/android/app/clockpackage/timer/TimerService$1;
.super Ljava/lang/Object;
.source "TimerService.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


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
    .line 87
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .registers 4
    .parameter "motionEvent"

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    .line 90
    .local v0, motion:I
    packed-switch v0, :pswitch_data_14

    .line 98
    :goto_7
    return-void

    .line 92
    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    #calls: Lcom/sec/android/app/clockpackage/timer/TimerService;->stopVibrate()V
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerService;->access$000(Lcom/sec/android/app/clockpackage/timer/TimerService;)V

    .line 93
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService$1;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerService;

    #calls: Lcom/sec/android/app/clockpackage/timer/TimerService;->stopRing()V
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerService;->access$100(Lcom/sec/android/app/clockpackage/timer/TimerService;)V

    goto :goto_7

    .line 90
    nop

    :pswitch_data_14
    .packed-switch 0xa
        :pswitch_8
    .end packed-switch
.end method
