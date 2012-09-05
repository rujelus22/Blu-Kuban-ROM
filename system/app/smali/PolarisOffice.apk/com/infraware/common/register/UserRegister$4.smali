.class Lcom/infraware/common/register/UserRegister$4;
.super Ljava/lang/Object;
.source "UserRegister.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/infraware/common/register/UserRegister$4;->this$0:Lcom/infraware/common/register/UserRegister;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 372
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 376
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$4;->this$0:Lcom/infraware/common/register/UserRegister;

    #calls: Lcom/infraware/common/register/UserRegister;->SetAddBtnStatus()V
    invoke-static {v0}, Lcom/infraware/common/register/UserRegister;->access$9(Lcom/infraware/common/register/UserRegister;)V

    .line 381
    return-void
.end method
