.class Lcom/sec/android/app/music/MusicPicker$2;
.super Landroid/os/Handler;
.source "MusicPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicPicker;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicPicker;)V
    .registers 2
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPicker$2;->this$0:Lcom/sec/android/app/music/MusicPicker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 831
    const-string v0, "MusicPicker"

    const-string v1, "mMediaplayerHandler:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4a

    .line 847
    :goto_1e
    return-void

    .line 834
    :pswitch_1f
    invoke-static {}, Lcom/sec/android/app/music/MusicPicker;->access$004()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_44

    .line 835
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker$2;->this$0:Lcom/sec/android/app/music/MusicPicker;

    #getter for: Lcom/sec/android/app/music/MusicPicker;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/MusicPicker;->access$100(Lcom/sec/android/app/music/MusicPicker;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker$2;->this$0:Lcom/sec/android/app/music/MusicPicker;

    #getter for: Lcom/sec/android/app/music/MusicPicker;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/MusicPicker;->access$100(Lcom/sec/android/app/music/MusicPicker;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 838
    :cond_3b
    invoke-static {v4}, Lcom/sec/android/app/music/MusicPicker;->access$002(I)I

    .line 839
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker$2;->this$0:Lcom/sec/android/app/music/MusicPicker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPicker;->stopMediaPlayer()V

    goto :goto_1e

    .line 841
    :cond_44
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker$2;->this$0:Lcom/sec/android/app/music/MusicPicker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPicker;->setSelected()V

    goto :goto_1e

    .line 832
    :pswitch_data_4a
    .packed-switch 0x3e8
        :pswitch_1f
    .end packed-switch
.end method
