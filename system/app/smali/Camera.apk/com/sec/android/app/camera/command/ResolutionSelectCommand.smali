.class public Lcom/sec/android/app/camera/command/ResolutionSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "ResolutionSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResolutionSelectCommand"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mResolution:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V
    .registers 4
    .parameter "context"
    .parameter "commandid"

    .prologue
    const/16 v0, 0xe

    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 37
    packed-switch p2, :pswitch_data_6e

    .line 108
    :goto_a
    return-void

    .line 39
    :pswitch_b
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_a

    .line 42
    :pswitch_f
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_a

    .line 45
    :pswitch_13
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_a

    .line 48
    :pswitch_18
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_a

    .line 51
    :pswitch_1c
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_a

    .line 54
    :pswitch_20
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_a

    .line 57
    :pswitch_24
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_a

    .line 60
    :pswitch_28
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_a

    .line 63
    :pswitch_2d
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_a

    .line 66
    :pswitch_31
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_a

    .line 69
    :pswitch_35
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_a

    .line 72
    :pswitch_3a
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_a

    .line 75
    :pswitch_3f
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_a

    .line 78
    :pswitch_44
    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_a

    .line 81
    :pswitch_47
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_a

    .line 84
    :pswitch_4c
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_a

    .line 87
    :pswitch_51
    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_a

    .line 90
    :pswitch_54
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_a

    .line 94
    :pswitch_59
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_a

    .line 97
    :pswitch_5e
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_a

    .line 100
    :pswitch_63
    const/16 v0, 0x11

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_a

    .line 103
    :pswitch_68
    const/16 v0, 0x12

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_a

    .line 37
    nop

    :pswitch_data_6e
    .packed-switch 0x8fc
        :pswitch_b
        :pswitch_f
        :pswitch_18
        :pswitch_1c
        :pswitch_20
        :pswitch_24
        :pswitch_2d
        :pswitch_31
        :pswitch_35
        :pswitch_3a
        :pswitch_3f
        :pswitch_59
        :pswitch_47
        :pswitch_4c
        :pswitch_51
        :pswitch_54
        :pswitch_59
        :pswitch_5e
        :pswitch_63
        :pswitch_68
        :pswitch_13
        :pswitch_28
        :pswitch_44
    .end packed-switch
.end method


# virtual methods
.method public execute()V
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_10

    .line 113
    const-string v0, "ResolutionSelectCommand"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_f
    :goto_f
    return-void

    .line 117
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 118
    const-string v0, "ResolutionSelectCommand"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 122
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_38

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 124
    const-string v0, "ResolutionSelectCommand"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 129
    :cond_38
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResolutionMenuSelect(I)V

    .line 130
    iget v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mZOrder:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_f

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_f
.end method
