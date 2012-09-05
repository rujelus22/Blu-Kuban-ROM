.class Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;
.super Ljava/lang/Object;
.source "UserControlModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/usermodel/UserControlModel;->tryToPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/usermodel/UserControlModel;)V
    .registers 2
    .parameter

    .prologue
    .line 829
    iput-object p1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 831
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    .line 832
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    #setter for: Lcom/sec/android/app/dlna/usermodel/UserControlModel;->tryToPlaying:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->access$102(Lcom/sec/android/app/dlna/usermodel/UserControlModel;Z)Z

    .line 833
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iput-boolean v4, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionLocked:Z

    .line 835
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserControlModel.tryToPlay() : UserSetate is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v3, v3, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    invoke-interface {v3}, Lcom/sec/android/app/dlna/usermodel/IUserControl;->getType()I

    move-result v3

    #calls: Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getUserStateString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->access$200(Lcom/sec/android/app/dlna/usermodel/UserControlModel;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". RendererState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v3, v3, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v3}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v3

    #calls: Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getRendererStateString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->access$300(Lcom/sec/android/app/dlna/usermodel/UserControlModel;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    iget-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v1, v1, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->stoppedUserState:Lcom/sec/android/app/dlna/usermodel/StateUserStopped;

    if-ne v0, v1, :cond_139

    .line 840
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v0

    if-ne v0, v4, :cond_b5

    .line 841
    const-string v0, "DLNA"

    const-string v1, "UserControlModel. IRenderer.STOPPED_STATE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserControlModel. Get the current playlistitem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    #getter for: Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->access$000(Lcom/sec/android/app/dlna/usermodel/UserControlModel;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    iget-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    #getter for: Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->access$000(Lcom/sec/android/app/dlna/usermodel/UserControlModel;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/dlna/usermodel/IUserControl;->requestPlayOrPause(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 904
    :cond_a0
    :goto_a0
    const-string v0, "DLNA"

    const-string v1, "UserControlModel.tryToPlay() finished"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/dlna/usermodel/UserControlModel;->tryToPlaying:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->access$102(Lcom/sec/android/app/dlna/usermodel/UserControlModel;Z)Z

    .line 906
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    .line 907
    return-void

    .line 845
    :cond_b5
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v0

    if-nez v0, :cond_dd

    .line 846
    const-string v0, "DLNA"

    const-string v1, "UserControlModel.IRenderer.NOTHING_STATE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    #getter for: Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionQue:Ljava/util/Queue;
    invoke-static {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->access$400(Lcom/sec/android/app/dlna/usermodel/UserControlModel;)Ljava/util/Queue;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 848
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/usermodel/IUserControl;->requestStop()V

    goto :goto_a0

    .line 850
    :cond_dd
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserControlModel.tryToPlay() : Renderer is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v2, v2, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v2}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/usermodel/IUserControl;->requestStop()V

    .line 853
    :goto_104
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v0

    if-eq v0, v4, :cond_122

    .line 854
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v0

    if-eqz v0, :cond_122

    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/usermodel/IUserControl;->getType()I

    move-result v0

    if-ne v0, v5, :cond_135

    .line 859
    :cond_122
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    iget-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    #getter for: Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->access$000(Lcom/sec/android/app/dlna/usermodel/UserControlModel;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/dlna/usermodel/IUserControl;->requestPlayOrPause(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    goto/16 :goto_a0

    .line 857
    :cond_135
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_104

    .line 862
    :cond_139
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v0

    if-ne v0, v4, :cond_16a

    .line 864
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v1, v1, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->stoppedUserState:Lcom/sec/android/app/dlna/usermodel/StateUserStopped;

    #calls: Lcom/sec/android/app/dlna/usermodel/UserControlModel;->switchState(Lcom/sec/android/app/dlna/usermodel/IUserControl;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->access$500(Lcom/sec/android/app/dlna/usermodel/UserControlModel;Lcom/sec/android/app/dlna/usermodel/IUserControl;)V

    .line 865
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/usermodel/IUserControl;->requestStop()V

    .line 870
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iput-boolean v4, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionLocked:Z

    .line 871
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    iget-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    #getter for: Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->access$000(Lcom/sec/android/app/dlna/usermodel/UserControlModel;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/dlna/usermodel/IUserControl;->requestPlayOrPause(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    goto/16 :goto_a0

    .line 875
    :cond_16a
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v1, v1, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->stoppedUserState:Lcom/sec/android/app/dlna/usermodel/StateUserStopped;

    #calls: Lcom/sec/android/app/dlna/usermodel/UserControlModel;->switchState(Lcom/sec/android/app/dlna/usermodel/IUserControl;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->access$500(Lcom/sec/android/app/dlna/usermodel/UserControlModel;Lcom/sec/android/app/dlna/usermodel/IUserControl;)V

    .line 876
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/usermodel/IUserControl;->requestStop()V

    .line 879
    :goto_17a
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v0

    if-ne v0, v4, :cond_18e

    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/usermodel/IUserControl;->getType()I

    move-result v0

    if-eq v0, v7, :cond_1a2

    .line 880
    :cond_18e
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v0

    if-eqz v0, :cond_1a2

    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/usermodel/IUserControl;->getType()I

    move-result v0

    if-ne v0, v5, :cond_204

    .line 885
    :cond_1a2
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RECOVER]UserSetate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v3, v3, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    invoke-interface {v3}, Lcom/sec/android/app/dlna/usermodel/IUserControl;->getType()I

    move-result v3

    #calls: Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getUserStateString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->access$200(Lcom/sec/android/app/dlna/usermodel/UserControlModel;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RendererState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v3, v3, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v3}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v3

    #calls: Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getRendererStateString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->access$300(Lcom/sec/android/app/dlna/usermodel/UserControlModel;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    iget-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    #getter for: Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->access$000(Lcom/sec/android/app/dlna/usermodel/UserControlModel;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/dlna/usermodel/IUserControl;->requestPlayOrPause(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 888
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/usermodel/IUserControl;->getType()I

    move-result v0

    if-eq v0, v6, :cond_20c

    .line 890
    const-string v0, "DLNA"

    const-string v1, "RECOVER is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a0

    .line 883
    :cond_204
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto/16 :goto_17a

    .line 898
    :cond_209
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 895
    :cond_20c
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v0

    if-eq v0, v7, :cond_a0

    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v0

    if-eq v0, v6, :cond_a0

    .line 896
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v0

    if-nez v0, :cond_209

    goto/16 :goto_a0
.end method
