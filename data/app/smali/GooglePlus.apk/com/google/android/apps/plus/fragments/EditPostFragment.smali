.class public Lcom/google/android/apps/plus/fragments/EditPostFragment;
.super Landroid/support/v4/app/Fragment;
.source "EditPostFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private mChanged:Z

.field private mEditRequestId:Ljava/lang/Integer;

.field private mGetEditableContentRequestId:Ljava/lang/Integer;

.field private mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

.field private mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 56
    new-instance v0, Lcom/google/android/apps/plus/fragments/EditPostFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/EditPostFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/EditPostFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/EditPostFragment;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mGetEditableContentRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/fragments/EditPostFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mGetEditableContentRequestId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/EditPostFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/EditPostFragment;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mEditRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/EditPostFragment;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->handleEditPost(Lcom/google/android/apps/plus/service/ServiceResult;)V

    return-void
.end method

.method static synthetic access$402(Lcom/google/android/apps/plus/fragments/EditPostFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mChanged:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/fragments/EditPostFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->updatePostUI()V

    return-void
.end method

.method private fetchEditableContent()V
    .registers 6

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/phone/EditPostActivity;

    .line 287
    .local v1, activity:Lcom/google/android/apps/plus/phone/EditPostActivity;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/EditPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 288
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "account"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 290
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v4, "activity_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, activityId:Ljava/lang/String;
    const v4, 0xed20b

    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/phone/EditPostActivity;->showDialog(I)V

    .line 293
    invoke-static {v1, v0, v2}, Lcom/google/android/apps/plus/service/EsService;->getEditableActivityContent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mGetEditableContentRequestId:Ljava/lang/Integer;

    .line 295
    return-void
.end method

.method private handleEditPost(Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 10
    .parameter "result"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 303
    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mEditRequestId:Ljava/lang/Integer;

    .line 304
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 305
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_51

    .line 306
    const v3, 0x48ba7

    invoke-virtual {v0, v3}, Landroid/app/Activity;->dismissDialog(I)V

    .line 307
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 308
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/ServiceResult;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 309
    .local v2, exception:Ljava/lang/Exception;
    instance-of v3, v2, Lcom/google/android/apps/plus/api/ServerException;

    if-eqz v3, :cond_52

    check-cast v2, Lcom/google/android/apps/plus/api/ServerException;

    .end local v2           #exception:Ljava/lang/Exception;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/ServerException;->getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    move-result-object v3

    sget-object v4, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->ES_STREAM_POST_RESTRICTIONS_NOT_SUPPORTED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    if-ne v3, v4, :cond_52

    .line 312
    const v3, 0x7f0801a4

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0801a3

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080209

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v7}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v1

    .line 316
    .local v1, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 317
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "StreamPostRestrictionsNotSupported"

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 325
    .end local v1           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :cond_51
    :goto_51
    return-void

    .line 320
    :cond_52
    const v3, 0x7f0801a2

    invoke-static {v0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_51

    .line 322
    :cond_5d
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_51
.end method

.method private updatePostUI()V
    .registers 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/EditPostActivity;

    .line 277
    .local v0, editPostActivity:Lcom/google/android/apps/plus/phone/EditPostActivity;
    if-eqz v0, :cond_b

    .line 278
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EditPostActivity;->invalidateMenu()V

    .line 280
    :cond_b
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    if-eqz p1, :cond_36

    .line 99
    const-string v0, "get_editable_content_request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 100
    const-string v0, "get_editable_content_request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mGetEditableContentRequestId:Ljava/lang/Integer;

    .line 104
    :cond_19
    const-string v0, "edit_request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 105
    const-string v0, "edit_request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mEditRequestId:Ljava/lang/Integer;

    .line 108
    :cond_2d
    const-string v0, "changed"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mChanged:Z

    .line 110
    :cond_36
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 115
    const v4, 0x7f030029

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 117
    .local v3, view:Landroid/view/View;
    const v4, 0x7f090072

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 119
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 120
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "account"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 121
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v4, "activity_id"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, activityId:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v0, v1, v5}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->init(Landroid/support/v4/app/Fragment;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/views/AudienceView;)V

    .line 124
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    new-instance v5, Lcom/google/android/apps/plus/fragments/EditPostFragment$2;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/fragments/EditPostFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/EditPostFragment;)V

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v4, p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 143
    return-object v3
.end method

.method public onDiscard()V
    .registers 3

    .prologue
    .line 217
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-static {v1}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 219
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/EditPostActivity;

    .line 220
    .local v0, editPostActivity:Lcom/google/android/apps/plus/phone/EditPostActivity;
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mChanged:Z

    if-eqz v1, :cond_16

    .line 221
    const v1, 0xdc073

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EditPostActivity;->showDialog(I)V

    .line 226
    :goto_15
    return-void

    .line 223
    :cond_16
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EditPostActivity;->setResult(I)V

    .line 224
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EditPostActivity;->finish()V

    goto :goto_15
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    if-ne p1, v0, :cond_7

    .line 204
    packed-switch p2, :pswitch_data_e

    .line 210
    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 206
    :pswitch_9
    invoke-static {p1}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 207
    const/4 v0, 0x1

    goto :goto_8

    .line 204
    :pswitch_data_e
    .packed-switch 0x6
        :pswitch_9
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 181
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 184
    return-void
