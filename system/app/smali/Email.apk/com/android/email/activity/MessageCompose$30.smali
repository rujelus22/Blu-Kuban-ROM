.class Lcom/android/email/activity/MessageCompose$30;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onShowAccountDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .registers 2
    .parameter

    .prologue
    .line 8708
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 15
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 8713
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    if-eqz v7, :cond_24

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    iget-wide v8, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$10900(Lcom/android/email/activity/MessageCompose;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/email/activity/MessageCompose$AccountInfoItem;

    invoke-virtual {v7}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getAccountId()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2a

    .line 8715
    :cond_24
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v8, 0x1

    #setter for: Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z
    invoke-static {v7, v8}, Lcom/android/email/activity/MessageCompose;->access$11002(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 8717
    :cond_2a
    new-instance v5, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    iget-object v7, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 8723
    .local v5, originalAddress:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v7

    and-int/lit16 v7, v7, 0x200

    if-eqz v7, :cond_1b5

    const/4 v3, 0x1

    .line 8724
    .local v3, flagsCc:Z
    :goto_46
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v7

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_1b8

    const/4 v2, 0x1

    .line 8726
    .local v2, flagsBcc:Z
    :goto_55
    if-eqz v3, :cond_60

    .line 8727
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$2200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->removeButton(Ljava/lang/String;)V

    .line 8729
    :cond_60
    if-eqz v2, :cond_6b

    .line 8730
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$2400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->removeButton(Ljava/lang/String;)V

    .line 8732
    :cond_6b
    if-nez v3, :cond_6f

    if-eqz v2, :cond_74

    .line 8733
    :cond_6f
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$11100(Lcom/android/email/activity/MessageCompose;)V

    .line 8738
    :cond_74
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$10900(Lcom/android/email/activity/MessageCompose;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/email/activity/MessageCompose$AccountInfoItem;

    invoke-virtual {v7}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getAccountId()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    #setter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v8, v7}, Lcom/android/email/activity/MessageCompose;->access$5902(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 8745
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->setFromAccount()V
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$7000(Lcom/android/email/activity/MessageCompose;)V

    .line 8748
    :try_start_94
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    #calls: Lcom/android/email/activity/MessageCompose;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    invoke-static {v7, v8}, Lcom/android/email/activity/MessageCompose;->access$6900(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    :try_end_9f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_94 .. :try_end_9f} :catch_1bb

    .line 8754
    :goto_9f
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    if-eqz v7, :cond_c9

    .line 8759
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v0

    .line 8761
    .local v0, accountFlag:I
    and-int/lit16 v7, v0, 0x200

    if-eqz v7, :cond_1ca

    const/4 v3, 0x1

    .line 8765
    :goto_b6
    and-int/lit16 v7, v0, 0x400

    if-eqz v7, :cond_1cd

    const/4 v2, 0x1

    .line 8770
    :goto_bb
    const-string v7, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d0

    .line 8785
    .end local v0           #accountFlag:I
    :cond_c9
    :goto_c9
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->IsEAS()Z
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$4900(Lcom/android/email/activity/MessageCompose;)Z

    move-result v7

    if-nez v7, :cond_20a

    .line 8786
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$10500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/email/activity/ToolBarScrollView;->SetEASIconDisplay(Z)V

    .line 8787
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$2600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/email/activity/ToolBarScrollView;->SetEASIconDisplay(Z)V

    .line 8789
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v8, 0x0

    const/4 v9, 0x0

    #calls: Lcom/android/email/activity/MessageCompose;->changeSmimeOptions(ZZ)V
    invoke-static {v7, v8, v9}, Lcom/android/email/activity/MessageCompose;->access$11200(Lcom/android/email/activity/MessageCompose;ZZ)V

    .line 8791
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v8, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/email/activity/MessageCompose;->access$1102(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    .line 8794
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    if-eqz v7, :cond_144

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Lcom/android/email/adapter/ProtocolAdapter;->isSevenAccount(J)Z

    move-result v7

    if-eqz v7, :cond_144

    .line 8795
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v8, 0x1

    #setter for: Lcom/android/email/activity/MessageCompose;->mPriority:I
    invoke-static {v7, v8}, Lcom/android/email/activity/MessageCompose;->access$4602(Lcom/android/email/activity/MessageCompose;I)I

    .line 8796
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$11300(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8797
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$11400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8799
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v8, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->mIsReadChecked:Z
    invoke-static {v7, v8}, Lcom/android/email/activity/MessageCompose;->access$4702(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 8800
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v8, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->mIsDeliveryChecked:Z
    invoke-static {v7, v8}, Lcom/android/email/activity/MessageCompose;->access$4802(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 8801
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v8, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->bIsReadChecked:Z
    invoke-static {v7, v8}, Lcom/android/email/activity/MessageCompose;->access$11502(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 8802
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v8, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->bIsDeliveryChecked:Z
    invoke-static {v7, v8}, Lcom/android/email/activity/MessageCompose;->access$11602(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 8818
    :cond_144
    :goto_144
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_18b

    .line 8819
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    iget v6, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 8820
    .local v6, tempFlags:I
    const/4 v7, 0x1

    new-array v4, v7, [J

    .line 8821
    .local v4, messageIds:[J
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v8

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    aput-wide v8, v4, v7

    .line 8822
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$5800(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v8

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/email/Controller;->deleteMessage([JJ)V

    .line 8823
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v8, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v8}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    #setter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v7, v8}, Lcom/android/email/activity/MessageCompose;->access$1702(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 8826
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    iput v6, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 8830
    .end local v4           #messageIds:[J
    .end local v6           #tempFlags:I
    :cond_18b
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 8832
    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_1b4

    .line 8833
    const-string v7, "Compose >>"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onShowAccountDialog : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8835
    :cond_1b4
    return-void

    .line 8723
    .end local v2           #flagsBcc:Z
    .end local v3           #flagsCc:Z
    :cond_1b5
    const/4 v3, 0x0

    goto/16 :goto_46

    .line 8724
    .restart local v3       #flagsCc:Z
    :cond_1b8
    const/4 v2, 0x0

    goto/16 :goto_55

    .line 8749
    .restart local v2       #flagsBcc:Z
    :catch_1bb
    move-exception v1

    .line 8750
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "Email"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8751
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_9f

    .line 8761
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #accountFlag:I
    :cond_1ca
    const/4 v3, 0x0

    goto/16 :goto_b6

    .line 8765
    :cond_1cd
    const/4 v2, 0x0

    goto/16 :goto_bb

    .line 8775
    :cond_1d0
    if-eqz v3, :cond_1ed

    .line 8776
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$2200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButtonAfterDuplicateCheck(Ljava/lang/String;Z)Z

    .line 8777
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$11100(Lcom/android/email/activity/MessageCompose;)V

    goto/16 :goto_c9

    .line 8778
    :cond_1ed
    if-eqz v2, :cond_c9

    .line 8779
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$2400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButtonAfterDuplicateCheck(Ljava/lang/String;Z)Z

    .line 8780
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$11100(Lcom/android/email/activity/MessageCompose;)V

    goto/16 :goto_c9

    .line 8805
    .end local v0           #accountFlag:I
    :cond_20a
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$10500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/email/activity/ToolBarScrollView;->SetEASIconDisplay(Z)V

    .line 8806
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$2600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/email/activity/ToolBarScrollView;->SetEASIconDisplay(Z)V

    .line 8808
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$6100(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    if-eqz v7, :cond_251

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$6100(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    :goto_236
    #calls: Lcom/android/email/activity/MessageCompose;->configureSmimeOptions(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    invoke-static {v8, v7}, Lcom/android/email/activity/MessageCompose;->access$6800(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 8811
    if-eqz v5, :cond_144

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    iget-object v7, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_144

    .line 8813
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v8, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/email/activity/MessageCompose;->access$1102(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_144

    .line 8808
    :cond_251
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    goto :goto_236
.end method
