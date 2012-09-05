.class Lcom/android/samsungtest/camera/Camera$MainHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/samsungtest/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/samsungtest/camera/Camera$MainHandler;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/samsungtest/camera/Camera;Lcom/android/samsungtest/camera/Camera$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/android/samsungtest/camera/Camera$MainHandler;-><init>(Lcom/android/samsungtest/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 272
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3c

    .line 293
    :cond_5
    :goto_5
    return-void

    .line 274
    :pswitch_6
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$MainHandler;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mStatus:I
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$500(Lcom/android/samsungtest/camera/Camera;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 279
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$MainHandler;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$600(Lcom/android/samsungtest/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    .line 280
    :cond_1c
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$MainHandler;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mStatus:I
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$500(Lcom/android/samsungtest/camera/Camera;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 281
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$MainHandler;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mCaptureObject:Lcom/android/samsungtest/camera/Camera$Capturer;
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$700(Lcom/android/samsungtest/camera/Camera;)Lcom/android/samsungtest/camera/Camera$Capturer;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/samsungtest/camera/Camera$Capturer;->dismissFreezeFrame()V

    goto :goto_5

    .line 287
    :pswitch_2f
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$MainHandler;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-virtual {v0}, Lcom/android/samsungtest/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_5

    .line 272
    nop

    :pswitch_data_3c
    .packed-switch 0x3
        :pswitch_6
        :pswitch_2f
    .end packed-switch
.end method
