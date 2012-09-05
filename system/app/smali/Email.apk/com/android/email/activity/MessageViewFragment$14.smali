.class Lcom/android/email/activity/MessageViewFragment$14;
.super Ljava/lang/Object;
.source "MessageViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragment;->onRespondToInvite(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragment;

.field final synthetic val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

.field final synthetic val$response:I

.field final synthetic val$toastResId:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragment;IILcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1380
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragment$14;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iput p2, p0, Lcom/android/email/activity/MessageViewFragment$14;->val$response:I

    iput p3, p0, Lcom/android/email/activity/MessageViewFragment$14;->val$toastResId:I

    iput-object p4, p0, Lcom/android/email/activity/MessageViewFragment$14;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "arg0"
    .parameter "pos"

    .prologue
    const v1, 0x7f0800b5

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1384
    packed-switch p2, :pswitch_data_ae

    .line 1424
    :goto_8
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$14;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment$14;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #setter for: Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponseMsgId:J
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragment;->access$002(Lcom/android/email/activity/MessageViewFragment;J)J

    .line 1426
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseFragmentTransaction()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1427
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$14;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1428
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$14;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1429
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$14;->this$0:Lcom/android/email/activity/MessageViewFragment;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragment;->setCurrentTab(I)V

    .line 1431
    :cond_2c
    :goto_2c
    return-void

    .line 1386
    :pswitch_2d
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$14;->this$0:Lcom/android/email/activity/MessageViewFragment;

    #getter for: Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragment;->access$600(Lcom/android/email/activity/MessageViewFragment;)Lcom/android/email/activity/MessageViewFragment$Callback;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageViewFragment$14;->val$response:I

    or-int/lit8 v1, v1, 0x20

    invoke-interface {v0, v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onRespondedToInvite(I)V

    goto :goto_8

    .line 1390
    :pswitch_3b
    invoke-static {}, Lcom/android/email/EmailUtility;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_60

    .line 1391
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$14;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 1393
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$14;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingYes:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1394
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$14;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingMaybe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1395
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$14;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingNo:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2c

    .line 1399
    :cond_60
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$14;->this$0:Lcom/android/email/activity/MessageViewFragment;

    #getter for: Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragment;->access$600(Lcom/android/email/activity/MessageViewFragment;)Lcom/android/email/activity/MessageViewFragment$Callback;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageViewFragment$14;->val$response:I

    or-int/lit8 v1, v1, 0x40

    invoke-interface {v0, v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onRespondedToInvite(I)V

    .line 1402
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$14;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageViewFragment$14;->val$toastResId:I

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    goto :goto_8

    .line 1407
    :pswitch_79
    invoke-static {}, Lcom/android/email/EmailUtility;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 1408
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$14;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 1410
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$14;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingYes:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1411
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$14;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingMaybe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1412
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$14;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingNo:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2c

    .line 1415
    :cond_9e
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$14;->this$0:Lcom/android/email/activity/MessageViewFragment;

    #getter for: Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragment;->access$600(Lcom/android/email/activity/MessageViewFragment;)Lcom/android/email/activity/MessageViewFragment$Callback;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageViewFragment$14;->val$response:I

    or-int/lit8 v1, v1, 0x10

    invoke-interface {v0, v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onRespondedToInvite(I)V

    goto/16 :goto_8

    .line 1384
    nop

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_3b
        :pswitch_79
    .end packed-switch
.end method
