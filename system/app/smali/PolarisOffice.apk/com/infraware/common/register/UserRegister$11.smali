.class Lcom/infraware/common/register/UserRegister$11;
.super Ljava/lang/Object;
.source "UserRegister.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    iput-object p1, p0, Lcom/infraware/common/register/UserRegister$11;->this$0:Lcom/infraware/common/register/UserRegister;

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 683
    sparse-switch p2, :sswitch_data_10

    .line 692
    const/4 v0, 0x0

    :goto_5
    :sswitch_5
    return v0

    .line 686
    :sswitch_6
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister$11;->this$0:Lcom/infraware/common/register/UserRegister;

    const v2, 0x7f08005e

    #calls: Lcom/infraware/common/register/UserRegister;->onToastMessage(I)V
    invoke-static {v1, v2}, Lcom/infraware/common/register/UserRegister;->access$8(Lcom/infraware/common/register/UserRegister;I)V

    goto :goto_5

    .line 683
    nop

    :sswitch_data_10
    .sparse-switch
        0x4 -> :sswitch_6
        0x54 -> :sswitch_5
    .end sparse-switch
.end method
