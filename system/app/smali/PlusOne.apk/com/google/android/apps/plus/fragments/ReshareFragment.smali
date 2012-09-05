.class public Lcom/google/android/apps/plus/fragments/ReshareFragment;
.super Lcom/google/android/apps/plus/fragments/AudienceFragment;
.source "ReshareFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/ReshareFragment$1;,
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
        "Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;",
        "Landroid/widget/TextView$OnEditorActionListener;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mActivityId:Ljava/lang/String;

.field private mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

.field private mLimited:Z

.field private mPendingRequestId:Ljava/lang/Integer;

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;-><init>()V

    .line 68
    new-instance v0, Lcom/google/android/apps/plus/fragments/ReshareFragment$ServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/ReshareFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/ReshareFragment;Lcom/google/android/apps/plus/fragments/ReshareFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 88
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/ReshareFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    return-void
.end method

.method private handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 192
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_d

    .line 210
    :cond_c
    :goto_c
    return-void

    .line 196
    :cond_d
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 198
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 200
    .local v0, dialog:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_21

    .line 201
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 204
    :cond_21
    if-eqz p2, :cond_39

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 205
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f07010f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 208
    :cond_39
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_c
.end method

.method private showProgressDialog()V
    .registers 4

    .prologue
    .line 180
    const/4 v0, 0x0

    const v1, 0x7f07011a

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 183
    return-void
.end method


# virtual methods
.method public hasContent()Z
    .registers 2

    .prologue
    .line 213
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
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 101
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 102
    const-string v1, "activity_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mActivityId:Ljava/lang/String;

    .line 103
    const-string v1, "limited"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mLimited:Z

    .line 105
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->setCirclesUsageType(I)V

    .line 106
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->setIncludePhoneOnlyContacts(Z)V

    .line 107
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->setIncludePlusPages(Z)V

    .line 109
    if-eqz p1, :cond_47

    .line 110
    const-string v1, "reshare_request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 111
    const-string v1, "reshare_request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 114
    :cond_47
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10
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

    .line 236
    packed-switch p1, :pswitch_data_1c

    move-object v0, v4

    .line 243
    :goto_5
    return-object v0

    .line 238
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

    .line 236
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 119
    const v0, 0x7f03008d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->destroy()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 145
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->onDestroyView()V

    .line 146
    return-void
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 321
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 314
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 304
    const-string v0, "quit"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 305
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 307
    :cond_f
    return-void
.end method

.method public onDiscard()V
    .registers 6

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 288
    const v1, 0x7f07015a

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070156

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07016a

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f07016b

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 292
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 293
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "quit"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 297
    .end local v0           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :goto_33
    return-void

    .line 295
    :cond_34
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_33
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    if-ne p1, v0, :cond_7

    .line 222
    packed-switch p2, :pswitch_data_e

    .line 228
    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 224
    :pswitch_9
    invoke-static {p1}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 225
    const/4 v0, 0x1

    goto :goto_8

    .line 222
    :pswitch_data_e
    .packed-switch 0x6
        :pswitch_9
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 7
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
    .line 253
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_2e

    .line 273
    :cond_7
    :goto_7
    return-void

    .line 255
    :pswitch_8
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/AudienceView;->isEdited()Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz p2, :cond_7

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 256
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 258
    .local v1, audienceBytes:[B
    if-eqz v1, :cond_7

    .line 260
    :try_start_1f
    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 261
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/plus/views/AudienceView;->setDefaultAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    :try_end_28
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1f .. :try_end_28} :catch_29

    goto :goto_7

    .line 262
    .end local v0           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :catch_29
    move-exception v2

    .line 263
    .local v2, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    goto :goto_7

    .line 253
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
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
    .line 280
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 165
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->onPause()V

    .line 166
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 150
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->onResume()V

    .line 151
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 153
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_2b

    .line 154
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 155
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 157
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 160
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_2b
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 172
    const-string v0, "reshare_request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    :cond_12
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 124
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 126
    const v0, 0x7f0d0161

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getCircleNameResolver()Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->init(Landroid/support/v4/app/Fragment;Lcom/google/android/apps/plus/fragments/CircleNameResolver;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setShowPersonNameDialog(Z)V

    .line 132
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mLimited:Z

    if-eqz v0, :cond_2a

    .line 139
    :goto_29
    return-void

    .line 137
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_29
.end method

.method public reshare()Z
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 324
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 326
    .local v7, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v5

    .line 327
    .local v5, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-static {v5}, Lcom/google/android/apps/plus/util/PeopleUtils;->isEmpty(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 328
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getAudienceEditText()Landroid/widget/EditText;

    move-result-object v8

    .line 329
    .local v8, editor:Landroid/widget/EditText;
    invoke-virtual {v8}, Landroid/widget/EditText;->requestFocus()Z

    .line 330
    invoke-virtual {v8}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v9

    .line 331
    .local v9, message:Ljava/lang/CharSequence;
    invoke-static {v7, v9, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 341
    .end local v8           #editor:Landroid/widget/EditText;
    .end local v9           #message:Ljava/lang/CharSequence;
    :goto_21
    return v0

    .line 335
    :cond_22
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, content:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getMentions()Ljava/util/ArrayList;

    move-result-object v4

    .line 337
    .local v4, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getShortAudienceDescription(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/lang/String;

    move-result-object v6

    .line 338
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

    .line 340
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->showProgressDialog()V

    .line 341
    const/4 v0, 0x1

    goto :goto_21
.end method
