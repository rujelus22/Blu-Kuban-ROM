.class Lcom/infraware/common/account/EditAccount$4;
.super Ljava/lang/Object;
.source "EditAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/account/EditAccount;->initUI()V
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
    iput-object p1, p0, Lcom/infraware/common/account/EditAccount$4;->this$0:Lcom/infraware/common/account/EditAccount;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount$4;->this$0:Lcom/infraware/common/account/EditAccount;

    #getter for: Lcom/infraware/common/account/EditAccount;->mDeleteBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/infraware/common/account/EditAccount;->access$12(Lcom/infraware/common/account/EditAccount;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount$4;->this$0:Lcom/infraware/common/account/EditAccount;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/common/account/EditAccount;->showDialog(I)V

    .line 169
    return-void
.end method
