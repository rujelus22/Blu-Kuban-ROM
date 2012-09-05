.class Lcom/samsung/dmp/layout/DMPImageActivity$12;
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
    .line 1080
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$12;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$12;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    const/4 v1, 0x1

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mIsStopped:Z
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$802(Lcom/samsung/dmp/layout/DMPImageActivity;Z)Z

    .line 1083
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->resetPlayer()V

    .line 1084
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 1085
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->clear()V

    .line 1087
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_3b

    .line 1088
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$12;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity$12;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    const-class v3, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->startActivity(Landroid/content/Intent;)V

    .line 1093
    :goto_3a
    return-void

    .line 1091
    :cond_3b
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$12;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->finish()V

    goto :goto_3a
.end method
