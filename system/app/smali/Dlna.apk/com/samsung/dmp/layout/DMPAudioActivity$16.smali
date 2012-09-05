.class Lcom/samsung/dmp/layout/DMPAudioActivity$16;
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
    .line 1581
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    const/4 v1, 0x1

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$402(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 1584
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->handleStop()V

    .line 1585
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->resetPlayer()V

    .line 1586
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 1587
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->clear()V

    .line 1588
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_40

    .line 1589
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    const-class v3, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->startActivity(Landroid/content/Intent;)V

    .line 1594
    :goto_3f
    return-void

    .line 1592
    :cond_40
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$16;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->finish()V

    goto :goto_3f
.end method
