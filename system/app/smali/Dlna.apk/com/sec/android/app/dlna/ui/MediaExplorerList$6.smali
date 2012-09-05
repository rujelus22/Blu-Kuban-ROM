.class Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;
.super Ljava/lang/Object;
.source "MediaExplorerList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/MediaExplorerList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V
    .registers 2
    .parameter

    .prologue
    .line 757
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
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
    .line 759
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2000(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 760
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->showCustomToast:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2502(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Z)Z

    .line 761
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_2ee

    .line 777
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaExplorerList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsListView:Lcom/sec/android/app/dlna/view/MultiSelectListView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/view/MultiSelectListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->isMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 780
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsList:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->size()I

    move-result v1

    if-nez v1, :cond_5c

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 781
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const v2, 0x7f090039

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 784
    :cond_5c
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_a5

    const/4 v1, 0x1

    :goto_63
    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setChecked(Z)V

    .line 785
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2000(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->notifyDataSetChanged()V

    .line 890
    :goto_6f
    return-void

    .line 766
    :pswitch_70
    :try_start_70
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1800(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 767
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1800(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 768
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 769
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1800(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 770
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_9f} :catch_a0

    goto :goto_6f

    .line 772
    :catch_a0
    move-exception v0

    .line 773
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6f

    .line 784
    :cond_a5
    const/4 v1, 0x0

    goto :goto_63

    .line 787
    :cond_a7
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    if-nez v1, :cond_ca

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->isMyPlayerSelected()Z

    move-result v1

    if-nez v1, :cond_ca

    .line 790
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v1

    .line 792
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->clear()V

    .line 794
    :cond_ca
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 795
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 796
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsList:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/model/Playlist;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    move v2, v1

    :goto_dd
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_113

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 797
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getType()I

    move-result v6

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getType()I

    move-result v7

    if-ne v6, v7, :cond_10a

    .line 798
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    add-int/lit8 v3, v3, 0x1

    .line 800
    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ff

    move v2, v3

    .line 802
    :cond_ff
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const/4 v6, 0x0

    #setter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->showCustomToast:Z
    invoke-static {v1, v6}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2502(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Z)Z

    move v1, v2

    move v2, v3

    :goto_107
    move v3, v2

    move v2, v1

    .line 804
    goto :goto_dd

    :cond_10a
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const/4 v6, 0x1

    #setter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->showCustomToast:Z
    invoke-static {v1, v6}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2502(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Z)Z

    move v1, v2

    move v2, v3

    goto :goto_107

    .line 808
    :cond_113
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2b8

    .line 811
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->isMyPlayerSelected()Z

    move-result v0

    if-eqz v0, :cond_23b

    .line 812
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sec.android.app.dlna.player_started"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->sendBroadcast(Landroid/content/Intent;)V

    .line 814
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->addToPlaylist(Ljava/util/ArrayList;I)V

    .line 815
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->setMyPlayerSelected(Z)V

    .line 818
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentPlayListType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_216

    .line 820
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const-class v2, Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 835
    :goto_15e
    const-string v1, "contentID"

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    const-string v1, "mediaName"

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 841
    const-string v1, "uri"

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    const-string v1, "classtype"

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getContentTypeStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    const-string v1, "extension"

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentResource;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 850
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaExplorerList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/ContentItem;->getContentTypeStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6f

    .line 822
    :cond_216
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentPlayListType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_230

    .line 824
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const-class v2, Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_15e

    .line 827
    :cond_230
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const-class v2, Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_15e

    .line 856
    :cond_23b
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_29d

    .line 858
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->addToPlaylist(Ljava/util/ArrayList;I)V

    .line 860
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->refreshPlayerList()V

    .line 861
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-eqz v0, :cond_27f

    .line 862
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const-class v3, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "MODE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PLAY_IT_NOW"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6f

    .line 867
    :cond_27f
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const-class v3, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "MODE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PLAY_IT_NOW"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6f

    .line 872
    :cond_29d
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->addToPlaylist(Ljava/util/ArrayList;I)V

    .line 874
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const-class v3, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6f

    .line 878
    :cond_2b8
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->showCustomToast:Z
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2500(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Z

    move-result v0

    if-nez v0, :cond_2d4

    .line 879
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->fileNotFoundToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2600(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 880
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->fileNotFoundToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2600(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6f

    .line 882
    :cond_2d4
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6f

    .line 761
    nop

    :pswitch_data_2ee
    .packed-switch 0x2
        :pswitch_70
    .end packed-switch
.end method
