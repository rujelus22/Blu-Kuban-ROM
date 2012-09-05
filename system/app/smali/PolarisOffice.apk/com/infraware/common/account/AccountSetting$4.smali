.class Lcom/infraware/common/account/AccountSetting$4;
.super Ljava/lang/Object;
.source "AccountSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/account/AccountSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/account/AccountSetting;


# direct methods
.method constructor <init>(Lcom/infraware/common/account/AccountSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/account/AccountSetting$4;->this$0:Lcom/infraware/common/account/AccountSetting;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 205
    sparse-switch p2, :sswitch_data_16

    .line 217
    :cond_4
    const/4 v0, 0x0

    :goto_5
    :sswitch_5
    return v0

    .line 209
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 210
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 212
    iget-object v1, p0, Lcom/infraware/common/account/AccountSetting$4;->this$0:Lcom/infraware/common/account/AccountSetting;

    invoke-virtual {v1}, Lcom/infraware/common/account/AccountSetting;->finish()V

    goto :goto_5

    .line 205
    nop

    :sswitch_data_16
    .sparse-switch
        0x4 -> :sswitch_6
        0x54 -> :sswitch_5
    .end sparse-switch
.end method
