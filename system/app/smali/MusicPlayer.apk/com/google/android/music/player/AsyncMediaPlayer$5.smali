.class Lcom/google/android/music/player/AsyncMediaPlayer$5;
.super Ljava/lang/Object;
.source "AsyncMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/player/AsyncMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/player/AsyncMediaPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/music/player/AsyncMediaPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 825
    iput-object p1, p0, Lcom/google/android/music/player/AsyncMediaPlayer$5;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 6
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v0, 0x1

    .line 828
    packed-switch p2, :pswitch_data_12

    .line 836
    const/4 v0, 0x0

    :goto_5
    return v0

    .line 830
    :pswitch_6
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer$5;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    #calls: Lcom/google/android/music/player/AsyncMediaPlayer;->onWaitForBuffer()V
    invoke-static {v1}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$800(Lcom/google/android/music/player/AsyncMediaPlayer;)V

    goto :goto_5

    .line 833
    :pswitch_c
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer$5;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    #calls: Lcom/google/android/music/player/AsyncMediaPlayer;->onResumeFromBuffer()V
    invoke-static {v1}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$900(Lcom/google/android/music/player/AsyncMediaPlayer;)V

    goto :goto_5

    .line 828
    :pswitch_data_12
    .packed-switch 0x2bd
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
