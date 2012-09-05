.class Lcom/infraware/common/account/AddAccountEdit$3;
.super Landroid/os/Handler;
.source "AddAccountEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/account/AddAccountEdit;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/infraware/common/account/AddAccountEdit$3;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    .line 117
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_16

    .line 129
    :goto_8
    return-void

    .line 123
    :sswitch_9
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit$3;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    #calls: Lcom/infraware/common/account/AddAccountEdit;->checkAccount()Z
    invoke-static {v0}, Lcom/infraware/common/account/AddAccountEdit;->access$9(Lcom/infraware/common/account/AddAccountEdit;)Z

    goto :goto_8

    .line 126
    :sswitch_f
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit$3;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    invoke-virtual {v0}, Lcom/infraware/common/account/AddAccountEdit;->finish()V

    goto :goto_8

    .line 121
    nop

    :sswitch_data_16
    .sparse-switch
        0x12c -> :sswitch_9
        0x190 -> :sswitch_f
    .end sparse-switch
.end method
