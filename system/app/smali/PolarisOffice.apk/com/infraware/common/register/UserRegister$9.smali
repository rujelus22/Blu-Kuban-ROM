.class Lcom/infraware/common/register/UserRegister$9;
.super Ljava/lang/Object;
.source "UserRegister.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/register/UserRegister;->setControlAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/register/UserRegister;


# direct methods
.method constructor <init>(Lcom/infraware/common/register/UserRegister;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/register/UserRegister$9;->this$0:Lcom/infraware/common/register/UserRegister;

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 428
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister$9;->this$0:Lcom/infraware/common/register/UserRegister;

    #getter for: Lcom/infraware/common/register/UserRegister;->m_etName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/common/register/UserRegister;->access$11(Lcom/infraware/common/register/UserRegister;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, username:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister$9;->this$0:Lcom/infraware/common/register/UserRegister;

    #getter for: Lcom/infraware/common/register/UserRegister;->m_etEmail:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/common/register/UserRegister;->access$12(Lcom/infraware/common/register/UserRegister;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, email:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister$9;->this$0:Lcom/infraware/common/register/UserRegister;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/infraware/common/register/UserRegister;->m_strName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/infraware/common/register/UserRegister;->access$13(Lcom/infraware/common/register/UserRegister;Ljava/lang/String;)V

    .line 432
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister$9;->this$0:Lcom/infraware/common/register/UserRegister;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/infraware/common/register/UserRegister;->m_strEmail:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/infraware/common/register/UserRegister;->access$14(Lcom/infraware/common/register/UserRegister;Ljava/lang/String;)V

    .line 434
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister$9;->this$0:Lcom/infraware/common/register/UserRegister;

    #getter for: Lcom/infraware/common/register/UserRegister;->m_strName:Ljava/lang/String;
    invoke-static {v2}, Lcom/infraware/common/register/UserRegister;->access$1(Lcom/infraware/common/register/UserRegister;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_56

    iget-object v2, p0, Lcom/infraware/common/register/UserRegister$9;->this$0:Lcom/infraware/common/register/UserRegister;

    #getter for: Lcom/infraware/common/register/UserRegister;->m_strEmail:Ljava/lang/String;
    invoke-static {v2}, Lcom/infraware/common/register/UserRegister;->access$2(Lcom/infraware/common/register/UserRegister;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_56

    .line 436
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister$9;->this$0:Lcom/infraware/common/register/UserRegister;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Lcom/infraware/common/register/UserRegister;->showDialog(I)V

    .line 437
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister$9;->this$0:Lcom/infraware/common/register/UserRegister;

    iget-object v2, v2, Lcom/infraware/common/register/UserRegister;->mEventHandler:Landroid/os/Handler;

    const/16 v3, 0x384

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 556
    :cond_56
    return-void
.end method
