.class Lcom/sec/android/app/music/AudioPreview$CallListener;
.super Landroid/telephony/PhoneStateListener;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 5806
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$CallListener;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/music/AudioPreview;Lcom/sec/android/app/music/AudioPreview$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5806
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/AudioPreview$CallListener;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 5
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 5810
    packed-switch p1, :pswitch_data_16

    .line 5818
    :cond_3
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 5819
    return-void

    .line 5813
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$CallListener;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z
    invoke-static {v1}, Lcom/sec/android/app/music/AudioPreview;->access$400(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v0

    .line 5814
    .local v0, bPlaying:Z
    if-eqz v0, :cond_3

    .line 5815
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$CallListener;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v1}, Lcom/sec/android/app/music/AudioPreview;->pausePlay()V

    goto :goto_3

    .line 5810
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
