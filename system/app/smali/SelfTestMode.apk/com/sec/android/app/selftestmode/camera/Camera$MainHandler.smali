.class Lcom/sec/android/app/selftestmode/camera/Camera$MainHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/selftestmode/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/selftestmode/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/selftestmode/camera/Camera;Lcom/sec/android/app/selftestmode/camera/Camera$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/sec/android/app/selftestmode/camera/Camera$MainHandler;-><init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 333
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_42

    .line 383
    :cond_5
    :goto_5
    :pswitch_5
    return-void

    .line 337
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$500(Lcom/sec/android/app/selftestmode/camera/Camera;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$600(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    .line 349
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$500(Lcom/sec/android/app/selftestmode/camera/Camera;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mCaptureObject:Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$700(Lcom/sec/android/app/selftestmode/camera/Camera;)Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;->dismissFreezeFrame()V

    goto :goto_5

    .line 363
    :pswitch_2f
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_5

    .line 375
    :pswitch_3b
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->onCheckDataLineDone()V

    goto :goto_5

    .line 333
    nop

    :pswitch_data_42
    .packed-switch 0x3
        :pswitch_6
        :pswitch_2f
        :pswitch_5
        :pswitch_3b
    .end packed-switch
.end method
