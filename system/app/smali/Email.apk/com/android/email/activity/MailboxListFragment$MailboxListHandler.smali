.class Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;
.super Landroid/os/Handler;
.source "MailboxListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MailboxListHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 2071
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 2080
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_52

    .line 2103
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2105
    :cond_9
    :goto_9
    return-void

    .line 2082
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2083
    .local v1, message:Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 2084
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$800(Lcom/android/email/activity/MailboxListFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_9

    .line 2089
    .end local v1           #message:Ljava/lang/String;
    :pswitch_22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2090
    .local v0, error:Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 2091
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$800(Lcom/android/email/activity/MailboxListFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_9

    .line 2096
    .end local v0           #error:Ljava/lang/String;
    :pswitch_3a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 2097
    .local v2, string:Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 2098
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$800(Lcom/android/email/activity/MailboxListFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_9

    .line 2080
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_a
        :pswitch_22
        :pswitch_3a
    .end packed-switch
.end method

.method public showErrorBanner(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 2132
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2133
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2134
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2135
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2136
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 2108
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2109
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2110
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2111
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2112
    return-void
.end method
