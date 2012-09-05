.class Lcom/infraware/common/account/EditAccount$9;
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
    iput-object p1, p0, Lcom/infraware/common/account/EditAccount$9;->this$0:Lcom/infraware/common/account/EditAccount;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount$9;->this$0:Lcom/infraware/common/account/EditAccount;

    #getter for: Lcom/infraware/common/account/EditAccount;->m_oImm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/infraware/common/account/EditAccount;->access$15(Lcom/infraware/common/account/EditAccount;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/common/account/EditAccount$9;->this$0:Lcom/infraware/common/account/EditAccount;

    #getter for: Lcom/infraware/common/account/EditAccount;->m_etPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/common/account/EditAccount;->access$14(Lcom/infraware/common/account/EditAccount;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 292
    return-void
.end method
