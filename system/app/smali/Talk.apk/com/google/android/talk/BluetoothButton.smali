.class public Lcom/google/android/talk/BluetoothButton;
.super Lcom/google/android/talk/AnimatedBackgroundImageButton;
.source "BluetoothButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/BluetoothButton$1;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "set"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/AnimatedBackgroundImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/16 v0, 0x37

    iput v0, p0, Lcom/google/android/talk/AnimatedBackgroundImageButton;->mStartAlpha:I

    .line 37
    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/talk/AnimatedBackgroundImageButton;->mEndAlpha:I

    .line 38
    const/16 v0, 0x15e

    iput v0, p0, Lcom/google/android/talk/AnimatedBackgroundImageButton;->mDurationMs:I

    .line 39
    return-void
.end method


# virtual methods
.method public handleBluetoothStateChange(Lcom/google/android/videochat/CallState$AudioDeviceState;)V
    .registers 5
    .parameter "audioDeviceState"

    .prologue
    const/16 v2, 0xff

    .line 42
    sget-object v0, Lcom/google/android/talk/BluetoothButton$1;->$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState:[I

    invoke-virtual {p1}, Lcom/google/android/videochat/CallState$AudioDeviceState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_50

    .line 70
    :goto_d
    return-void

    .line 45
    :pswitch_e
    const v0, 0x7f020041

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BluetoothButton;->setImageResource(I)V

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BluetoothButton;->setImageAlpha(I)V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/talk/BluetoothButton;->startImageAnimation()V

    goto :goto_d

    .line 50
    :pswitch_1c
    invoke-virtual {p0}, Lcom/google/android/talk/BluetoothButton;->stopImageAnimation()V

    .line 51
    const v0, 0x7f020040

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BluetoothButton;->setImageResource(I)V

    .line 52
    invoke-virtual {p0, v2}, Lcom/google/android/talk/BluetoothButton;->setImageAlpha(I)V

    goto :goto_d

    .line 55
    :pswitch_29
    invoke-virtual {p0}, Lcom/google/android/talk/BluetoothButton;->stopImageAnimation()V

    .line 56
    const v0, 0x7f020043

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BluetoothButton;->setImageResource(I)V

    .line 57
    invoke-virtual {p0, v2}, Lcom/google/android/talk/BluetoothButton;->setImageAlpha(I)V

    goto :goto_d

    .line 60
    :pswitch_36
    invoke-virtual {p0}, Lcom/google/android/talk/BluetoothButton;->stopImageAnimation()V

    .line 61
    const v0, 0x7f020042

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BluetoothButton;->setImageResource(I)V

    .line 62
    invoke-virtual {p0, v2}, Lcom/google/android/talk/BluetoothButton;->setImageAlpha(I)V

    goto :goto_d

    .line 65
    :pswitch_43
    invoke-virtual {p0}, Lcom/google/android/talk/BluetoothButton;->stopImageAnimation()V

    .line 66
    const v0, 0x7f020044

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BluetoothButton;->setImageResource(I)V

    .line 67
    invoke-virtual {p0, v2}, Lcom/google/android/talk/BluetoothButton;->setImageAlpha(I)V

    goto :goto_d

    .line 42
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_1c
        :pswitch_29
        :pswitch_36
        :pswitch_43
    .end packed-switch
.end method
