.class Lcom/infraware/common/account/EditAccount$3;
.super Landroid/os/Handler;
.source "EditAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/account/EditAccount;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/infraware/common/account/EditAccount$3;->this$0:Lcom/infraware/common/account/EditAccount;

    .line 133
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 142
    :goto_8
    return-void

    .line 139
    :pswitch_9
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount$3;->this$0:Lcom/infraware/common/account/EditAccount;

    #calls: Lcom/infraware/common/account/EditAccount;->checkAccount()Z
    invoke-static {v0}, Lcom/infraware/common/account/EditAccount;->access$11(Lcom/infraware/common/account/EditAccount;)Z

    goto :goto_8

    .line 137
    nop

    :pswitch_data_10
    .packed-switch 0x12c
        :pswitch_9
    .end packed-switch
.end method
