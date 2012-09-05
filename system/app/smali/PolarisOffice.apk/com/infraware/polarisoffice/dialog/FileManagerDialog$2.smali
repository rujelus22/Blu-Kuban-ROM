.class Lcom/infraware/polarisoffice/dialog/FileManagerDialog$2;
.super Ljava/lang/Object;
.source "FileManagerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/dialog/FileManagerDialog;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog$2;->this$0:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    iput p2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog$2;->val$value:I

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 294
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog$2;->this$0:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    #getter for: Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->m_oEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->access$2(Lcom/infraware/polarisoffice/dialog/FileManagerDialog;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog$2;->val$value:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 295
    return-void
.end method
