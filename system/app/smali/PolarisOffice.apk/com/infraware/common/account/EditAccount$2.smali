.class Lcom/infraware/common/account/EditAccount$2;
.super Landroid/os/Handler;
.source "EditAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/account/EditAccount;
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
    iput-object p1, p0, Lcom/infraware/common/account/EditAccount$2;->this$0:Lcom/infraware/common/account/EditAccount;

    .line 525
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 527
    iget v1, p1, Landroid/os/Message;->what:I

    .line 528
    .local v1, updateType:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 530
    .local v0, msgObj:Ljava/lang/Object;
    packed-switch v1, :pswitch_data_36

    .line 548
    .end local v0           #msgObj:Ljava/lang/Object;
    :goto_7
    :pswitch_7
    return-void

    .line 533
    .restart local v0       #msgObj:Ljava/lang/Object;
    :pswitch_8
    iget-object v2, p0, Lcom/infraware/common/account/EditAccount$2;->this$0:Lcom/infraware/common/account/EditAccount;

    iget-object v3, p0, Lcom/infraware/common/account/EditAccount$2;->this$0:Lcom/infraware/common/account/EditAccount;

    check-cast v0, Ljava/lang/String;

    .end local v0           #msgObj:Ljava/lang/Object;
    #calls: Lcom/infraware/common/account/EditAccount;->startProgressing(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v2, v3, v0}, Lcom/infraware/common/account/EditAccount;->access$3(Lcom/infraware/common/account/EditAccount;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7

    .line 538
    .restart local v0       #msgObj:Ljava/lang/Object;
    :pswitch_12
    iget-object v2, p0, Lcom/infraware/common/account/EditAccount$2;->this$0:Lcom/infraware/common/account/EditAccount;

    #calls: Lcom/infraware/common/account/EditAccount;->stopProgressing()V
    invoke-static {v2}, Lcom/infraware/common/account/EditAccount;->access$4(Lcom/infraware/common/account/EditAccount;)V

    goto :goto_7

    .line 541
    :pswitch_18
    iget-object v2, p0, Lcom/infraware/common/account/EditAccount$2;->this$0:Lcom/infraware/common/account/EditAccount;

    #getter for: Lcom/infraware/common/account/EditAccount;->mAccount:Lcom/infraware/common/account/AccountInfo;
    invoke-static {v2}, Lcom/infraware/common/account/EditAccount;->access$5(Lcom/infraware/common/account/EditAccount;)Lcom/infraware/common/account/AccountInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/common/account/EditAccount$2;->this$0:Lcom/infraware/common/account/EditAccount;

    #getter for: Lcom/infraware/common/account/EditAccount;->m_strPassword:Ljava/lang/String;
    invoke-static {v3}, Lcom/infraware/common/account/EditAccount;->access$6(Lcom/infraware/common/account/EditAccount;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/infraware/common/account/AccountInfo;->setPassword(Ljava/lang/String;)V

    .line 542
    iget-object v2, p0, Lcom/infraware/common/account/EditAccount$2;->this$0:Lcom/infraware/common/account/EditAccount;

    const/4 v3, 0x1

    #setter for: Lcom/infraware/common/account/EditAccount;->m_bChangePassword:Z
    invoke-static {v2, v3}, Lcom/infraware/common/account/EditAccount;->access$7(Lcom/infraware/common/account/EditAccount;Z)V

    goto :goto_7

    .line 545
    :pswitch_2e
    iget-object v2, p0, Lcom/infraware/common/account/EditAccount$2;->this$0:Lcom/infraware/common/account/EditAccount;

    check-cast v0, Landroid/app/AlertDialog;

    .end local v0           #msgObj:Ljava/lang/Object;
    #setter for: Lcom/infraware/common/account/EditAccount;->mErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v2, v0}, Lcom/infraware/common/account/EditAccount;->access$8(Lcom/infraware/common/account/EditAccount;Landroid/app/AlertDialog;)V

    goto :goto_7

    .line 530
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_12
        :pswitch_18
    .end packed-switch
.end method
