.class Lcom/infraware/common/register/UserRegister$12;
.super Ljava/lang/Object;
.source "UserRegister.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/register/UserRegister;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/infraware/common/register/UserRegister$12;->this$0:Lcom/infraware/common/register/UserRegister;

    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$12;->this$0:Lcom/infraware/common/register/UserRegister;

    const/4 v1, 0x1

    #setter for: Lcom/infraware/common/register/UserRegister;->m_bNetErrAutoRegister:Z
    invoke-static {v0, v1}, Lcom/infraware/common/register/UserRegister;->access$15(Lcom/infraware/common/register/UserRegister;Z)V

    .line 711
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$12;->this$0:Lcom/infraware/common/register/UserRegister;

    const/4 v1, 0x0

    #calls: Lcom/infraware/common/register/UserRegister;->SetRegistryData(Z)V
    invoke-static {v0, v1}, Lcom/infraware/common/register/UserRegister;->access$5(Lcom/infraware/common/register/UserRegister;Z)V

    .line 712
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$12;->this$0:Lcom/infraware/common/register/UserRegister;

    invoke-virtual {v0}, Lcom/infraware/common/register/UserRegister;->finish()V

    .line 713
    return-void
.end method
