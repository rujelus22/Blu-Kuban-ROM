.class Lcom/infraware/common/register/UserRegister$14;
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
    iput-object p1, p0, Lcom/infraware/common/register/UserRegister$14;->this$0:Lcom/infraware/common/register/UserRegister;

    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 727
    sparse-switch p2, :sswitch_data_20

    move v0, v1

    .line 738
    :goto_6
    :sswitch_6
    return v0

    .line 729
    :sswitch_7
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister$14;->this$0:Lcom/infraware/common/register/UserRegister;

    #setter for: Lcom/infraware/common/register/UserRegister;->m_bNetErrAutoRegister:Z
    invoke-static {v2, v1}, Lcom/infraware/common/register/UserRegister;->access$15(Lcom/infraware/common/register/UserRegister;Z)V

    .line 730
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister$14;->this$0:Lcom/infraware/common/register/UserRegister;

    #calls: Lcom/infraware/common/register/UserRegister;->SetRegistryData(Z)V
    invoke-static {v2, v1}, Lcom/infraware/common/register/UserRegister;->access$5(Lcom/infraware/common/register/UserRegister;Z)V

    .line 731
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 732
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister$14;->this$0:Lcom/infraware/common/register/UserRegister;

    iget-object v1, v1, Lcom/infraware/common/register/UserRegister;->mEventHandler:Landroid/os/Handler;

    const/16 v2, 0x5dc

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    .line 727
    :sswitch_data_20
    .sparse-switch
        0x4 -> :sswitch_7
        0x54 -> :sswitch_6
    .end sparse-switch
.end method
