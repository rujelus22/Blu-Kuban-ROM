.class Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;
.super Landroid/os/Handler;
.source "MediaExplorerList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/MediaExplorerList;->makeGuiHandler()V
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
    .line 458
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .parameter "msg"

    .prologue
    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 461
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_1e4

    .line 563
    :goto_7
    :pswitch_7
    return-void

    .line 463
    :pswitch_8
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    iget-object v9, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const v10, 0x7f090027

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v12, 0x1f4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 467
    :pswitch_25
    const-string v8, "DLNA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receive SETNOCONTENTS : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 469
    .local v0, check:Ljava/lang/Boolean;
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->checkNoContents(Z)V

    goto :goto_7

    .line 472
    .end local v0           #check:Ljava/lang/Boolean;
    :pswitch_4f
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 473
    .local v4, itemList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentItem;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v5, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/dlna/model/PlaylistItem;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_5c
    :goto_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ae

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/api/ContentItem;

    .line 476
    .local v3, item:Lcom/samsung/api/ContentItem;
    new-instance v7, Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lcom/sec/android/app/dlna/model/PlaylistItem;-><init>(Lcom/samsung/api/DeviceItem;Lcom/samsung/api/ContentItem;)V

    .line 478
    .local v7, temp:Lcom/sec/android/app/dlna/model/PlaylistItem;
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsList:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v8}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/sec/android/app/dlna/model/Playlist;->add(Lcom/sec/android/app/dlna/model/PlaylistItem;)Z

    .line 480
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-virtual {v8}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->hasWindowFocus()Z

    move-result v8

    if-nez v8, :cond_5c

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/dlna/model/Playlist;->size()I

    move-result v8

    if-lez v8, :cond_5c

    .line 483
    invoke-virtual {v7}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getType()I

    move-result v8

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentPlayListType()I

    move-result v9

    if-ne v8, v9, :cond_5c

    .line 485
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    .line 488
    .end local v3           #item:Lcom/samsung/api/ContentItem;
    .end local v7           #temp:Lcom/sec/android/app/dlna/model/PlaylistItem;
    :cond_ae
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-virtual {v8}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->hasWindowFocus()Z

    move-result v8

    if-nez v8, :cond_d4

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/dlna/model/Playlist;->size()I

    move-result v8

    if-lez v8, :cond_d4

    .line 491
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8, v5, v9}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->addToPlaylist(Ljava/util/ArrayList;I)V

    .line 493
    :cond_d4
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    iget-object v9, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsList:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v9}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/dlna/model/Playlist;->size()I

    move-result v9

    #setter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mBrowsedItemCnt:I
    invoke-static {v8, v9}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1202(Lcom/sec/android/app/dlna/ui/MediaExplorerList;I)I

    .line 495
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v8}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2000(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->notifyDataSetChanged()V

    .line 497
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #calls: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->checkallDirectory()V
    invoke-static {v8}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2100(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V

    .line 498
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-virtual {v8}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->invalidateOptionsMenu()V

    .line 499
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mAllDirectory:Z
    invoke-static {v8}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2200(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Z

    move-result v8

    if-eqz v8, :cond_10b

    .line 500
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsListView:Lcom/sec/android/app/dlna/view/MultiSelectListView;
    invoke-static {v8}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/view/MultiSelectListView;

    move-result-object v8

    iget-object v8, v8, Lcom/sec/android/app/dlna/view/MultiSelectListView;->softKey:Lcom/sec/android/app/dlna/view/BottomSoftkeyView;

    invoke-virtual {v8, v13}, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->setLeftEnabled(Z)V

    goto/16 :goto_7

    .line 502
    :cond_10b
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsListView:Lcom/sec/android/app/dlna/view/MultiSelectListView;
    invoke-static {v8}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/view/MultiSelectListView;

    move-result-object v8

    iget-object v8, v8, Lcom/sec/android/app/dlna/view/MultiSelectListView;->softKey:Lcom/sec/android/app/dlna/view/BottomSoftkeyView;

    invoke-virtual {v8, v11}, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->setLeftEnabled(Z)V

    goto/16 :goto_7

    .line 505
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #itemList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentItem;>;"
    .end local v5           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/dlna/model/PlaylistItem;>;"
    :pswitch_118
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsList:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v8}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/sec/android/app/dlna/model/Playlist;->checkAllItems(Z)V

    .line 506
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsList:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v8}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/dlna/model/Playlist;->clear()V

    .line 507
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v8}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2000(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->notifyDataSetChanged()V

    goto/16 :goto_7

    .line 510
    :pswitch_135
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsList:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v8}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/dlna/model/Playlist;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_13f
    :goto_13f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_155

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 511
    .local v3, item:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-virtual {v3}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isChecked()Z

    move-result v8

    if-ne v8, v11, :cond_13f

    .line 512
    invoke-virtual {v3, v13}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setChecked(Z)V

    goto :goto_13f

    .line 514
    .end local v3           #item:Lcom/sec/android/app/dlna/model/PlaylistItem;
    :cond_155
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v8}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2000(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->notifyDataSetChanged()V

    goto/16 :goto_7

    .line 517
    .end local v2           #i$:Ljava/util/Iterator;
    :pswitch_160
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/dlna/DLNAManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 521
    .local v6, settings:Landroid/content/SharedPreferences;
    :try_start_168
    const-string v8, "default_storage"

    const-string v9, "0"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_193

    .line 523
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    iget-object v9, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const v10, 0x7f090020

    invoke-virtual {v9, v10}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_18b} :catch_18d

    goto/16 :goto_7

    .line 536
    :catch_18d
    move-exception v1

    .line 537
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 527
    .end local v1           #e:Ljava/lang/Exception;
    :cond_193
    :try_start_193
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    iget-object v9, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const v10, 0x7f09001f

    invoke-virtual {v9, v10}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_1a6} :catch_18d

    goto/16 :goto_7

    .line 541
    .end local v6           #settings:Landroid/content/SharedPreferences;
    :pswitch_1a8
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    iget-object v9, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const v10, 0x7f09006d

    invoke-virtual {v9, v10}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 546
    :pswitch_1bc
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    iget-object v9, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const v10, 0x7f09006a

    invoke-virtual {v9, v10}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 550
    :pswitch_1d0
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    iget-object v9, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const v10, 0x7f09001e

    invoke-virtual {v9, v10}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 461
    :pswitch_data_1e4
    .packed-switch 0x64
        :pswitch_4f
        :pswitch_118
        :pswitch_135
        :pswitch_7
        :pswitch_160
        :pswitch_1a8
        :pswitch_25
        :pswitch_1bc
        :pswitch_1d0
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
