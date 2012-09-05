.class Lcom/infraware/common/account/EditAccount$10;
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
    iput-object p1, p0, Lcom/infraware/common/account/EditAccount$10;->this$0:Lcom/infraware/common/account/EditAccount;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x1

    .line 310
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount$10;->this$0:Lcom/infraware/common/account/EditAccount;

    #getter for: Lcom/infraware/common/account/EditAccount;->mDeleteBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/infraware/common/account/EditAccount;->access$12(Lcom/infraware/common/account/EditAccount;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 311
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount$10;->this$0:Lcom/infraware/common/account/EditAccount;

    #setter for: Lcom/infraware/common/account/EditAccount;->m_bDeleteAccount:Z
    invoke-static {v0, v1}, Lcom/infraware/common/account/EditAccount;->access$16(Lcom/infraware/common/account/EditAccount;Z)V

    .line 312
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount$10;->this$0:Lcom/infraware/common/account/EditAccount;

    #calls: Lcom/infraware/common/account/EditAccount;->CloseForm()V
    invoke-static {v0}, Lcom/infraware/common/account/EditAccount;->access$17(Lcom/infraware/common/account/EditAccount;)V

    .line 313
    return-void
.end method
