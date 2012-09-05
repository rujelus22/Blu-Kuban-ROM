.class Lcom/samsung/dmp/layout/DMPAudioActivity$27;
.super Ljava/lang/Object;
.source "DMPAudioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPAudioActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1733
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$27;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 1735
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$27;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->showThePopup:Z
    invoke-static {v1, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1402(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 1737
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$27;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$27;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mimeType:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2600(Lcom/samsung/dmp/layout/DMPAudioActivity;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/samsung/dmp/layout/DMPAudioActivity;->isSupportedType(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2700(Lcom/samsung/dmp/layout/DMPAudioActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$27;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$27;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mimeType:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2600(Lcom/samsung/dmp/layout/DMPAudioActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$27;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mDRMFlag:Z
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2800(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v3

    #calls: Lcom/samsung/dmp/layout/DMPAudioActivity;->isDRMFile(Ljava/lang/String;Z)I
    invoke-static {v1, v2, v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2900(Lcom/samsung/dmp/layout/DMPAudioActivity;Ljava/lang/String;Z)I

    move-result v1

    if-nez v1, :cond_4a

    .line 1738
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$27;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$27;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->selectedItemUri:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2000(Lcom/samsung/dmp/layout/DMPAudioActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$27;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->type:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$27;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x521

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1757
    :goto_49
    return-void

    .line 1741
    :cond_4a
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$27;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsRealDrmError:I
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3000(Lcom/samsung/dmp/layout/DMPAudioActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_ae

    .line 1742
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylistDMP()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 1744
    .local v0, playlist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDRM(Z)V

    .line 1745
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "7 DRM setted TRUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isDRM()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$27;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->handleStop()V

    .line 1749
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$27;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mNotSupported:Z
    invoke-static {v1, v4}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2502(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 1750
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$27;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7d7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1751
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$27;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x76d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1752
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$27;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    const/16 v2, 0x5dc

    invoke-virtual {v1, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->showDialog(I)V

    goto :goto_49

    .line 1754
    .end local v0           #playlist:Lcom/sec/android/app/dlna/model/Playlist;
    :cond_ae
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$27;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x457

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_49
.end method
