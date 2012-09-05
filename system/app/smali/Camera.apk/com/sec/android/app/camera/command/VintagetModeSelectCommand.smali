.class public Lcom/sec/android/app/camera/command/VintagetModeSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "VintagetModeSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VintagetModeSelectCommand"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mVintageMode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V
    .registers 4
    .parameter "context"
    .parameter "commandid"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sec/android/app/camera/command/VintagetModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 37
    packed-switch p2, :pswitch_data_1e

    .line 56
    :goto_8
    return-void

    .line 39
    :pswitch_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/VintagetModeSelectCommand;->mVintageMode:I

    goto :goto_8

    .line 42
    :pswitch_d
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/VintagetModeSelectCommand;->mVintageMode:I

    goto :goto_8

    .line 45
    :pswitch_11
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/VintagetModeSelectCommand;->mVintageMode:I

    goto :goto_8

    .line 48
    :pswitch_15
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/VintagetModeSelectCommand;->mVintageMode:I

    goto :goto_8

    .line 51
    :pswitch_19
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/command/VintagetModeSelectCommand;->mVintageMode:I

    goto :goto_8

    .line 37
    nop

    :pswitch_data_1e
    .packed-switch 0x190
        :pswitch_9
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public execute()V
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/command/VintagetModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 60
    const-string v0, "VintagetModeSelectCommand"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_11
    :goto_11
    return-void

    .line 64
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/command/VintagetModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_22

    .line 65
    const-string v0, "VintagetModeSelectCommand"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 69
    :cond_22
    iget-object v0, p0, Lcom/sec/android/app/camera/command/VintagetModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 70
    const-string v0, "VintagetModeSelectCommand"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 74
    :cond_32
    iget-object v0, p0, Lcom/sec/android/app/camera/command/VintagetModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/command/VintagetModeSelectCommand;->mVintageMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onVintageMenuSelect(I)V

    .line 75
    iget v0, p0, Lcom/sec/android/app/camera/command/VintagetModeSelectCommand;->mZOrder:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_11

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/command/VintagetModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_11
.end method
