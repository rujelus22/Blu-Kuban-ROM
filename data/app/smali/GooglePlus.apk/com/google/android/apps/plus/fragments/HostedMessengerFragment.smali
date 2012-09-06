.class public Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;
.super Lcom/google/android/apps/plus/fragments/HostedEsFragment;
.source "HostedMessengerFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;,
        Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$RTCServiceListener;,
        Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$SuggestionsQuery;,
        Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ParticipantsQuery;,
        Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/HostedEsFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;

.field private mConnected:Ljava/lang/Boolean;

.field private mConversationCursor:Landroid/database/Cursor;

.field private mConversationsUri:Landroid/net/Uri;

.field private mInvitationConversationBundle:Landroid/os/Bundle;

.field private mListView:Landroid/widget/ListView;

.field private final mRTCServiceListener:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$RTCServiceListener;

.field private mRecordedConversationsEmpty:Z

.field private mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private mScrollOffset:I

.field private mScrollPos:I

.field private mSuggestionCursor:Landroid/database/Cursor;

.field private mSuggestionsUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;-><init>()V

    .line 157
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$RTCServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$RTCServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mRTCServiceListener:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$RTCServiceListener;

    .line 345
    return-void
.end method

.method static synthetic access$102(Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mConnected:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->updateView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mConversationCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private constructLearnMoreText(Landroid/view/View;)V
    .registers 16
    .parameter "view"

    .prologue
    const/4 v13, 0x0

    .line 569
    const v9, 0x7f090089

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 570
    .local v3, helpTextView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const-string v10, "plusone_messenger_promo"

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 571
    .local v4, link:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080320

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 572
    .local v2, helpText:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 573
    .local v5, s:Landroid/text/Spanned;
    invoke-interface {v5}, Landroid/text/Spanned;->length()I

    move-result v9

    const-class v10, Landroid/text/style/URLSpan;

    invoke-interface {v5, v13, v9, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/URLSpan;

    .line 574
    .local v8, urlSpans:[Landroid/text/style/URLSpan;
    array-length v9, v8

    if-lez v9, :cond_5e

    .line 575
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 576
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    aget-object v7, v8, v13

    .line 577
    .local v7, urlSpan:Landroid/text/style/URLSpan;
    invoke-interface {v5, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 578
    .local v6, start:I
    invoke-interface {v5, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 579
    .local v1, end:I
    new-instance v9, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$1;

    invoke-direct {v9, p0, v7}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;Landroid/text/style/URLSpan;)V

    const/16 v10, 0x21

    invoke-virtual {v0, v9, v6, v1, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 587
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 591
    .end local v0           #builder:Landroid/text/SpannableStringBuilder;
    .end local v1           #end:I
    .end local v6           #start:I
    .end local v7           #urlSpan:Landroid/text/style/URLSpan;
    :cond_5e
    return-void
.end method

.method private static isEmptyCursor(Landroid/database/Cursor;)Z
    .registers 2
    .parameter "cursor"

    .prologue
    .line 790
    if-eqz p0, :cond_8

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private startNewConversation()V
    .registers 5

    .prologue
    .line 912
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CONVERSATIONS_START_NEW:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 913
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getNewConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Landroid/content/Intent;

    move-result-object v0

    .line 914
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->startActivity(Landroid/content/Intent;)V

    .line 915
    return-void
.end method

.method private updateView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mConnected:Ljava/lang/Boolean;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mConnected:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    .line 279
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->showConnectionError(Landroid/view/View;)V

    .line 287
    :goto_15
    return-void

    .line 280
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 281
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->showEmptyViewProgress(Landroid/view/View;)V

    goto :goto_15

    .line 282
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 283
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->showEmptyView(Landroid/view/View;)V

    goto :goto_15

    .line 285
    :cond_2a
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->showContent(Landroid/view/View;)V

    goto :goto_15
.end method

.method private viewUri(Landroid/net/Uri;)V
    .registers 4
    .parameter "uri"

    .prologue
    .line 918
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->startExternalActivity(Landroid/content/Intent;)V

    .line 919
    return-void
.end method


# virtual methods
.method protected doShowEmptyView(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 314
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 315
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 316
    const v0, 0x7f090086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 317
    const v0, 0x7f090079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 319
    :cond_27
    const v0, 0x7f090085

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 320
    return-void
.end method

.method protected doShowEmptyViewProgress(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    const/16 v2, 0x8

    .line 301
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 302
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 303
    const v0, 0x7f090086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 304
    const v0, 0x7f090079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    :cond_27
    const v0, 0x7f090085

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 307
    return-void
.end method

.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getConversationsLoaded()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method protected isLoading()Z
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mSuggestionCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getConversationsLoaded()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method protected needsAsyncData()Z
    .registers 2

    .prologue
    .line 934
    const/4 v0, 0x1

    return v0
.end method

.method public onActionButtonClicked(I)V
    .registers 3
    .parameter "actionId"

    .prologue
    .line 903
    const v0, 0x7f0902b0

    if-ne p1, v0, :cond_8

    .line 904
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->startNewConversation()V

    .line 906
    :cond_8
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 708
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 709
    const/4 v0, -0x1

    if-ne p2, v0, :cond_12

    if-eqz p3, :cond_12

    .line 710
    const-string v0, "audience"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 713
    :cond_12
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 207
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mConnected:Ljava/lang/Boolean;

    .line 210
    if-eqz p1, :cond_27

    .line 211
    const-string v0, "scroll_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mScrollPos:I

    .line 212
    const-string v0, "scroll_off"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mScrollOffset:I

    .line 218
    :goto_19
    if-eqz p1, :cond_26

    .line 219
    const-string v0, "InvitationConversationBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mInvitationConversationBundle:Landroid/os/Bundle;

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mRecordedConversationsEmpty:Z

    .line 227
    :cond_26
    return-void

    .line 214
    :cond_27
    iput v1, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mScrollPos:I

    .line 215
    iput v1, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mScrollOffset:I

    goto :goto_19
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
    const/4 v4, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 598
    const-string v0, "ConversationList"

    invoke-static {v0, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 599
    const-string v0, "ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateLoader "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_23
    if-ne p1, v6, :cond_38

    .line 602
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mConversationsUri:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "is_visible=1 AND is_pending_leave=0"

    const-string v6, "latest_message_timestamp DESC"

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 622
    :goto_37
    return-object v0

    .line 607
    :cond_38
    if-ne p1, v4, :cond_4d

    .line 608
    new-instance v1, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mSuggestionsUri:Landroid/net/Uri;

    sget-object v4, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$SuggestionsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v7, "sequence ASC"

    move-object v6, v5

    move-object v8, v5

    invoke-direct/range {v1 .. v8}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    goto :goto_37

    .line 612
    :cond_4d
    const/4 v0, 0x2

    if-ne p1, v0, :cond_78

    .line 613
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const-string v1, "conversation_row_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/google/android/apps/plus/content/EsProvider;->buildParticipantsUri(Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/net/Uri;

    move-result-object v2

    .line 615
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ParticipantsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "participant_id!=?"

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "first_name ASC"

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_37

    .end local v2           #uri:Landroid/net/Uri;
    :cond_78
    move-object v0, v5

    .line 622
    goto :goto_37
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 547
    const v2, 0x7f030022

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 548
    .local v1, view:Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mListView:Landroid/widget/ListView;

    .line 549
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 550
    new-instance v2, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;-><init>(Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;Landroid/content/Context;Landroid/widget/AbsListView;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;

    .line 551
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 553
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_4b

    .line 554
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-nez v2, :cond_4b

    .line 555
    const v2, 0x7f090087

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 556
    .local v0, spacer:Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 559
    .end local v0           #spacer:Landroid/view/View;
    :cond_4b
    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 21
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 729
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->getPartitionForPosition(I)I

    move-result v14

    .line 730
    .local v14, partition:I
    if-nez v14, :cond_61

    .line 731
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/Cursor;

    .line 732
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_17

    .line 768
    :cond_16
    :goto_16
    return-void

    .line 735
    :cond_17
    const/16 v2, 0xd

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_47

    const/16 v2, 0xe

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 737
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/16 v4, 0xe

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x3

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_45

    const/4 v7, 0x1

    :goto_3b
    move-wide/from16 v4, p4

    invoke-static/range {v2 .. v7}, Lcom/google/android/apps/plus/phone/Intents;->getConversationInvititationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v11

    .line 741
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {p0, v11}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_16

    .line 737
    .end local v11           #intent:Landroid/content/Intent;
    :cond_45
    const/4 v7, 0x0

    goto :goto_3b

    .line 743
    :cond_47
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v2, 0x1

    :goto_55
    move-wide/from16 v0, p4

    invoke-static {v3, v4, v0, v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)Landroid/content/Intent;

    move-result-object v11

    .line 746
    .restart local v11       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v11}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_16

    .line 743
    .end local v11           #intent:Landroid/content/Intent;
    :cond_5f
    const/4 v2, 0x0

    goto :goto_55

    .line 751
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_61
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/Cursor;

    .line 752
    .restart local v8       #cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_16

    .line 755
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 756
    .local v13, participantId:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 757
    .local v10, fullName:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 758
    .local v9, firstName:Ljava/lang/String;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v12

    .line 764
    .local v12, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x0

    invoke-static {v2, v3, v12, v4}, Lcom/google/android/apps/plus/phone/Intents;->getFakeConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Data$Participant;Z)Landroid/content/Intent;

    move-result-object v11

    .line 766
    .restart local v11       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v11}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_16
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 20
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
    .line 631
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const-string v2, "ConversationList"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 632
    const-string v2, "ConversationList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadFinished "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d4

    .line 635
    if-eqz p2, :cond_b9

    .line 637
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v12

    .line 638
    .local v12, audienceBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    :goto_32
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 639
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v16

    .line 640
    .local v16, personBuilder:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 642
    .local v15, participantId:Ljava/lang/String;
    const-string v2, "g:"

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 643
    invoke-static {v15}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 650
    :cond_54
    :goto_54
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 652
    .local v14, name:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 653
    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addUser(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    goto :goto_32

    .line 645
    .end local v14           #name:Ljava/lang/String;
    :cond_68
    const-string v2, "e:"

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 646
    const/4 v2, 0x2

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_54

    .line 647
    :cond_7b
    const-string v2, "p:"

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 648
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_54

    .line 655
    .end local v15           #participantId:Ljava/lang/String;
    .end local v16           #personBuilder:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    :cond_89
    invoke-virtual {v12}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v5

    .line 657
    .local v5, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mInvitationConversationBundle:Landroid/os/Bundle;

    const-string v3, "conversation_is_group"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const v4, 0x7f0802d4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x6

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/google/android/apps/plus/phone/Intents;->getEditAudienceActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;IZZZZ)Landroid/content/Intent;

    move-result-object v13

    .line 664
    .local v13, intent:Landroid/content/Intent;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 671
    .end local v5           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .end local v12           #audienceBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .end local v13           #intent:Landroid/content/Intent;
    :cond_b9
    :goto_b9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 704
    :cond_c1
    :goto_c1
    return-void

    .line 666
    .restart local v5       #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .restart local v12       #audienceBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    :cond_c2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v2, v3, v5}, Lcom/google/android/apps/plus/phone/Intents;->getNewConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Landroid/content/Intent;

    move-result-object v13

    .line 668
    .restart local v13       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_b9

    .line 673
    .end local v5           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .end local v12           #audienceBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .end local v13           #intent:Landroid/content/Intent;
    :cond_d4
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e2

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_ed

    .line 675
    :cond_e2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 677
    :cond_ed
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_140

    .line 678
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mConversationCursor:Landroid/database/Cursor;

    .line 683
    :cond_fa
    :goto_fa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mSuggestionCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_c1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_c1

    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->updateView(Landroid/view/View;)V

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->restoreScrollPosition()V

    .line 690
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    .line 691
    .local v11, activity:Landroid/app/Activity;
    invoke-static/range {p2 .. p2}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->isEmptyCursor(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_136

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mRecordedConversationsEmpty:Z

    if-nez v2, :cond_136

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v2, :cond_136

    .line 692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CONVERSATIONS_EMPTY:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v11, v2, v3}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordSystemAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 694
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mRecordedConversationsEmpty:Z

    .line 699
    :cond_136
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->isLoading()Z

    move-result v2

    if-nez v2, :cond_c1

    .line 700
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->onAsyncData()V

    goto :goto_c1

    .line 679
    .end local v11           #activity:Landroid/app/Activity;
    :cond_140
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_fa

    .line 680
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mSuggestionCursor:Landroid/database/Cursor;

    goto :goto_fa
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 721
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 887
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_24

    .line 896
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_b
    return v1

    .line 890
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08046f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 892
    .local v0, helpUrlParam:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->viewUri(Landroid/net/Uri;)V

    .line 893
    const/4 v1, 0x1

    goto :goto_b

    .line 887
    :pswitch_data_24
    .packed-switch 0x7f0902ad
        :pswitch_c
    .end packed-switch
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 264
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onPause()V

    .line 265
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mRTCServiceListener:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$RTCServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->unregisterListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 269
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090089

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 270
    .local v0, helpTextView:Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    return-void
.end method

.method protected onPrepareActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V
    .registers 5
    .parameter "actionBar"

    .prologue
    .line 847
    const v0, 0x7f080074

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/views/HostActionBar;->showTitle(I)V

    .line 848
    const v0, 0x7f0902b0

    const v1, 0x7f02011e

    const v2, 0x7f080283

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/apps/plus/views/HostActionBar;->showActionButton(III)V

    .line 852
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    .line 871
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    .line 872
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v2, :cond_1a

    .line 873
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 874
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_1c

    .line 872
    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 876
    :pswitch_15
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_12

    .line 880
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_1a
    return-void

    .line 874
    nop

    :pswitch_data_1c
    .packed-switch 0x7f0902b0
        :pswitch_15
    .end packed-switch
.end method

.method public onResume()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 234
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onResume()V

    .line 235
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mRTCServiceListener:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$RTCServiceListener;

    invoke-static {v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->registerListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 236
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->constructLearnMoreText(Landroid/view/View;)V

    .line 237
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->updateView(Landroid/view/View;)V

    .line 238
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    if-eqz v2, :cond_34

    .line 239
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mInvitationConversationBundle:Landroid/os/Bundle;

    const-string v3, "conversation_row_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 241
    .local v0, conversationRowId:J
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v2, v3, v0, v1, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->inviteParticipants(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/tacotruck/proto/Data$Audience;)I

    .line 243
    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mInvitationConversationBundle:Landroid/os/Bundle;

    .line 244
    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 246
    .end local v0           #conversationRowId:J
    :cond_34
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 250
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 251
    const-string v0, "InvitationConversationBundle"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mInvitationConversationBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 252
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_29

    .line 253
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->saveScrollPosition()V

    .line 254
    const-string v0, "scroll_pos"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mScrollPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    const-string v0, "scroll_off"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mScrollOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    :cond_29
    return-void
.end method

.method protected onSetArguments(Landroid/os/Bundle;)V
    .registers 4
    .parameter "args"

    .prologue
    .line 859
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onSetArguments(Landroid/os/Bundle;)V

    .line 860
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 861
    const-string v0, "reset_notifications"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 862
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->resetNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 864
    :cond_20
    return-void
.end method

.method public recordNavigationAction()V
    .registers 3

    .prologue
    .line 926
    const/4 v0, 0x0

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->CONVERSATIONS:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->recordNavigationAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 927
    return-void
.end method

.method protected restoreScrollPosition()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 821
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_6

    .line 832
    :cond_5
    :goto_5
    return-void

    .line 825
    :cond_6
    iget v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mScrollOffset:I

    if-nez v0, :cond_e

    iget v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mScrollPos:I

    if-eqz v0, :cond_5

    .line 826
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mScrollPos:I

    iget v2, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mScrollOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 829
    iput v3, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mScrollPos:I

    .line 830
    iput v3, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mScrollOffset:I

    goto :goto_5
.end method

.method protected saveScrollPosition()V
    .registers 2

    .prologue
    .line 803
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_5

    .line 813
    :goto_4
    return-void

    .line 811
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mScrollPos:I

    .line 812
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mScrollOffset:I

    goto :goto_4
.end method

.method public setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 6
    .parameter "account"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 775
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 776
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_3a

    .line 777
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mConversationsUri:Landroid/net/Uri;

    .line 779
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->MESSENGER_SUGGESTIONS_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mSuggestionsUri:Landroid/net/Uri;

    .line 781
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 782
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 783
    const-string v0, "ConversationList"

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 784
    const-string v0, "ConversationList"

    const-string v1, "setAccount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_3a
    return-void
.end method

.method protected showConnectionError(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    const/16 v1, 0x8

    .line 290
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    const v0, 0x7f090086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    const v0, 0x7f090079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    const v0, 0x7f090085

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    return-void
.end method

.method protected showContent(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    const/16 v1, 0x8

    .line 329
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->showContent(Landroid/view/View;)V

    .line 330
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    const v0, 0x7f090086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 332
    const v0, 0x7f090079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    const v0, 0x7f090085

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    return-void
.end method
