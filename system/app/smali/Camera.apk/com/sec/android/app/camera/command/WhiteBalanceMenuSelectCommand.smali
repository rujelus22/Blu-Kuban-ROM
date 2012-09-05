.class public Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "WhiteBalanceMenuSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WhiteBalanceMenuSelectCommand"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mWB:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V
    .registers 4
    .parameter "context"
    .parameter "commandid"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 37
    packed-switch p2, :pswitch_data_26

    .line 69
    :goto_8
    return-void

    .line 40
    :pswitch_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mWB:I

    goto :goto_8

    .line 44
    :pswitch_d
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mWB:I

    goto :goto_8

    .line 48
    :pswitch_11
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mWB:I

    goto :goto_8

    .line 52
    :pswitch_15
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mWB:I

    goto :goto_8

    .line 56
    :pswitch_19
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mWB:I

    goto :goto_8

    .line 60
    :pswitch_1d
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mWB:I

    goto :goto_8

    .line 64
    :pswitch_21
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mWB:I

    goto :goto_8

    .line 37
    nop

    :pswitch_data_26
    .packed-switch 0x384
        :pswitch_9
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_19
        :pswitch_1d
        :pswitch_21
        :pswitch_9
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_19
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method


# virtual methods
.method public execute()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_10

    .line 74
    const-string v0, "WhiteBalanceMenuSelectCommand"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_f
    :goto_f
    return-void

    .line 78
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 79
    const-string v0, "WhiteBalanceMenuSelectCommand"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 83
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_38

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 85
    const-string v0, "WhiteBalanceMenuSelectCommand"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 90
    :cond_38
    iget-object v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mWB:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onWhiteBalanceMenuSelect(I)V

    .line 91
    iget v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mZOrder:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_f

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_f
.end method
