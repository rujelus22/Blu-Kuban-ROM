.class Lcom/infraware/polarisoffice/OfficeFileManager$2;
.super Landroid/os/Handler;
.source "OfficeFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/OfficeFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/OfficeFileManager;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/OfficeFileManager;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    .line 2817
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/16 v5, 0xa

    const/16 v6, 0xc

    const/4 v8, 0x1

    .line 2819
    iget v4, p1, Landroid/os/Message;->what:I

    .line 2820
    .local v4, updateType:I
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 2821
    .local v3, operation:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 2822
    .local v2, nExtValue:I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2824
    .local v1, msgObj:Ljava/lang/Object;
    packed-switch v4, :pswitch_data_f4

    .line 2899
    .end local v1           #msgObj:Ljava/lang/Object;
    :cond_10
    :goto_10
    return-void

    .line 2826
    .restart local v1       #msgObj:Ljava/lang/Object;
    :pswitch_11
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->onInitState()V

    goto :goto_10

    .line 2829
    :pswitch_17
    if-ne v3, v6, :cond_10

    .line 2831
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;
    invoke-static {v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$9(Lcom/infraware/polarisoffice/OfficeFileManager;)Lcom/infraware/filemanager/file/FileSelectedList;

    move-result-object v6

    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I
    invoke-static {v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$3(Lcom/infraware/polarisoffice/OfficeFileManager;)I

    move-result v7

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/infraware/filemanager/file/FileSelectedList;->remove(ILjava/lang/String;)Lcom/infraware/filemanager/file/FileListItem;

    .line 2832
    new-instance v0, Lcom/infraware/filemanager/media/MediaItem;

    const-string v5, ""

    invoke-direct {v0, v5}, Lcom/infraware/filemanager/media/MediaItem;-><init>(Ljava/lang/String;)V

    .line 2833
    .local v0, mediaItem:Lcom/infraware/filemanager/media/MediaItem;
    check-cast v1, Ljava/lang/String;

    .end local v1           #msgObj:Ljava/lang/Object;
    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/media/MediaItem;->setTargetPath(Ljava/lang/String;)V

    .line 2834
    iput v8, v0, Lcom/infraware/filemanager/media/MediaItem;->dbAction:I

    .line 2835
    invoke-static {v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onAddMedia(Lcom/infraware/filemanager/media/MediaItem;)V

    goto :goto_10

    .line 2839
    .end local v0           #mediaItem:Lcom/infraware/filemanager/media/MediaItem;
    .restart local v1       #msgObj:Ljava/lang/Object;
    :pswitch_3d
    if-eq v3, v5, :cond_4d

    const/16 v5, 0xb

    if-eq v3, v5, :cond_4d

    if-ne v3, v6, :cond_55

    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_nDownloadMode:I
    invoke-static {v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$10(Lcom/infraware/polarisoffice/OfficeFileManager;)I

    move-result v5

    if-nez v5, :cond_55

    .line 2840
    :cond_4d
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    check-cast v1, Ljava/lang/String;

    .end local v1           #msgObj:Ljava/lang/Object;
    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->startProgressing(Ljava/lang/String;)V
    invoke-static {v5, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$11(Lcom/infraware/polarisoffice/OfficeFileManager;Ljava/lang/String;)V

    goto :goto_10

    .line 2841
    .restart local v1       #msgObj:Ljava/lang/Object;
    :cond_55
    if-ne v3, v6, :cond_6e

    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_nDownloadMode:I
    invoke-static {v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$10(Lcom/infraware/polarisoffice/OfficeFileManager;)I

    move-result v5

    if-ne v5, v8, :cond_6e

    .line 2842
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v7, 0x7f0800b1

    invoke-virtual {v6, v7}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->startProgressing(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$11(Lcom/infraware/polarisoffice/OfficeFileManager;Ljava/lang/String;)V

    goto :goto_10

    .line 2844
    :cond_6e
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    check-cast v1, Ljava/lang/String;

    .end local v1           #msgObj:Ljava/lang/Object;
    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->startProgressing(IILjava/lang/String;)V
    invoke-static {v5, v3, v2, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$12(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V

    goto :goto_10

    .line 2847
    .restart local v1       #msgObj:Ljava/lang/Object;
    :pswitch_76
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->setProgressUnit(I)V
    invoke-static {v5, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$13(Lcom/infraware/polarisoffice/OfficeFileManager;I)V

    goto :goto_10

    .line 2850
    :pswitch_7c
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    check-cast v1, Ljava/lang/String;

    .end local v1           #msgObj:Ljava/lang/Object;
    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->incrementProgressing(ILjava/lang/String;)V
    invoke-static {v5, v2, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$14(Lcom/infraware/polarisoffice/OfficeFileManager;ILjava/lang/String;)V

    goto :goto_10

    .line 2853
    .restart local v1       #msgObj:Ljava/lang/Object;
    :pswitch_84
    if-eq v3, v5, :cond_10

    .line 2856
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    check-cast v1, Ljava/lang/String;

    .end local v1           #msgObj:Ljava/lang/Object;
    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->setValueProgressing(ILjava/lang/String;)V
    invoke-static {v5, v2, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$15(Lcom/infraware/polarisoffice/OfficeFileManager;ILjava/lang/String;)V

    goto :goto_10

    .line 2859
    .restart local v1       #msgObj:Ljava/lang/Object;
    :pswitch_8e
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->stopProgressing()V
    invoke-static {v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$16(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    goto/16 :goto_10

    .line 2862
    :pswitch_95
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->stopProgressing()V
    invoke-static {v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$16(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    .line 2864
    packed-switch v3, :pswitch_data_10c

    .line 2878
    :pswitch_9d
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->onUpdateMedia()V

    .line 2884
    :goto_a2
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/infraware/polarisoffice/OfficeFileManager;->setSelectMode(I)V

    goto/16 :goto_10

    .line 2867
    :pswitch_aa
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v5, v8}, Lcom/infraware/polarisoffice/OfficeFileManager;->onPostAction(I)V

    goto :goto_a2

    .line 2870
    :pswitch_b0
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_nDownloadMode:I
    invoke-static {v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$10(Lcom/infraware/polarisoffice/OfficeFileManager;)I

    move-result v5

    if-ne v5, v8, :cond_bf

    .line 2871
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lcom/infraware/polarisoffice/OfficeFileManager;->onPostAction(I)V

    .line 2873
    :cond_bf
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->onUpdateMedia()V

    goto :goto_a2

    .line 2887
    :pswitch_c5
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->stopProgressing()V
    invoke-static {v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$16(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    .line 2888
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->isLocalOperation(I)Z
    invoke-static {v5, v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$17(Lcom/infraware/polarisoffice/OfficeFileManager;I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2889
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->onUpdateMedia()V

    goto/16 :goto_10

    .line 2892
    :pswitch_d9
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->stopProgressing()V
    invoke-static {v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$16(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    .line 2893
    if-eqz v1, :cond_ec

    move-object v5, v1

    check-cast v5, Landroid/app/AlertDialog;

    if-eqz v5, :cond_ec

    .line 2894
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #msgObj:Ljava/lang/Object;
    #setter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFailDialog:Landroid/app/AlertDialog;
    invoke-static {v5, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$18(Lcom/infraware/polarisoffice/OfficeFileManager;Landroid/app/AlertDialog;)V

    .line 2896
    :cond_ec
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager$2;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->onUpdateMedia()V

    goto/16 :goto_10

    .line 2824
    nop

    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_11
        :pswitch_3d
        :pswitch_76
        :pswitch_7c
        :pswitch_84
        :pswitch_8e
        :pswitch_95
        :pswitch_c5
        :pswitch_d9
        :pswitch_17
    .end packed-switch

    .line 2864
    :pswitch_data_10c
    .packed-switch 0xa
        :pswitch_aa
        :pswitch_9d
        :pswitch_b0
    .end packed-switch
.end method
