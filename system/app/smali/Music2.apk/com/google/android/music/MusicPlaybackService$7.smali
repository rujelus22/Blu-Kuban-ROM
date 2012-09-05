.class Lcom/google/android/music/MusicPlaybackService$7;
.super Landroid/os/Handler;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;)V
    .registers 2
    .parameter

    .prologue
    .line 848
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$7;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 17
    .parameter "msg"

    .prologue
    .line 851
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "cancel_notification"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 852
    .local v9, sent:J
    const-wide/32 v6, 0x36ee80

    .line 853
    .local v6, hour:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 855
    .local v0, current:J
    const-wide/32 v11, 0x5265c00

    div-long v4, v9, v11

    .line 856
    .local v4, dayStart:J
    const-wide/32 v11, 0x5265c00

    div-long v2, v0, v11

    .line 860
    .local v2, dayEnd:J
    cmp-long v11, v4, v2

    if-nez v11, :cond_46

    const-wide/32 v11, 0x5265c00

    rem-long v11, v9, v11

    cmp-long v11, v11, v6

    if-lez v11, :cond_46

    .line 861
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/google/android/music/MusicPlaybackService$7;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 862
    .local v8, newMsg:Landroid/os/Message;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 863
    const-wide/16 v11, 0x1

    add-long/2addr v11, v2

    const-wide/32 v13, 0x5265c00

    mul-long/2addr v11, v13

    sub-long/2addr v11, v0

    invoke-virtual {p0, v8, v11, v12}, Lcom/google/android/music/MusicPlaybackService$7;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 867
    .end local v8           #newMsg:Landroid/os/Message;
    :goto_45
    return-void

    .line 865
    :cond_46
    iget-object v11, p0, Lcom/google/android/music/MusicPlaybackService$7;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/google/android/music/MusicPlaybackService;->stopForeground(Z)V

    goto :goto_45
.end method
