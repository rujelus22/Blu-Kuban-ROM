.class Lcom/infraware/polarisoffice/OfficeFileManager$16;
.super Ljava/lang/Object;
.source "OfficeFileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/OfficeFileManager;->renameWebFile()V
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$16;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    iput-object p2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$16;->val$webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    iput p3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$16;->val$serviceType:I

    .line 2315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 2318
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$16;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_oPostItem:Lcom/infraware/filemanager/file/FileListItem;
    invoke-static {v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$43(Lcom/infraware/polarisoffice/OfficeFileManager;)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2319
    .local v0, sourcePath:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$16;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_oPostItem:Lcom/infraware/filemanager/file/FileListItem;
    invoke-static {v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$43(Lcom/infraware/polarisoffice/OfficeFileManager;)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileListItem;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$16;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_strPostName:Ljava/lang/String;
    invoke-static {v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$42(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2320
    .local v1, targetPath:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$16;->val$webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    iget v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$16;->val$serviceType:I

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager$16;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_strStorageId:Ljava/lang/String;
    invoke-static {v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$41(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->rename(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 2321
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$16;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->onUpdateList()V

    .line 2325
    :goto_46
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$16;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v3, 0x63

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->onPostAction(I)V

    .line 2326
    return-void

    .line 2323
    :cond_4e
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$16;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$16;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v4, 0x7f0800b2

    invoke-virtual {v3, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_46
.end method
