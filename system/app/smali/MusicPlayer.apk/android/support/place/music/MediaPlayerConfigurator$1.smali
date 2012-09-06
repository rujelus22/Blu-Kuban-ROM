.class Landroid/support/place/music/MediaPlayerConfigurator$1;
.super Ljava/lang/Object;
.source "MediaPlayerConfigurator.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/music/MediaPlayerConfigurator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/place/music/MediaPlayerConfigurator;


# direct methods
.method constructor <init>(Landroid/support/place/music/MediaPlayerConfigurator;)V
    .registers 2
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Landroid/support/place/music/MediaPlayerConfigurator$1;->this$0:Landroid/support/place/music/MediaPlayerConfigurator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 8
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 299
    const/16 v0, 0x64

    if-ne p2, v0, :cond_3d

    .line 300
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator$1;->this$0:Landroid/support/place/music/MediaPlayerConfigurator;

    #getter for: Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastTransmitGroupMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Landroid/support/place/music/MediaPlayerConfigurator;->access$000(Landroid/support/place/music/MediaPlayerConfigurator;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 301
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator$1;->this$0:Landroid/support/place/music/MediaPlayerConfigurator;

    const/4 v1, 0x0

    #setter for: Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastTransmitGroupMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Landroid/support/place/music/MediaPlayerConfigurator;->access$002(Landroid/support/place/music/MediaPlayerConfigurator;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 302
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator$1;->this$0:Landroid/support/place/music/MediaPlayerConfigurator;

    const/4 v1, -0x1

    #setter for: Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastCncPort:I
    invoke-static {v0, v1}, Landroid/support/place/music/MediaPlayerConfigurator;->access$102(Landroid/support/place/music/MediaPlayerConfigurator;I)I

    .line 304
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator$1;->this$0:Landroid/support/place/music/MediaPlayerConfigurator;

    #getter for: Landroid/support/place/music/MediaPlayerConfigurator;->mErrorHandler:Landroid/support/place/music/MediaPlayerConfigurator$ErrorHandler;
    invoke-static {v0}, Landroid/support/place/music/MediaPlayerConfigurator;->access$200(Landroid/support/place/music/MediaPlayerConfigurator;)Landroid/support/place/music/MediaPlayerConfigurator$ErrorHandler;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 305
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator$1;->this$0:Landroid/support/place/music/MediaPlayerConfigurator;

    #getter for: Landroid/support/place/music/MediaPlayerConfigurator;->mErrorHandler:Landroid/support/place/music/MediaPlayerConfigurator$ErrorHandler;
    invoke-static {v0}, Landroid/support/place/music/MediaPlayerConfigurator;->access$200(Landroid/support/place/music/MediaPlayerConfigurator;)Landroid/support/place/music/MediaPlayerConfigurator$ErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/place/music/MediaPlayerConfigurator$ErrorHandler;->onConfigurationLost()V

    .line 308
    :cond_2a
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator$1;->this$0:Landroid/support/place/music/MediaPlayerConfigurator;

    #getter for: Landroid/support/place/music/MediaPlayerConfigurator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/support/place/music/MediaPlayerConfigurator;->access$400(Landroid/support/place/music/MediaPlayerConfigurator;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/music/MediaPlayerConfigurator$1;->this$0:Landroid/support/place/music/MediaPlayerConfigurator;

    #getter for: Landroid/support/place/music/MediaPlayerConfigurator;->mRestoreUnicastGroupRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/support/place/music/MediaPlayerConfigurator;->access$300(Landroid/support/place/music/MediaPlayerConfigurator;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 310
    const/4 v0, 0x1

    .line 312
    :goto_3c
    return v0

    :cond_3d
    const/4 v0, 0x0

    goto :goto_3c
.end method
