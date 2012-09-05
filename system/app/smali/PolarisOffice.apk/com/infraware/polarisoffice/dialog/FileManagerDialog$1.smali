.class Lcom/infraware/polarisoffice/dialog/FileManagerDialog$1;
.super Ljava/lang/Object;
.source "FileManagerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->showPromptFileName(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/dialog/FileManagerDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog$1;->this$0:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "paramDialogInterface"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog$1;->this$0:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    #getter for: Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->access$0(Lcom/infraware/polarisoffice/dialog/FileManagerDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 272
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog$1;->this$0:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    #getter for: Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->access$0(Lcom/infraware/polarisoffice/dialog/FileManagerDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 273
    :cond_11
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog$1;->this$0:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    const/4 v1, 0x0

    #setter for: Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->access$1(Lcom/infraware/polarisoffice/dialog/FileManagerDialog;Landroid/app/AlertDialog;)V

    .line 274
    return-void
.end method
