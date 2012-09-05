.class Lcom/samsung/dmp/layout/DMPVideoActivity$9;
.super Ljava/lang/Object;
.source "DMPVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPVideoActivity;->initializeUIForLandscape()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 927
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 929
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mStopClicked:Z
    invoke-static {v2, v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3002(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 930
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mNotSupported:Z
    invoke-static {v2, v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4502(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 932
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentPlayListType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4a

    .line 933
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mimeType:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4600(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->isSupportedType(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4700(Lcom/samsung/dmp/layout/DMPVideoActivity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mDRMFlag:Z
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4800(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v3

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->isDRMFile(Z)I
    invoke-static {v2, v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4900(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)I

    move-result v2

    if-nez v2, :cond_4b

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->isBitRateSupported()Z
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$5000(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 934
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 953
    :cond_4a
    :goto_4a
    return-void

    .line 936
    :cond_4b
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsRealDrmError:I
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$5100(Lcom/samsung/dmp/layout/DMPVideoActivity;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_94

    .line 937
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylistDMP()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v1

    .line 938
    .local v1, playlist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDRM(Z)V

    .line 939
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-virtual {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->handleStop()V

    .line 940
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mNotSupported:Z
    invoke-static {v2, v4}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4502(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 941
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x76d

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 942
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x771

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 944
    :try_start_87
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    const/16 v3, 0x5dc

    invoke-virtual {v2, v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->showDialog(I)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8e} :catch_8f

    goto :goto_4a

    .line 945
    :catch_8f
    move-exception v0

    .line 946
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4a

    .line 949
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #playlist:Lcom/sec/android/app/dlna/model/Playlist;
    :cond_94
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x457

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4a
.end method
