.class Lcom/samsung/dmp/layout/DMPImageActivity$16;
.super Ljava/lang/Object;
.source "DMPImageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 1150
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1152
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #calls: Lcom/samsung/dmp/layout/DMPImageActivity;->setDimToSelectedItem(Z)V
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$400(Lcom/samsung/dmp/layout/DMPImageActivity;Z)V

    .line 1153
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mIsStopped:Z
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$802(Lcom/samsung/dmp/layout/DMPImageActivity;Z)Z

    .line 1154
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->resetPlayer()V

    .line 1155
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 1156
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->clear()V

    .line 1158
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_40

    .line 1159
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    const-class v3, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->startActivity(Landroid/content/Intent;)V

    .line 1164
    :goto_3f
    return-void

    .line 1162
    :cond_40
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->finish()V

    goto :goto_3f
.end method
