.class Lcom/samsung/dmp/layout/DMPVideoActivity$19;
.super Ljava/lang/Object;
.source "DMPVideoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPVideoActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 2139
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$19;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter

    .prologue
    .line 2141
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$19;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->handleStop()V

    .line 2142
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$19;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    const/4 v1, 0x1

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1102(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 2143
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$19;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2144
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$19;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2145
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->resetPlayer()V

    .line 2146
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 2147
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->clear()V

    .line 2149
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$19;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->releaseMediaplayer()V
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3900(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    .line 2150
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_5b

    .line 2151
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$19;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$19;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    const-class v3, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->startActivity(Landroid/content/Intent;)V

    .line 2156
    :goto_5a
    return-void

    .line 2154
    :cond_5b
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$19;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->finish()V

    goto :goto_5a
.end method
