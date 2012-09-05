.class Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;
.super Ljava/lang/Object;
.source "SocialHubSendMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 565
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 14
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const v8, 0x7f0800b7

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 568
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->miSpType:I
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v4

    .line 570
    .local v4, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/4 v5, 0x7

    :try_start_10
    invoke-interface {v4, v5}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z
    :try_end_13
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_10 .. :try_end_13} :catch_17

    move-result v5

    if-eq v5, v10, :cond_1b

    .line 639
    :cond_16
    :goto_16
    return-void

    .line 572
    :catch_17
    move-exception v2

    .line 573
    .local v2, e1:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v2}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    .line 575
    .end local v2           #e1:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :cond_1b
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bhasFocus:Z
    invoke-static {v5, p2}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$702(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;Z)Z

    .line 576
    if-eqz p2, :cond_12d

    .line 578
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$800(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, RecipientText:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_99

    .line 581
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bhasFocused:Z
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$900(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Z

    move-result v5

    if-nez v5, :cond_ea

    .line 584
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$1000(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 585
    .local v1, ab:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 586
    new-instance v5, Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$1000(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800b8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$1000(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 588
    .local v3, message:Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 589
    const v5, 0x104000a

    new-instance v6, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3$1;

    invoke-direct {v6, p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3$1;-><init>(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 598
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 606
    .end local v1           #ab:Landroid/app/AlertDialog$Builder;
    .end local v3           #message:Ljava/lang/String;
    :cond_99
    :goto_99
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Lcom/sec/android/socialhub/view/RecipientsListLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getRecipientsCount()I

    move-result v5

    if-eqz v5, :cond_16

    .line 608
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsListLayout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$1100(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 609
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mSubjectText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mSubjectText:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 610
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Lcom/sec/android/socialhub/view/RecipientsListLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getRecipientsCount()I

    move-result v5

    if-ne v5, v10, :cond_f0

    .line 616
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$800(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v6

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Lcom/sec/android/socialhub/view/RecipientsListLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getRecipientsName()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 602
    :cond_ea
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bhasFocused:Z
    invoke-static {v5, v9}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$902(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;Z)Z

    goto :goto_99

    .line 620
    :cond_f0
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$800(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    const v7, 0x7f0800b3

    invoke-virtual {v6, v7}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;
    invoke-static {v8}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Lcom/sec/android/socialhub/view/RecipientsListLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getRecipientsName()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;
    invoke-static {v8}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Lcom/sec/android/socialhub/view/RecipientsListLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getRecipientsCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 632
    .end local v0           #RecipientText:Ljava/lang/String;
    :cond_12d
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Lcom/sec/android/socialhub/view/RecipientsListLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getRecipientsCount()I

    move-result v5

    if-eqz v5, :cond_14c

    .line 634
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsListLayout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$1100(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 635
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$800(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    :cond_14c
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->bhasFocused:Z
    invoke-static {v5, v9}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$902(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;Z)Z

    goto/16 :goto_16
.end method
