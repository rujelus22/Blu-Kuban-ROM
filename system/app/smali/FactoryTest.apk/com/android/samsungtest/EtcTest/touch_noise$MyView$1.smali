.class Lcom/android/samsungtest/EtcTest/touch_noise$MyView$1;
.super Landroid/os/Handler;
.source "touch_noise.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/EtcTest/touch_noise$MyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/samsungtest/EtcTest/touch_noise$MyView;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/EtcTest/touch_noise$MyView;)V
    .registers 2
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView$1;->this$1:Lcom/android/samsungtest/EtcTest/touch_noise$MyView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 379
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 387
    :goto_5
    return-void

    .line 381
    :pswitch_6
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView$1;->this$1:Lcom/android/samsungtest/EtcTest/touch_noise$MyView;

    iget-object v0, v0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->this$0:Lcom/android/samsungtest/EtcTest/touch_noise;

    #calls: Lcom/android/samsungtest/EtcTest/touch_noise;->updateCurrentTouchNoiseStatus()V
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->access$000(Lcom/android/samsungtest/EtcTest/touch_noise;)V

    .line 382
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView$1;->this$1:Lcom/android/samsungtest/EtcTest/touch_noise$MyView;

    #calls: Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->drawSquare()V
    invoke-static {v0}, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->access$100(Lcom/android/samsungtest/EtcTest/touch_noise$MyView;)V

    .line 383
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView$1;->this$1:Lcom/android/samsungtest/EtcTest/touch_noise$MyView;

    invoke-virtual {v0}, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;->invalidate()V

    goto :goto_5

    .line 379
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
