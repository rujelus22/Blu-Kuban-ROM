.class Lcom/sec/android/app/voicerecorder/util/VRIntent$CallListener;
.super Landroid/telephony/PhoneStateListener;
.source "VRIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/util/VRIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/util/VRIntent;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/voicerecorder/util/VRIntent;)V
    .registers 2
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent$CallListener;->this$0:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/voicerecorder/util/VRIntent;Lcom/sec/android/app/voicerecorder/util/VRIntent$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 520
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/util/VRIntent$CallListener;-><init>(Lcom/sec/android/app/voicerecorder/util/VRIntent;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 6
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 523
    const-string v1, "VRIntent"

    const-string v2, "onCallStateChanged"

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    packed-switch p1, :pswitch_data_38

    .line 545
    :goto_a
    return-void

    .line 528
    :pswitch_b
    :try_start_b
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent$CallListener;->this$0:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    #getter for: Lcom/sec/android/app/voicerecorder/util/VRIntent;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->access$300(Lcom/sec/android/app/voicerecorder/util/VRIntent;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xfdc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_16} :catch_17

    goto :goto_a

    .line 542
    :catch_17
    move-exception v0

    .line 543
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "VRIntent"

    const-string v2, "ignore telephony event"

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 532
    .end local v0           #e:Ljava/lang/NullPointerException;
    :pswitch_20
    :try_start_20
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent$CallListener;->this$0:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    #getter for: Lcom/sec/android/app/voicerecorder/util/VRIntent;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->access$300(Lcom/sec/android/app/voicerecorder/util/VRIntent;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xfdd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a

    .line 536
    :pswitch_2c
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent$CallListener;->this$0:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    #getter for: Lcom/sec/android/app/voicerecorder/util/VRIntent;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->access$300(Lcom/sec/android/app/voicerecorder/util/VRIntent;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xfde

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_37} :catch_17

    goto :goto_a

    .line 526
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_b
        :pswitch_20
        :pswitch_2c
    .end packed-switch
.end method
