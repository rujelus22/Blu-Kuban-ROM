.class Lcom/google/android/music/AsyncMediaPlayer$4;
.super Ljava/lang/Object;
.source "AsyncMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AsyncMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AsyncMediaPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/music/AsyncMediaPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 750
    iput-object p1, p0, Lcom/google/android/music/AsyncMediaPlayer$4;->this$0:Lcom/google/android/music/AsyncMediaPlayer;

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

    .line 753
    packed-switch p2, :pswitch_data_12

    .line 761
    const/4 v0, 0x0

    :goto_5
    return v0

    .line 755
    :pswitch_6
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer$4;->this$0:Lcom/google/android/music/AsyncMediaPlayer;

    #calls: Lcom/google/android/music/AsyncMediaPlayer;->onWaitForBuffer()V
    invoke-static {v1}, Lcom/google/android/music/AsyncMediaPlayer;->access$800(Lcom/google/android/music/AsyncMediaPlayer;)V

    goto :goto_5

    .line 758
    :pswitch_c
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer$4;->this$0:Lcom/google/android/music/AsyncMediaPlayer;

    #calls: Lcom/google/android/music/AsyncMediaPlayer;->onResumeFromBuffer()V
    invoke-static {v1}, Lcom/google/android/music/AsyncMediaPlayer;->access$900(Lcom/google/android/music/AsyncMediaPlayer;)V

    goto :goto_5

    .line 753
    :pswitch_data_12
    .packed-switch 0x2bd
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
