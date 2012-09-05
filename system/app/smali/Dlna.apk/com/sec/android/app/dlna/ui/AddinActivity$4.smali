.class Lcom/sec/android/app/dlna/ui/AddinActivity$4;
.super Ljava/lang/Object;
.source "AddinActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/AddinActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/AddinActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 692
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceList:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$300(Lcom/sec/android/app/dlna/ui/AddinActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/api/DeviceItem;

    .line 693
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinActivity;->refreshDeviceList()V
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$1800(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    .line 695
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$400(Lcom/sec/android/app/dlna/ui/AddinActivity;)Lcom/sec/android/app/dlna/DLNAAddinManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->selectPlayer(Lcom/samsung/api/DeviceItem;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 735
    :goto_1e
    return-void

    .line 698
    :cond_1f
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.startAddinPlay"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 700
    :try_start_26
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_9c

    .line 705
    :goto_2b
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 706
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    const-string v2, "from"

    const-string v3, "com.sec.android.app.dlna"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 710
    new-instance v2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    const-class v3, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 711
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->uris:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$1300(Lcom/sec/android/app/dlna/ui/AddinActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_7d

    .line 712
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->uris:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$1300(Lcom/sec/android/app/dlna/ui/AddinActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v5, :cond_a5

    .line 713
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    const-string v3, "android.intent.extra.STREAM"

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->uris:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$1300(Lcom/sec/android/app/dlna/ui/AddinActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 720
    :cond_7d
    :goto_7d
    const-string v1, "Selected.Device"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 721
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->IsChangePlayer:Z
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$000(Lcom/sec/android/app/dlna/ui/AddinActivity;)Z

    move-result v0

    if-ne v0, v5, :cond_8f

    .line 722
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->bOnCreatePlaylistActivity:Z
    invoke-static {v0, v5}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$1902(Lcom/sec/android/app/dlna/ui/AddinActivity;Z)Z

    .line 732
    :cond_8f
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    const/16 v1, 0x409

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 733
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->finish()V

    goto :goto_1e

    .line 701
    :catch_9c
    move-exception v1

    .line 702
    const-string v1, "DLNA_Addin"

    const-string v2, "Fail to broadcast \'android.intent.action.startAddinPlay\'"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 716
    :cond_a5
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    const-string v1, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->uris:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$1300(Lcom/sec/android/app/dlna/ui/AddinActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_7d
.end method
