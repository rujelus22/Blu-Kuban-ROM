.class Lcom/samsung/dmp/layout/DMPImageActivity$20;
.super Ljava/lang/Object;
.source "DMPImageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPImageActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPImageActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$20;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1173
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$20;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mCallEventOccured:Z
    invoke-static {v1, v2}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$2502(Lcom/samsung/dmp/layout/DMPImageActivity;Z)Z

    .line 1174
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$20;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity$20;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mimeType:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$2200(Lcom/samsung/dmp/layout/DMPImageActivity;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/samsung/dmp/layout/DMPImageActivity;->isSupportedType(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$2600(Lcom/samsung/dmp/layout/DMPImageActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1175
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$20;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$500(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ef

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1176
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$20;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$500(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x521

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1186
    :goto_2c
    return-void

    .line 1178
    :cond_2d
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylistDMP()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 1180
    .local v0, playlist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDRM(Z)V

    .line 1181
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

    .line 1184
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$20;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    const/16 v2, 0x5dc

    invoke-virtual {v1, v2}, Lcom/samsung/dmp/layout/DMPImageActivity;->showDialog(I)V

    goto :goto_2c
.end method
