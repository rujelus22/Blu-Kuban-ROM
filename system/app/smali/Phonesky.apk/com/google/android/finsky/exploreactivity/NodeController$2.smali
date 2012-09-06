.class Lcom/google/android/finsky/exploreactivity/NodeController$2;
.super Lcom/google/android/finsky/previews/StatusListener;
.source "NodeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/exploreactivity/NodeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/exploreactivity/NodeController;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/exploreactivity/NodeController;)V
    .registers 2
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/NodeController$2;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-direct {p0}, Lcom/google/android/finsky/previews/StatusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public completed()V
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController$2;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->STOPPED:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    #calls: Lcom/google/android/finsky/exploreactivity/NodeController;->updatePlayState(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$000(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V

    .line 159
    return-void
.end method

.method public paused()V
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController$2;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->STOPPED:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    #calls: Lcom/google/android/finsky/exploreactivity/NodeController;->updatePlayState(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$000(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V

    .line 164
    return-void
.end method

.method public playing()V
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController$2;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->PLAYING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    #calls: Lcom/google/android/finsky/exploreactivity/NodeController;->updatePlayState(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$000(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V

    .line 154
    return-void
.end method

.method public prepared()V
    .registers 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController$2;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    #getter for: Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$200(Lcom/google/android/finsky/exploreactivity/NodeController;)Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController$2;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    #getter for: Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F
    invoke-static {v1}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$100(Lcom/google/android/finsky/exploreactivity/NodeController;)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController$2;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    #getter for: Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F
    invoke-static {v2}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$100(Lcom/google/android/finsky/exploreactivity/NodeController;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->setVolume(FF)V

    .line 174
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController$2;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    #getter for: Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$200(Lcom/google/android/finsky/exploreactivity/NodeController;)Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->start()V

    .line 175
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController$2;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/finsky/exploreactivity/NodeController;->mFadingIn:Z
    invoke-static {v0, v1}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$302(Lcom/google/android/finsky/exploreactivity/NodeController;Z)Z

    .line 176
    return-void
.end method

.method public queueChanged(I)V
    .registers 4
    .parameter "newSize"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController$2;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    if-lez p1, :cond_a

    sget-object v0, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->PLAYING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    :goto_6
    #calls: Lcom/google/android/finsky/exploreactivity/NodeController;->updatePlayState(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V
    invoke-static {v1, v0}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$000(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V

    .line 149
    return-void

    .line 148
    :cond_a
    sget-object v0, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->STOPPED:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    goto :goto_6
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController$2;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->STOPPED:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    #calls: Lcom/google/android/finsky/exploreactivity/NodeController;->updatePlayState(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$000(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V

    .line 169
    return-void
.end method
