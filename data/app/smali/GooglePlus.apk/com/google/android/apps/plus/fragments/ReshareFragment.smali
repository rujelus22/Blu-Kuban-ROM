.class public Lcom/google/android/apps/plus/fragments/ReshareFragment;
.super Lcom/google/android/apps/plus/fragments/AudienceFragment;
.source "ReshareFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
.implements Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/ReshareFragment$ServiceListener;,
        Lcom/google/android/apps/plus/fragments/ReshareFragment$AccountStatusQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/AudienceFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;",
        "Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;"
    }
.end annotation


# static fields
.field private static sAuthorBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mActivityId:Ljava/lang/String;

.field private mAvatarView:Landroid/widget/ImageView;

.field private mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

.field private mLimited:Z

.field private mPendingRequestId:Ljava/lang/Integer;

.field private mReshareInfo:Landroid/widget/TextView;

.field private mScrollView:Landroid/widget/ScrollView;

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private final mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;-><init>()V

    .line 89
    new-instance v0, Lcom/google/android/apps/plus/fragments/ReshareFragment$ServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/ReshareFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/ReshareFragment;Lcom/google/android/apps/plus/fragments/ReshareFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 112
    new-instance v0, Lcom/google/android/apps/plus/fragments/ReshareFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/ReshareFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mTextWatcher:Landroid/text/TextWatcher;

    .line 152
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/ReshareFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/ReshareFragment;)Landroid/widget/ScrollView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/ReshareFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    return-void
.end method

.method private handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 11
    .parameter "requestId"
    .parameter "result"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 279
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p1, :cond_f

    .line 309
    :cond_e
    :goto_e
    return-void

    .line 283
    :cond_f
    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 285
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "req_pending"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/DialogFragment;

    .line 287
    .local v1, dialog:Landroid/support/v4/app/DialogFragment;
    if-eqz v1, :cond_22

    .line 288
    invoke-virtual {v1}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 291
    :cond_22
    if-eqz p2, :cond_75

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 292
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 293
    .local v2, exception:Ljava/lang/Exception;
    instance-of v3, v2, Lcom/google/android/apps/plus/api/ServerException;

    if-eqz v3, :cond_66

    check-cast v2, Lcom/google/android/apps/plus/api/ServerException;

    .end local v2           #exception:Ljava/lang/Exception;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/ServerException;->getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    move-result-object v3

    sget-object v4, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->ES_STREAM_POST_RESTRICTIONS_NOT_SUPPORTED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    if-ne v3, v4, :cond_66

    .line 296
    const v3, 0x7f0801a4

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0801a3

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080209

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v7}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 300
    .local v0, alertDialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 301
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "StreamPostRestrictionsNotSupported"

    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_e

    .line 304
    .end local v0           #alertDialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :cond_66
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0801a1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_e

    .line 307
    :cond_75
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_e
.end method

.method private showProgressDialog()V
    .registers 4

    .prologue
    .line 267
    const/4 v0, 0x0

    const v1, 0x7f0801af

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 270
    return-void
.end method


