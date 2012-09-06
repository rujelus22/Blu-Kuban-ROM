.class Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "HostedStreamOneUpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1556
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1556
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    return-void
.end method

.method private handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 1714
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPendingRequestId:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$700(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPendingRequestId:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$700(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_15

    .line 1786
    :cond_14
    :goto_14
    return-void

    .line 1718
    :cond_15
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPendingRequestId:Ljava/lang/Integer;
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$702(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1720
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->dismissPendingDialog()V
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$1900(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)V

    .line 1722
    if-eqz p2, :cond_63

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 1724
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mOperationType:I
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$2200(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)I

    move-result v1

    sparse-switch v1, :sswitch_data_78

    .line 1766
    const v0, 0x7f0801ae

    .line 1771
    .local v0, resId:I
    :goto_34
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$800(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_14

    .line 1726
    .end local v0           #resId:I
    :sswitch_43
    const v0, 0x7f0801a1

    .line 1727
    .restart local v0       #resId:I
    goto :goto_34

    .line 1731
    .end local v0           #resId:I
    :sswitch_47
    const v0, 0x7f08019f

    .line 1732
    .restart local v0       #resId:I
    goto :goto_34

    .line 1736
    .end local v0           #resId:I
    :sswitch_4b
    const v0, 0x7f0801a5

    .line 1737
    .restart local v0       #resId:I
    goto :goto_34

    .line 1741
    .end local v0           #resId:I
    :sswitch_4f
    const v0, 0x7f0801a6

    .line 1742
    .restart local v0       #resId:I
    goto :goto_34

    .line 1746
    .end local v0           #resId:I
    :sswitch_53
    const v0, 0x7f08019b

    .line 1747
    .restart local v0       #resId:I
    goto :goto_34

    .line 1751
    .end local v0           #resId:I
    :sswitch_57
    const v0, 0x7f08019d

    .line 1752
    .restart local v0       #resId:I
    goto :goto_34

    .line 1756
    .end local v0           #resId:I
    :sswitch_5b
    const v0, 0x7f08019e

    .line 1757
    .restart local v0       #resId:I
    goto :goto_34

    .line 1761
    .end local v0           #resId:I
    :sswitch_5f
    const v0, 0x7f0801a9

    .line 1762
    .restart local v0       #resId:I
    goto :goto_34

    .line 1773
    .end local v0           #resId:I
    :cond_63
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mOperationType:I
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$2200(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)I

    move-result v1

    packed-switch v1, :pswitch_data_9a

    goto :goto_14

    .line 1777
    :pswitch_6d
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_14

    .line 1724
    nop

    :sswitch_data_78
    .sparse-switch
        0x10 -> :sswitch_47
        0x11 -> :sswitch_4b
        0x12 -> :sswitch_4f
        0x13 -> :sswitch_43
        0x20 -> :sswitch_53
        0x21 -> :sswitch_57
        0x22 -> :sswitch_5b
        0x30 -> :sswitch_5f
    .end sparse-switch

    .line 1773
    :pswitch_data_9a
    .packed-switch 0x10
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
    .end packed-switch
.end method


# virtual methods
.method public onCreateComment(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 13
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentId"
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    .line 1601
    invoke-virtual {p5}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1602
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$300(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 1604
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$300(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1622
    :cond_18
    invoke-direct {p0, p1, p5}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 1623
    :goto_1b
    return-void

    .line 1607
    :cond_1c
    invoke-virtual {p5}, Lcom/google/android/apps/plus/service/ServiceResult;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 1608
    .local v1, exception:Ljava/lang/Exception;
    instance-of v2, v1, Lcom/google/android/apps/plus/api/ServerException;

    if-eqz v2, :cond_18

    check-cast v1, Lcom/google/android/apps/plus/api/ServerException;

    .end local v1           #exception:Ljava/lang/Exception;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/ServerException;->getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    move-result-object v2

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->ES_STREAM_POST_RESTRICTIONS_NOT_SUPPORTED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    if-ne v2, v3, :cond_18

    .line 1611
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->dismissPendingDialog()V
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$1900(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)V

    .line 1612
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    const v3, 0x7f0801a4

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    const v4, 0x7f0801a3

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    const v5, 0x7f080209

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v6}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1616
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1617
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "StreamPostRestrictionsNotSupported"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public onCreatePostPlusOne(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 8
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 1681
    if-eqz p4, :cond_19

    invoke-virtual {p4}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1682
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$800(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0801a7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1684
    :cond_19
    return-void
.end method

.method public onDeleteActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 1640
    invoke-direct {p0, p1, p4}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 1641
    return-void
.end method

.method public onDeleteComments(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentIds"
    .parameter "result"

    .prologue
    .line 1658
    invoke-direct {p0, p1, p5}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 1659
    return-void
.end method

.method public onDeletePostPlusOne(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 8
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 1689
    if-eqz p4, :cond_19

    invoke-virtual {p4}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1690
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$800(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0801a8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1693
    :cond_19
    return-void
.end method

.method public onEditActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 1595
    invoke-direct {p0, p1, p4}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 1596
    return-void
.end method

.method public onEditComment(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentId"
    .parameter "result"

    .prologue
    .line 1628
    invoke-direct {p0, p1, p5}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 1629
    return-void
.end method

.method public onGetActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 11
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 1560
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$1000(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1590
    :cond_c
    :goto_c
    return-void

    .line 1564
    :cond_d
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityRequestId:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$1700(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityRequestId:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$1700(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_2c

    .line 1565
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    const/4 v4, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityRequestId:Ljava/lang/Integer;
    invoke-static {v3, v4}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$1702(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1566
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->updateProgressIndicator()V

    .line 1569
    :cond_2c
    invoke-virtual {p4}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1571
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "notif_type"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1574
    .local v1, notifType:Ljava/lang/String;
    if-eqz v1, :cond_77

    .line 1575
    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    move-result-object v2

    .line 1580
    .local v2, type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    :goto_48
    if-eqz v2, :cond_79

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->HANGOUT:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    if-ne v2, v3, :cond_79

    .line 1581
    const v0, 0x7f0801e0

    .line 1585
    .local v0, msgId:I
    :goto_51
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$800(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    invoke-virtual {v4, v0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1586
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mFinishOnError:Z
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$1800(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1587
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_c

    .line 1577
    .end local v0           #msgId:I
    .end local v2           #type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    :cond_77
    const/4 v2, 0x0

    .restart local v2       #type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    goto :goto_48

    .line 1583
    :cond_79
    const v0, 0x7f0801df

    .restart local v0       #msgId:I
    goto :goto_51
.end method

.method public onGetActivityAudience(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/api/AudienceData;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "audienceData"
    .parameter "result"

    .prologue
    .line 1698
    invoke-virtual {p5}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-nez v0, :cond_12

    if-eqz p4, :cond_12

    .line 1699
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAudienceData:Lcom/google/android/apps/plus/api/AudienceData;
    invoke-static {v0, p4}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$2002(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;Lcom/google/android/apps/plus/api/AudienceData;)Lcom/google/android/apps/plus/api/AudienceData;

    .line 1700
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->showAudience(Lcom/google/android/apps/plus/api/AudienceData;)V
    invoke-static {v0, p4}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$2100(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;Lcom/google/android/apps/plus/api/AudienceData;)V

    .line 1703
    :cond_12
    invoke-direct {p0, p1, p5}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 1704
    return-void
.end method

.method public onModerateComments(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentIds"
    .parameter "result"

    .prologue
    .line 1664
    invoke-direct {p0, p1, p5}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 1665
    return-void
.end method

.method public onMuteActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 1646
    invoke-direct {p0, p1, p4}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 1647
    return-void
.end method

.method public onPlusOneComment(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 10
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentId"
    .parameter "plusOne"
    .parameter "result"

    .prologue
    .line 1671
    if-eqz p6, :cond_1b

    invoke-virtual {p6}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1672
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$800(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Landroid/content/Context;

    move-result-object v1

    if-eqz p5, :cond_1c

    const v0, 0x7f0801a7

    :goto_13
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1676
    :cond_1b
    return-void

    .line 1672
    :cond_1c
    const v0, 0x7f0801a8

    goto :goto_13
.end method

.method public onReportActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 1652
    invoke-direct {p0, p1, p4}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 1653
    return-void
.end method

.method public onReshareActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 1634
    invoke-direct {p0, p1, p4}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 1635
    return-void
.end method
