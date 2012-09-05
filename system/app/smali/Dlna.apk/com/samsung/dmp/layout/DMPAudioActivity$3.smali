.class Lcom/samsung/dmp/layout/DMPAudioActivity$3;
.super Ljava/lang/Object;
.source "DMPAudioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPAudioActivity;->initializeUIForPortrait()V
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
    .line 756
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 758
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mStopClicked:Z
    invoke-static {v1, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1902(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 759
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mNotSupported:Z
    invoke-static {v1, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2502(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 760
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mimeType:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2600(Lcom/samsung/dmp/layout/DMPAudioActivity;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/samsung/dmp/layout/DMPAudioActivity;->isSupportedType(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2700(Lcom/samsung/dmp/layout/DMPAudioActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mimeType:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2600(Lcom/samsung/dmp/layout/DMPAudioActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mDRMFlag:Z
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2800(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v3

    #calls: Lcom/samsung/dmp/layout/DMPAudioActivity;->isDRMFile(Ljava/lang/String;Z)I
    invoke-static {v1, v2, v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2900(Lcom/samsung/dmp/layout/DMPAudioActivity;Ljava/lang/String;Z)I

    move-result v1

    if-nez v1, :cond_34

    .line 761
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->handlePlayOrPause()V

    .line 777
    :goto_33
    return-void

    .line 763
    :cond_34
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsRealDrmError:I
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3000(Lcom/samsung/dmp/layout/DMPAudioActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8d

    .line 764
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylistDMP()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 765
    .local v0, playlist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDRM(Z)V

    .line 766
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "4 DRM setted TRUE : "

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

    .line 769
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->handleStop()V

    .line 770
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mNotSupported:Z
    invoke-static {v1, v4}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2502(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 771
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x76d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 772
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    const/16 v2, 0x5dc

    invoke-virtual {v1, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->showDialog(I)V

    goto :goto_33

    .line 774
    .end local v0           #playlist:Lcom/sec/android/app/dlna/model/Playlist;
    :cond_8d
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x457

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_33
.end method
