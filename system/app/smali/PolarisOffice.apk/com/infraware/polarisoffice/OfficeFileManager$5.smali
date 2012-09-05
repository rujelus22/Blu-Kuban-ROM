.class Lcom/infraware/polarisoffice/OfficeFileManager$5;
.super Ljava/lang/Object;
.source "OfficeFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/OfficeFileManager;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$5;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 466
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$5;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_nPopupType:I
    invoke-static {v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$35(Lcom/infraware/polarisoffice/OfficeFileManager;)I

    move-result v1

    sparse-switch v1, :sswitch_data_4a

    .line 484
    :goto_9
    return-void

    .line 469
    :sswitch_a
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 470
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 471
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$5;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->unzipProgressHandler:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;
    invoke-static {v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$34(Lcom/infraware/polarisoffice/OfficeFileManager;)Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9

    .line 475
    .end local v0           #msg:Landroid/os/Message;
    :sswitch_1c
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$5;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$5;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;
    invoke-static {v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$36(Lcom/infraware/polarisoffice/OfficeFileManager;)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v2

    const/4 v3, 0x1

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationPaste(Lcom/infraware/filemanager/file/FileListItem;Z)V
    invoke-static {v1, v2, v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$37(Lcom/infraware/polarisoffice/OfficeFileManager;Lcom/infraware/filemanager/file/FileListItem;Z)V

    goto :goto_9

    .line 478
    :sswitch_29
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$5;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$5;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;
    invoke-static {v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$36(Lcom/infraware/polarisoffice/OfficeFileManager;)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v3

    const-string v4, ""

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->onPostAction(ILcom/infraware/filemanager/file/FileListItem;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$38(Lcom/infraware/polarisoffice/OfficeFileManager;ILcom/infraware/filemanager/file/FileListItem;Ljava/lang/String;)V

    goto :goto_9

    .line 481
    :sswitch_39
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$5;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$5;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;
    invoke-static {v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$36(Lcom/infraware/polarisoffice/OfficeFileManager;)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v3

    const-string v4, ""

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->onPostAction(ILcom/infraware/filemanager/file/FileListItem;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$38(Lcom/infraware/polarisoffice/OfficeFileManager;ILcom/infraware/filemanager/file/FileListItem;Ljava/lang/String;)V

    goto :goto_9

    .line 466
    nop

    :sswitch_data_4a
    .sparse-switch
        0x65 -> :sswitch_a
        0xc8 -> :sswitch_1c
        0xc9 -> :sswitch_1c
        0x12d -> :sswitch_29
        0x12e -> :sswitch_39
    .end sparse-switch
.end method
