.class Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;
.super Ljava/lang/Object;
.source "PopUpSearchDeviceList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
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
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$000(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/api/DeviceItem;

    .line 151
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mode:I
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$100(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)I

    move-result v1

    packed-switch v1, :pswitch_data_21e

    .line 282
    :cond_15
    :goto_15
    return-void

    .line 153
    :pswitch_16
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/api/DeviceItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 155
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/DLNAManager;->selectUploadServerUdn(Ljava/lang/String;)Z

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->finish()V

    goto :goto_15

    .line 159
    :cond_3f
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/DLNAManager;->selectServer(Lcom/samsung/api/DeviceItem;)Z

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    const-class v3, Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->startActivity(Landroid/content/Intent;)V

    goto :goto_15

    .line 168
    :pswitch_69
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    if-eqz v1, :cond_8c

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/api/DeviceItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    .line 170
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestStop()Z

    .line 172
    :cond_8c
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    if-eqz v1, :cond_1a8

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v1

    if-nez v1, :cond_1a8

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    const v3, 0x7f090033

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a8

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #calls: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->clearDimState()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$200(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)V

    .line 176
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->stopVirtualRenderer()V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.app.dlna.player_started"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->setMyPlayerSelected(Z)V

    .line 180
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentPlayListType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_183

    .line 181
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    const-class v2, Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    :goto_f7
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

    .line 194
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

    .line 196
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

    .line 199
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

    .line 201
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

    .line 204
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_15

    .line 183
    :cond_183
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentPlayListType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_19d

    .line 185
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    const-class v2, Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_f7

    .line 188
    :cond_19d
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    const-class v2, Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_f7

    .line 207
    :cond_1a8
    :try_start_1a8
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->showDialog(I)V
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_1af} :catch_1be

    .line 211
    :goto_1af
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1$1;-><init>(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;Lcom/samsung/api/DeviceItem;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_15

    .line 208
    :catch_1be
    move-exception v1

    .line 209
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1af

    .line 253
    :pswitch_1c3
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 258
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090049

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09004a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    const v3, 0x7f090074

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1$3;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1$3;-><init>(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;Lcom/samsung/api/DeviceItem;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    const v2, 0x7f090036

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1$2;-><init>(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_15

    .line 151
    nop

    :pswitch_data_21e
    .packed-switch 0x1
        :pswitch_1c3
        :pswitch_69
        :pswitch_16
    .end packed-switch
.end method
