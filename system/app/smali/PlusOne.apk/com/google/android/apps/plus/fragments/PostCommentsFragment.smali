.class public Lcom/google/android/apps/plus/fragments/PostCommentsFragment;
.super Lcom/google/android/apps/plus/fragments/EsListFragment;
.source "PostCommentsFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
.implements Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog$CommentEditDialogListener;
.implements Lcom/google/android/apps/plus/views/CommentRowView$PlusOnePeopleClickHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/PostCommentsFragment$MyTextWatcher;,
        Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;,
        Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;,
        Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsListFragment",
        "<",
        "Landroid/widget/ListView;",
        "Lcom/google/android/apps/plus/phone/CommentsAdapter;",
        ">;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;",
        "Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog$CommentEditDialogListener;",
        "Lcom/google/android/apps/plus/views/CommentRowView$PlusOnePeopleClickHandler;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mActionCallback:Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;

.field private mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

.field private mActivityId:Ljava/lang/String;

.field private mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

.field private mAudienceData:Lcom/google/android/apps/plus/api/AudienceData;

.field private mAutoPlay:Z

.field private mCommentButton:Landroid/view/View;

.field private mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

.field private mCommentsUri:Landroid/net/Uri;

.field private mFinishOnError:Z

.field private mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

.field private mOperationType:I

.field private mPendingRequestId:Ljava/lang/Integer;

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mRefreshReqId:Ljava/lang/Integer;

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mStreamClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;-><init>()V

    .line 141
    new-instance v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;Lcom/google/android/apps/plus/fragments/PostCommentsFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mFinishOnError:Z

    .line 435
    new-instance v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;-><init>(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActionCallback:Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;

    .line 1650
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/api/AudienceData;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAudienceData:Lcom/google/android/apps/plus/api/AudienceData;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;Lcom/google/android/apps/plus/api/AudienceData;)Lcom/google/android/apps/plus/api/AudienceData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAudienceData:Lcom/google/android/apps/plus/api/AudienceData;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/views/StreamRowView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mPendingRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mPendingRequestId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->showProgressDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;Lcom/google/android/apps/plus/api/AudienceData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->showAudience(Lcom/google/android/apps/plus/api/AudienceData;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mRefreshReqId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mRefreshReqId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mProgressView:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mFinishOnError:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    return-object v0
.end method

.method private handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_d

    .line 1639
    :cond_c
    :goto_c
    return-void

    .line 1554
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1556
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "req_pending"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 1558
    if-eqz v0, :cond_26

    .line 1559
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 1560
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-static {v0}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 1563
    :cond_26
    if-eqz p2, :cond_67

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1565
    iget v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mOperationType:I

    packed-switch v0, :pswitch_data_80

    .line 1612
    :pswitch_33
    const v0, 0x7f070119

    .line 1617
    :goto_36
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 1567
    :pswitch_43
    const v0, 0x7f07010f

    .line 1568
    goto :goto_36

    .line 1572
    :pswitch_47
    const v0, 0x7f07010d

    .line 1573
    goto :goto_36

    .line 1577
    :pswitch_4b
    const v0, 0x7f070110

    .line 1578
    goto :goto_36

    .line 1582
    :pswitch_4f
    const v0, 0x7f070111

    .line 1583
    goto :goto_36

    .line 1587
    :pswitch_53
    const v0, 0x7f070109

    .line 1588
    goto :goto_36

    .line 1592
    :pswitch_57
    const v0, 0x7f07010a

    .line 1593
    goto :goto_36

    .line 1597
    :pswitch_5b
    const v0, 0x7f07010b

    .line 1598
    goto :goto_36

    .line 1602
    :pswitch_5f
    const v0, 0x7f07010c

    .line 1603
    goto :goto_36

    .line 1607
    :pswitch_63
    const v0, 0x7f070114

    .line 1608
    goto :goto_36

    .line 1619
    :cond_67
    iget v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mOperationType:I

    sparse-switch v0, :sswitch_data_aa

    goto :goto_c

    .line 1623
    :sswitch_6d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_c

    .line 1628
    :sswitch_75
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v0, :cond_c

    .line 1629
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    goto :goto_c

    .line 1565
    nop

    :pswitch_data_80
    .packed-switch 0x2
        :pswitch_47
        :pswitch_4b
        :pswitch_4f
        :pswitch_43
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_53
        :pswitch_57
        :pswitch_5b
        :pswitch_5f
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_63
    .end packed-switch

    .line 1619
    :sswitch_data_aa
    .sparse-switch
        0x2 -> :sswitch_6d
        0x3 -> :sswitch_6d
        0x4 -> :sswitch_6d
        0xb -> :sswitch_75
    .end sparse-switch
.end method

.method private refresh()V
    .registers 4

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mRefreshReqId:Ljava/lang/Integer;

    if-nez v0, :cond_16

    .line 1039
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->getActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mRefreshReqId:Ljava/lang/Integer;

    .line 1042
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 1043
    return-void
.end method

.method private showAudience(Lcom/google/android/apps/plus/api/AudienceData;)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1478
    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/AudienceData;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v2

    .line 1480
    const-string v0, "PostCommentsFragment"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 1481
    const-string v0, "PostCommentsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Description: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/AudienceData;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    const-string v0, "PostCommentsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hidden count text: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/AudienceData;->getHiddenCountText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    const-string v0, "PostCommentsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audience circles: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1485
    :goto_63
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleCount()I

    move-result v3

    if-ge v0, v3, :cond_8c

    .line 1486
    const-string v3, "PostCommentsFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Circles: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircle(I)Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 1489
    :cond_8c
    const-string v0, "PostCommentsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audience users: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    :goto_a8
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v0

    if-ge v1, v0, :cond_d1

    .line 1491
    const-string v0, "PostCommentsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Users: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUser(I)Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    add-int/lit8 v1, v1, 0x1

    goto :goto_a8

    .line 1495
    :cond_d1
    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/AudienceData;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_103

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleCount()I

    move-result v0

    if-nez v0, :cond_103

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v0

    if-nez v0, :cond_103

    .line 1497
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/StreamRowView;->getAclDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/AudienceData;->getDescription()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070168

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1500
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "acl"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1511
    :goto_102
    return-void

    .line 1503
    :cond_103
    new-instance v0, Lcom/google/android/apps/plus/fragments/AclFragment;

    invoke-direct {v0}, Lcom/google/android/apps/plus/fragments/AclFragment;-><init>()V

    .line 1504
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1505
    const-string v2, "account"

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1506
    const-string v2, "audience"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1507
    const-string v2, "acl_display"

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/StreamRowView;->getAclDisplay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/AclFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1509
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "acl"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AclFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_102
.end method

.method private showProgressDialog(I)V
    .registers 5
    .parameter

    .prologue
    .line 1534
    iput p1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mOperationType:I

    .line 1536
    const/4 v1, 0x0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_1d

    const v0, 0x7f070096

    :goto_a
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    .line 1540
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1541
    return-void

    .line 1536
    :cond_1d
    const v0, 0x7f07011a

    goto :goto_a
.end method


# virtual methods
.method varargs confirmDeleteComments([Ljava/lang/String;)V
    .registers 7
    .parameter "commentIds"

    .prologue
    .line 695
    const v1, 0x7f0700f1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    array-length v1, p1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3b

    const v1, 0x7f0700f6

    :goto_e
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f070168

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f070169

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 700
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 701
    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "comments"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 702
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "remove_comment"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 703
    return-void

    .line 695
    .end local v0           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :cond_3b
    const v1, 0x7f0700f7

    goto :goto_e
.end method

.method varargs confirmReportComments(Z[Ljava/lang/String;)V
    .registers 8
    .parameter "delete"
    .parameter "commentIds"

    .prologue
    .line 712
    const v1, 0x7f0700f0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    array-length v1, p2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_44

    const v1, 0x7f0700f8

    :goto_e
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f070168

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f070169

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 717
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 718
    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "comments"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 719
    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "delete"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 720
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "report_comment"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 721
    return-void

    .line 712
    .end local v0           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :cond_44
    const v1, 0x7f0700f9

    goto :goto_e
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 1361
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_50

    .line 1383
    :cond_7
    :goto_7
    return-void

    .line 1363
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1364
    .local v4, commentText:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_49

    .line 1365
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-nez v0, :cond_7

    .line 1366
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_UP_POST_COMMENT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1367
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getMentions()Ljava/util/ArrayList;

    move-result-object v5

    .line 1368
    .local v5, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    const/16 v3, 0x20

    invoke-static {v3}, Lcom/google/android/apps/plus/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->createComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1371
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->showProgressDialog(I)V

    goto :goto_7

    .line 1374
    .end local v5           #mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    :cond_49
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_7

    .line 1361
    :pswitch_data_50
    .packed-switch 0x7f0d008c
        :pswitch_8
    .end packed-switch
.end method

.method public onCommentEditComplete(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 10
    .parameter "commentId"
    .parameter "comment"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1392
    .local p3, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->editComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1394
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->showProgressDialog(I)V

    .line 1395
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 14
    .parameter "item"

    .prologue
    .line 1303
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v8

    check-cast v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_6} :catch_c

    .line 1309
    .local v8, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v0, v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-nez v0, :cond_f

    .line 1310
    const/4 v0, 0x0

    .line 1351
    .end local v8           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_b
    return v0

    .line 1304
    :catch_c
    move-exception v7

    .line 1305
    .local v7, e:Ljava/lang/ClassCastException;
    const/4 v0, 0x0

    goto :goto_b

    .line 1314
    .end local v7           #e:Ljava/lang/ClassCastException;
    .restart local v8       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    iget v1, v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 1316
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/CommentsAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getCommentId()Ljava/lang/String;

    move-result-object v3

    .line 1317
    .local v3, commentId:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_98

    .line 1351
    const/4 v0, 0x0

    goto :goto_b

    .line 1319
    :pswitch_29
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/CommentsAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getContentHtml()Ljava/lang/String;

    move-result-object v6

    .line 1320
    .local v6, content:Ljava/lang/String;
    invoke-virtual {p0, v3, v6}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->openCommentEditor(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    const/4 v0, 0x1

    goto :goto_b

    .line 1325
    .end local v6           #content:Ljava/lang/String;
    :pswitch_36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->confirmDeleteComments([Ljava/lang/String;)V

    .line 1326
    const/4 v0, 0x1

    goto :goto_b

    .line 1330
    :pswitch_41
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/CommentsAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getAuthorId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v10

    cmp-long v0, v0, v10

    if-nez v0, :cond_5f

    const/4 v0, 0x1

    :goto_54
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->confirmReportComments(Z[Ljava/lang/String;)V

    .line 1331
    const/4 v0, 0x1

    goto :goto_b

    .line 1330
    :cond_5f
    const/4 v0, 0x0

    goto :goto_54

    .line 1335
    :pswitch_61
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->plusOneComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1337
    const/4 v0, 0x1

    goto :goto_b

    .line 1341
    :pswitch_70
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/CommentsAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getPlusOneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v9

    .line 1342
    .local v9, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    if-eqz v9, :cond_95

    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->hasPlusoneId()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v4

    .line 1345
    .local v4, plusOneId:Ljava/lang/String;
    :goto_84
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->plusOneComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1347
    const/4 v0, 0x1

    goto/16 :goto_b

    .line 1342
    .end local v4           #plusOneId:Ljava/lang/String;
    :cond_93
    const/4 v4, 0x0

    goto :goto_84

    :cond_95
    const/4 v4, 0x0

    goto :goto_84

    .line 1317
    nop

    :pswitch_data_98
    .packed-switch 0x2
        :pswitch_29
        :pswitch_36
        :pswitch_41
        :pswitch_61
        :pswitch_70
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 728
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 730
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 732
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "account"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 733
    const-string v3, "activity_id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    .line 734
    const-string v3, "auto_play_music"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAutoPlay:Z

    .line 736
    if-eqz p1, :cond_ac

    .line 737
    const-string v3, "post_request_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 738
    const-string v3, "post_request_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 741
    :cond_3c
    const-string v3, "audience"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 742
    const-string v3, "audience"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/api/AudienceData;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAudienceData:Lcom/google/android/apps/plus/api/AudienceData;

    .line 745
    :cond_4e
    const-string v3, "allow_auto_play"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 746
    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAutoPlay:Z

    const-string v4, "allow_auto_play"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAutoPlay:Z

    .line 749
    :cond_61
    const-string v3, "op_type"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mOperationType:I

    .line 750
    const-string v3, "finish_on_error"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mFinishOnError:Z

    .line 760
    :cond_71
    :goto_71
    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->COMMENTS_VIEW_BY_ACTIVITY_ID_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 761
    .local v0, cbuilder:Landroid/net/Uri$Builder;
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 762
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri$Builder;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri$Builder;

    .line 763
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentsUri:Landroid/net/Uri;

    .line 765
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 767
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0300a5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/StreamRowView;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    .line 770
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    const v4, 0x7f090003

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/views/StreamRowView;->setBackgroundResource(I)V

    .line 772
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->setHasOptionsMenu(Z)V

    .line 773
    return-void

    .line 752
    .end local v0           #cbuilder:Landroid/net/Uri$Builder;
    .end local v2           #layoutInflater:Landroid/view/LayoutInflater;
    :cond_ac
    const-string v3, "refresh"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 755
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/plus/service/EsService;->getActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mRefreshReqId:Ljava/lang/Integer;

    goto :goto_71
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 17
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 1251
    :try_start_2
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v2, v0
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_7} :catch_c

    .line 1257
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v7, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-gtz v7, :cond_e

    .line 1293
    .end local v2           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_b
    :goto_b
    return-void

    .line 1252
    :catch_c
    move-exception v1

    .line 1253
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_b

    .line 1262
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v2       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_e
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v7, Landroid/widget/ListView;

    iget v9, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 1264
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v7, Lcom/google/android/apps/plus/phone/CommentsAdapter;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getCommentId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/google/android/apps/plus/service/EsService;->isCommentPlusOnePending(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_45

    .line 1265
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v7, Lcom/google/android/apps/plus/phone/CommentsAdapter;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getPlusOneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v6

    .line 1266
    .local v6, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    if-eqz v6, :cond_90

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v7

    if-eqz v7, :cond_90

    move v4, v5

    .line 1267
    .local v4, myPlusOne:Z
    :goto_38
    if-eqz v4, :cond_92

    .line 1268
    const/4 v7, 0x6

    const v9, 0x7f0700ea

    invoke-virtual {p0, v9}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v8, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1276
    .end local v4           #myPlusOne:Z
    .end local v6           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_45
    :goto_45
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v7, Lcom/google/android/apps/plus/phone/CommentsAdapter;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getAuthorId()J

    move-result-wide v9

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v11

    cmp-long v7, v9, v11

    if-nez v7, :cond_9e

    move v3, v5

    .line 1277
    .local v3, myComment:Z
    :goto_58
    if-eqz v3, :cond_a0

    .line 1278
    const v7, 0x7f0700d9

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1279
    const/4 v7, 0x2

    const v9, 0x7f070108

    invoke-virtual {p0, v9}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {p1, v8, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1288
    :goto_6f
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v9

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/views/StreamRowView;->getAuthorId()J

    move-result-wide v11

    cmp-long v7, v9, v11

    if-nez v7, :cond_c2

    .line 1289
    .local v5, myPost:Z
    :goto_7f
    if-nez v5, :cond_83

    if-eqz v3, :cond_b

    .line 1290
    :cond_83
    const/4 v7, 0x3

    const v9, 0x7f0700f1

    invoke-virtual {p0, v9}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v8, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_b

    .end local v3           #myComment:Z
    .end local v5           #myPost:Z
    .restart local v6       #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_90
    move v4, v8

    .line 1266
    goto :goto_38

    .line 1271
    .restart local v4       #myPlusOne:Z
    :cond_92
    const/4 v7, 0x5

    const v9, 0x7f0700e9

    invoke-virtual {p0, v9}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v8, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_45

    .end local v4           #myPlusOne:Z
    .end local v6           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_9e
    move v3, v8

    .line 1276
    goto :goto_58

    .line 1282
    .restart local v3       #myComment:Z
    :cond_a0
    const v9, 0x7f0700d8

    new-array v10, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v7, Lcom/google/android/apps/plus/phone/CommentsAdapter;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getAuthorName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v8

    invoke-virtual {p0, v9, v10}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1284
    const/4 v7, 0x4

    const v9, 0x7f0700f0

    invoke-virtual {p0, v9}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v8, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_6f

    :cond_c2
    move v5, v8

    .line 1288
    goto :goto_7f
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 12
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 925
    packed-switch p1, :pswitch_data_3c

    move-object v0, v5

    .line 946
    :goto_5
    return-object v0

    .line 928
    :pswitch_6
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITY_VIEW_BY_ACTIVITY_ID_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 930
    .local v8, abuilder:Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 931
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v8, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri$Builder;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri$Builder;

    .line 933
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/phone/StreamAdapter$StreamQuery;->PROJECTION_ACTIVITY:[Ljava/lang/String;

    const-string v4, "data_state=0"

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 940
    .end local v8           #abuilder:Landroid/net/Uri$Builder;
    :pswitch_29
    new-instance v1, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentsUri:Landroid/net/Uri;

    sget-object v4, Lcom/google/android/apps/plus/phone/CommentsAdapter$CommentsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v7, "created ASC"

    move-object v6, v5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_5

    .line 925
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_29
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 781
    const v0, 0x7f03003d

    invoke-super {p0, p1, p2, p3, v0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v8

    .line 784
    .local v8, view:Landroid/view/View;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 785
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 787
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 788
    .local v1, context:Landroid/content/Context;
    new-instance v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;-><init>(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mStreamClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    .line 789
    new-instance v0, Lcom/google/android/apps/plus/phone/CommentsAdapter;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mListView:Landroid/widget/AbsListView;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mStreamClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/CommentsAdapter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/views/CommentRowView$PlusOnePeopleClickHandler;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    .line 791
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 794
    const v0, 0x7f0d00d6

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 796
    const v0, 0x7f0d008b

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 798
    new-instance v7, Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v7, v1, v0, v2}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 800
    .local v7, circleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;
    invoke-virtual {v7}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->initLoader()V

    .line 801
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    invoke-virtual {v0, p0, v7, v2, v3}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->init(Landroid/support/v4/app/Fragment;Lcom/google/android/apps/plus/fragments/CircleNameResolver;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 804
    const v0, 0x7f0d008c

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentButton:Landroid/view/View;

    .line 805
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentButton:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_c1

    move v0, v9

    :goto_88
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 808
    new-instance v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$MyTextWatcher;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentButton:Landroid/view/View;

    invoke-direct {v0, v2, v4}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$MyTextWatcher;-><init>(Landroid/view/View;Lcom/google/android/apps/plus/fragments/PostCommentsFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mTextWatcher:Landroid/text/TextWatcher;

    .line 809
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 810
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    new-instance v2, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 826
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_c3

    .line 828
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 834
    :goto_b0
    const v0, 0x7f0700fb

    invoke-virtual {p0, v8, v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 837
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v9, v4, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 838
    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 840
    return-object v8

    .line 806
    :cond_c1
    const/4 v0, 0x0

    goto :goto_88

    .line 830
    :cond_c3
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 831
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActionCallback:Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    goto :goto_b0
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 890
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 891
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 892
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->destroy()V

    .line 893
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 895
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 896
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentButton:Landroid/view/View;

    .line 897
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onDestroyView()V

    .line 898
    return-void
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1449
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1442
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v1, 0xb

    .line 1402
    const-string v0, "remove_dialog"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1403
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->deleteActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1404
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->showProgressDialog(I)V

    .line 1435
    :cond_20
    :goto_20
    return-void

    .line 1405
    :cond_21
    const-string v0, "remove_comment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1406
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_36

    .line 1407
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v0, :cond_36

    .line 1408
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 1412
    :cond_36
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    const-string v3, "comments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->deleteComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1414
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->showProgressDialog(I)V

    goto :goto_20

    .line 1415
    :cond_54
    const-string v0, "report_comment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1416
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_69

    .line 1417
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v0, :cond_69

    .line 1418
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 1422
    :cond_69
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    const-string v3, "comments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "delete"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->moderateComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;ZZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1425
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->showProgressDialog(I)V

    goto :goto_20

    .line 1426
    :cond_8f
    const-string v0, "mute_dialog"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 1427
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->muteActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1428
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->showProgressDialog(I)V

    goto/16 :goto_20

    .line 1429
    :cond_af
    const-string v0, "report_dialog"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 1430
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->reportActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1431
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->showProgressDialog(I)V

    goto/16 :goto_20

    .line 1432
    :cond_cf
    const-string v0, "quit"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1433
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_20
.end method

.method public onDiscard()V
    .registers 5

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    if-nez v0, :cond_c

    .line 1457
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 1470
    :goto_b
    return-void

    .line 1459
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1460
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4a

    .line 1461
    const v0, 0x7f0700f4

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0700f5

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07016a

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07016b

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1464
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1465
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "quit"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_b

    .line 1467
    :cond_4a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_b
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 15
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v7, 0x0

    const/16 v11, 0xb

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 956
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    .line 958
    .local v1, activity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_b2

    .line 1024
    :cond_12
    :goto_12
    return-void

    .line 960
    :pswitch_13
    if-eqz p2, :cond_7f

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 964
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mFinishOnError:Z

    .line 966
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->showContent(Landroid/view/View;)V

    .line 968
    const/16 v0, 0xa

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 969
    .local v10, locationBytes:[B
    if-eqz v10, :cond_32

    .line 971
    :try_start_2c
    invoke-static {v10}, Lcom/google/wireless/tacotruck/proto/Data$Location;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;
    :try_end_32
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2c .. :try_end_32} :catch_af

    .line 977
    :cond_32
    :goto_32
    const/16 v0, 0xf

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_70

    move v9, v5

    .line 979
    .local v9, canComment:Z
    :goto_3b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0d00d6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v9, :cond_72

    move v0, v6

    :goto_49
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 982
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mStreamClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    move-object v3, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/views/StreamRowView;->bindView(Lcom/google/android/apps/plus/views/StreamRowView;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;Lcom/google/android/apps/plus/views/ItemClickListener;ZZLjava/lang/String;)V

    .line 985
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_75

    .line 987
    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    .line 988
    .local v8, actionBar:Landroid/app/ActionBar;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/StreamRowView;->getAuthorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 994
    .end local v8           #actionBar:Landroid/app/ActionBar;
    :goto_67
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v7, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_12

    .end local v9           #canComment:Z
    :cond_70
    move v9, v6

    .line 977
    goto :goto_3b

    .line 979
    .restart local v9       #canComment:Z
    :cond_72
    const/16 v0, 0x8

    goto :goto_49

    .line 991
    :cond_75
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/StreamRowView;->getAuthorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->setTitlebarTitle(ILjava/lang/String;)V

    goto :goto_67

    .line 997
    .end local v9           #canComment:Z
    .end local v10           #locationBytes:[B
    :cond_7f
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/google/android/apps/plus/service/EsService;->getActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mRefreshReqId:Ljava/lang/Integer;

    goto :goto_12

    .line 1003
    :pswitch_8e
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/CommentsAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1005
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_a7

    .line 1007
    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->invalidateOptionsMenu()V

    .line 1009
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v0, :cond_12

    .line 1011
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->invalidate()V

    goto/16 :goto_12

    .line 1015
    :cond_a7
    const v0, 0x7f100006

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->createTitlebarButtons(I)V

    goto/16 :goto_12

    .line 972
    .restart local v10       #locationBytes:[B
    :catch_af
    move-exception v0

    goto :goto_32

    .line 958
    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_13
        :pswitch_8e
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1032
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onMyOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 12
    .parameter "item"

    .prologue
    const v9, 0x7f070169

    const v4, 0x7f070168

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1153
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v2, :cond_e

    move v5, v1

    .line 1238
    :cond_d
    :goto_d
    return v5

    .line 1157
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1158
    .local v0, activity:Landroid/app/Activity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_126

    .line 1238
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    goto :goto_d

    .line 1160
    :pswitch_1e
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isPostPlusOnePending(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1161
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_UP_PERFORM_PLUSONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1162
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/StreamRowView;->getObjectType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->createPostPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;Z)I

    goto :goto_d

    .line 1169
    :pswitch_3a
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isPostPlusOnePending(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1170
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/google/android/apps/plus/service/EsService;->deletePostPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)I

    goto :goto_d

    .line 1176
    :pswitch_4a
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_UP_RESHARE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1177
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView;->isLimited()Z

    move-result v8

    .line 1178
    .local v8, limited:Z
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v8}, Lcom/google/android/apps/plus/phone/Intents;->getReshareActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    .line 1180
    .local v7, intent:Landroid/content/Intent;
    if-eqz v8, :cond_82

    .line 1181
    const v1, 0x7f07015b

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07015c

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07015d

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v7}, Lcom/google/android/apps/plus/fragments/ConfirmIntentDialog;->newInstance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/support/v4/app/DialogFragment;

    move-result-object v6

    .line 1185
    .local v6, dialog:Landroid/support/v4/app/DialogFragment;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirm_reshare"

    invoke-virtual {v6, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_d

    .line 1187
    .end local v6           #dialog:Landroid/support/v4/app/DialogFragment;
    :cond_82
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_d

    .line 1193
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #limited:Z
    :pswitch_86
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_UP_REMOVE_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1194
    const v2, 0x7f0700eb

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0700fe

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v3, v4, v9}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v6

    .line 1198
    .local v6, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {v6, p0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1199
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "remove_dialog"

    invoke-virtual {v6, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1204
    .end local v6           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :pswitch_b3
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->refresh()V

    goto/16 :goto_d

    .line 1209
    :pswitch_b8
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/MapUtils;->showActivityOnMap(Landroid/content/Context;Lcom/google/wireless/tacotruck/proto/Data$Location;)V

    goto/16 :goto_d

    .line 1214
    :pswitch_bf
    const v2, 0x7f0700ef

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0700ff

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v3, v4, v9}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v6

    .line 1218
    .restart local v6       #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {v6, p0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1220
    invoke-virtual {v6}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "activity_id"

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "mute_dialog"

    invoke-virtual {v6, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1226
    .end local v6           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :pswitch_f2
    const v2, 0x7f0700f0

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070100

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v3, v4, v9}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v6

    .line 1230
    .restart local v6       #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {v6, p0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1232
    invoke-virtual {v6}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "activity_id"

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "report_dialog"

    invoke-virtual {v6, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1158
    nop

    :pswitch_data_126
    .packed-switch 0x7f0d01be
        :pswitch_1e
        :pswitch_3a
        :pswitch_4a
        :pswitch_b3
        :pswitch_b8
        :pswitch_bf
        :pswitch_f2
        :pswitch_86
    .end packed-switch
.end method

.method public onMyPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 10
    .parameter "menu"

    .prologue
    const v7, 0x7f0d01c0

    const v6, 0x7f0d01bf

    const v5, 0x7f0d01be

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1075
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1076
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1077
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1078
    const v1, 0x7f0d01c5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1079
    const v1, 0x7f0d01c2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1080
    const v1, 0x7f0d01c3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1081
    const v1, 0x7f0d01c4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1083
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView;->getActivityId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_51

    .line 1113
    :goto_50
    return v3

    .line 1088
    :cond_51
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v1, v4, :cond_87

    .line 1089
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView;->getPlusOneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    .line 1090
    .local v0, poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    if-eqz v0, :cond_ba

    .line 1091
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 1092
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1093
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->hasPlusoneId()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1101
    :goto_77
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView;->isLocked()Z

    move-result v1

    if-nez v1, :cond_c2

    move v1, v2

    :goto_84
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1104
    .end local v0           #poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_87
    const v1, 0x7f0d01c2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-eqz v4, :cond_93

    move v3, v2

    :cond_93
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1106
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView;->getAuthorId()J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_c4

    .line 1107
    const v1, 0x7f0d01c5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_b0
    move v3, v2

    .line 1113
    goto :goto_50

    .line 1095
    .restart local v0       #poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_b2
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_77

    .line 1098
    :cond_ba
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_77

    :cond_c2
    move v1, v3

    .line 1101
    goto :goto_84

    .line 1109
    .end local v0           #poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_c4
    const v1, 0x7f0d01c3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1110
    const v1, 0x7f0d01c4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_b0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 878
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onPause()V

    .line 879
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 880
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    if-eqz v0, :cond_11

    .line 881
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->unregisterListener(Lcom/google/android/apps/plus/service/SkyjamPlaybackService$SkyjamPlaybackListener;)V

    .line 883
    :cond_11
    return-void
.end method

.method public onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 9
    .parameter "menu"

    .prologue
    const v6, 0x7f0d01bf

    const v5, 0x7f0d01be

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1123
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1124
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1125
    const v1, 0x7f0d01c0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView;->isLocked()Z

    move-result v1

    if-nez v1, :cond_64

    move v1, v2

    :goto_26
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1126
    const v1, 0x7f0d01c5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1127
    const v1, 0x7f0d01c1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1128
    const v1, 0x7f0d01c2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1129
    const v1, 0x7f0d01c3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1130
    const v1, 0x7f0d01c4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1132
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView;->getActivityId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_66

    .line 1147
    :goto_63
    return-void

    :cond_64
    move v1, v3

    .line 1125
    goto :goto_26

    .line 1136
    :cond_66
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView;->getPlusOneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    .line 1137
    .local v0, poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    if-eqz v0, :cond_8f

    .line 1138
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 1139
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1140
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->hasPlusoneId()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_63

    .line 1142
    :cond_87
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_63

    .line 1145
    :cond_8f
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_63
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 848
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onResume()V

    .line 849
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 850
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    if-eqz v1, :cond_1d

    .line 851
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->registerListener(Lcom/google/android/apps/plus/service/SkyjamPlaybackService$SkyjamPlaybackListener;)V

    .line 852
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAutoPlay:Z

    if-eqz v1, :cond_1d

    .line 853
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView;->setSkyjamAutoPlay()V

    .line 854
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAutoPlay:Z

    .line 858
    :cond_1d
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_40

    .line 859
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_40

    .line 860
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 861
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 865
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_40
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mRefreshReqId:Ljava/lang/Integer;

    if-eqz v1, :cond_5c

    .line 866
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mRefreshReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 867
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mRefreshReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    .line 868
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mRefreshReqId:Ljava/lang/Integer;

    .line 871
    :cond_5c
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 905
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 907
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 908
    const-string v0, "post_request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 911
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAudienceData:Lcom/google/android/apps/plus/api/AudienceData;

    if-eqz v0, :cond_1d

    .line 912
    const-string v0, "audience"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAudienceData:Lcom/google/android/apps/plus/api/AudienceData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 915
    :cond_1d
    const-string v0, "allow_auto_play"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 916
    const-string v0, "op_type"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mOperationType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 917
    const-string v0, "finish_on_error"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mFinishOnError:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 918
    return-void
.end method

.method public bridge synthetic onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public bridge synthetic onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method openCommentEditor(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "editCommentId"
    .parameter "comment"

    .prologue
    .line 683
    invoke-static {p1, p2}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;

    move-result-object v0

    .line 685
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 686
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "edit_comment"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 1647
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1648
    return-void
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;)V
    .registers 3
    .parameter "progressView"

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mProgressView:Landroid/widget/ProgressBar;

    .line 1052
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 1053
    return-void
.end method

.method public showPlusOnePeople(Ljava/lang/String;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1518
    new-instance v0, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;

    invoke-direct {v0}, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;-><init>()V

    .line 1519
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1520
    const-string v2, "account"

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1521
    const-string v2, "plus_one_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    const-string v2, "total_plus_ones"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1523
    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1524
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "plus_ones"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1525
    return-void
.end method

.method protected updateSpinner(Landroid/widget/ProgressBar;)V
    .registers 3
    .parameter "progressView"

    .prologue
    .line 1060
    if-nez p1, :cond_3

    .line 1065
    :goto_2
    return-void

    .line 1064
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mRefreshReqId:Ljava/lang/Integer;

    if-nez v0, :cond_d

    const/16 v0, 0x8

    :goto_9
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method
