.class Lcom/infraware/common/register/UserRegister$7;
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
    iput-object p1, p0, Lcom/infraware/common/register/UserRegister$7;->this$0:Lcom/infraware/common/register/UserRegister;

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$7;->this$0:Lcom/infraware/common/register/UserRegister;

    const/4 v1, 0x1

    #calls: Lcom/infraware/common/register/UserRegister;->SetRegistryData(Z)V
    invoke-static {v0, v1}, Lcom/infraware/common/register/UserRegister;->access$5(Lcom/infraware/common/register/UserRegister;Z)V

    .line 409
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$7;->this$0:Lcom/infraware/common/register/UserRegister;

    invoke-virtual {v0}, Lcom/infraware/common/register/UserRegister;->finish()V

    .line 410
    return-void
.end method
