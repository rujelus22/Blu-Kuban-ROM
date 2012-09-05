.class Lcom/google/android/music/NowPlayingBar$3;
.super Landroid/os/Handler;
.source "NowPlayingBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/NowPlayingBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/NowPlayingBar;


# direct methods
.method constructor <init>(Lcom/google/android/music/NowPlayingBar;)V
    .registers 2
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/google/android/music/NowPlayingBar$3;->this$0:Lcom/google/android/music/NowPlayingBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 286
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_24

    .line 298
    :goto_5
    return-void

    .line 288
    :pswitch_6
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v1, :cond_16

    .line 289
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar$3;->this$0:Lcom/google/android/music/NowPlayingBar;

    iget-object v2, p0, Lcom/google/android/music/NowPlayingBar$3;->this$0:Lcom/google/android/music/NowPlayingBar;

    #getter for: Lcom/google/android/music/NowPlayingBar;->mRefreshDelayMs:J
    invoke-static {v2}, Lcom/google/android/music/NowPlayingBar;->access$200(Lcom/google/android/music/NowPlayingBar;)J

    move-result-wide v2

    #calls: Lcom/google/android/music/NowPlayingBar;->queueNextRefresh(J)V
    invoke-static {v1, v2, v3}, Lcom/google/android/music/NowPlayingBar;->access$300(Lcom/google/android/music/NowPlayingBar;J)V

    goto :goto_5

    .line 291
    :cond_16
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar$3;->this$0:Lcom/google/android/music/NowPlayingBar;

    #calls: Lcom/google/android/music/NowPlayingBar;->refresh()I
    invoke-static {v1}, Lcom/google/android/music/NowPlayingBar;->access$400(Lcom/google/android/music/NowPlayingBar;)I

    move-result v0

    .line 292
    .local v0, next:I
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar$3;->this$0:Lcom/google/android/music/NowPlayingBar;

    int-to-long v2, v0

    #calls: Lcom/google/android/music/NowPlayingBar;->queueNextRefresh(J)V
    invoke-static {v1, v2, v3}, Lcom/google/android/music/NowPlayingBar;->access$300(Lcom/google/android/music/NowPlayingBar;J)V

    goto :goto_5

    .line 286
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
