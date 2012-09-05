.class Lcom/sec/android/app/dlna/DLNAAddinManager$6;
.super Ljava/lang/Object;
.source "DLNAAddinManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/DLNAAddinManager;->playItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/DLNAAddinManager;)V
    .registers 2
    .parameter

    .prologue
    .line 688
    iput-object p1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$6;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/16 v10, 0x19a

    .line 692
    :try_start_2
    iget-object v7, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$6;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #getter for: Lcom/sec/android/app/dlna/DLNAAddinManager;->player:Lcom/samsung/upnp/Device;
    invoke-static {v7}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$1000(Lcom/sec/android/app/dlna/DLNAAddinManager;)Lcom/samsung/upnp/Device;

    move-result-object v7

    const-string v8, "Stop"

    invoke-virtual {v7, v8}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v6

    .line 693
    .local v6, stop:Lcom/samsung/upnp/Action;
    if-nez v6, :cond_29

    .line 694
    new-instance v7, Lcom/samsung/api/DMCAPIException;

    const/16 v8, 0x9

    invoke-direct {v7, v8}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v7
    :try_end_18
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_2 .. :try_end_18} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_18} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_8d

    .line 757
    .end local v6           #stop:Lcom/samsung/upnp/Action;
    :catch_18
    move-exception v1

    .line 758
    .local v1, e:Lcom/samsung/api/DMCAPIException;
    const-string v7, "DLNA_Addin"

    const-string v8, "DLNAAddinManager.playItem()"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-virtual {v1}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    .line 760
    iget-object v7, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$6;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #calls: Lcom/sec/android/app/dlna/DLNAAddinManager;->handleDMCAPIException(Lcom/samsung/api/DMCAPIException;)V
    invoke-static {v7, v1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$600(Lcom/sec/android/app/dlna/DLNAAddinManager;Lcom/samsung/api/DMCAPIException;)V

    .line 768
    .end local v1           #e:Lcom/samsung/api/DMCAPIException;
    :goto_28
    return-void

    .line 696
    .restart local v6       #stop:Lcom/samsung/upnp/Action;
    :cond_29
    :try_start_29
    const-string v7, "InstanceID"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 698
    invoke-virtual {v6}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v7

    if-nez v7, :cond_77

    .line 699
    const-string v7, "DLNA_Addin"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "action fail"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-virtual {v6}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v7

    if-ne v7, v10, :cond_77

    .line 701
    new-instance v7, Lcom/samsung/api/DMCAPIException;

    const/16 v8, 0x9

    invoke-virtual {v6}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v7
    :try_end_6b
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_29 .. :try_end_6b} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_29 .. :try_end_6b} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_6b} :catch_8d

    .line 761
    .end local v6           #stop:Lcom/samsung/upnp/Action;
    :catch_6b
    move-exception v3

    .line 762
    .local v3, ex:Ljava/lang/NullPointerException;
    const-string v7, "DLNA_Addin"

    const-string v8, "DLNAAddinManager.playItem() - NullPointerException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_28

    .line 706
    .end local v3           #ex:Ljava/lang/NullPointerException;
    .restart local v6       #stop:Lcom/samsung/upnp/Action;
    :cond_77
    :try_start_77
    iget-object v7, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$6;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #getter for: Lcom/sec/android/app/dlna/DLNAAddinManager;->player:Lcom/samsung/upnp/Device;
    invoke-static {v7}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$1000(Lcom/sec/android/app/dlna/DLNAAddinManager;)Lcom/samsung/upnp/Device;

    move-result-object v7

    const-string v8, "SetAVTransportURI"

    invoke-virtual {v7, v8}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 707
    .local v0, actionToDmr:Lcom/samsung/upnp/Action;
    if-nez v0, :cond_99

    .line 708
    new-instance v7, Lcom/samsung/api/DMCAPIException;

    const/16 v8, 0x9

    invoke-direct {v7, v8}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v7
    :try_end_8d
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_77 .. :try_end_8d} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_77 .. :try_end_8d} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_8d} :catch_8d

    .line 764
    .end local v0           #actionToDmr:Lcom/samsung/upnp/Action;
    .end local v6           #stop:Lcom/samsung/upnp/Action;
    :catch_8d
    move-exception v2

    .line 765
    .local v2, eex:Ljava/lang/Exception;
    const-string v7, "DLNA_Addin"

    const-string v8, "DLNAAddinManager.playItem() - Exception"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28

    .line 711
    .end local v2           #eex:Ljava/lang/Exception;
    .restart local v0       #actionToDmr:Lcom/samsung/upnp/Action;
    .restart local v6       #stop:Lcom/samsung/upnp/Action;
    :cond_99
    :try_start_99
    const-string v7, "InstanceID"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 712
    const-string v7, "CurrentURI"

    iget-object v8, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$6;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #getter for: Lcom/sec/android/app/dlna/DLNAAddinManager;->playItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-static {v8}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$1100(Lcom/sec/android/app/dlna/DLNAAddinManager;)Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v7, "CurrentURIMetaData"

    iget-object v8, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$6;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #getter for: Lcom/sec/android/app/dlna/DLNAAddinManager;->playItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-static {v8}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$1100(Lcom/sec/android/app/dlna/DLNAAddinManager;)Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/api/ContentItem;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v7

    if-nez v7, :cond_115

    .line 716
    const-string v7, "DLNA_Addin"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "action fail"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v7

    if-ne v7, v10, :cond_105

    .line 719
    new-instance v7, Lcom/samsung/api/DMCAPIException;

    const/16 v8, 0x9

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v7

    .line 721
    :cond_105
    new-instance v7, Lcom/samsung/api/DMCAPIException;

    const/16 v8, 0x1f5

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v7
    :try_end_115
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_99 .. :try_end_115} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_99 .. :try_end_115} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_115} :catch_8d

    .line 727
    :cond_115
    :try_start_115
    iget-object v7, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$6;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #calls: Lcom/sec/android/app/dlna/DLNAAddinManager;->getPosition()Lcom/samsung/api/ContentPositionInfo;
    invoke-static {v7}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$1200(Lcom/sec/android/app/dlna/DLNAAddinManager;)Lcom/samsung/api/ContentPositionInfo;

    move-result-object v5

    .line 728
    .local v5, pos:Lcom/samsung/api/ContentPositionInfo;
    iget-object v7, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$6;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v5}, Lcom/samsung/api/ContentPositionInfo;->getTrackDuration()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/dlna/playback/PlaybackUtil;->formatTime(Ljava/lang/String;)I

    move-result v8

    #setter for: Lcom/sec/android/app/dlna/DLNAAddinManager;->totalDuration:I
    invoke-static {v7, v8}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$1302(Lcom/sec/android/app/dlna/DLNAAddinManager;I)I

    .line 729
    iget-object v7, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$6;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    const/4 v8, 0x0

    #setter for: Lcom/sec/android/app/dlna/DLNAAddinManager;->currentPosition:I
    invoke-static {v7, v8}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$1402(Lcom/sec/android/app/dlna/DLNAAddinManager;I)I
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_12e} :catch_14b
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_115 .. :try_end_12e} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_115 .. :try_end_12e} :catch_6b

    .line 736
    .end local v5           #pos:Lcom/samsung/api/ContentPositionInfo;
    :goto_12e
    :try_start_12e
    iget-object v7, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$6;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    const/16 v8, 0x69

    invoke-virtual {v7, v8}, Lcom/sec/android/app/dlna/DLNAAddinManager;->notifyGuiEvent(I)V

    .line 738
    iget-object v7, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$6;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #getter for: Lcom/sec/android/app/dlna/DLNAAddinManager;->player:Lcom/samsung/upnp/Device;
    invoke-static {v7}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$1000(Lcom/sec/android/app/dlna/DLNAAddinManager;)Lcom/samsung/upnp/Device;

    move-result-object v7

    const-string v8, "Play"

    invoke-virtual {v7, v8}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v4

    .line 739
    .local v4, play:Lcom/samsung/upnp/Action;
    if-nez v4, :cond_160

    .line 740
    new-instance v7, Lcom/samsung/api/DMCAPIException;

    const/16 v8, 0x9

    invoke-direct {v7, v8}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v7

    .line 730
    .end local v4           #play:Lcom/samsung/upnp/Action;
    :catch_14b
    move-exception v1

    .line 731
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "DLNA_Addin"

    const-string v8, "DLNAAddinManager.playItem() - Exception"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v7, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$6;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    const/4 v8, 0x0

    #setter for: Lcom/sec/android/app/dlna/DLNAAddinManager;->totalDuration:I
    invoke-static {v7, v8}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$1302(Lcom/sec/android/app/dlna/DLNAAddinManager;I)I

    .line 733
    iget-object v7, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$6;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    const/4 v8, 0x0

    #setter for: Lcom/sec/android/app/dlna/DLNAAddinManager;->currentPosition:I
    invoke-static {v7, v8}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$1402(Lcom/sec/android/app/dlna/DLNAAddinManager;I)I

    goto :goto_12e

    .line 742
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v4       #play:Lcom/samsung/upnp/Action;
    :cond_160
    const-string v7, "InstanceID"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 743
    const-string v7, "Speed"

    const-string v8, "1"

    invoke-virtual {v4, v7, v8}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    invoke-virtual {v4}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v7

    if-nez v7, :cond_1b9

    .line 746
    const-string v7, "DLNA_Addin"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "action fail"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v7

    if-ne v7, v10, :cond_1a9

    .line 749
    new-instance v7, Lcom/samsung/api/DMCAPIException;

    const/16 v8, 0x9

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v7

    .line 751
    :cond_1a9
    new-instance v7, Lcom/samsung/api/DMCAPIException;

    const/16 v8, 0x1f5

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v7

    .line 756
    :cond_1b9
    iget-object v7, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$6;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    const/16 v8, 0x68

    invoke-virtual {v7, v8}, Lcom/sec/android/app/dlna/DLNAAddinManager;->notifyGuiEvent(I)V
    :try_end_1c0
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_12e .. :try_end_1c0} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_12e .. :try_end_1c0} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_1c0} :catch_8d

    goto/16 :goto_28
.end method
