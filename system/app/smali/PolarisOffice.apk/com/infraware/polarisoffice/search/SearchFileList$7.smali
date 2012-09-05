.class Lcom/infraware/polarisoffice/search/SearchFileList$7;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/search/SearchFileList$7;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList$7;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    iget-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList$7;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    #getter for: Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;
    invoke-static {v1}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$13(Lcom/infraware/polarisoffice/search/SearchFileList;)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v1

    #calls: Lcom/infraware/polarisoffice/search/SearchFileList;->fileOperationDownload(Lcom/infraware/filemanager/file/FileListItem;)V
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$14(Lcom/infraware/polarisoffice/search/SearchFileList;Lcom/infraware/filemanager/file/FileListItem;)V

    .line 339
    return-void
.end method
