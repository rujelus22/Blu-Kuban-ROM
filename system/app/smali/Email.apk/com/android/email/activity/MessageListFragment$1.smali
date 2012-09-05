.class Lcom/android/email/activity/MessageListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const v9, 0x7f08039b

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 704
    if-eqz p2, :cond_6b

    .line 705
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_6b

    .line 707
    const-string v5, "android.intent.action.EMAILSEARCH_COMPLETED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 709
    const-string v5, "SearchResult"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 710
    .local v2, result:I
    const-string v5, "Total"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 711
    .local v4, total:I
    const-string v5, "StartRange"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 712
    .local v3, startRange:I
    const-string v5, "EndRange"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 713
    .local v1, endRange:I
    const-string v5, "MessageListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " total = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "startRange = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "endRange ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    if-ne v2, v8, :cond_6c

    .line 717
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->count:I
    invoke-static {v5, v4}, Lcom/android/email/activity/MessageListFragment;->access$102(Lcom/android/email/activity/MessageListFragment;I)I

    .line 745
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #endRange:I
    .end local v2           #result:I
    .end local v3           #startRange:I
    .end local v4           #total:I
    :cond_6b
    :goto_6b
    return-void

    .line 719
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #endRange:I
    .restart local v2       #result:I
    .restart local v3       #startRange:I
    .restart local v4       #total:I
    :cond_6c
    const/16 v5, 0xd

    if-ne v2, v5, :cond_87

    .line 720
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    const v7, 0x7f08052d

    invoke-virtual {v6, v7}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_6b

    .line 722
    :cond_87
    const/16 v5, 0xc

    if-ne v2, v5, :cond_a2

    .line 723
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    const v7, 0x7f080398

    invoke-virtual {v6, v7}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_6b

    .line 726
    :cond_a2
    const/16 v5, 0xb

    if-ne v2, v5, :cond_ba

    .line 727
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v6, v9}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_6b

    .line 729
    :cond_ba
    const/16 v5, 0xa

    if-ne v2, v5, :cond_d5

    .line 730
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    const v7, 0x7f08039a

    invoke-virtual {v6, v7}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_6b

    .line 732
    :cond_d5
    const/16 v5, 0x8

    if-ne v2, v5, :cond_f1

    .line 733
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    const v7, 0x7f080399

    invoke-virtual {v6, v7}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6b

    .line 736
    :cond_f1
    const/4 v5, 0x3

    if-ne v2, v5, :cond_6b

    .line 737
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v6, v9}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6b
.end method
