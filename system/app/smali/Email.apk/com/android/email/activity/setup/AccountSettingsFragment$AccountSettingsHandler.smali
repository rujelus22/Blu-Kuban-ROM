.class Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;
.super Landroid/os/Handler;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountSettingsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 868
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public emptyTrashStatus(I)V
    .registers 5
    .parameter "status"

    .prologue
    .line 889
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 890
    .local v0, msg:Landroid/os/Message;
    packed-switch p1, :pswitch_data_48

    .line 905
    :pswitch_8
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const v2, 0x7f0801fc

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 908
    :goto_13
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 909
    return-void

    .line 892
    :pswitch_17
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const v2, 0x7f0801fb

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_13

    .line 895
    :pswitch_23
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const v2, 0x7f0801fd

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_13

    .line 898
    :pswitch_2f
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const v2, 0x7f080359

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_13

    .line 901
    :pswitch_3b
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const v2, 0x7f08052d

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_13

    .line 890
    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_17
        :pswitch_8
        :pswitch_23
        :pswitch_2f
        :pswitch_3b
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 873
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    .line 883
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 886
    :cond_8
    :goto_8
    return-void

    .line 876
    :pswitch_9
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_0:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1000(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 877
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_0:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1000(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 878
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_1:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 879
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_1:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_8

    .line 873
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
