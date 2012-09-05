.class public Lcom/google/android/apps/plus/fragments/InvitationFragment;
.super Lcom/google/android/apps/plus/fragments/EsFragment;
.source "InvitationFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/InvitationFragment$ParticipantQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

.field private mConversationRowId:J

.field private mInformationAndBlockMessage:Landroid/widget/TextView;

.field private mInvitationMessage:Landroid/widget/TextView;

.field private mInviterId:Ljava/lang/String;

.field private mIsGroup:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;-><init>()V

    .line 45
    const-string v0, "InvitationFragment"

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->TAG:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/InvitationFragment;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/InvitationFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mInviterId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public isEmpty()Z
    .registers 2

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onAttach(Landroid/app/Activity;)V

    .line 105
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 106
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "view"

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d00d4

    if-ne v0, v1, :cond_34

    .line 213
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mConversationRowId:J

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mInviterId:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->replyToInvitation(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Z)I

    .line 215
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mConversationRowId:J

    iget-boolean v4, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mIsGroup:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/phone/Intents;->getConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)Landroid/content/Intent;

    move-result-object v6

    .line 217
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 218
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 229
    .end local v6           #intent:Landroid/content/Intent;
    :cond_33
    :goto_33
    return-void

    .line 219
    :cond_34
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d00d3

    if-ne v0, v1, :cond_50

    .line 220
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mConversationRowId:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->leaveConversation(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I

    .line 221
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_33

    .line 222
    :cond_50
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    if-ne p1, v0, :cond_33

    .line 223
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mInviterId:Ljava/lang/String;

    if-eqz v0, :cond_33

    .line 224
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mInviterId:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    .line 226
    .restart local v6       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_33
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 92
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "conversation_row_id"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mConversationRowId:J

    .line 93
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "inviter_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mInviterId:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "is_group"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mIsGroup:Z

    .line 96
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 97
    return-void
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 113
    if-ne p1, v5, :cond_21

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v3, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mConversationRowId:J

    invoke-static {v0, v3, v4}, Lcom/google/android/apps/plus/content/EsProvider;->buildParticipantsUri(Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/net/Uri;

    move-result-object v2

    .line 116
    .local v2, participantUri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/google/android/apps/plus/fragments/InvitationFragment$ParticipantQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "participant_id=?"

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mInviterId:Ljava/lang/String;

    aput-object v8, v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .end local v2           #participantUri:Landroid/net/Uri;
    :goto_20
    return-object v0

    :cond_21
    move-object v0, v6

    goto :goto_20
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 68
    const v2, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 69
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0d00d1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mInvitationMessage:Landroid/widget/TextView;

    .line 71
    const v2, 0x7f0d00d5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mInformationAndBlockMessage:Landroid/widget/TextView;

    .line 73
    const v2, 0x7f0d00d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/AvatarView;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    .line 75
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/views/AvatarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v2, 0x7f0d00d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v2, 0x7f0d00d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 79
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mInviterId:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/plus/views/AvatarView;->setContactId(J)V

    .line 82
    return-object v1
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 12
    .parameter
    .parameter
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
    const/16 v8, 0x21

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 130
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    if-ne v0, v7, :cond_d4

    .line 131
    if-eqz p2, :cond_d4

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 132
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f07022b

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 136
    new-array v0, v7, [Ljava/lang/CharSequence;

    aput-object v1, v0, v6

    invoke-static {v2, v0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v3

    .line 138
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v4, Landroid/text/style/URLSpan;

    invoke-virtual {v3, v6, v0, v4}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 140
    new-instance v4, Landroid/text/SpannableStringBuilder;

    new-array v5, v7, [Ljava/lang/CharSequence;

    aput-object v1, v5, v6

    invoke-static {v2, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 142
    array-length v2, v0

    if-lez v2, :cond_6c

    .line 143
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 144
    aget-object v0, v0, v6

    .line 145
    invoke-virtual {v3, v0}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 146
    invoke-virtual {v3, v0}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 147
    new-instance v3, Lcom/google/android/apps/plus/fragments/InvitationFragment$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/fragments/InvitationFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/InvitationFragment;)V

    invoke-virtual {v4, v3, v2, v0, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mInvitationMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mInvitationMessage:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 162
    :cond_6c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f07022a

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 164
    new-array v0, v7, [Ljava/lang/CharSequence;

    aput-object v1, v0, v6

    invoke-static {v2, v0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v3

    .line 166
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v4, Landroid/text/style/URLSpan;

    invoke-virtual {v3, v6, v0, v4}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 168
    new-instance v4, Landroid/text/SpannableStringBuilder;

    new-array v5, v7, [Ljava/lang/CharSequence;

    aput-object v1, v5, v6

    invoke-static {v2, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 170
    array-length v1, v0

    if-le v1, v7, :cond_d5

    .line 171
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 172
    aget-object v1, v0, v6

    .line 173
    invoke-virtual {v3, v1}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 174
    invoke-virtual {v3, v1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 175
    new-instance v5, Lcom/google/android/apps/plus/fragments/InvitationFragment$2;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/fragments/InvitationFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/InvitationFragment;)V

    invoke-virtual {v4, v5, v2, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 183
    aget-object v0, v0, v7

    .line 184
    invoke-virtual {v3, v0}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 185
    invoke-virtual {v3, v0}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 186
    new-instance v2, Lcom/google/android/apps/plus/fragments/InvitationFragment$3;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/fragments/InvitationFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/InvitationFragment;)V

    invoke-virtual {v4, v2, v1, v0, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 193
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mInformationAndBlockMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment;->mInformationAndBlockMessage:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 203
    :cond_d4
    :goto_d4
    return-void

    .line 197
    :cond_d5
    const-string v0, "InvitationFragment"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 198
    const-string v0, "InvitationFragment"

    const-string v1, "Couldn\'t find html in information message."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 208
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
