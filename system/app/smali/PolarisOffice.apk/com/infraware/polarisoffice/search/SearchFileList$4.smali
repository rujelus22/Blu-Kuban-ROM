.class Lcom/infraware/polarisoffice/search/SearchFileList$4;
.super Ljava/lang/Object;
.source "SearchFileList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/search/SearchFileList;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/search/SearchFileList$4;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 295
    iget-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList$4;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    #getter for: Lcom/infraware/polarisoffice/search/SearchFileList;->m_nPopupType:I
    invoke-static {v1}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$11(Lcom/infraware/polarisoffice/search/SearchFileList;)I

    move-result v1

    sparse-switch v1, :sswitch_data_2a

    .line 307
    :goto_9
    return-void

    .line 298
    :sswitch_a
    iget-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList$4;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList$4;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    #getter for: Lcom/infraware/polarisoffice/search/SearchFileList;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;
    invoke-static {v3}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$12(Lcom/infraware/polarisoffice/search/SearchFileList;)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v3

    #calls: Lcom/infraware/polarisoffice/search/SearchFileList;->onPostAction(ILcom/infraware/filemanager/file/FileListItem;)V
    invoke-static {v1, v2, v3}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$9(Lcom/infraware/polarisoffice/search/SearchFileList;ILcom/infraware/filemanager/file/FileListItem;)V

    goto :goto_9

    .line 301
    :sswitch_17
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 302
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 303
    iget-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList$4;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    #getter for: Lcom/infraware/polarisoffice/search/SearchFileList;->unzipProgressHandler:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;
    invoke-static {v1}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$10(Lcom/infraware/polarisoffice/search/SearchFileList;)Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9

    .line 295
    nop

    :sswitch_data_2a
    .sparse-switch
        0x65 -> :sswitch_17
        0x12d -> :sswitch_a
    .end sparse-switch
.end method
