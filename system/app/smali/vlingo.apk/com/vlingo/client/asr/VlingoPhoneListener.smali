.class public Lcom/vlingo/client/asr/VlingoPhoneListener;
.super Landroid/telephony/PhoneStateListener;
.source "VlingoPhoneListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 4
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 16
    packed-switch p1, :pswitch_data_14

    .line 27
    :goto_3
    :pswitch_3
    return-void

    .line 18
    :pswitch_4
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/asr/RecognitionManager;->abortRecognition()V

    goto :goto_3

    .line 21
    :pswitch_c
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/asr/RecognitionManager;->abortRecognition()V

    goto :goto_3

    .line 16
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_c
    .end packed-switch
.end method
