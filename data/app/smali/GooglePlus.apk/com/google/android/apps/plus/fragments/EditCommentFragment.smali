.class public Lcom/google/android/apps/plus/fragments/EditCommentFragment;
.super Landroid/support/v4/app/Fragment;
.source "EditCommentFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field protected mChanged:Z

.field protected mCommentId:Ljava/lang/String;

.field protected mCommentTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

.field protected mPendingRequestId:Ljava/lang/Integer;

.field protected mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 52
    new-instance v0, Lcom/google/android/apps/plus/fragments/EditCommentFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/EditCommentFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/EditCommentFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/EditCommentFragment;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->handleEditComment(Lcom/google/android/apps/plus/service/ServiceResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/EditCommentFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->updatePostUI()V

    return-void
.end method

.method private getPicasaPhotoId(JLjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
    .registers 6
    .parameter "photoId"
    .parameter "gaiaId"

    .prologue
    .line 233
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    move-result-object v0

    .line 234
    .local v0, picasaPhotoId:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;
    invoke-virtual {v0, p3}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    .line 235
    invoke-virtual {v0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    .line 236
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v1

    return-object v1
.end method

.method private handleEditComment(Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 10
    .parameter "result"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 255
    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 256
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 257
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_51

    .line 258
    const v3, 0x32c15

    invoke-virtual {v0, v3}, Landroid/app/Activity;->dismissDialog(I)V

    .line 259
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 260
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/ServiceResult;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 261
    .local v2, exception:Ljava/lang/Exception;
    instance-of v3, v2, Lcom/google/android/apps/plus/api/ServerException;

    if-eqz v3, :cond_52

    check-cast v2, Lcom/google/android/apps/plus/api/ServerException;

    .end local v2           #exception:Ljava/lang/Exception;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/ServerException;->getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    move-result-object v3

    sget-object v4, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->ES_STREAM_POST_RESTRICTIONS_NOT_SUPPORTED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    if-ne v3, v4, :cond_52

    .line 264
    const v3, 0x7f0801a4

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0801a3

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080209

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v7}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v1

    .line 268
    .local v1, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 269
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "StreamPostRestrictionsNotSupported"

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 277
    .end local v1           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :cond_51
    :goto_51
    return-void

    .line 272
    :cond_52
    const v3, 0x7f08019c

    invoke-static {v0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_51

    .line 274
    :cond_5d
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_51
.end method

.method private updatePostUI()V
    .registers 2

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/EditCommentActivity;

    .line 244
    .local v0, editCommentActivity:Lcom/google/android/apps/plus/phone/EditCommentActivity;
    if-eqz v0, :cond_b

    .line 245
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->invalidateMenu()V

    .line 247
    :cond_b
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    if-eqz p1, :cond_22

    .line 74
    const-string v0, "changed"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mChanged:Z

    .line 76
    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 77
    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 80
    :cond_22
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 85
    const v4, 0x7f030029

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 87
    .local v3, view:Landroid/view/View;
    const v4, 0x7f090072

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mCommentTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 89
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 90
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "account"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 91
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v4, "activity_id"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, activityId:Ljava/lang/String;
    const-string v4, "comment_id"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mCommentId:Ljava/lang/String;

    .line 94
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mCommentTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v0, v1, v5}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->init(Landroid/support/v4/app/Fragment;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/views/AudienceView;)V

    .line 95
    if-nez p3, :cond_44

    .line 96
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mCommentTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    const-string v5, "comment"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setHtml(Ljava/lang/String;)V

    .line 99
    :cond_44
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mCommentTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    new-instance v5, Lcom/google/android/apps/plus/fragments/EditCommentFragment$2;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/fragments/EditCommentFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/EditCommentFragment;)V

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 115
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mCommentTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v4, p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 117
    return-object v3
.end method

.method public onDiscard()V
    .registers 3

    .prologue
    .line 166
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mCommentTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-static {v1}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 168
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/EditCommentActivity;

    .line 169
    .local v0, editCommentActivity:Lcom/google/android/apps/plus/phone/EditCommentActivity;
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mChanged:Z

    if-eqz v1, :cond_16

    .line 170
    const v1, 0xdc072

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->showDialog(I)V

    .line 175
    :goto_15
    return-void

    .line 172
    :cond_16
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->setResult(I)V

    .line 173
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->finish()V

    goto :goto_15
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mCommentTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    if-ne p1, v0, :cond_7

    .line 152
    packed-switch p2, :pswitch_data_e

    .line 158
    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 154
    :pswitch_9
    invoke-static {p1}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 155
    const/4 v0, 0x1

    goto :goto_8

    .line 152
    :pswitch_data_e
    .packed-switch 0x6
        :pswitch_9
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 134
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 136
    return-void
.end method

.method public onPost()V
    .registers 23

    .prologue
    .line 181
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mCommentTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-static {v6}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/phone/EditCommentActivity;

    .line 184
    .local v3, editCommentActivity:Lcom/google/android/apps/plus/phone/EditCommentActivity;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mChanged:Z

    if-eqz v6, :cond_21

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mCommentTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 185
    :cond_21
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->setResult(I)V

    .line 186
    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->finish()V

    .line 226
    :goto_28
    return-void

    .line 190
    :cond_29
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mCommentTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v12

    .line 191
    .local v12, comment:Landroid/text/Editable;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v9, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    const/4 v6, 0x0

    invoke-interface {v12}, Landroid/text/Editable;->length()I

    move-result v7

    const-class v8, Lcom/google/android/apps/plus/views/MentionSpan;

    invoke-interface {v12, v6, v7, v8}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Lcom/google/android/apps/plus/views/MentionSpan;

    .line 194
    .local v21, spans:[Lcom/google/android/apps/plus/views/MentionSpan;
    if-eqz v21, :cond_a3

    .line 195
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v17, v0

    .line 196
    .local v17, numSpans:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_4b
    move/from16 v0, v17

    if-ge v15, v0, :cond_a3

    .line 197
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v11

    .line 198
    .local v11, builder:Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    aget-object v6, v21, v15

    invoke-virtual {v6}, Lcom/google/android/apps/plus/views/MentionSpan;->getAggregateId()Ljava/lang/String;

    move-result-object v10

    .line 199
    .local v10, aggregateId:Ljava/lang/String;
    const-string v6, "e:"

    invoke-virtual {v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_69

    const-string v6, "g:"

    invoke-virtual {v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 200
    :cond_69
    invoke-virtual {v11, v10}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setAggregateId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    .line 204
    :goto_6c
    aget-object v6, v21, v15

    invoke-interface {v12, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v20

    .line 205
    .local v20, s:I
    aget-object v6, v21, v15

    invoke-interface {v12, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    .line 206
    .local v13, e:I
    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setIndex(I)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    .line 207
    sub-int v6, v13, v20

    invoke-virtual {v11, v6}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setLength(I)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    .line 208
    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v15, v15, 0x1

    goto :goto_4b

    .line 202
    .end local v13           #e:I
    .end local v20           #s:I
    :cond_8c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setAggregateId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    goto :goto_6c

    .line 212
    .end local v10           #aggregateId:Ljava/lang/String;
    .end local v11           #builder:Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    .end local v15           #i:I
    .end local v17           #numSpans:I
    :cond_a3
    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    .line 213
    .local v16, intent:Landroid/content/Intent;
    const-string v6, "account"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/content/EsAccount;

    .line 214
    .local v4, account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v6, "activity_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, activityId:Ljava/lang/String;
    const-string v6, "photo_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f9

    .line 217
    const-string v6, "photo_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    .line 218
    .local v18, photoId:J
    const-string v6, "gaia_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 219
    .local v14, gaiaId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2, v14}, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->getPicasaPhotoId(JLjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mCommentId:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v9}, Lcom/google/android/apps/plus/service/EsService;->editPhotoComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 225
    .end local v14           #gaiaId:Ljava/lang/String;
    .end local v18           #photoId:J
    :goto_f1
    const v6, 0x32c15

    invoke-virtual {v3, v6}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->showDialog(I)V

    goto/16 :goto_28

    .line 222
    :cond_f9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mCommentId:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v9

    invoke-static/range {v3 .. v8}, Lcom/google/android/apps/plus/service/EsService;->editComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mPendingRequestId:Ljava/lang/Integer;

    goto :goto_f1
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 122
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_25

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v0

    if-nez v0, :cond_25

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->handleEditComment(Lcom/google/android/apps/plus/service/ServiceResult;)V

    .line 130
    :cond_25
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    const-string v0, "changed"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_19

    .line 145
    const-string v0, "request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    :cond_19
    return-void
.end method
