.class Lcom/infraware/polarisoffice/OfficeFileManager$14;
.super Ljava/lang/Object;
.source "OfficeFileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/OfficeFileManager;->deleteWebFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

.field private final synthetic val$serviceType:I

.field private final synthetic val$webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/OfficeFileManager;Lcom/infraware/filemanager/webstorage/WebStorageAPI;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$14;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    iput-object p2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$14;->val$webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    iput p3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$14;->val$serviceType:I

    .line 2261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 2264
    const/4 v0, 0x1

    .line 2265
    .local v0, result:Z
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$14;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_oPostItem:Lcom/infraware/filemanager/file/FileListItem;
    invoke-static {v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$43(Lcom/infraware/polarisoffice/OfficeFileManager;)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v1

    iget-boolean v1, v1, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v1, :cond_32

    .line 2266
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$14;->val$webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    iget v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$14;->val$serviceType:I

    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$14;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_strStorageId:Ljava/lang/String;
    invoke-static {v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$41(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager$14;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_oPostItem:Lcom/infraware/filemanager/file/FileListItem;
    invoke-static {v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$43(Lcom/infraware/polarisoffice/OfficeFileManager;)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->removeFolder(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2270
    :goto_23
    if-eqz v0, :cond_4b

    .line 2271
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$14;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->onUpdateList()V

    .line 2275
    :goto_2a
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$14;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v2, 0x63

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->onPostAction(I)V

    .line 2276
    return-void

    .line 2268
    :cond_32
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$14;->val$webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    iget v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$14;->val$serviceType:I

    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$14;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_strStorageId:Ljava/lang/String;
    invoke-static {v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$41(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager$14;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_oPostItem:Lcom/infraware/filemanager/file/FileListItem;
    invoke-static {v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$43(Lcom/infraware/polarisoffice/OfficeFileManager;)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->removeFile(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_23

    .line 2273
    :cond_4b
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$14;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$14;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v3, 0x7f0800b2

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_2a
.end method
