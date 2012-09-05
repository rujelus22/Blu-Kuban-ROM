.class Lcom/infraware/common/account/AddAccountEdit$4;
.super Ljava/lang/Object;
.source "AddAccountEdit.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/account/AddAccountEdit;->setControlAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/account/AddAccountEdit;


# direct methods
.method constructor <init>(Lcom/infraware/common/account/AddAccountEdit;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/account/AddAccountEdit$4;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 171
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 175
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit$4;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    #calls: Lcom/infraware/common/account/AddAccountEdit;->SetAddBtnStatus()V
    invoke-static {v0}, Lcom/infraware/common/account/AddAccountEdit;->access$10(Lcom/infraware/common/account/AddAccountEdit;)V

    .line 180
    return-void
.end method
