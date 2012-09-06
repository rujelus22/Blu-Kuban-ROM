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
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;",
        "Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;",
        "Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mActionCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;

.field private mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

.field private mActivityId:Ljava/lang/String;

.field private mAlbumId:J

.field private mAllowPlusOne:Z

.field private mAutoRefreshDone:Z

.field private mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

.field private mCommentButton:Landroid/view/View;

.field private mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

.field private mCommentView:Landroid/view/View;

.field private mDefaultAlbumName:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mDownloadable:Ljava/lang/Boolean;

.field private final mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mEventId:Ljava/lang/String;

.field private mFooterView:Landroid/view/View;

.field private mForceLoadId:Ljava/lang/Long;

.field private mFragmentId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsPlaceHolder:Z

.field private mOperationType:I

.field private mOwnerId:Ljava/lang/String;

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
    .line 599
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;-><init>()V

    .line 333
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mFragmentId:I

    .line 337
    new-instance v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;-><init>(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIsPlaceHolder:Z

    .line 346
    new-instance v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 600
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;I)V
    .registers 3
    .parameter "intent"
    .parameter "fragmentId"

    .prologue
    .line 603
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;-><init>()V

    .line 604
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    .line 605
    iput p2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mFragmentId:I

    .line 606
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;ILcom/google/android/apps/plus/service/ServiceResult;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->addDownloadToSystem(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActivityId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mDownloadable:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateMenuItems()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    return-object v0
.end method

.method private addDownloadToSystem(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "context"
    .parameter "file"
    .parameter "description"
    .parameter "mimeType"

    .prologue
    .line 1491
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_21

    .line 1494
    :try_start_6
    const-string v1, "download"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 1496
    .local v0, dm:Landroid/app/DownloadManager;
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v2, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v8}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_21} :catch_3b

    .line 1503
    .end local v0           #dm:Landroid/app/DownloadManager;
    :cond_21
    :goto_21
    new-instance v10, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1504
    .local v10, intent:Landroid/content/Intent;
    invoke-virtual {p2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1505
    invoke-virtual {p1, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1506
    return-void

    .line 1498
    .end local v10           #intent:Landroid/content/Intent;
    :catch_3b
    move-exception v9

    .line 1499
    .local v9, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "PhotoViewFragment"

    const-string v2, "Could not add photo to the Downloads application"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method private canDownload()Z
    .registers 2

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mDownloadable:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mDownloadable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private canTogglePlusOne()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1140
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPlusOneByMe:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    .line 1148
    :cond_5
    :goto_5
    return v0

    .line 1143
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAlbumId:J

    iget-wide v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/apps/plus/service/EsService;->isPhotoPlusOnePending(Ljava/lang/String;JJ)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1148
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private getPicasaPhotoId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
    .registers 4

    .prologue
    .line 1049
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    move-result-object v0

    .line 1050
    .local v0, photoId:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    .line 1051
    iget-wide v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-virtual {v0, v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    .line 1052
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v1

    return-object v1
.end method

.method private handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)Z
    .registers 8
    .parameter "requestId"
    .parameter "result"

    .prologue
    const v4, 0x7f0800bd

    const/4 v2, 0x0

    .line 1889
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p1, :cond_11

    .line 1975
    :cond_10
    :goto_10
    return v2

    .line 1893
    :cond_11
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 1895
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->hideProgressDialog()V

    .line 1897
    if-eqz p2, :cond_86

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 1898
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1900
    .local v0, res:Landroid/content/res/Resources;
    iget v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOperationType:I

    sparse-switch v3, :sswitch_data_98

    .line 1952
    const v3, 0x7f0801ae

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1956
    .local v1, toastText:Ljava/lang/CharSequence;
    :goto_2f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1957
    const/4 v2, 0x1

    goto :goto_10

    .line 1902
    .end local v1           #toastText:Ljava/lang/CharSequence;
    :sswitch_3c
    const v3, 0x7f0801aa

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1903
    .restart local v1       #toastText:Ljava/lang/CharSequence;
    goto :goto_2f

    .line 1907
    .end local v1           #toastText:Ljava/lang/CharSequence;
    :sswitch_44
    const v3, 0x7f0801ad

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1908
    .restart local v1       #toastText:Ljava/lang/CharSequence;
    goto :goto_2f

    .line 1912
    .end local v1           #toastText:Ljava/lang/CharSequence;
    :sswitch_4c
    const v3, 0x7f08019b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1913
    .restart local v1       #toastText:Ljava/lang/CharSequence;
    goto :goto_2f

    .line 1917
    .end local v1           #toastText:Ljava/lang/CharSequence;
    :sswitch_54
    const v3, 0x7f08019e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1918
    .restart local v1       #toastText:Ljava/lang/CharSequence;
    goto :goto_2f

    .line 1922
    .end local v1           #toastText:Ljava/lang/CharSequence;
    :sswitch_5c
    const v3, 0x7f08019d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1923
    .restart local v1       #toastText:Ljava/lang/CharSequence;
    goto :goto_2f

    .line 1927
    .end local v1           #toastText:Ljava/lang/CharSequence;
    :sswitch_64
    const v3, 0x7f08019c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1928
    .restart local v1       #toastText:Ljava/lang/CharSequence;
    goto :goto_2f

    .line 1932
    .end local v1           #toastText:Ljava/lang/CharSequence;
    :sswitch_6c
    const v3, 0x7f0800b3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1933
    .restart local v1       #toastText:Ljava/lang/CharSequence;
    goto :goto_2f

    .line 1937
    .end local v1           #toastText:Ljava/lang/CharSequence;
    :sswitch_74
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1938
    .restart local v1       #toastText:Ljava/lang/CharSequence;
    goto :goto_2f

    .line 1942
    .end local v1           #toastText:Ljava/lang/CharSequence;
    :sswitch_79
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1943
    .restart local v1       #toastText:Ljava/lang/CharSequence;
    goto :goto_2f

    .line 1947
    .end local v1           #toastText:Ljava/lang/CharSequence;
    :sswitch_7e
    const v3, 0x7f0800b2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1948
    .restart local v1       #toastText:Ljava/lang/CharSequence;
    goto :goto_2f

    .line 1960
    .end local v0           #res:Landroid/content/res/Resources;
    .end local v1           #toastText:Ljava/lang/CharSequence;
    :cond_86
    iget v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOperationType:I

    packed-switch v3, :pswitch_data_c2

    goto :goto_10

    .line 1962
    :pswitch_8c
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v3, :cond_10

    .line 1963
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    goto/16 :goto_10

    .line 1900
    nop

    :sswitch_data_98
    .sparse-switch
        0x1 -> :sswitch_3c
        0x2 -> :sswitch_44
        0x14 -> :sswitch_4c
        0x15 -> :sswitch_54
        0x16 -> :sswitch_5c
        0x17 -> :sswitch_64
        0x1e -> :sswitch_6c
        0x1f -> :sswitch_74
        0x20 -> :sswitch_79
        0x28 -> :sswitch_7e
    .end sparse-switch

    .line 1960
    :pswitch_data_c2
    .packed-switch 0x17
        :pswitch_8c
    .end packed-switch
.end method

.method private hasPlusOned()Z
    .registers 2

    .prologue
    .line 1132
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

.method private hideFooter(ZZ)V
    .registers 3
    .parameter "hide"
    .parameter "animate"

    .prologue
    .line 1528
    if-eqz p1, :cond_6

    .line 1529
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->hideFooterView(Z)V

    .line 1533
    :goto_5
    return-void

    .line 1531
    :cond_6
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showFooterView(Z)V

    goto :goto_5
.end method

.method private hideFooterView(Z)V
    .registers 6
    .parameter "animate"

    .prologue
    const/16 v3, 0x8

    .line 1539
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_b

    .line 1553
    :goto_a
    return-void

    .line 1543
    :cond_b
    if-eqz p1, :cond_22

    .line 1544
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1545
    .local v0, activity:Landroid/app/Activity;
    const v2, 0x7f040008

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1548
    .local v1, commentAnimation:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    invoke-static {v2}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 1550
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1552
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #commentAnimation:Landroid/view/animation/Animation;
    :cond_22
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a
.end method

.method private hideProgressDialog()V
    .registers 3

    .prologue
    .line 1875
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1876
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_c

    .line 1877
    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 1879
    :cond_c
    return-void
.end method

.method private recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 1979
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_d

    .line 1980
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1982
    :cond_d
    return-void
.end method

.method private refresh()V
    .registers 6

    .prologue
    .line 1839
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/service/EsService;->getPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 1840
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateView(Landroid/view/View;)V

    .line 1841
    return-void
.end method

.method private setViewVisibility(Z)V
    .registers 13
    .parameter "animate"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1580
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v4, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isFragmentFullScreen(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    .line 1581
    .local v0, fullScreen:Z
    if-nez v0, :cond_12

    iget-wide v7, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-nez v4, :cond_3a

    :cond_12
    move v1, v6

    .line 1582
    .local v1, hide:Z
    :goto_13
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v4}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isShowPhotoOnly()Z

    move-result v3

    .line 1583
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

    .line 1585
    .local v2, hideFooter:Z
    :goto_28
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v4, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v4, v1, p1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->setFullScreen(ZZ)V

    .line 1586
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v4, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v4, v3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->setShowPhotoOnly(Z)V

    .line 1587
    invoke-direct {p0, v2, p1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->hideFooter(ZZ)V

    .line 1588
    return-void

    .end local v1           #hide:Z
    .end local v2           #hideFooter:Z
    .end local v3           #photoOnly:Z
    :cond_3a
    move v1, v5

    .line 1581
    goto :goto_13

    .restart local v1       #hide:Z
    .restart local v3       #photoOnly:Z
    :cond_3c
    move v2, v5

    .line 1583
    goto :goto_28
.end method

.method private setVisible(Landroid/view/Menu;IZ)V
    .registers 5
    .parameter "menu"
    .parameter "menuItemId"
    .parameter "visible"

    .prologue
    .line 1796
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1797
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_9

    .line 1798
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1800
    :cond_9
    return-void
.end method

.method private showFooterView(Z)V
    .registers 6
    .parameter "animate"

    .prologue
    .line 1559
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    .line 1572
    :goto_8
    return-void

    .line 1564
    :cond_9
    if-eqz p1, :cond_1b

    .line 1565
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1566
    .local v0, activity:Landroid/app/Activity;
    const v2, 0x7f040009

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1569
    .local v1, commentAnimation:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1571
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #commentAnimation:Landroid/view/animation/Animation;
    :cond_1b
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8
.end method

.method private showProgressDialog(I)V
    .registers 3
    .parameter "operationType"

    .prologue
    .line 1849
    const v0, 0x7f0801af

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showProgressDialog(ILjava/lang/String;)V

    .line 1850
    return-void
.end method

.method private showProgressDialog(ILjava/lang/String;)V
    .registers 6
    .parameter "operationType"
    .parameter "progressText"

    .prologue
    .line 1859
    iput p1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOperationType:I

    .line 1861
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1862
    .local v1, args:Landroid/os/Bundle;
    const-string v2, "dialog_message"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1865
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_18

    .line 1866
    const v2, 0x7f09002e

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 1868
    :cond_18
    return-void
.end method

.method private updateMenuItems()V
    .registers 2

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    if-eqz v0, :cond_9

    .line 1805
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->updateMenuItems()V

    .line 1807
    :cond_9
    return-void
.end method

.method private updateView(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 1814
    if-eqz p1, :cond_b

    const v2, 0x1020004

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_c

    .line 1835
    :cond_b
    :goto_b
    return-void

    .line 1818
    :cond_c
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v2, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->isPhotoBound()Z

    move-result v0

    .line 1819
    .local v0, hasImage:Z
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v2, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->isPhotoLoading()Z

    move-result v1

    .line 1821
    .local v1, imageLoading:Z
    if-eqz v1, :cond_27

    .line 1822
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 1834
    :goto_21
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    goto :goto_b

    .line 1824
    :cond_27
    if-eqz v0, :cond_2d

    .line 1825
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showContent(Landroid/view/View;)V

    goto :goto_21

    .line 1826
    :cond_2d
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIsPlaceHolder:Z

    if-eqz v2, :cond_3b

    .line 1827
    const v2, 0x7f0800a4

    invoke-virtual {p0, p1, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 1828
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showEmptyView(Landroid/view/View;)V

    goto :goto_21

    .line 1830
    :cond_3b
    const v2, 0x7f080096

    invoke-virtual {p0, p1, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 1831
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showEmptyView(Landroid/view/View;)V

    goto :goto_21
.end method


# virtual methods
.method public downloadPhoto(Landroid/content/Context;Z)V
    .registers 14
    .parameter "context"
    .parameter "fullRes"

    .prologue
    const/16 v6, 0x800

    .line 1438
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    if-nez v5, :cond_7

    .line 1478
    :goto_6
    return-void

    .line 1442
    :cond_7
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v5, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getPhotoRef()Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v3

    .line 1443
    .local v3, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v5, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 1446
    .local v0, albumName:Ljava/lang/String;
    iget-wide v7, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-nez v5, :cond_6f

    .line 1447
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    .line 1456
    .local v2, imageUrl:Ljava/lang/String;
    :goto_21
    invoke-static {v2}, Lcom/google/android/apps/plus/phone/FIFEUtil;->isFifeHostedUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 1457
    if-eqz p2, :cond_78

    .line 1458
    const-string v5, "d"

    invoke-static {v5, v2}, Lcom/google/android/apps/plus/phone/FIFEUtil;->setImageUrlOptions(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1467
    .local v1, downloadUrl:Ljava/lang/String;
    :goto_33
    if-eqz v1, :cond_88

    .line 1468
    const-string v5, "PhotoViewFragment"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1469
    const-string v5, "PhotoViewFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Downloading image from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_56
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p1, v5, v1, p2, v0}, Lcom/google/android/apps/plus/service/EsService;->savePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 1473
    const/16 v5, 0x2a

    const v6, 0x7f0800ad

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showProgressDialog(ILjava/lang/String;)V

    goto :goto_6

    .line 1449
    .end local v1           #downloadUrl:Ljava/lang/String;
    .end local v2           #imageUrl:Ljava/lang/String;
    :cond_6f
    if-nez v3, :cond_73

    const/4 v2, 0x0

    .restart local v2       #imageUrl:Ljava/lang/String;
    :goto_72
    goto :goto_21

    .end local v2           #imageUrl:Ljava/lang/String;
    :cond_73
    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_72

    .line 1460
    .restart local v2       #imageUrl:Ljava/lang/String;
    :cond_78
    const/4 v5, 0x0

    invoke-static {v6, v2, v5}, Lcom/google/android/apps/plus/phone/FIFEUtil;->setImageUrlSize(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #downloadUrl:Ljava/lang/String;
    goto :goto_33

    .line 1463
    .end local v1           #downloadUrl:Ljava/lang/String;
    :cond_7e
    if-eqz p2, :cond_86

    const/4 v5, -0x1

    :goto_81
    invoke-static {v5, v2}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->setImageUrlSize(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #downloadUrl:Ljava/lang/String;
    goto :goto_33

    .end local v1           #downloadUrl:Ljava/lang/String;
    :cond_86
    move v5, v6

    goto :goto_81

    .line 1475
    .restart local v1       #downloadUrl:Ljava/lang/String;
    :cond_88
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800af

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1476
    .local v4, toastText:Ljava/lang/String;
    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6
.end method

.method protected isEmpty()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1121
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 1122
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_20

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_20

    move v0, v3

    .line 1125
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

    .line 1122
    goto :goto_12

    .restart local v0       #isViewAvailable:Z
    :cond_22
    move v2, v4

    .line 1125
    goto :goto_1f
.end method

.method public onActionBarHeightCalculated(I)V
    .registers 3
    .parameter "actionBarHeight"

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->setActionBarHeight(I)V

    .line 1117
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1510
    packed-switch p1, :pswitch_data_10

    .line 1522
    :cond_3
    :goto_3
    return-void

    .line 1512
    :pswitch_4
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 1513
    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPendingBytes:[B

    goto :goto_3

    .line 1510
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 610
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onAttach(Landroid/app/Activity;)V

    .line 611
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    if-eqz v0, :cond_c

    .line 612
    check-cast p1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    .line 616
    return-void

    .line 614
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
    const v1, 0x7f09003c

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 968
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_104

    .line 1006
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->isPhotoBound()Z

    move-result v0

    if-nez v0, :cond_b1

    .line 1009
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isFragmentFullScreen(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1010
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->toggleFullScreen()V

    .line 1030
    :cond_23
    :goto_23
    return-void

    .line 970
    :sswitch_24
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 971
    .local v11, commentText:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_59

    .line 972
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getPicasaPhotoId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getMentions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1, v2, v11, v3}, Lcom/google/android/apps/plus/service/EsService;->createPhotoComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 975
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 977
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showProgressDialog(I)V

    goto :goto_23

    .line 979
    :cond_59
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentButton:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_23

    .line 985
    .end local v11           #commentText:Ljava/lang/String;
    :sswitch_5f
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->toggleTags()V

    goto :goto_23

    .line 990
    :sswitch_67
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 991
    .local v4, shapeId:Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    iget-wide v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->nameTagApproval(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 993
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showProgressDialog(I)V

    goto :goto_23

    .line 998
    .end local v4           #shapeId:Ljava/lang/Long;
    :sswitch_8b
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 999
    .restart local v4       #shapeId:Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    iget-wide v5, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->nameTagApproval(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 1001
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showProgressDialog(I)V

    goto/16 :goto_23

    .line 1015
    .end local v4           #shapeId:Ljava/lang/Long;
    :cond_b1
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_fc

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isFragmentFullScreen(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 1016
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->isVideoReady()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 1017
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    iget-wide v8, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getVideoData()[B

    move-result-object v10

    invoke-static/range {v5 .. v10}, Lcom/google/android/apps/plus/phone/Intents;->getVideoViewActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;J[B)Landroid/content/Intent;

    move-result-object v12

    .line 1019
    .local v12, startIntent:Landroid/content/Intent;
    invoke-virtual {p0, v12}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_23

    .line 1021
    .end local v12           #startIntent:Landroid/content/Intent;
    :cond_e8
    const v0, 0x7f0800a3

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1022
    .local v13, toastText:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v13, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_23

    .line 1025
    .end local v13           #toastText:Ljava/lang/String;
    :cond_fc
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->toggleFullScreen()V

    goto/16 :goto_23

    .line 968
    nop

    :sswitch_data_104
    .sparse-switch
        0x7f0900da -> :sswitch_24
        0x7f09019e -> :sswitch_5f
        0x7f0901ac -> :sswitch_67
        0x7f0901ad -> :sswitch_8b
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 14
    .parameter "item"

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isFragmentActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1645
    const/4 v0, 0x0

    .line 1722
    :goto_9
    return v0

    .line 1650
    :cond_a
    :try_start_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v10

    check-cast v10, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_10} :catch_16

    .line 1656
    .local v10, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v0, v10, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-nez v0, :cond_19

    .line 1657
    const/4 v0, 0x0

    goto :goto_9

    .line 1651
    .end local v10           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :catch_16
    move-exception v9

    .line 1652
    .local v9, e:Ljava/lang/ClassCastException;
    const/4 v0, 0x0

    goto :goto_9

    .line 1660
    .end local v9           #e:Ljava/lang/ClassCastException;
    .restart local v10       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_19
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    iget v1, v10, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getItem(I)Ljava/lang/Object;

    .line 1662
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCommentId()Ljava/lang/String;

    move-result-object v3

    .line 1664
    .local v3, commentId:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_f4

    .line 1722
    const/4 v0, 0x0

    goto :goto_9

    .line 1666
    :pswitch_33
    const v0, 0x7f080179

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080181

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080209

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f08020a

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v2, v5}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v8

    .line 1671
    .local v8, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v0, 0x0

    invoke-virtual {v8, p0, v0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1674
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    .line 1675
    .local v6, commentIds:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object v3, v6, v0

    .line 1676
    invoke-virtual {v8}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "comments"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1678
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "remove_comment"

    invoke-virtual {v8, v0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1679
    const/4 v0, 0x1

    goto :goto_9

    .line 1683
    .end local v6           #commentIds:[Ljava/lang/String;
    .end local v8           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :pswitch_71
    const v0, 0x7f080178

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080183

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080209

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f08020a

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v2, v5}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v8

    .line 1688
    .restart local v8       #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v0, 0x0

    invoke-virtual {v8, p0, v0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1691
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    .line 1692
    .restart local v6       #commentIds:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object v3, v6, v0

    .line 1693
    invoke-virtual {v8}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "comments"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1695
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "report_comment"

    invoke-virtual {v8, v0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1696
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 1700
    .end local v6           #commentIds:[Ljava/lang/String;
    .end local v8           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :pswitch_b0
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCommentContentHtml()Ljava/lang/String;

    move-result-object v7

    .line 1701
    .local v7, content:Ljava/lang/String;
    invoke-virtual {p0, v3, v7}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->openCommentEditor(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 1706
    .end local v7           #content:Ljava/lang/String;
    :pswitch_be
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActivityId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->plusOneComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1708
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 1712
    :pswitch_ce
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getPlusOneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v11

    .line 1713
    .local v11, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    if-eqz v11, :cond_f1

    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->hasPlusoneId()Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v4

    .line 1716
    .local v4, plusOneId:Ljava/lang/String;
    :goto_e2
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActivityId:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->plusOneComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1718
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 1713
    .end local v4           #plusOneId:Ljava/lang/String;
    :cond_f1
    const/4 v4, 0x0

    goto :goto_e2

    .line 1664
    nop

    :pswitch_data_f4
    .packed-switch 0x2
        :pswitch_b0
        :pswitch_33
        :pswitch_71
        :pswitch_be
        :pswitch_ce
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 626
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 628
    if-eqz p1, :cond_9f

    .line 629
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.apps.plus.PhotoViewFragment.INTENT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    .line 630
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.FRAGMENT_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mFragmentId:I

    .line 631
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.FORCE_LOAD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 632
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.FORCE_LOAD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mForceLoadId:Ljava/lang/Long;

    .line 634
    :cond_35
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.DOWNLOADABLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 635
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.DOWNLOADABLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mDownloadable:Ljava/lang/Boolean;

    .line 643
    :cond_49
    :goto_49
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 644
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "photo_id"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    .line 645
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    .line 646
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "event_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mEventId:Ljava/lang/String;

    .line 647
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "photo_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    .line 648
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "display_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mDisplayName:Ljava/lang/String;

    .line 649
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "album_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mDefaultAlbumName:Ljava/lang/String;

    .line 650
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "allow_plusone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAllowPlusOne:Z

    .line 652
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setHasOptionsMenu(Z)V

    .line 653
    return-void

    .line 638
    :cond_9f
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "refresh"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 639
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "refresh"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mForceLoadId:Ljava/lang/Long;

    goto :goto_49
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 15
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 1595
    :try_start_2
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v2, v0
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_6} :catch_13

    .line 1601
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v6, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    iget v7, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getItemViewType(I)I

    move-result v5

    .line 1602
    .local v5, type:I
    if-eq v5, v10, :cond_15

    .line 1640
    .end local v2           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v5           #type:I
    :cond_12
    :goto_12
    return-void

    .line 1596
    :catch_13
    move-exception v1

    .line 1597
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_12

    .line 1606
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v2       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .restart local v5       #type:I
    :cond_15
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v6, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    iget v7, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getItem(I)Ljava/lang/Object;

    .line 1607
    const v7, 0x7f080126

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v6, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getAuthorName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1624
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v6, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getAuthorGaiaId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/google/android/apps/plus/content/EsAccount;->isMyGaiaId(Ljava/lang/String;)Z

    move-result v3

    .line 1625
    .local v3, myComment:Z
    if-eqz v3, :cond_67

    .line 1626
    const/4 v6, 0x2

    const v7, 0x7f08019a

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {p1, v9, v6, v9, v7}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1634
    :goto_50
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/content/EsAccount;->isMyGaiaId(Ljava/lang/String;)Z

    move-result v4

    .line 1635
    .local v4, myPhoto:Z
    if-nez v4, :cond_5c

    if-eqz v3, :cond_12

    .line 1637
    :cond_5c
    const v6, 0x7f080179

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v9, v10, v9, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_12

    .line 1630
    .end local v4           #myPhoto:Z
    :cond_67
    const/4 v6, 0x4

    const v7, 0x7f080178

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v9, v6, v9, v7}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_50
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 11
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

    .line 804
    packed-switch p1, :pswitch_data_54

    move-object v0, v4

    .line 827
    :goto_5
    return-object v0

    .line 806
    :pswitch_6
    new-instance v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mForceLoadId:Ljava/lang/Long;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/PhotoViewLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;)V

    goto :goto_5

    .line 811
    :pswitch_1a
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_SHAPES_BY_PHOTO_ID_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    .line 814
    .local v2, queryUri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoShapeQuery;->PROJECTION:[Ljava/lang/String;

    const-string v6, "shape_id"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 819
    .end local v2           #queryUri:Landroid/net/Uri;
    :pswitch_37
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_PHOTO_ID_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    .line 822
    .restart local v2       #queryUri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PlusOneQuery;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 804
    nop

    :pswitch_data_54
    .packed-switch 0x7f09002b
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
    .line 1202
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v2, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isFragmentActive(Landroid/support/v4/app/Fragment;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1217
    :cond_8
    :goto_8
    return-void

    .line 1206
    :cond_9
    const v2, 0x7f100023

    invoke-virtual {p2, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1207
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_8

    .line 1211
    const v2, 0x7f0902ae

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 1213
    .local v0, barLayout:Landroid/view/View;
    const v2, 0x7f09004a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 1215
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
    .line 658
    const v0, 0x7f03008a

    invoke-super {p0, p1, p2, p3, v0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v11

    .line 662
    .local v11, view:Landroid/view/View;
    const v0, 0x7f03001d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mFooterView:Landroid/view/View;

    .line 664
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

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mEventId:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mFooterView:Landroid/view/View;

    move-object v5, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;Landroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    .line 668
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoListView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 669
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 672
    const v0, 0x7f09014d

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    .line 674
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    const v1, 0x7f0900da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentButton:Landroid/view/View;

    .line 675
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    const v1, 0x7f0900d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 679
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->init(Landroid/support/v4/app/Fragment;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/views/AudienceView;)V

    .line 680
    new-instance v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$MyTextWatcher;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$MyTextWatcher;-><init>(Landroid/view/View;Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mTextWatcher:Landroid/text/TextWatcher;

    .line 681
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 682
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    new-instance v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 698
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentButton:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_c3

    const/4 v0, 0x1

    :goto_a0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 700
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    invoke-static {v0}, Lcom/google/android/apps/plus/util/ViewUtils;->getListenerForSwitchToList(Landroid/widget/AbsListView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v10

    .line 702
    .local v10, switchToListListener:Landroid/view/View$OnFocusChangeListener;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0, v10}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 703
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentButton:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 706
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setViewVisibility(Z)V

    .line 708
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_c5

    .line 710
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 719
    :cond_c2
    :goto_c2
    return-object v11

    .line 698
    .end local v10           #switchToListListener:Landroid/view/View$OnFocusChangeListener;
    :cond_c3
    const/4 v0, 0x0

    goto :goto_a0

    .line 712
    .restart local v10       #switchToListListener:Landroid/view/View$OnFocusChangeListener;
    :cond_c5
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoListView;->setChoiceMode(I)V

    .line 713
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoListView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 715
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    if-eqz v0, :cond_c2

    .line 716
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->getActionBarHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->setActionBarHeight(I)V

    goto :goto_c2
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 771
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    .line 772
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentView:Landroid/view/View;

    .line 773
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 774
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 775
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->destroy()V

    .line 776
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 777
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 778
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentButton:Landroid/view/View;

    .line 779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIsPlaceHolder:Z

    .line 780
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 781
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->clear()V

    .line 783
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onDestroyView()V

    .line 784
    return-void
.end method

.method public onDetach()V
    .registers 2

    .prologue
    .line 620
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    .line 621
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onDetach()V

    .line 622
    return-void
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1785
    return-void
.end method

.method public onDialogListClick(ILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "which"
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1789
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1781
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 14
    .parameter "args"
    .parameter "tag"

    .prologue
    const/4 v10, 0x0

    const/16 v2, 0xb

    const/4 v5, 0x1

    .line 1729
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1730
    .local v7, photoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-wide v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1731
    const-string v0, "remove_dialog"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1732
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 1733
    .local v6, context:Landroid/content/Context;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    invoke-static {v6, v0, v1, v7, v2}, Lcom/google/android/apps/plus/service/EsService;->photoAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 1735
    const/4 v0, 0x2

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0005

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showProgressDialog(ILjava/lang/String;)V

    .line 1777
    .end local v6           #context:Landroid/content/Context;
    :cond_3d
    :goto_3d
    return-void

    .line 1738
    :cond_3e
    const-string v0, "report_dialog"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1739
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->REPORT_SPAM:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    invoke-static {v0, v1, v2, v7, v3}, Lcom/google/android/apps/plus/service/EsService;->photoAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 1741
    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showProgressDialog(I)V

    goto :goto_3d

    .line 1743
    :cond_5e
    const-string v0, "remove_comment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 1744
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_73

    .line 1745
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v0, :cond_73

    .line 1746
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 1749
    :cond_73
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

    .line 1751
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showProgressDialog(I)V

    goto :goto_3d

    .line 1753
    :cond_95
    const-string v0, "report_comment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 1754
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_aa

    .line 1755
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v0, :cond_aa

    .line 1756
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 1759
    :cond_aa
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "comments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v8, "delete"

    invoke-virtual {p1, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->reportPhotoComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;[Ljava/lang/String;ZZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 1762
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showProgressDialog(I)V

    goto/16 :goto_3d

    .line 1764
    :cond_d3
    const-string v0, "remove_tag"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1765
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_e8

    .line 1766
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v0, :cond_e8

    .line 1767
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 1770
    :cond_e8
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getMyApprovedShapeId()Ljava/lang/Long;

    move-result-object v4

    .line 1771
    .local v4, shapeId:Ljava/lang/Long;
    if-eqz v4, :cond_3d

    .line 1772
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    iget-wide v8, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move v5, v10

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->nameTagApproval(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 1774
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showProgressDialog(I)V

    goto/16 :goto_3d
.end method

.method public onFullScreenChanged(ZZ)V
    .registers 4
    .parameter "fullScreen"
    .parameter "animate"

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isFragmentActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1074
    const/4 p2, 0x0

    .line 1076
    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setViewVisibility(Z)V

    .line 1077
    return-void
.end method

.method public onGlobalLayout()V
    .registers 3

    .prologue
    .line 1063
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1064
    .local v0, view:Landroid/view/View;
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 1065
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateView(Landroid/view/View;)V

    .line 1066
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PhotoListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1068
    :cond_1b
    return-void
.end method

.method public onInterceptMoveLeft(FF)Z
    .registers 4
    .parameter "origX"
    .parameter "origY"

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isFragmentActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1098
    const/4 v0, 0x0

    .line 1101
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
    .line 1106
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isFragmentActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1108
    const/4 v0, 0x0

    .line 1111
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
    .registers 24
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
    .line 834
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    if-nez v17, :cond_9

    .line 959
    :cond_8
    :goto_8
    return-void

    .line 838
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v17

    packed-switch v17, :pswitch_data_2a4

    goto :goto_8

    .line 840
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 842
    .local v7, context:Landroid/content/Context;
    if-eqz p2, :cond_1d

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-nez v17, :cond_2e

    .line 843
    :cond_1d
    const v17, 0x7f0800a9

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v7, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto :goto_8

    .line 849
    :cond_2e
    const/4 v9, 0x1

    .line 850
    .local v9, isPlaceHolder:Z
    const/4 v8, 0x0

    .line 851
    .local v8, forceRefresh:Z
    if-eqz p2, :cond_116

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_116

    .line 852
    const/16 v17, 0x10

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_18d

    const/4 v4, 0x0

    .line 854
    .local v4, activityBlob:[B
    :goto_45
    if-eqz v4, :cond_61

    .line 855
    invoke-static {v4}, Lcom/google/android/apps/plus/content/DbSerializer;->deserializeShortStringList([B)Ljava/util/List;

    move-result-object v5

    .line 857
    .local v5, activityList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_61

    .line 858
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActivityId:Ljava/lang/String;

    .line 862
    .end local v5           #activityList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_61
    const/16 v17, 0xd

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_199

    const/4 v15, 0x0

    .line 864
    .local v15, videoBlob:[B
    :goto_6e
    const/16 v16, 0x0

    .line 865
    .local v16, videoRefresh:Z
    if-eqz v15, :cond_84

    .line 867
    :try_start_72
    invoke-static {v15}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v13

    .line 868
    .local v13, proto:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    invoke-virtual {v13}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getStatus()Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    move-result-object v17

    sget-object v18, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->FINAL:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;
    :try_end_7c
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_72 .. :try_end_7c} :catch_2a0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1a5

    const/16 v16, 0x1

    .line 873
    .end local v13           #proto:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    :cond_84
    :goto_84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mDownloadable:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    if-nez v17, :cond_a0

    .line 874
    const/16 v17, 0x12

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_1a9

    const/16 v17, 0x0

    :goto_9a
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mDownloadable:Ljava/lang/Boolean;

    .line 878
    :cond_a0
    const/16 v17, 0x11

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 879
    .local v14, uploadStatus:I
    const/16 v17, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 880
    .local v6, albumStream:Ljava/lang/String;
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v14, v0, :cond_1c6

    const/4 v9, 0x1

    .line 881
    :goto_bb
    if-nez v9, :cond_c7

    if-nez v16, :cond_c7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mDownloadable:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    if-nez v17, :cond_1c9

    :cond_c7
    const-string v17, "profile_photos"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1c9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAutoRefreshDone:Z

    move/from16 v17, v0

    if-nez v17, :cond_1c9

    const/4 v8, 0x1

    .line 886
    :goto_da
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAutoRefreshDone:Z

    .line 888
    if-eqz v8, :cond_116

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOlderReqId:Ljava/lang/Integer;

    move-object/from16 v17, v0

    if-nez v17, :cond_116

    .line 891
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_1cc

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v7, v0, v1}, Lcom/google/android/apps/plus/service/EsService;->getPhotoSettings(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 899
    .end local v4           #activityBlob:[B
    .end local v6           #albumStream:Ljava/lang/String;
    .end local v14           #uploadStatus:I
    .end local v15           #videoBlob:[B
    .end local v16           #videoRefresh:Z
    :cond_116
    :goto_116
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mForceLoadId:Ljava/lang/Long;

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    move-object/from16 v17, v0

    check-cast v17, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    move-object/from16 v17, v0

    check-cast v17, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->notifyDataSetChanged()V

    .line 909
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIsPlaceHolder:Z

    .line 911
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_157

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    move-object/from16 v17, v0

    if-eqz v17, :cond_157

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->invalidate()V

    .line 915
    :cond_157
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateMenuItems()V

    .line 917
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v17

    const v18, 0x7f09002d

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 918
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v17

    const v18, 0x7f09002c

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 920
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setViewVisibility(Z)V

    goto/16 :goto_8

    .line 852
    :cond_18d
    const/16 v17, 0x10

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    goto/16 :goto_45

    .line 862
    .restart local v4       #activityBlob:[B
    :cond_199
    const/16 v17, 0xd

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    goto/16 :goto_6e

    .line 868
    .restart local v13       #proto:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .restart local v15       #videoBlob:[B
    .restart local v16       #videoRefresh:Z
    :cond_1a5
    const/16 v16, 0x0

    goto/16 :goto_84

    .line 874
    .end local v13           #proto:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    :cond_1a9
    const/16 v17, 0x12

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c3

    const/16 v17, 0x1

    :goto_1bd
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_9a

    :cond_1c3
    const/16 v17, 0x0

    goto :goto_1bd

    .line 880
    .restart local v6       #albumStream:Ljava/lang/String;
    .restart local v14       #uploadStatus:I
    :cond_1c6
    const/4 v9, 0x0

    goto/16 :goto_bb

    .line 881
    :cond_1c9
    const/4 v8, 0x0

    goto/16 :goto_da

    .line 894
    :cond_1cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-static {v7, v0, v1, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->getPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;J)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOlderReqId:Ljava/lang/Integer;

    goto/16 :goto_116

    .line 926
    .end local v4           #activityBlob:[B
    .end local v6           #albumStream:Ljava/lang/String;
    .end local v7           #context:Landroid/content/Context;
    .end local v8           #forceRefresh:Z
    .end local v9           #isPlaceHolder:Z
    .end local v14           #uploadStatus:I
    .end local v15           #videoBlob:[B
    .end local v16           #videoRefresh:Z
    :pswitch_1f4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 927
    .restart local v7       #context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    move-object/from16 v17, v0

    check-cast v17, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->bindScroller(Landroid/content/Context;Landroid/database/Cursor;)V

    goto/16 :goto_8

    .line 933
    .end local v7           #context:Landroid/content/Context;
    :pswitch_209
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPlusOneByMe:Ljava/lang/Boolean;

    .line 934
    .local v10, oldPlusOneByMe:Ljava/lang/Boolean;
    if-eqz p2, :cond_261

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_261

    .line 935
    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_27b

    const/4 v11, 0x0

    .line 937
    .local v11, plusOneBlob:[B
    :goto_222
    const/16 v17, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_286

    const/4 v12, 0x0

    .line 939
    .local v12, plusOneCount:I
    :goto_22f
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAlbumId:J

    .line 941
    if-lez v12, :cond_291

    if-eqz v11, :cond_291

    .line 942
    :try_start_243
    invoke-static {v11}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPlusOneByMe:Ljava/lang/Boolean;
    :try_end_261
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_243 .. :try_end_261} :catch_29e

    .line 951
    .end local v11           #plusOneBlob:[B
    .end local v12           #plusOneCount:I
    :cond_261
    :goto_261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPlusOneByMe:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-eq v10, v0, :cond_8

    .line 952
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateMenuItems()V

    .line 953
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getView()Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateView(Landroid/view/View;)V

    goto/16 :goto_8

    .line 935
    :cond_27b
    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    goto :goto_222

    .line 937
    .restart local v11       #plusOneBlob:[B
    :cond_286
    const/16 v17, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    goto :goto_22f

    .line 945
    .restart local v12       #plusOneCount:I
    :cond_291
    const/16 v17, 0x0

    :try_start_293
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPlusOneByMe:Ljava/lang/Boolean;
    :try_end_29d
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_293 .. :try_end_29d} :catch_29e

    goto :goto_261

    .line 947
    :catch_29e
    move-exception v17

    goto :goto_261

    .line 869
    .end local v10           #oldPlusOneByMe:Ljava/lang/Boolean;
    .end local v11           #plusOneBlob:[B
    .end local v12           #plusOneCount:I
    .restart local v4       #activityBlob:[B
    .restart local v7       #context:Landroid/content/Context;
    .restart local v8       #forceRefresh:Z
    .restart local v9       #isPlaceHolder:Z
    .restart local v15       #videoBlob:[B
    .restart local v16       #videoRefresh:Z
    :catch_2a0
    move-exception v17

    goto/16 :goto_84

    .line 838
    nop

    :pswitch_data_2a4
    .packed-switch 0x7f09002b
        :pswitch_11
        :pswitch_209
        :pswitch_1f4
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
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
    .line 964
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 31
    .parameter "item"

    .prologue
    .line 1264
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    move-object/from16 v0, p0

    invoke-interface {v5, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isFragmentActive(Landroid/support/v4/app/Fragment;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1265
    const/4 v5, 0x0

    .line 1425
    :goto_d
    return v5

    .line 1268
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    .line 1270
    .local v17, activity:Landroid/app/Activity;
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_28e

    .line 1425
    const/4 v5, 0x0

    goto :goto_d

    .line 1272
    :sswitch_1b
    check-cast v17, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    .end local v17           #activity:Landroid/app/Activity;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onTitlebarLabelClick()V

    .line 1273
    const/4 v5, 0x1

    goto :goto_d

    .line 1277
    .restart local v17       #activity:Landroid/app/Activity;
    :sswitch_22
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->canTogglePlusOne()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 1278
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAlbumId:J

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    const/4 v11, 0x1

    invoke-static/range {v4 .. v11}, Lcom/google/android/apps/plus/service/EsService;->photoPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;JJZ)I

    .line 1281
    :cond_40
    const/4 v5, 0x1

    goto :goto_d

    .line 1285
    :sswitch_42
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->canTogglePlusOne()Z

    move-result v5

    if-eqz v5, :cond_60

    .line 1286
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAlbumId:J

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lcom/google/android/apps/plus/service/EsService;->photoPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;JJZ)I

    .line 1289
    :cond_60
    const/4 v5, 0x1

    goto :goto_d

    .line 1293
    :sswitch_62
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    if-eqz v5, :cond_ae

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 1294
    .local v24, photoUri:Landroid/net/Uri;
    :goto_70
    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_b1

    move-object/from16 v9, v24

    .line 1295
    .local v9, localUri:Landroid/net/Uri;
    :goto_78
    if-eqz v9, :cond_b3

    const/4 v8, 0x0

    .line 1296
    .local v8, remoteUrl:Ljava/lang/String;
    :goto_7b
    new-instance v4, Lcom/google/android/apps/plus/api/MediaRef;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    sget-object v10, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-direct/range {v4 .. v10}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 1298
    .local v4, ref:Lcom/google/android/apps/plus/api/MediaRef;
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1299
    .local v25, refList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1301
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    .line 1302
    .local v19, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-static {v0, v5, v1}, Lcom/google/android/apps/plus/phone/Intents;->getPostActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v22

    .line 1303
    .local v22, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 1304
    const/4 v5, 0x1

    goto/16 :goto_d

    .line 1293
    .end local v4           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v8           #remoteUrl:Ljava/lang/String;
    .end local v9           #localUri:Landroid/net/Uri;
    .end local v19           #context:Landroid/content/Context;
    .end local v22           #intent:Landroid/content/Intent;
    .end local v24           #photoUri:Landroid/net/Uri;
    .end local v25           #refList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    :cond_ae
    const/16 v24, 0x0

    goto :goto_70

    .line 1294
    .restart local v24       #photoUri:Landroid/net/Uri;
    :cond_b1
    const/4 v9, 0x0

    goto :goto_78

    .line 1295
    .restart local v9       #localUri:Landroid/net/Uri;
    :cond_b3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    goto :goto_7b

    .line 1308
    .end local v9           #localUri:Landroid/net/Uri;
    .end local v24           #photoUri:Landroid/net/Uri;
    :sswitch_b8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    if-eqz v5, :cond_fc

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 1309
    .restart local v24       #photoUri:Landroid/net/Uri;
    :goto_c6
    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_ff

    move-object/from16 v9, v24

    .line 1310
    .restart local v9       #localUri:Landroid/net/Uri;
    :goto_ce
    if-eqz v9, :cond_101

    const/4 v8, 0x0

    .line 1311
    .restart local v8       #remoteUrl:Ljava/lang/String;
    :goto_d1
    new-instance v10, Lcom/google/android/apps/plus/api/MediaRef;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    sget-object v16, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    move-object v14, v8

    move-object v15, v9

    invoke-direct/range {v10 .. v16}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 1313
    .local v10, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mDisplayName:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v5, v6, v7, v10, v11}, Lcom/google/android/apps/plus/phone/Intents;->getPhotoPickerIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/api/MediaRef;Z)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1316
    const/4 v5, 0x1

    goto/16 :goto_d

    .line 1308
    .end local v8           #remoteUrl:Ljava/lang/String;
    .end local v9           #localUri:Landroid/net/Uri;
    .end local v10           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v24           #photoUri:Landroid/net/Uri;
    :cond_fc
    const/16 v24, 0x0

    goto :goto_c6

    .line 1309
    .restart local v24       #photoUri:Landroid/net/Uri;
    :cond_ff
    const/4 v9, 0x0

    goto :goto_ce

    .line 1310
    .restart local v9       #localUri:Landroid/net/Uri;
    :cond_101
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    goto :goto_d1

    .line 1320
    .end local v9           #localUri:Landroid/net/Uri;
    .end local v24           #photoUri:Landroid/net/Uri;
    :sswitch_106
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->downloadPhoto(Landroid/content/Context;Z)V

    .line 1321
    const/4 v5, 0x1

    goto/16 :goto_d

    .line 1325
    :sswitch_111
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v5, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getPhotoImage()Landroid/graphics/Bitmap;

    move-result-object v18

    .line 1326
    .local v18, bitmap:Landroid/graphics/Bitmap;
    if-eqz v18, :cond_159

    .line 1327
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 1328
    .local v26, res:Landroid/content/res/Resources;
    const v5, 0x7f0801ac

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1330
    .local v28, toastSuccess:Ljava/lang/String;
    const v5, 0x7f0801ab

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1331
    .local v27, toastError:Ljava/lang/String;
    const/16 v5, 0x29

    const v6, 0x7f0800ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showProgressDialog(ILjava/lang/String;)V

    .line 1333
    new-instance v5, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    move-object/from16 v3, v17

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    aput-object v18, v6, v7

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1357
    .end local v26           #res:Landroid/content/res/Resources;
    .end local v27           #toastError:Ljava/lang/String;
    .end local v28           #toastSuccess:Ljava/lang/String;
    :cond_159
    const/4 v5, 0x1

    goto/16 :goto_d

    .line 1361
    .end local v18           #bitmap:Landroid/graphics/Bitmap;
    :sswitch_15c
    const v5, 0x7f08008a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f08008b

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f080209

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v11, 0x7f08020a

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v6, v7, v11}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v20

    .line 1366
    .local v20, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v5}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1367
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "remove_tag"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1368
    const/4 v5, 0x1

    goto/16 :goto_d

    .line 1372
    .end local v20           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :sswitch_19a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->refresh()V

    .line 1373
    const/4 v5, 0x1

    goto/16 :goto_d

    .line 1377
    :sswitch_1a0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 1378
    .restart local v26       #res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    if-eqz v5, :cond_1ff

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 1379
    .restart local v24       #photoUri:Landroid/net/Uri;
    :goto_1b2
    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_202

    move-object/from16 v9, v24

    .line 1381
    .restart local v9       #localUri:Landroid/net/Uri;
    :goto_1ba
    if-nez v9, :cond_204

    const v23, 0x7f0e0003

    .line 1384
    .local v23, messageId:I
    :goto_1bf
    const v5, 0x7f0e0002

    const/4 v6, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0e0014

    const/4 v11, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v11}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v7

    const v11, 0x7f08020a

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v6, v7, v11}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v20

    .line 1389
    .restart local v20       #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v5}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1390
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "remove_dialog"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1391
    const/4 v5, 0x1

    goto/16 :goto_d

    .line 1378
    .end local v9           #localUri:Landroid/net/Uri;
    .end local v20           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    .end local v23           #messageId:I
    .end local v24           #photoUri:Landroid/net/Uri;
    :cond_1ff
    const/16 v24, 0x0

    goto :goto_1b2

    .line 1379
    .restart local v24       #photoUri:Landroid/net/Uri;
    :cond_202
    const/4 v9, 0x0

    goto :goto_1ba

    .line 1381
    .restart local v9       #localUri:Landroid/net/Uri;
    :cond_204
    const v23, 0x7f0e0004

    goto :goto_1bf

    .line 1395
    .end local v9           #localUri:Landroid/net/Uri;
    .end local v24           #photoUri:Landroid/net/Uri;
    .end local v26           #res:Landroid/content/res/Resources;
    :sswitch_208
    const v5, 0x7f08008c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f08008d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f080209

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v11, 0x7f08020a

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v6, v7, v11}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v20

    .line 1400
    .restart local v20       #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v5}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1401
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "report_dialog"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1402
    const/4 v5, 0x1

    goto/16 :goto_d

    .line 1406
    .end local v20           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :sswitch_246
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/google/android/apps/plus/phone/Intents;->getSettingsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v22

    .line 1407
    .restart local v22       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 1408
    const/4 v5, 0x1

    goto/16 :goto_d

    .line 1412
    .end local v22           #intent:Landroid/content/Intent;
    :sswitch_25a
    sget-object v5, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->SETTINGS_FEEDBACK:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1413
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/phone/GoogleFeedback;->launch(Landroid/app/Activity;)V

    .line 1414
    const/4 v5, 0x1

    goto/16 :goto_d

    .line 1418
    :sswitch_26b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08046d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1420
    .local v21, helpUrlParam:Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->startExternalActivity(Landroid/content/Intent;)V

    .line 1422
    const/4 v5, 0x1

    goto/16 :goto_d

    .line 1270
    nop

    :sswitch_data_28e
    .sparse-switch
        0x102002c -> :sswitch_1b
        0x7f0902ab -> :sswitch_246
        0x7f0902ac -> :sswitch_25a
        0x7f0902ad -> :sswitch_26b
        0x7f0902f7 -> :sswitch_62
        0x7f0902f8 -> :sswitch_22
        0x7f0902f9 -> :sswitch_42
        0x7f0902fa -> :sswitch_b8
        0x7f0902fb -> :sswitch_111
        0x7f0902fc -> :sswitch_15c
        0x7f0902fd -> :sswitch_19a
        0x7f0902fe -> :sswitch_1a0
        0x7f0902ff -> :sswitch_208
        0x7f090300 -> :sswitch_106
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 760
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onPause()V

    .line 762
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 763
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->removeScreenListener(Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;)V

    .line 764
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->removeMenuItemListener(Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;)V

    .line 765
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->resetPhotoView()V

    .line 766
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 15
    .parameter "menu"

    .prologue
    .line 1221
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v9, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isFragmentActive(Landroid/support/v4/app/Fragment;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1260
    :goto_8
    return-void

    .line 1225
    :cond_9
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    if-nez v9, :cond_b5

    const/4 v7, 0x0

    .line 1227
    .local v7, shapeId:Ljava/lang/Long;
    :goto_e
    if-eqz v7, :cond_bf

    const/4 v8, 0x1

    .line 1228
    .local v8, taggedAsMe:Z
    :goto_11
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    if-eqz v9, :cond_c2

    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1229
    .local v6, photoUri:Landroid/net/Uri;
    :goto_1b
    iget-wide v9, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_c5

    invoke-static {v6}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v9

    if-nez v9, :cond_c5

    const/4 v2, 0x1

    .line 1231
    .local v2, isRemotePhoto:Z
    :goto_2a
    iget-wide v9, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_c8

    if-eqz v6, :cond_c8

    const/4 v4, 0x1

    .line 1232
    .local v4, onlyPhotoUrl:Z
    :goto_35
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/apps/plus/content/EsAccount;->isMyGaiaId(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_49

    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    if-nez v9, :cond_cb

    invoke-static {v6}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_cb

    :cond_49
    const/4 v3, 0x1

    .line 1234
    .local v3, myPhoto:Z
    :goto_4a
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v10, "stream_id"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1235
    .local v5, photoStream:Ljava/lang/String;
    const-string v9, "camera_sync_created"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1236
    .local v1, isInstantUpload:Z
    if-nez v4, :cond_64

    if-eqz v2, :cond_ce

    if-nez v3, :cond_64

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->canDownload()Z

    move-result v9

    if-eqz v9, :cond_ce

    :cond_64
    const/4 v0, 0x1

    .line 1238
    .local v0, allowDownload:Z
    :goto_65
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-ge v9, v10, :cond_d0

    .line 1239
    const v9, 0x7f0902f9

    const/4 v10, 0x0

    invoke-direct {p0, p1, v9, v10}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1240
    const v9, 0x7f0902f8

    const/4 v10, 0x0

    invoke-direct {p0, p1, v9, v10}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1250
    :goto_79
    const v9, 0x7f0902f7

    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1253
    const v10, 0x7f0902fa

    if-nez v3, :cond_86

    if-eqz v8, :cond_fc

    :cond_86
    const/4 v9, 0x1

    :goto_87
    invoke-direct {p0, p1, v10, v9}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1254
    const v9, 0x7f0902fb

    invoke-direct {p0, p1, v9, v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1255
    const v9, 0x7f0902fe

    invoke-direct {p0, p1, v9, v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1256
    const v9, 0x7f090300

    invoke-direct {p0, p1, v9, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1257
    const v10, 0x7f0902ff

    if-nez v3, :cond_fe

    if-eqz v2, :cond_fe

    const/4 v9, 0x1

    :goto_a4
    invoke-direct {p0, p1, v10, v9}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1258
    const v9, 0x7f0902fd

    invoke-direct {p0, p1, v9, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1259
    const v9, 0x7f0902fc

    invoke-direct {p0, p1, v9, v8}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    goto/16 :goto_8

    .line 1225
    .end local v0           #allowDownload:Z
    .end local v1           #isInstantUpload:Z
    .end local v2           #isRemotePhoto:Z
    .end local v3           #myPhoto:Z
    .end local v4           #onlyPhotoUrl:Z
    .end local v5           #photoStream:Ljava/lang/String;
    .end local v6           #photoUri:Landroid/net/Uri;
    .end local v7           #shapeId:Ljava/lang/Long;
    .end local v8           #taggedAsMe:Z
    :cond_b5
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v9, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getMyApprovedShapeId()Ljava/lang/Long;

    move-result-object v7

    goto/16 :goto_e

    .line 1227
    .restart local v7       #shapeId:Ljava/lang/Long;
    :cond_bf
    const/4 v8, 0x0

    goto/16 :goto_11

    .line 1228
    .restart local v8       #taggedAsMe:Z
    :cond_c2
    const/4 v6, 0x0

    goto/16 :goto_1b

    .line 1229
    .restart local v6       #photoUri:Landroid/net/Uri;
    :cond_c5
    const/4 v2, 0x0

    goto/16 :goto_2a

    .line 1231
    .restart local v2       #isRemotePhoto:Z
    :cond_c8
    const/4 v4, 0x0

    goto/16 :goto_35

    .line 1232
    .restart local v4       #onlyPhotoUrl:Z
    :cond_cb
    const/4 v3, 0x0

    goto/16 :goto_4a

    .line 1236
    .restart local v1       #isInstantUpload:Z
    .restart local v3       #myPhoto:Z
    .restart local v5       #photoStream:Ljava/lang/String;
    :cond_ce
    const/4 v0, 0x0

    goto :goto_65

    .line 1241
    .restart local v0       #allowDownload:Z
    :cond_d0
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->hasPlusOned()Z

    move-result v9

    if-eqz v9, :cond_e5

    .line 1242
    const v9, 0x7f0902f9

    const/4 v10, 0x1

    invoke-direct {p0, p1, v9, v10}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1243
    const v9, 0x7f0902f8

    const/4 v10, 0x0

    invoke-direct {p0, p1, v9, v10}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    goto :goto_79

    .line 1245
    :cond_e5
    const v9, 0x7f0902f9

    const/4 v10, 0x0

    invoke-direct {p0, p1, v9, v10}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1246
    const v10, 0x7f0902f8

    iget-boolean v9, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAllowPlusOne:Z

    if-eqz v9, :cond_fa

    if-eqz v2, :cond_fa

    const/4 v9, 0x1

    :goto_f6
    invoke-direct {p0, p1, v10, v9}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    goto :goto_79

    :cond_fa
    const/4 v9, 0x0

    goto :goto_f6

    .line 1253
    :cond_fc
    const/4 v9, 0x0

    goto :goto_87

    .line 1257
    :cond_fe
    const/4 v9, 0x0

    goto :goto_a4
.end method

.method public onPrepareTitlebarButtons(Landroid/view/Menu;)Z
    .registers 15
    .parameter "menu"

    .prologue
    const-wide/16 v11, 0x0

    const v10, 0x7f0902f9

    const v9, 0x7f0902f8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1176
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v7, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isFragmentActive(Landroid/support/v4/app/Fragment;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 1197
    :goto_12
    return v6

    .line 1180
    :cond_13
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    if-eqz v7, :cond_69

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1181
    .local v4, photoUri:Landroid/net/Uri;
    :goto_1d
    iget-wide v7, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    cmp-long v7, v7, v11

    if-eqz v7, :cond_6b

    invoke-static {v4}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v7

    if-nez v7, :cond_6b

    move v1, v5

    .line 1183
    .local v1, isRemotePhoto:Z
    :goto_2a
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/apps/plus/content/EsAccount;->isMyGaiaId(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3e

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    if-nez v7, :cond_6d

    invoke-static {v4}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_6d

    :cond_3e
    move v2, v5

    .line 1185
    .local v2, myPhoto:Z
    :goto_3f
    iget-wide v7, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    cmp-long v7, v7, v11

    if-nez v7, :cond_6f

    if-eqz v4, :cond_6f

    move v3, v5

    .line 1186
    .local v3, onlyPhotoUrl:Z
    :goto_48
    if-nez v3, :cond_54

    if-eqz v1, :cond_71

    if-nez v2, :cond_54

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->canDownload()Z

    move-result v7

    if-eqz v7, :cond_71

    :cond_54
    move v0, v5

    .line 1188
    .local v0, allowDownload:Z
    :goto_55
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->hasPlusOned()Z

    move-result v7

    if-eqz v7, :cond_73

    .line 1189
    invoke-direct {p0, p1, v10, v5}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1190
    invoke-direct {p0, p1, v9, v6}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1195
    :goto_61
    const v6, 0x7f090300

    invoke-direct {p0, p1, v6, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    move v6, v5

    .line 1197
    goto :goto_12

    .line 1180
    .end local v0           #allowDownload:Z
    .end local v1           #isRemotePhoto:Z
    .end local v2           #myPhoto:Z
    .end local v3           #onlyPhotoUrl:Z
    .end local v4           #photoUri:Landroid/net/Uri;
    :cond_69
    const/4 v4, 0x0

    goto :goto_1d

    .restart local v4       #photoUri:Landroid/net/Uri;
    :cond_6b
    move v1, v6

    .line 1181
    goto :goto_2a

    .restart local v1       #isRemotePhoto:Z
    :cond_6d
    move v2, v6

    .line 1183
    goto :goto_3f

    .restart local v2       #myPhoto:Z
    :cond_6f
    move v3, v6

    .line 1185
    goto :goto_48

    .restart local v3       #onlyPhotoUrl:Z
    :cond_71
    move v0, v6

    .line 1186
    goto :goto_55

    .line 1192
    .restart local v0       #allowDownload:Z
    :cond_73
    invoke-direct {p0, p1, v10, v6}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    .line 1193
    iget-boolean v7, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAllowPlusOne:Z

    if-eqz v7, :cond_7d

    if-eqz v1, :cond_7d

    move v6, v5

    :cond_7d
    invoke-direct {p0, p1, v9, v6}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->setVisible(Landroid/view/Menu;IZ)V

    goto :goto_61
.end method

.method public onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 724
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v2, :cond_46

    const/4 v0, 0x1

    .line 726
    .local v0, hadProgressDialog:Z
    :goto_6
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onResume()V

    .line 728
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v2}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 729
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v2, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->addScreenListener(Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;)V

    .line 730
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v2, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->addMenuItemListener(Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;)V

    .line 732
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const v3, 0x7f09002b

    invoke-virtual {v2, v3, v4, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 735
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPendingBytes:[B

    if-eqz v2, :cond_3c

    .line 736
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v2, :cond_48

    .line 739
    const-string v2, "PhotoViewFragment"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 740
    const-string v2, "PhotoViewFragment"

    const-string v3, "Both a pending profile image and an existing request"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_3a
    :goto_3a
    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPendingBytes:[B

    .line 752
    :cond_3c
    if-eqz v0, :cond_45

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    if-nez v2, :cond_45

    .line 754
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->hideProgressDialog()V

    .line 756
    :cond_45
    return-void

    .line 724
    .end local v0           #hadProgressDialog:Z
    :cond_46
    const/4 v0, 0x0

    goto :goto_6

    .line 743
    .restart local v0       #hadProgressDialog:Z
    :cond_48
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPendingBytes:[B

    .line 745
    .local v1, profileBytes:[B
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v2, v3, v1}, Lcom/google/android/apps/plus/service/EsService;->setProfilePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 746
    const/16 v2, 0x28

    const v3, 0x7f0800b1

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->showProgressDialog(ILjava/lang/String;)V

    goto :goto_3a
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 788
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 790
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_37

    .line 791
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.INTENT"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 792
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.FRAGMENT_ID"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mFragmentId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 793
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mForceLoadId:Ljava/lang/Long;

    if-eqz v0, :cond_28

    .line 794
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.FORCE_LOAD"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mForceLoadId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 796
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mDownloadable:Ljava/lang/Boolean;

    if-eqz v0, :cond_37

    .line 797
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.DOWNLOADABLE"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mDownloadable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 800
    :cond_37
    return-void
.end method

.method public bridge synthetic onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method protected onScrollDown()V
    .registers 7

    .prologue
    .line 1037
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mFooterView:Landroid/view/View;

    const v2, 0x7f090079

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1038
    .local v0, progressView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_29

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOlderReqId:Ljava/lang/Integer;

    if-nez v1, :cond_29

    .line 1040
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/apps/plus/service/EsService;->getPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 1042
    :cond_29
    return-void
.end method

.method public bridge synthetic onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public onUpdateProgressView(Landroid/widget/ProgressBar;)V
    .registers 4
    .parameter "progressBarView"

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    .line 1166
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 1168
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1169
    .local v0, myView:Landroid/view/View;
    if-eqz v0, :cond_10

    .line 1170
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateView(Landroid/view/View;)V

    .line 1172
    :cond_10
    return-void
.end method

.method public onViewActivated()V
    .registers 3

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->isFragmentActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1083
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->resetViews()V

    .line 1092
    :cond_f
    :goto_f
    return-void

    .line 1085
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->onFragmentVisible(Landroid/support/v4/app/Fragment;)V

    .line 1088
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_f

    .line 1089
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateMenuItems()V

    goto :goto_f
.end method

.method openCommentEditor(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "editCommentId"
    .parameter "comment"

    .prologue
    .line 1991
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActivityId:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/Intents;->getEditCommentActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 1993
    .local v7, editCommentIntent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 1994
    return-void
.end method
