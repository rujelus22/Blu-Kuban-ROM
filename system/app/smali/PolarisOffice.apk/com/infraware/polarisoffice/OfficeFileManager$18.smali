.class Lcom/infraware/polarisoffice/OfficeFileManager$18;
.super Ljava/lang/Object;
.source "OfficeFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/OfficeFileManager;->startProgressing(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$18;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    .line 2972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 8
    .parameter "dialog"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2975
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$18;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$18;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_oRootContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$44(Lcom/infraware/polarisoffice/OfficeFileManager;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800b8

    invoke-static {v2, v4, v3}, Lcom/infraware/common/util/Utils;->showAlert(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object v2

    #setter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_oCancelDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$45(Lcom/infraware/polarisoffice/OfficeFileManager;Landroid/app/AlertDialog;)V

    .line 2977
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$18;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_oCancelDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$46(Lcom/infraware/polarisoffice/OfficeFileManager;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 2979
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$18;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_oCancelDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$46(Lcom/infraware/polarisoffice/OfficeFileManager;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2980
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$18;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_oCancelDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$46(Lcom/infraware/polarisoffice/OfficeFileManager;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 2982
    :cond_33
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$18;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v1, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->setUpdateState(Z)V

    .line 2984
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v0

    .line 2985
    .local v0, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->cancel()V

    .line 2986
    return-void
.end method
