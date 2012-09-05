.class Lcom/infraware/polarisoffice/search/SearchFileList$8;
.super Ljava/lang/Object;
.source "SearchFileList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/search/SearchFileList;->startProgressing(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

.field private final synthetic val$operation:I


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/search/SearchFileList;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/search/SearchFileList$8;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    iput p2, p0, Lcom/infraware/polarisoffice/search/SearchFileList$8;->val$operation:I

    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter "dialog"

    .prologue
    .line 874
    iget-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList$8;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList$8;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/search/SearchFileList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/search/SearchFileList;->onToastMessage(Ljava/lang/String;)V

    .line 875
    iget v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList$8;->val$operation:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_26

    .line 877
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v0

    .line 878
    .local v0, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->cancel()V

    .line 885
    .end local v0           #webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    :cond_1f
    :goto_1f
    iget-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList$8;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    const/4 v2, 0x0

    #setter for: Lcom/infraware/polarisoffice/search/SearchFileList;->m_oProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$16(Lcom/infraware/polarisoffice/search/SearchFileList;Landroid/app/ProgressDialog;)V

    .line 886
    return-void

    .line 882
    :cond_26
    iget-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList$8;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    #getter for: Lcom/infraware/polarisoffice/search/SearchFileList;->m_oAsyncController:Lcom/infraware/filemanager/async/FileAsyncController;
    invoke-static {v1}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$15(Lcom/infraware/polarisoffice/search/SearchFileList;)Lcom/infraware/filemanager/async/FileAsyncController;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 883
    iget-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList$8;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    #getter for: Lcom/infraware/polarisoffice/search/SearchFileList;->m_oAsyncController:Lcom/infraware/filemanager/async/FileAsyncController;
    invoke-static {v1}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$15(Lcom/infraware/polarisoffice/search/SearchFileList;)Lcom/infraware/filemanager/async/FileAsyncController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/filemanager/async/FileAsyncController;->Cancel()V

    goto :goto_1f
.end method
