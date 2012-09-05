.class Lcom/infraware/common/account/EditAccount$8;
.super Ljava/lang/Object;
.source "EditAccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/account/EditAccount;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/account/EditAccount;


# direct methods
.method constructor <init>(Lcom/infraware/common/account/EditAccount;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/account/EditAccount$8;->this$0:Lcom/infraware/common/account/EditAccount;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 271
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount$8;->this$0:Lcom/infraware/common/account/EditAccount;

    #getter for: Lcom/infraware/common/account/EditAccount;->m_etPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/common/account/EditAccount;->access$14(Lcom/infraware/common/account/EditAccount;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, password:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_27

    .line 280
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount$8;->this$0:Lcom/infraware/common/account/EditAccount;

    #getter for: Lcom/infraware/common/account/EditAccount;->mAccount:Lcom/infraware/common/account/AccountInfo;
    invoke-static {v1}, Lcom/infraware/common/account/EditAccount;->access$5(Lcom/infraware/common/account/EditAccount;)Lcom/infraware/common/account/AccountInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/infraware/common/account/AccountInfo;->setPassword(Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount$8;->this$0:Lcom/infraware/common/account/EditAccount;

    const/4 v2, 0x1

    #setter for: Lcom/infraware/common/account/EditAccount;->m_bChangePassword:Z
    invoke-static {v1, v2}, Lcom/infraware/common/account/EditAccount;->access$7(Lcom/infraware/common/account/EditAccount;Z)V

    .line 284
    :cond_27
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount$8;->this$0:Lcom/infraware/common/account/EditAccount;

    #getter for: Lcom/infraware/common/account/EditAccount;->m_oImm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Lcom/infraware/common/account/EditAccount;->access$15(Lcom/infraware/common/account/EditAccount;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/infraware/common/account/EditAccount$8;->this$0:Lcom/infraware/common/account/EditAccount;

    #getter for: Lcom/infraware/common/account/EditAccount;->m_etPassword:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/common/account/EditAccount;->access$14(Lcom/infraware/common/account/EditAccount;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 285
    return-void
.end method
