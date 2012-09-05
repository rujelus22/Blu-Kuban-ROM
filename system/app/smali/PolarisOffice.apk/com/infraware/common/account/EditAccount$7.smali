.class Lcom/infraware/common/account/EditAccount$7;
.super Ljava/lang/Object;
.source "EditAccount.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Lcom/infraware/common/account/EditAccount$7;->this$0:Lcom/infraware/common/account/EditAccount;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_8

    .line 260
    :cond_7
    :goto_7
    return v0

    .line 249
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    .line 252
    sparse-switch p2, :sswitch_data_2a

    goto :goto_7

    .line 255
    :sswitch_13
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount$7;->this$0:Lcom/infraware/common/account/EditAccount;

    #getter for: Lcom/infraware/common/account/EditAccount;->m_oImm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Lcom/infraware/common/account/EditAccount;->access$15(Lcom/infraware/common/account/EditAccount;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/infraware/common/account/EditAccount$7;->this$0:Lcom/infraware/common/account/EditAccount;

    #getter for: Lcom/infraware/common/account/EditAccount;->m_etPassword:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/common/account/EditAccount;->access$14(Lcom/infraware/common/account/EditAccount;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_7

    .line 258
    :sswitch_27
    const/4 v0, 0x1

    goto :goto_7

    .line 252
    nop

    :sswitch_data_2a
    .sparse-switch
        0x42 -> :sswitch_13
        0x54 -> :sswitch_27
    .end sparse-switch
.end method
