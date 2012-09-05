.class public Lcom/google/android/apps/plus/fragments/PhotoViewFragment;
.super Lcom/google/android/apps/plus/fragments/EsListFragment;
.source "PhotoViewFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
.implements Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;
.implements Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/PhotoViewFragment$MyTextWatcher;,
        Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;,
        Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoClickListener;,
        Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PlusOneQuery;,
        Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoShapeQuery;,
        Lcom/google/android/apps/plus/fragments/PhotoViewFragment$HorizontallySrollable;,
        Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsListFragment",
        "<",
        "Lcom/google/android/apps/plus/views/PhotoListView;",
        "Lcom/google/android/apps/plus/phone/PhotoViewAdapter;",
        ">;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;",
        "Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;",
        "Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mActionCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;

.field private mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

.field private mActivityId:Ljava/lang/String;

.field private mAlbumId:J

.field private mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

.field private mCommentButton:Landroid/view/View;

.field private mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

.field private mCommentView:Landroid/view/View;

.field private mDefaultAlbumName:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private final mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mFooterView:Landroid/view/View;

.field private mForceLoadId:Ljava/lang/Long;

.field private mFragmentId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsImageLoading:Z

.field private mOperationType:I

.field private mOwnerId:J

.field private mPendingBytes:[B

.field private mPhotoId:J

.field private mPhotoUrl:Ljava/lang/String;

.field private mPlusOneByMe:Ljava/lang/Boolean;

.field private mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

.field private mProgressBarView:Landroid/widget/ProgressBar;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;-><init>()V

    .line 316
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mFragmentId:I

    .line 322
    new-instance v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;-><init>(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;

    .line 327
    new-instance v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 540
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;I)V
    .registers 3
    .parameter "intent"
    .parameter "fragmentId"

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;-><init>()V

    .line 544
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    .line 545
    iput p2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mFragmentId:I

    .line 546
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;ILcom/google/android/apps/plus/service/ServiceResult;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActivityId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIsImageLoading:Z

    return v0
.end method

.method static synthetic access$802(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIsImageLoading:Z

    return p1
.end method

.method private canTogglePlusOne()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1007
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPlusOneByMe:Ljava/lang/Boolean;

    if-nez v0, :cond_7

    move v0, v6

    .line 1015
    :goto_6
    return v0

    .line 1010
    :cond_7
    iget-wide v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:J

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAlbumId:J

    iget-wide v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->isPhotoPlusOnePending(JJJ)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v6

    .line 1012
    goto :goto_6

    .line 1015
    :cond_15
    const/4 v0, 0x1

    goto :goto_6
.end method

.method private getPicasaPhotoId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
    .registers 4

    .prologue
    .line 915
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    move-result-object v0

    .line 916
    .local v0, photoId:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;
    iget-wide v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:J

    invoke-virtual {v0, v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    .line 917
    iget-wide v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-virtual {v0, v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    .line 918
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v1

    return-object v1
.end method

.method private handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const v3, 0x7f070090

    const/4 v1, 0x0

    .line 1602
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_12

    :cond_10
    move v0, v1

    .line 1672
    :goto_11
    return v0

    .line 1606
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 1608
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "req_pending"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 1610
    if-eqz v0, :cond_26

    .line 1611
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 1614
    :cond_26
    if-eqz p2, :cond_8d

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1615
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1617
    iget v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOperationType:I

    sparse-switch v2, :sswitch_data_90

    .line 1664
    const v2, 0x7f070119

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1669
    :goto_3e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1670
    const/4 v0, 0x1

    goto :goto_11

    .line 1619
    :sswitch_4b
    const v2, 0x7f070115

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 1624
    :sswitch_53
    const v2, 0x7f070118

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 1629
    :sswitch_5b
    const v2, 0x7f070109

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 1634
    :sswitch_63
    const v2, 0x7f07010c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 1639
    :sswitch_6b
    const v2, 0x7f07010b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 1644
    :sswitch_73
    const v2, 0x7f070088

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 1649
    :sswitch_7b
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 1654
    :sswitch_80
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 1659
    :sswitch_85
    const v2, 0x7f070087

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    :cond_8d
    move v0, v1

    .line 1672
    goto :goto_11

    .line 1617
    nop

    :sswitch_data_90
    .sparse-switch
        0x1 -> :sswitch_4b
        0x2 -> :sswitch_53
        0x14 -> :sswitch_5b
        0x15 -> :sswitch_63
        0x16 -> :sswitch_6b
        0x1e -> :sswitch_73
        0x1f -> :sswitch_7b
        0x20 -> :sswitch_80
        0x28 -> :sswitch_85
    .end sparse-switch
.end method

.method private hideFooter(ZZ)V
    .registers 3
    .parameter "hide"
    .parameter "animate"

    .prologue
    .line 1276
    if-eqz p1, :cond_6

    .line 1277
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->hideFooterView(Z)V

    .line 1281
    :goto_5
    return-void

    .line 1279
    :cond_6
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showFooterView(Z)V

    goto :goto_5
.end method

.method private hideFooterView(Z)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 1287
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_b

    .line 1301
    :goto_a
    return-void

    .line 1291
    :cond_b
    if-eqz p1, :cond_22

    .line 1292
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1293
    const v1, 0x7f040004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1296
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    invoke-static {v1}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 1298
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1300
    :cond_22
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a
.end method

.method private recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_d

    .line 1677
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1679
    :cond_d
    return-void
.end method

.method private refresh()V
    .registers 7

    .prologue
    .line 1567
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:J

    iget-wide v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->getPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 1568
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateView(Landroid/view/View;)V

    .line 1569
    return-void
.end method

.method private setViewVisibility(Z)V
    .registers 13
    .parameter "animate"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1328
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v4, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isFragmentFullScreen(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    .line 1329
    .local v0, fullScreen:Z
    if-nez v0, :cond_12

    iget-wide v7, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-nez v4, :cond_3a

    :cond_12
    move v1, v6

    .line 1330
    .local v1, hide:Z
    :goto_13
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v4}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isShowPhotoOnly()Z

    move-result v3

    .line 1331
    .local v3, photoOnly:Z
    if-nez v1, :cond_27

    if-nez v3, :cond_27

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v4, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->allowComments()Z

    move-result v4

    if-nez v4, :cond_3c

    :cond_27
    move v2, v6

    .line 1333
    .local v2, hideFooter:Z
    :goto_28
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v4, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v4, v1, p1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->setFullScreen(ZZ)V

    .line 1334
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v4, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v4, v3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->setShowPhotoOnly(Z)V

    .line 1335
    invoke-direct {p0, v2, p1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->hideFooter(ZZ)V

    .line 1336
    return-void

    .end local v1           #hide:Z
    .end local v2           #hideFooter:Z
    .end local v3           #photoOnly:Z
    :cond_3a
    move v1, v5

    .line 1329
    goto :goto_13

    .restart local v1       #hide:Z
    .restart local v3       #photoOnly:Z
    :cond_3c
    move v2, v5

    .line 1331
    goto :goto_28
.end method

.method private setVisible(Landroid/view/Menu;IZ)V
    .registers 5
    .parameter "menu"
    .parameter "menuItemId"
    .parameter "visible"

    .prologue
    .line 1530
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1531
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_9

    .line 1532
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1534
    :cond_9
    return-void
.end method

.method private showFooterView(Z)V
    .registers 4
    .parameter

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 1320
    :goto_8
    return-void

    .line 1312
    :cond_9
    if-eqz p1, :cond_1b

    .line 1313
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1314
    const v1, 0x7f040005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1317
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1319
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8
.end method

.method private showProgressDialog(I)V
    .registers 3
    .parameter

    .prologue
    .line 1577
    const v0, 0x7f07011a

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showProgressDialog(ILjava/lang/String;)V

    .line 1578
    return-void
.end method

.method private showProgressDialog(ILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1586
    iput p1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOperationType:I

    .line 1588
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    .line 1591
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1592
    return-void
.end method

.method private updateMenuItems()V
    .registers 2

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    if-eqz v0, :cond_9

    .line 1539
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->updateMenuItems()V

    .line 1541
    :cond_9
    return-void
.end method

.method private updateView(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 1548
    if-eqz p1, :cond_b

    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    .line 1563
    :cond_b
    :goto_b
    return-void

    .line 1551
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->isPhotoBound()Z

    move-result v0

    .line 1552
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIsImageLoading:Z

    if-eqz v1, :cond_23

    if-nez v0, :cond_23

    .line 1553
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 1562
    :goto_1d
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    goto :goto_b

    .line 1555
    :cond_23
    if-eqz v0, :cond_29

    .line 1556
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showContent(Landroid/view/View;)V

    goto :goto_1d

    .line 1558
    :cond_29
    const v0, 0x7f070074

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 1559
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showEmptyView(Landroid/view/View;)V

    goto :goto_1d
.end method


# virtual methods
.method public hasPlusOned()Z
    .registers 2

    .prologue
    .line 999
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPlusOneByMe:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPlusOneByMe:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_5
.end method

.method protected isEmpty()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 987
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 988
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_20

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_20

    move v0, v3

    .line 992
    .local v0, isViewAvailable:Z
    :goto_12
    if-eqz v0, :cond_22

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v2, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->isPhotoBound()Z

    move-result v2

    if-nez v2, :cond_22

    move v2, v3

    :goto_1f
    return v2

    .end local v0           #isViewAvailable:Z
    :cond_20
    move v0, v4

    .line 988
    goto :goto_12

    .restart local v0       #isViewAvailable:Z
    :cond_22
    move v2, v4

    .line 992
    goto :goto_1f
.end method

.method public onActionBarHeightCalculated(I)V
    .registers 3
    .parameter "actionBarHeight"

    .prologue
    .line 982
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->setActionBarHeight(I)V

    .line 983
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1258
    packed-switch p1, :pswitch_data_10

    .line 1270
    :cond_3
    :goto_3
    return-void

    .line 1260
    :pswitch_4
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 1261
    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPendingBytes:[B

    goto :goto_3

    .line 1258
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 550
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onAttach(Landroid/app/Activity;)V

    .line 551
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    if-eqz v0, :cond_c

    .line 552
    check-cast p1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    .line 556
    return-void

    .line 554
    .restart local p1
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity must implement PhotoViewCallbacks"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 16
    .parameter "v"

    .prologue
    const v1, 0x7f0d0031

    const/4 v5, 0x0

    .line 848
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_d4

    .line 886
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isFragmentFullScreen(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 887
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v7, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:J

    iget-wide v9, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getVideoData()[B

    move-result-object v11

    invoke-static/range {v5 .. v11}, Lcom/google/android/apps/plus/phone/Intents;->getVideoViewActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJ[B)Landroid/content/Intent;

    move-result-object v13

    .line 889
    .local v13, startIntent:Landroid/content/Intent;
    invoke-virtual {p0, v13}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 896
    .end local v13           #startIntent:Landroid/content/Intent;
    :goto_36
    return-void

    .line 850
    :sswitch_37
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 851
    .local v12, commentText:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6c

    .line 852
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getPicasaPhotoId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getMentions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1, v2, v12, v3}, Lcom/google/android/apps/plus/service/EsService;->createPhotoComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 855
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 857
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showProgressDialog(I)V

    goto :goto_36

    .line 859
    :cond_6c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentButton:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_36

    .line 865
    .end local v12           #commentText:Ljava/lang/String;
    :sswitch_72
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->toggleTags()V

    goto :goto_36

    .line 870
    :sswitch_7a
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 871
    .local v4, shapeId:Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v5, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->nameTagApproval(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 873
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showProgressDialog(I)V

    goto :goto_36

    .line 878
    .end local v4           #shapeId:Ljava/lang/Long;
    :sswitch_a3
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 879
    .restart local v4       #shapeId:Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->nameTagApproval(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 881
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showProgressDialog(I)V

    goto/16 :goto_36

    .line 891
    .end local v4           #shapeId:Ljava/lang/Long;
    :cond_cc
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->toggleFullScreen()V

    goto/16 :goto_36

    .line 848
    nop

    :sswitch_data_d4
    .sparse-switch
        0x7f0d008c -> :sswitch_37
        0x7f0d011b -> :sswitch_72
        0x7f0d012a -> :sswitch_7a
        0x7f0d012b -> :sswitch_a3
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 14
    .parameter

    .prologue
    const/4 v4, 0x0

    const v6, 0x7f070169

    const v2, 0x7f070168

    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 1388
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isFragmentActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1460
    :cond_11
    :goto_11
    return v11

    .line 1394
    :cond_12
    :try_start_12
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_18} :catch_d3

    .line 1400
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-eqz v1, :cond_11

    .line 1404
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getItem(I)Ljava/lang/Object;

    .line 1406
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCommentId()Ljava/lang/String;

    move-result-object v3

    .line 1408
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_d6

    goto :goto_11

    .line 1410
    :pswitch_35
    const v0, 0x7f0700f1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0700f6

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1415
    invoke-virtual {v0, p0, v11}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1418
    new-array v1, v5, [Ljava/lang/String;

    .line 1419
    aput-object v3, v1, v11

    .line 1420
    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "comments"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1422
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "remove_comment"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    move v11, v5

    .line 1423
    goto :goto_11

    .line 1427
    :pswitch_6a
    const v0, 0x7f0700f0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0700f8

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1432
    invoke-virtual {v0, p0, v11}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1435
    new-array v1, v5, [Ljava/lang/String;

    .line 1436
    aput-object v3, v1, v11

    .line 1437
    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "comments"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1439
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "report_comment"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    move v11, v5

    .line 1440
    goto/16 :goto_11

    .line 1444
    :pswitch_a0
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActivityId:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->plusOneComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move v11, v5

    .line 1446
    goto/16 :goto_11

    .line 1450
    :pswitch_ae
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getPlusOneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    .line 1451
    if-eqz v0, :cond_d1

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->hasPlusoneId()Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v10

    .line 1454
    :goto_c2
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActivityId:Ljava/lang/String;

    move-object v9, v3

    invoke-static/range {v6 .. v11}, Lcom/google/android/apps/plus/service/EsService;->plusOneComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move v11, v5

    .line 1456
    goto/16 :goto_11

    :cond_d1
    move-object v10, v4

    .line 1451
    goto :goto_c2

    .line 1395
    :catch_d3
    move-exception v0

    goto/16 :goto_11

    .line 1408
    :pswitch_data_d6
    .packed-switch 0x3
        :pswitch_35
        :pswitch_6a
        :pswitch_a0
        :pswitch_ae
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    .line 566
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 568
    if-eqz p1, :cond_88

    .line 569
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.android.apps.plus.PhotoViewFragment.INTENT"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    .line 570
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.FRAGMENT_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mFragmentId:I

    .line 571
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.FORCE_LOAD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 572
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.FORCE_LOAD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mForceLoadId:Ljava/lang/Long;

    .line 580
    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mForceLoadId:Ljava/lang/Long;

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mForceLoadId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_a1

    move v0, v1

    :goto_44
    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIsImageLoading:Z

    .line 581
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "account"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 582
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "photo_id"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    .line 583
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "owner_id"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:J

    .line 584
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "photo_url"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    .line 585
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "display_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mDisplayName:Ljava/lang/String;

    .line 586
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "album_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mDefaultAlbumName:Ljava/lang/String;

    .line 588
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setHasOptionsMenu(Z)V

    .line 589
    return-void

    .line 575
    :cond_88
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "refresh"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 576
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "refresh"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mForceLoadId:Ljava/lang/Long;

    goto :goto_35

    .line 580
    :cond_a1
    const/4 v0, 0x0

    goto :goto_44
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1343
    :try_start_3
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_5} :catch_70

    .line 1349
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    iget v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getItemViewType(I)I

    move-result v0

    .line 1350
    if-eq v0, v7, :cond_12

    .line 1384
    :cond_11
    :goto_11
    return-void

    .line 1354
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    iget v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getItem(I)Ljava/lang/Object;

    .line 1355
    const v3, 0x7f0700d8

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getAuthorName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1372
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getAuthorId()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_6c

    move v0, v1

    .line 1373
    :goto_44
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6e

    .line 1374
    :goto_50
    if-nez v0, :cond_5d

    .line 1376
    const/4 v3, 0x4

    const v4, 0x7f0700f0

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1379
    :cond_5d
    if-nez v1, :cond_61

    if-eqz v0, :cond_11

    .line 1381
    :cond_61
    const v0, 0x7f0700f1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v7, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_11

    :cond_6c
    move v0, v2

    .line 1372
    goto :goto_44

    :cond_6e
    move v1, v2

    .line 1373
    goto :goto_50

    .line 1344
    :catch_70
    move-exception v0

    goto :goto_11
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
    const/4 v4, 0x0

    .line 723
    packed-switch p1, :pswitch_data_54

    move-object v0, v4

    .line 746
    :goto_5
    return-object v0

    .line 725
    :pswitch_6
    new-instance v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:J

    iget-wide v5, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mForceLoadId:Ljava/lang/Long;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/phone/PhotoViewLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJLjava/lang/String;Ljava/lang/Long;)V

    goto :goto_5

    .line 730
    :pswitch_1a
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_SHAPES_BY_PHOTO_ID_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    .line 733
    .local v2, queryUri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoShapeQuery;->PROJECTION:[Ljava/lang/String;

    const-string v6, "shape_id"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 738
    .end local v2           #queryUri:Landroid/net/Uri;
    :pswitch_37
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_PHOTO_ID_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    .line 741
    .restart local v2       #queryUri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PlusOneQuery;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 723
    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_6
        :pswitch_37
        :pswitch_1a
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 1052
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v2, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isFragmentActive(Landroid/support/v4/app/Fragment;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1067
    :cond_8
    :goto_8
    return-void

    .line 1056
    :cond_9
    const v2, 0x7f100014

    invoke-virtual {p2, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1057
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_8

    .line 1061
    const v2, 0x7f0d01b8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 1063
    .local v0, barLayout:Landroid/view/View;
    const v2, 0x7f0d0039

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 1065
    .local v1, progressBarView:Landroid/widget/ProgressBar;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->onUpdateProgressView(Landroid/widget/ProgressBar;)V

    goto :goto_8
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 594
    const v0, 0x7f030061

    invoke-super {p0, p1, p2, p3, v0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v11

    .line 598
    .local v11, view:Landroid/view/View;
    const v0, 0x7f03001c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mFooterView:Landroid/view/View;

    .line 600
    new-instance v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x0

    new-instance v6, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoClickListener;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v6, v5, v7}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoClickListener;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mDefaultAlbumName:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mFooterView:Landroid/view/View;

    move-object v5, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;Landroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Ljava/lang/String;Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    .line 603
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoListView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 604
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 607
    const v0, 0x7f0d00d6

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    .line 609
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    const v1, 0x7f0d008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentButton:Landroid/view/View;

    .line 610
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    new-instance v9, Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v9, v0, v1, v2}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 614
    .local v9, circleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;
    invoke-virtual {v9}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->initLoader()V

    .line 616
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    const v1, 0x7f0d008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 618
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v9, v1, v2}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->init(Landroid/support/v4/app/Fragment;Lcom/google/android/apps/plus/fragments/CircleNameResolver;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 619
    new-instance v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$MyTextWatcher;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$MyTextWatcher;-><init>(Landroid/view/View;Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mTextWatcher:Landroid/text/TextWatcher;

    .line 620
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 621
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    new-instance v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 637
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentButton:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_d2

    const/4 v0, 0x1

    :goto_af
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 639
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    invoke-static {v0}, Lcom/google/android/apps/plus/util/ViewUtils;->getListenerForSwitchToList(Landroid/widget/AbsListView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v10

    .line 641
    .local v10, switchToListListener:Landroid/view/View$OnFocusChangeListener;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0, v10}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 642
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentButton:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 645
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setViewVisibility(Z)V

    .line 647
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_d4

    .line 649
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 658
    :cond_d1
    :goto_d1
    return-object v11

    .line 637
    .end local v10           #switchToListListener:Landroid/view/View$OnFocusChangeListener;
    :cond_d2
    const/4 v0, 0x0

    goto :goto_af

    .line 651
    .restart local v10       #switchToListListener:Landroid/view/View$OnFocusChangeListener;
    :cond_d4
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoListView;->setChoiceMode(I)V

    .line 652
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoListView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 654
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    if-eqz v0, :cond_d1

    .line 655
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->getActionBarHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->setActionBarHeight(I)V

    goto :goto_d1
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 693
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    .line 694
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    .line 695
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 696
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 697
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->destroy()V

    .line 698
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 699
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 700
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentButton:Landroid/view/View;

    .line 701
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIsImageLoading:Z

    .line 702
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 703
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->clear()V

    .line 705
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onDestroyView()V

    .line 706
    return-void
.end method

.method public onDetach()V
    .registers 2

    .prologue
    .line 560
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    .line 561
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onDetach()V

    .line 562
    return-void
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1523
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1519
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/16 v3, 0xb

    const/4 v5, 0x1

    .line 1467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1468
    iget-wide v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1469
    const-string v1, "remove_dialog"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1470
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1471
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/android/apps/plus/service/EsService;->photoAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/util/ArrayList;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 1473
    const/4 v0, 0x2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0005

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showProgressDialog(ILjava/lang/String;)V

    .line 1515
    :cond_41
    :goto_41
    return-void

    .line 1476
    :cond_42
    const-string v1, "report_dialog"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 1477
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->REPORT_SPAM:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/android/apps/plus/service/EsService;->photoAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/util/ArrayList;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 1479
    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showProgressDialog(I)V

    goto :goto_41

    .line 1481
    :cond_66
    const-string v0, "remove_comment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 1482
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_7b

    .line 1483
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v0, :cond_7b

    .line 1484
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 1487
    :cond_7b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "comments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->deletePhotoComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 1489
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showProgressDialog(I)V

    goto :goto_41

    .line 1491
    :cond_9d
    const-string v0, "report_comment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 1492
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_b2

    .line 1493
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v0, :cond_b2

    .line 1494
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 1497
    :cond_b2
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "comments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "delete"

    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->reportPhotoComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;[Ljava/lang/String;ZZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 1500
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showProgressDialog(I)V

    goto/16 :goto_41

    .line 1502
    :cond_db
    const-string v0, "remove_tag"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1503
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_f0

    .line 1504
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v0, :cond_f0

    .line 1505
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 1508
    :cond_f0
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getMyApprovedShapeId()Ljava/lang/Long;

    move-result-object v4

    .line 1509
    if-eqz v4, :cond_41

    .line 1510
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v5, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->nameTagApproval(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 1512
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showProgressDialog(I)V

    goto/16 :goto_41
.end method

.method public onFullScreenChanged(ZZ)V
    .registers 4
    .parameter "fullScreen"
    .parameter "animate"

    .prologue
    .line 938
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isFragmentActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 940
    const/4 p2, 0x0

    .line 942
    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setViewVisibility(Z)V

    .line 943
    return-void
.end method

.method public onGlobalLayout()V
    .registers 3

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 930
    .local v0, view:Landroid/view/View;
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 931
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateView(Landroid/view/View;)V

    .line 932
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PhotoListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 934
    :cond_1b
    return-void
.end method

.method public onInterceptMoveLeft(FF)Z
    .registers 4
    .parameter "origX"
    .parameter "origY"

    .prologue
    .line 962
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isFragmentActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 964
    const/4 v0, 0x0

    .line 967
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->interceptMoveLeft(FF)Z

    move-result v0

    goto :goto_9
.end method

.method public onInterceptMoveRight(FF)Z
    .registers 4
    .parameter "origX"
    .parameter "origY"

    .prologue
    .line 972
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isFragmentActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 974
    const/4 v0, 0x0

    .line 977
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->interceptMoveRight(FF)Z

    move-result v0

    goto :goto_9
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 14
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
    const/16 v9, 0x10

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 753
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    if-nez v6, :cond_b

    .line 839
    :cond_a
    :goto_a
    return-void

    .line 757
    :cond_b
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_fe

    goto :goto_a

    .line 759
    :pswitch_13
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 761
    .local v2, context:Landroid/content/Context;
    if-eqz p2, :cond_1f

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_2a

    .line 762
    :cond_1f
    const v6, 0x7f070082

    invoke-static {v2, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 767
    :cond_2a
    if-eqz p2, :cond_4d

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 768
    invoke-interface {p2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_93

    move-object v0, v4

    .line 770
    .local v0, activityBlob:[B
    :goto_39
    if-eqz v0, :cond_4d

    .line 771
    invoke-static {v0}, Lcom/google/android/apps/plus/content/DbSerializer;->deserializeShortStringList([B)Ljava/util/List;

    move-result-object v1

    .line 773
    .local v1, activityList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4d

    .line 774
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActivityId:Ljava/lang/String;

    .line 778
    .end local v0           #activityBlob:[B
    .end local v1           #activityList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4d
    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mForceLoadId:Ljava/lang/Long;

    .line 779
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v6, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v6, p2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 786
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v6, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->notifyDataSetChanged()V

    .line 789
    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIsImageLoading:Z

    if-nez v6, :cond_6b

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v6, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->isPhotoBound()Z

    move-result v6

    if-nez v6, :cond_98

    :cond_6b
    move v6, v8

    :goto_6c
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIsImageLoading:Z

    .line 791
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v6, v9, :cond_7d

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v6, :cond_7d

    .line 793
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->invalidate()V

    .line 795
    :cond_7d
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateMenuItems()V

    .line 797
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v6

    invoke-virtual {v6, v10, v4, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 798
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v6

    invoke-virtual {v6, v8, v4, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 800
    invoke-direct {p0, v7}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setViewVisibility(Z)V

    goto/16 :goto_a

    .line 768
    :cond_93
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    goto :goto_39

    :cond_98
    move v6, v7

    .line 789
    goto :goto_6c

    .line 806
    .end local v2           #context:Landroid/content/Context;
    :pswitch_9a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 807
    .restart local v2       #context:Landroid/content/Context;
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v6, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v6, v2, p2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->bindScroller(Landroid/content/Context;Landroid/database/Cursor;)V

    goto/16 :goto_a

    .line 813
    .end local v2           #context:Landroid/content/Context;
    :pswitch_a7
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPlusOneByMe:Ljava/lang/Boolean;

    .line 814
    .local v3, oldPlusOneByMe:Ljava/lang/Boolean;
    if-eqz p2, :cond_da

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_da

    .line 815
    invoke-interface {p2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_ea

    .line 817
    .local v4, plusOneBlob:[B
    :goto_b7
    invoke-interface {p2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_ef

    move v5, v7

    .line 819
    .local v5, plusOneCount:I
    :goto_be
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAlbumId:J

    .line 821
    if-lez v5, :cond_f4

    if-eqz v4, :cond_f4

    .line 822
    :try_start_c8
    invoke-static {v4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 823
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPlusOneByMe:Ljava/lang/Boolean;
    :try_end_da
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_c8 .. :try_end_da} :catch_fc

    .line 831
    .end local v4           #plusOneBlob:[B
    .end local v5           #plusOneCount:I
    :cond_da
    :goto_da
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPlusOneByMe:Ljava/lang/Boolean;

    if-eq v3, v6, :cond_a

    .line 832
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateMenuItems()V

    .line 833
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateView(Landroid/view/View;)V

    goto/16 :goto_a

    .line 815
    :cond_ea
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    goto :goto_b7

    .line 817
    .restart local v4       #plusOneBlob:[B
    :cond_ef
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    goto :goto_be

    .line 825
    .restart local v5       #plusOneCount:I
    :cond_f4
    const/4 v6, 0x0

    :try_start_f5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPlusOneByMe:Ljava/lang/Boolean;
    :try_end_fb
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f5 .. :try_end_fb} :catch_fc

    goto :goto_da

    .line 827
    :catch_fc
    move-exception v6

    goto :goto_da

    .line 757
    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_13
        :pswitch_a7
        :pswitch_9a
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 844
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 11
    .parameter

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isFragmentActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1107
    const/4 v0, 0x0

    .line 1251
    :goto_9
    return v0

    .line 1110
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1112
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_18a

    .line 1251
    const/4 v0, 0x0

    goto :goto_9

    .line 1114
    :sswitch_17
    check-cast v0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onTitlebarLabelClick()V

    .line 1115
    const/4 v0, 0x1

    goto :goto_9

    .line 1119
    :sswitch_1e
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->canTogglePlusOne()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1120
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:J

    iget-wide v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAlbumId:J

    iget-wide v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    const/4 v8, 0x1

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/service/EsService;->photoPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJJZ)I

    .line 1123
    :cond_34
    const/4 v0, 0x1

    goto :goto_9

    .line 1127
    :sswitch_36
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->canTogglePlusOne()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1128
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:J

    iget-wide v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAlbumId:J

    iget-wide v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/service/EsService;->photoPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJJZ)I

    .line 1131
    :cond_4c
    const/4 v0, 0x1

    goto :goto_9

    .line 1135
    :sswitch_4e
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1136
    :goto_58
    invoke-static {v0}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_80

    move-object v6, v0

    .line 1137
    :goto_5f
    if-eqz v6, :cond_82

    const/4 v5, 0x0

    .line 1138
    :goto_62
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef;

    iget-wide v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:J

    iget-wide v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(JJLjava/lang/String;Landroid/net/Uri;)V

    .line 1139
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mDisplayName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/android/apps/plus/phone/Intents;->getPhotoPickerIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/api/MediaRef;Z)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1141
    const/4 v0, 0x1

    goto :goto_9

    .line 1135
    :cond_7e
    const/4 v0, 0x0

    goto :goto_58

    .line 1136
    :cond_80
    const/4 v6, 0x0

    goto :goto_5f

    .line 1137
    :cond_82
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    goto :goto_62

    .line 1145
    :sswitch_85
    const/16 v1, 0x29

    const v2, 0x7f070085

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showProgressDialog(ILjava/lang/String;)V

    .line 1147
    new-instance v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Landroid/app/Activity;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1185
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 1189
    :sswitch_a5
    const v0, 0x7f070069

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07006a

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070168

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070169

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1194
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1195
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "remove_tag"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1196
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 1200
    :sswitch_d5
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->refresh()V

    .line 1201
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 1205
    :sswitch_db
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1206
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    if-eqz v0, :cond_124

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1207
    :goto_e9
    invoke-static {v0}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_126

    .line 1209
    :goto_ef
    if-nez v0, :cond_128

    const v0, 0x7f0e0003

    .line 1212
    :goto_f4
    const v2, 0x7f0e0002

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0e000e

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f070169

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1217
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1218
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "remove_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1219
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 1206
    :cond_124
    const/4 v0, 0x0

    goto :goto_e9

    .line 1207
    :cond_126
    const/4 v0, 0x0

    goto :goto_ef

    .line 1209
    :cond_128
    const v0, 0x7f0e0004

    goto :goto_f4

    .line 1223
    :sswitch_12c
    const v0, 0x7f07006b

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07006c

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070168

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070169

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1228
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1229
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "report_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1230
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 1234
    :sswitch_15c
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getSettingsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 1235
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 1236
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 1240
    :sswitch_168
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->SETTINGS_FEEDBACK:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1241
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/phone/GoogleFeedback;->launch(Landroid/app/Activity;)V

    .line 1242
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 1246
    :sswitch_177
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "plus_photos"

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 1248
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 1112
    :sswitch_data_18a
    .sparse-switch
        0x102002c -> :sswitch_17
        0x7f0d01b5 -> :sswitch_15c
        0x7f0d01b6 -> :sswitch_168
        0x7f0d01b7 -> :sswitch_177
        0x7f0d01e1 -> :sswitch_1e
        0x7f0d01e2 -> :sswitch_36
        0x7f0d01e3 -> :sswitch_4e
        0x7f0d01e4 -> :sswitch_85
        0x7f0d01e5 -> :sswitch_a5
        0x7f0d01e6 -> :sswitch_d5
        0x7f0d01e7 -> :sswitch_db
        0x7f0d01e8 -> :sswitch_12c
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 683
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onPause()V

    .line 685
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 686
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->removeScreenListener(Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;)V

    .line 687
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->removeMenuItemListener(Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;)V

    .line 688
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 16
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const v13, 0x7f0d01e2

    const v12, 0x7f0d01e1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1071
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v5, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isFragmentActive(Landroid/support/v4/app/Fragment;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 1102
    :goto_11
    return-void

    .line 1075
    :cond_12
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    if-nez v5, :cond_88

    move-object v3, v2

    .line 1077
    .local v3, shapeId:Ljava/lang/Long;
    :goto_17
    if-eqz v3, :cond_91

    move v4, v6

    .line 1078
    .local v4, taggedAsMe:Z
    :goto_1a
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    if-eqz v5, :cond_24

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1079
    .local v2, photoUri:Landroid/net/Uri;
    :cond_24
    iget-wide v8, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_93

    invoke-static {v2}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_93

    move v0, v6

    .line 1081
    .local v0, isRemotePhoto:Z
    :goto_33
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:J

    cmp-long v5, v8, v10

    if-eqz v5, :cond_4d

    iget-wide v8, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_95

    invoke-static {v2}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_95

    :cond_4d
    move v1, v6

    .line 1084
    .local v1, myPhoto:Z
    :goto_4e
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-ge v5, v8, :cond_97

    .line 1085
    invoke-direct {p0, p1, v13, v7}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1086
    invoke-direct {p0, p1, v12, v7}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1096
    :goto_5a
    const v8, 0x7f0d01e3

    if-nez v1, :cond_61

    if-eqz v4, :cond_ab

    :cond_61
    move v5, v6

    :goto_62
    invoke-direct {p0, p1, v8, v5}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1097
    const v5, 0x7f0d01e4

    invoke-direct {p0, p1, v5, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1098
    const v5, 0x7f0d01e7

    invoke-direct {p0, p1, v5, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1099
    const v5, 0x7f0d01e8

    if-nez v1, :cond_ad

    if-eqz v0, :cond_ad

    :goto_78
    invoke-direct {p0, p1, v5, v6}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1100
    const v5, 0x7f0d01e6

    invoke-direct {p0, p1, v5, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1101
    const v5, 0x7f0d01e5

    invoke-direct {p0, p1, v5, v4}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    goto :goto_11

    .line 1075
    .end local v0           #isRemotePhoto:Z
    .end local v1           #myPhoto:Z
    .end local v2           #photoUri:Landroid/net/Uri;
    .end local v3           #shapeId:Ljava/lang/Long;
    .end local v4           #taggedAsMe:Z
    :cond_88
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v5, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getMyApprovedShapeId()Ljava/lang/Long;

    move-result-object v3

    goto :goto_17

    .restart local v3       #shapeId:Ljava/lang/Long;
    :cond_91
    move v4, v7

    .line 1077
    goto :goto_1a

    .restart local v2       #photoUri:Landroid/net/Uri;
    .restart local v4       #taggedAsMe:Z
    :cond_93
    move v0, v7

    .line 1079
    goto :goto_33

    .restart local v0       #isRemotePhoto:Z
    :cond_95
    move v1, v7

    .line 1081
    goto :goto_4e

    .line 1087
    .restart local v1       #myPhoto:Z
    :cond_97
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->hasPlusOned()Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 1088
    invoke-direct {p0, p1, v13, v6}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1089
    invoke-direct {p0, p1, v12, v7}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    goto :goto_5a

    .line 1091
    :cond_a4
    invoke-direct {p0, p1, v13, v7}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1092
    invoke-direct {p0, p1, v12, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    goto :goto_5a

    :cond_ab
    move v5, v7

    .line 1096
    goto :goto_62

    :cond_ad
    move v6, v7

    .line 1099
    goto :goto_78
.end method

.method public onPrepareTitlebarButtons(Landroid/view/Menu;)Z
    .registers 9
    .parameter "menu"

    .prologue
    const v3, 0x7f0d01e2

    const v6, 0x7f0d01e1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1035
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v2, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isFragmentActive(Landroid/support/v4/app/Fragment;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1047
    :goto_10
    return v0

    .line 1039
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->hasPlusOned()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1040
    invoke-direct {p0, p1, v3, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1041
    invoke-direct {p0, p1, v6, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    :goto_1d
    move v0, v1

    .line 1047
    goto :goto_10

    .line 1043
    :cond_1f
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1044
    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2b

    move v0, v1

    :cond_2b
    invoke-direct {p0, p1, v6, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    goto :goto_1d
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 663
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 664
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v1, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->addScreenListener(Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;)V

    .line 665
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v1, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->addMenuItemListener(Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;)V

    .line 667
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 670
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPendingBytes:[B

    if-eqz v1, :cond_3c

    .line 671
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPendingBytes:[B

    .line 672
    .local v0, profileBytes:[B
    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPendingBytes:[B

    .line 674
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/service/EsService;->setProfilePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 675
    const/16 v1, 0x28

    const v2, 0x7f070086

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showProgressDialog(ILjava/lang/String;)V

    .line 678
    .end local v0           #profileBytes:[B
    :cond_3c
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onResume()V

    .line 679
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 710
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 712
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_28

    .line 713
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.INTENT"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 714
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.FRAGMENT_ID"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mFragmentId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 715
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mForceLoadId:Ljava/lang/Long;

    if-eqz v0, :cond_28

    .line 716
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.FORCE_LOAD"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mForceLoadId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 719
    :cond_28
    return-void
.end method

.method public bridge synthetic onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method protected onScrollDown()V
    .registers 8

    .prologue
    .line 903
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mFooterView:Landroid/view/View;

    const v1, 0x7f0d0071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 904
    .local v6, progressView:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOlderReqId:Ljava/lang/Integer;

    if-nez v0, :cond_29

    .line 906
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:J

    iget-wide v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->getPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 908
    :cond_29
    return-void
.end method

.method public bridge synthetic onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public onUpdateProgressView(Landroid/widget/ProgressBar;)V
    .registers 4
    .parameter "progressBarView"

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    .line 1025
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 1027
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1028
    .local v0, myView:Landroid/view/View;
    if-eqz v0, :cond_10

    .line 1029
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateView(Landroid/view/View;)V

    .line 1031
    :cond_10
    return-void
.end method

.method public onViewActivated()V
    .registers 3

    .prologue
    .line 947
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isFragmentActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 949
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->resetViews()V

    .line 958
    :cond_f
    :goto_f
    return-void

    .line 951
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->onFragmentVisible(Landroid/support/v4/app/Fragment;)V

    .line 954
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_f

    .line 955
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateMenuItems()V

    goto :goto_f
.end method