.end method

.method public onPost()V
    .registers 18

    .prologue
    .line 232
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-static {v14}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/plus/phone/EditPostActivity;

    .line 235
    .local v7, editPostActivity:Lcom/google/android/apps/plus/phone/EditPostActivity;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mChanged:Z

    if-eqz v14, :cond_21

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v14}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_29

    .line 236
    :cond_21
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Lcom/google/android/apps/plus/phone/EditPostActivity;->setResult(I)V

    .line 237
    invoke-virtual {v7}, Lcom/google/android/apps/plus/phone/EditPostActivity;->finish()V

    .line 270
    :goto_28
    return-void

    .line 241
    :cond_29
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v14}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 242
    .local v5, comment:Landroid/text/Editable;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v10, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    const/4 v14, 0x0

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v15

    const-class v16, Lcom/google/android/apps/plus/views/MentionSpan;

    move-object/from16 v0, v16

    invoke-interface {v5, v14, v15, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/google/android/apps/plus/views/MentionSpan;

    .line 245
    .local v13, spans:[Lcom/google/android/apps/plus/views/MentionSpan;
    if-eqz v13, :cond_9d

    .line 246
    array-length v11, v13

    .line 247
    .local v11, numSpans:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_49
    if-ge v8, v11, :cond_9d

    .line 248
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v4

    .line 249
    .local v4, builder:Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    aget-object v14, v13, v8

    invoke-virtual {v14}, Lcom/google/android/apps/plus/views/MentionSpan;->getAggregateId()Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, aggregateId:Ljava/lang/String;
    const-string v14, "e:"

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_65

    const-string v14, "g:"

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_86

    .line 251
    :cond_65
    invoke-virtual {v4, v3}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setAggregateId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    .line 255
    :goto_68
    aget-object v14, v13, v8

    invoke-interface {v5, v14}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    .line 256
    .local v12, s:I
    aget-object v14, v13, v8

    invoke-interface {v5, v14}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 257
    .local v6, e:I
    invoke-virtual {v4, v12}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setIndex(I)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    .line 258
    sub-int v14, v6, v12

    invoke-virtual {v4, v14}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setLength(I)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    .line 259
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v8, v8, 0x1

    goto :goto_49

    .line 253
    .end local v6           #e:I
    .end local v12           #s:I
    :cond_86
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "g:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setAggregateId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    goto :goto_68

    .line 263
    .end local v3           #aggregateId:Ljava/lang/String;
    .end local v4           #builder:Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    .end local v8           #i:I
    .end local v11           #numSpans:I
    :cond_9d
    invoke-virtual {v7}, Lcom/google/android/apps/plus/phone/EditPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 264
    .local v9, intent:Landroid/content/Intent;
    const-string v14, "account"

    invoke-virtual {v9, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/content/EsAccount;

    .line 265
    .local v1, account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v14, "activity_id"

    invoke-virtual {v9, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, activityId:Ljava/lang/String;
    const v14, 0x48ba7

    invoke-virtual {v7, v14}, Lcom/google/android/apps/plus/phone/EditPostActivity;->showDialog(I)V

    .line 268
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v1, v2, v14, v10}, Lcom/google/android/apps/plus/service/EsService;->editActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mEditRequestId:Ljava/lang/Integer;

    goto/16 :goto_28
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 148
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 150
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v3}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 152
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mGetEditableContentRequestId:Ljava/lang/Integer;

    if-nez v3, :cond_39

    .line 153
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_1b

    .line 155
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->fetchEditableContent()V

    .line 173
    :cond_1b
    :goto_1b
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mEditRequestId:Ljava/lang/Integer;

    if-eqz v3, :cond_38

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mEditRequestId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v3

    if-nez v3, :cond_38

    .line 174
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mEditRequestId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v2

    .line 175
    .local v2, result:Lcom/google/android/apps/plus/service/ServiceResult;
    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->handleEditPost(Lcom/google/android/apps/plus/service/ServiceResult;)V

    .line 177
    .end local v2           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_38
    :goto_38
    return-void

    .line 158
    :cond_39
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mGetEditableContentRequestId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 159
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mGetEditableContentRequestId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v1

    .line 160
    .local v1, removedResult:Lcom/google/android/apps/plus/service/ServiceResult;
    if-eqz v1, :cond_6b

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 161
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/EditPostActivity;

    .line 162
    .local v0, activity:Lcom/google/android/apps/plus/phone/EditPostActivity;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/phone/EditPostActivity;->setResult(I)V

    .line 163
    const v3, 0xed20b

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/phone/EditPostActivity;->dismissDialog(I)V

    .line 164
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EditPostActivity;->finish()V

    goto :goto_38

    .line 168
    .end local v0           #activity:Lcom/google/android/apps/plus/phone/EditPostActivity;
    :cond_6b
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->fetchEditableContent()V

    goto :goto_1b
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mGetEditableContentRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 191
    const-string v0, "get_editable_content_request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mGetEditableContentRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mEditRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_21

    .line 195
    const-string v0, "edit_request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mEditRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    :cond_21
    const-string v0, "changed"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment;->mChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 199
    return-void
.end method