# virtual methods
.method public hasContent()Z
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 162
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 165
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 166
    const-string v1, "activity_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mActivityId:Ljava/lang/String;

    .line 167
    const-string v1, "limited"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mLimited:Z

    .line 168
    sget-object v1, Lcom/google/android/apps/plus/fragments/ReshareFragment;->sAuthorBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_35

    .line 169
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/content/EsAvatarData;->getTinyDefaultAvatar(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/fragments/ReshareFragment;->sAuthorBitmap:Landroid/graphics/Bitmap;

    .line 172
    :cond_35
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mLimited:Z

    if-eqz v1, :cond_5b

    const/16 v1, 0x9

    :goto_3b
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->setCirclesUsageType(I)V

    .line 174
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->setIncludePhoneOnlyContacts(Z)V

    .line 175
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->setIncludePlusPages(Z)V

    .line 177
    if-eqz p1, :cond_5a

    .line 178
    const-string v1, "reshare_request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 179
    const-string v1, "reshare_request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 182
    :cond_5a
    return-void

    .line 172
    :cond_5b
    const/4 v1, 0x5

    goto :goto_3b
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

    .line 335
    packed-switch p1, :pswitch_data_3e

    move-object v0, v4

    .line 350
    :goto_5
    return-object v0

    .line 337
    :pswitch_6
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/fragments/ReshareFragment$AccountStatusQuery;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 342
    :pswitch_1c
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITY_VIEW_BY_ACTIVITY_ID_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 343
    .local v7, uri:Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mActivityId:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 344
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v7, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri$Builder;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri$Builder;

    .line 346
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/phone/StreamAdapter$StreamQuery;->PROJECTION_ACTIVITY:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 335
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1c
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 187
    const v1, 0x7f0300be

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, view:Landroid/view/View;
    const v1, 0x7f09022b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mAvatarView:Landroid/widget/ImageView;

    .line 190
    const v1, 0x7f09022c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mReshareInfo:Landroid/widget/TextView;

    .line 192
    return-object v0
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 222
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->destroy()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 224
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->onDestroyView()V

    .line 225
    return-void
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 460
    return-void
.end method

.method public onDialogListClick(ILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "which"
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 467
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 453
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 443
    const-string v0, "quit"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 444
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 446
    :cond_f
    return-void
.end method

.method public onDiscard()V
    .registers 6

    .prologue
    .line 424
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-static {v1}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 426
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 427
    const v1, 0x7f0801f4

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0801ef

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08020b

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08020e

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 431
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 432
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "quit"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 436
    .end local v0           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :goto_38
    return-void

    .line 434
    :cond_39
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_38
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    if-ne p1, v0, :cond_7

    .line 321
    packed-switch p2, :pswitch_data_e

    .line 327
    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 323
    :pswitch_9
    invoke-static {p1}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 324
    const/4 v0, 0x1

    goto :goto_8

    .line 321
    :pswitch_data_e
    .packed-switch 0x6
        :pswitch_9
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 16
    .parameter
    .parameter "cursor"
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
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 360
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v8

    packed-switch v8, :pswitch_data_6e

    .line 398
    :cond_9
    :goto_9
    return-void

    .line 362
    :pswitch_a
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/views/AudienceView;->isEdited()Z

    move-result v8

    if-nez v8, :cond_9

    if-eqz p2, :cond_9

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 363
    invoke-interface {p2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 365
    .local v1, audienceBytes:[B
    if-eqz v1, :cond_9

    .line 367
    :try_start_20
    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 368
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v8, v0}, Lcom/google/android/apps/plus/views/AudienceView;->setDefaultAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    :try_end_29
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_20 .. :try_end_29} :catch_2a

    goto :goto_9

    .line 369
    .end local v0           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :catch_2a
    move-exception v7

    .line 370
    .local v7, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v7}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    goto :goto_9

    .line 377
    .end local v1           #audienceBytes:[B
    .end local v7           #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :pswitch_2f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 378
    .local v6, context:Landroid/content/Context;
    if-eqz p2, :cond_66

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_66

    .line 379
    const/4 v8, 0x3

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, authorId:Ljava/lang/String;
    const/4 v8, 0x4

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, authorName:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mReshareInfo:Landroid/widget/TextView;

    const v9, 0x7f0801db

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v3, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    invoke-static {v6}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v5

    .line 385
    .local v5, cache:Lcom/google/android/apps/plus/service/ImageCache;
    new-instance v4, Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-direct {v4, v2, v11, v12}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;IZ)V

    .line 387
    .local v4, avatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;
    invoke-virtual {v5, p0, v4}, Lcom/google/android/apps/plus/service/ImageCache;->loadImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;)V

    goto :goto_9

    .line 390
    .end local v2           #authorId:Ljava/lang/String;
    .end local v3           #authorName:Ljava/lang/String;
    .end local v4           #avatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;
    .end local v5           #cache:Lcom/google/android/apps/plus/service/ImageCache;
    :cond_66
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mActivityId:Ljava/lang/String;

    invoke-static {v6, v8, v9}, Lcom/google/android/apps/plus/service/EsService;->getActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    goto :goto_9

    .line 360
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_2f
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 417
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 244
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->onPause()V

    .line 245
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 229
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->onResume()V

    .line 230
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 232
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_2b

    .line 233
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 234
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 236
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 239
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_2b
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 251
    const-string v0, "reshare_request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    :cond_12
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 197
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 199
    const v0, 0x7f0901bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 201
    const v0, 0x7f09022a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0, p0, v1, v3, v2}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->init(Landroid/support/v4/app/Fragment;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/views/AudienceView;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 206
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setShowPersonNameDialog(Z)V

    .line 208
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 210
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mLimited:Z

    if-eqz v0, :cond_42

    .line 217
    :goto_41
    return-void

    .line 215
    :cond_42
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_41
.end method

.method public reshare()Z
    .registers 8

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-static {v0}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 472
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v5

    .line 473
    .local v5, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-static {v5}, Lcom/google/android/apps/plus/util/PeopleUtils;->isEmpty(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 474
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/AudienceView;->performClick()Z

    .line 475
    const/4 v0, 0x0

    .line 484
    :goto_15
    return v0

    .line 478
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, content:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getMentions()Ljava/util/ArrayList;

    move-result-object v4

    .line 480
    .local v4, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getShortAudienceDescription(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/lang/String;

    move-result-object v6

    .line 481
    .local v6, aclDisplay:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mActivityId:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/service/EsService;->reshareActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 483
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->showProgressDialog()V

    .line 484
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 5
    .parameter "bitmap"
    .parameter "loading"

    .prologue
    .line 405
    if-nez p1, :cond_a

    .line 406
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mAvatarView:Landroid/widget/ImageView;

    sget-object v1, Lcom/google/android/apps/plus/fragments/ReshareFragment;->sAuthorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 410
    :goto_9
    return-void

    .line 408
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_9
.end method

.method protected setupAudienceClickListener()V
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/AudienceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    return-void
.end method
