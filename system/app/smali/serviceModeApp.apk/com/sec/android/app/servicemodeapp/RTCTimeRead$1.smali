.class Lcom/sec/android/app/servicemodeapp/RTCTimeRead$1;
.super Landroid/os/Handler;
.source "RTCTimeRead.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/RTCTimeRead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/RTCTimeRead;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/RTCTimeRead;)V
    .registers 2
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/RTCTimeRead$1;->this$0:Lcom/sec/android/app/servicemodeapp/RTCTimeRead;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 26
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    .line 37
    :goto_5
    return-void

    .line 30
    :pswitch_6
    const-string v0, "RTCRead"

    const-string v1, "EVENT_TICK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/RTCTimeRead$1;->this$0:Lcom/sec/android/app/servicemodeapp/RTCTimeRead;

    #calls: Lcom/sec/android/app/servicemodeapp/RTCTimeRead;->printCurrentRTCInfo()V
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/RTCTimeRead;->access$000(Lcom/sec/android/app/servicemodeapp/RTCTimeRead;)V

    .line 34
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/RTCTimeRead$1;->this$0:Lcom/sec/android/app/servicemodeapp/RTCTimeRead;

    iget-object v0, v0, Lcom/sec/android/app/servicemodeapp/RTCTimeRead;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x44c

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    .line 26
    :pswitch_data_1e
    .packed-switch 0x44c
        :pswitch_6
    .end packed-switch
.end method
