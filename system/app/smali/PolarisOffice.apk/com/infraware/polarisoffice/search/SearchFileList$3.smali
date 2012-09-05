.class Lcom/infraware/polarisoffice/search/SearchFileList$3;
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

.field private final synthetic val$etPassword:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/search/SearchFileList;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/search/SearchFileList$3;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    iput-object p2, p0, Lcom/infraware/polarisoffice/search/SearchFileList$3;->val$etPassword:Landroid/widget/EditText;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 273
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList$3;->val$etPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, password:Ljava/lang/String;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 275
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 276
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 277
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList$3;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    #getter for: Lcom/infraware/polarisoffice/search/SearchFileList;->unzipProgressHandler:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;
    invoke-static {v2}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$10(Lcom/infraware/polarisoffice/search/SearchFileList;)Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->sendMessage(Landroid/os/Message;)Z

    .line 278
    return-void
.end method
