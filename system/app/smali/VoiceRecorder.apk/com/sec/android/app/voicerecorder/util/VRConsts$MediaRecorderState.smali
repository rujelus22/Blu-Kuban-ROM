.class public final Lcom/sec/android/app/voicerecorder/util/VRConsts$MediaRecorderState;
.super Ljava/lang/Object;
.source "VRConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/util/VRConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaRecorderState"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStateString(I)Ljava/lang/String;
    .registers 2
    .parameter "recorderState"

    .prologue
    .line 15
    packed-switch p0, :pswitch_data_16

    .line 27
    const-string v0, "UNDEFINED"

    :goto_5
    return-object v0

    .line 17
    :pswitch_6
    const-string v0, "INITIAL"

    goto :goto_5

    .line 19
    :pswitch_9
    const-string v0, "RECORDING"

    goto :goto_5

    .line 21
    :pswitch_c
    const-string v0, "PREPARED"

    goto :goto_5

    .line 23
    :pswitch_f
    const-string v0, "PAUSED"

    goto :goto_5

    .line 25
    :pswitch_12
    const-string v0, "SAVED"

    goto :goto_5

    .line 15
    nop

    :pswitch_data_16
    .packed-switch 0x3e8
        :pswitch_6
        :pswitch_c
        :pswitch_9
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method
