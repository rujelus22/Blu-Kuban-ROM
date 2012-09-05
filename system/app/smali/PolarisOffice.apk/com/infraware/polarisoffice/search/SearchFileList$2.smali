.class Lcom/infraware/polarisoffice/search/SearchFileList$2;
.super Landroid/os/Handler;
.source "SearchFileList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/search/SearchFileList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/search/SearchFileList;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/search/SearchFileList;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/search/SearchFileList$2;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    .line 796
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 798
    iget v3, p1, Landroid/os/Message;->what:I

    .line 799
    .local v3, updateType:I
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 800
    .local v2, operation:I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 802
    .local v1, msgObj:Ljava/lang/Object;
    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList$2;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/search/SearchFileList;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 849
    .end local v1           #msgObj:Ljava/lang/Object;
    :cond_f
    :goto_f
    return-void

    .line 806
    .restart local v1       #msgObj:Ljava/lang/Object;
    :cond_10
    packed-switch v3, :pswitch_data_6e

    :pswitch_13
    goto :goto_f

    .line 808
    :pswitch_14
    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList$2;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    iget-object v5, p0, Lcom/infraware/polarisoffice/search/SearchFileList$2;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    #calls: Lcom/infraware/polarisoffice/search/SearchFileList;->startProgressing(Landroid/content/Context;I)V
    invoke-static {v4, v5, v2}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$4(Lcom/infraware/polarisoffice/search/SearchFileList;Landroid/content/Context;I)V

    goto :goto_f

    .line 811
    :pswitch_1c
    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList$2;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    #calls: Lcom/infraware/polarisoffice/search/SearchFileList;->addList(Ljava/lang/Object;)V
    invoke-static {v4, v1}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$5(Lcom/infraware/polarisoffice/search/SearchFileList;Ljava/lang/Object;)V

    goto :goto_f

    .line 814
    :pswitch_22
    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList$2;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    #setter for: Lcom/infraware/polarisoffice/search/SearchFileList;->m_bFinish:Z
    invoke-static {v4, v5}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$6(Lcom/infraware/polarisoffice/search/SearchFileList;Z)V

    .line 815
    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList$2;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    #calls: Lcom/infraware/polarisoffice/search/SearchFileList;->stopProgressing()V
    invoke-static {v4}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$7(Lcom/infraware/polarisoffice/search/SearchFileList;)V

    goto :goto_f

    .line 818
    :pswitch_2d
    const/16 v4, 0xc

    if-ne v2, v4, :cond_f

    .line 820
    new-instance v0, Lcom/infraware/filemanager/media/MediaItem;

    check-cast v1, Ljava/lang/String;

    .end local v1           #msgObj:Ljava/lang/Object;
    invoke-direct {v0, v1}, Lcom/infraware/filemanager/media/MediaItem;-><init>(Ljava/lang/String;)V

    .line 821
    .local v0, mediaItem:Lcom/infraware/filemanager/media/MediaItem;
    iput v5, v0, Lcom/infraware/filemanager/media/MediaItem;->dbAction:I

    .line 822
    invoke-static {v0}, Lcom/infraware/polarisoffice/search/SearchFileList;->onAddMedia(Lcom/infraware/filemanager/media/MediaItem;)V

    goto :goto_f

    .line 826
    .end local v0           #mediaItem:Lcom/infraware/filemanager/media/MediaItem;
    .restart local v1       #msgObj:Ljava/lang/Object;
    :pswitch_3e
    packed-switch v2, :pswitch_data_84

    .line 839
    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList$2;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    #setter for: Lcom/infraware/polarisoffice/search/SearchFileList;->m_bFinish:Z
    invoke-static {v4, v5}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$6(Lcom/infraware/polarisoffice/search/SearchFileList;Z)V

    .line 840
    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList$2;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/search/SearchFileList;->onUpdateList()V

    goto :goto_f

    .line 829
    :pswitch_4c
    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList$2;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    #getter for: Lcom/infraware/polarisoffice/search/SearchFileList;->m_nDownloadMode:I
    invoke-static {v4}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$8(Lcom/infraware/polarisoffice/search/SearchFileList;)I

    move-result v4

    if-ne v4, v5, :cond_5c

    .line 830
    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList$2;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    const/4 v5, 0x3

    const/4 v6, 0x0

    #calls: Lcom/infraware/polarisoffice/search/SearchFileList;->onPostAction(ILcom/infraware/filemanager/file/FileListItem;)V
    invoke-static {v4, v5, v6}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$9(Lcom/infraware/polarisoffice/search/SearchFileList;ILcom/infraware/filemanager/file/FileListItem;)V

    goto :goto_f

    .line 832
    :cond_5c
    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList$2;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/search/SearchFileList;->onUpdateMedia()V

    goto :goto_f

    .line 845
    :pswitch_62
    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList$2;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    #setter for: Lcom/infraware/polarisoffice/search/SearchFileList;->m_bFinish:Z
    invoke-static {v4, v5}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$6(Lcom/infraware/polarisoffice/search/SearchFileList;Z)V

    .line 846
    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList$2;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/search/SearchFileList;->onUpdateList()V

    goto :goto_f

    .line 806
    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_1c
        :pswitch_22
        :pswitch_3e
        :pswitch_62
        :pswitch_13
        :pswitch_2d
    .end packed-switch

    .line 826
    :pswitch_data_84
    .packed-switch 0xc
        :pswitch_4c
    .end packed-switch
.end method
