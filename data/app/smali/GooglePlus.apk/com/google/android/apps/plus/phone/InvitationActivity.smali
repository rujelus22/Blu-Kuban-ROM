.class public Lcom/google/android/apps/plus/phone/InvitationActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "InvitationActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;
.implements Lcom/google/android/apps/plus/fragments/BlockPersonDialog$PersonBlocker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/InvitationActivity$ConversationQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsFragmentActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;",
        "Lcom/google/android/apps/plus/fragments/BlockPersonDialog$PersonBlocker;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field mConversationName:Ljava/lang/String;

.field mConversationRowId:J

.field mInviterId:Ljava/lang/String;

.field mInviterName:Ljava/lang/String;

.field mIsGroup:Z

.field private mParticipantsGalleryFragment:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/google/android/apps/plus/phone/InvitationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/phone/InvitationActivity;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    .line 45
    return-void
.end method

.method private initialize(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 104
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 105
    const-string v0, "conversation_row_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mConversationRowId:J

    .line 106
    const-string v0, "inviter_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mInviterId:Ljava/lang/String;

    .line 107
    const-string v0, "is_group"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mIsGroup:Z

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mParticipantsGalleryFragment:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mParticipantsGalleryFragment:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    new-instance v1, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$SimpleCommandListener;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mParticipantsGalleryFragment:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->getParticipantsGalleryView()Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$SimpleCommandListener;-><init>(Lcom/google/android/apps/plus/views/ParticipantsGalleryView;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->setCommandListener(Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mParticipantsGalleryFragment:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->setParticipantListButtonVisibility(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InvitationActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 116
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InvitationActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mParticipantsGalleryFragment:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v1, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mConversationRowId:J

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->markConversationNotificationsSeen(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I

    .line 120
    return-void
.end method

.method private setConversationLabel(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 165
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_e

    .line 166
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/InvitationActivity;->showTitlebar(Z)V

    .line 167
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/InvitationActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 172
    :goto_d
    return-void

    .line 169
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InvitationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 170
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method


# virtual methods
.method public blockPerson(Ljava/io/Serializable;)V
    .registers 9
    .parameter "callbackData"

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InvitationActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mInviterId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mInviterName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/fragments/BlockFragment;->getInstance(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/google/android/apps/plus/fragments/BlockFragment;

    move-result-object v6

    .line 218
    .local v6, dialog:Lcom/google/android/apps/plus/fragments/BlockFragment;
    invoke-virtual {v6, p0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->show(Landroid/support/v4/app/FragmentActivity;)V

    .line 219
    return-void
.end method

.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 254
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->CONVERSATION_INVITE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 77
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    if-eqz v0, :cond_16

    .line 78
    check-cast p1, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mParticipantsGalleryFragment:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    .line 80
    sget-boolean v0, Lcom/google/android/apps/plus/phone/InvitationActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 82
    :cond_16
    return-void
.end method

.method public onBlockCompleted(Z)V
    .registers 5
    .parameter "success"

    .prologue
    .line 262
    if-eqz p1, :cond_c

    .line 263
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v1, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mConversationRowId:J

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->leaveConversation(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I

    .line 264
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InvitationActivity;->finish()V

    .line 266
    :cond_c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f03005f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/InvitationActivity;->setContentView(I)V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InvitationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/InvitationActivity;->initialize(Landroid/content/Intent;)V

    .line 92
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 13
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

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 139
    if-ne p1, v8, :cond_22

    .line 140
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    .line 142
    .local v2, conversationsUri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    sget-object v3, Lcom/google/android/apps/plus/phone/InvitationActivity$ConversationQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "_id=?"

    new-array v5, v8, [Ljava/lang/String;

    iget-wide v7, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mConversationRowId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .end local v2           #conversationsUri:Landroid/net/Uri;
    :goto_21
    return-object v0

    .line 147
    :cond_22
    const/4 v0, 0x2

    if-ne p1, v0, :cond_45

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v3, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mConversationRowId:J

    invoke-static {v0, v3, v4}, Lcom/google/android/apps/plus/content/EsProvider;->buildParticipantsUri(Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/net/Uri;

    move-result-object v5

    .line 150
    .local v5, uri:Landroid/net/Uri;
    new-instance v3, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    sget-object v6, Lcom/google/android/apps/plus/phone/ConversationActivity$ParticipantsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v7, "participant_id!=?"

    new-array v8, v8, [Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v9

    const-string v9, "first_name"

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_21

    .end local v5           #uri:Landroid/net/Uri;
    :cond_45
    move-object v0, v6

    .line 156
    goto :goto_21
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 12
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
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 179
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v4

    if-ne v4, v7, :cond_23

    .line 180
    if-eqz p2, :cond_22

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 181
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mConversationName:Ljava/lang/String;

    .line 182
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mInviterName:Ljava/lang/String;

    .line 183
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mInviterName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/phone/InvitationActivity;->setConversationLabel(Ljava/lang/String;)V

    .line 206
    :cond_22
    :goto_22
    return-void

    .line 185
    :cond_23
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v4

    if-ne v4, v6, :cond_22

    .line 186
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 187
    .local v3, participantList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    :goto_2e
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 188
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    .line 189
    .local v0, builder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, firstName:Ljava/lang/String;
    if-eqz v1, :cond_41

    .line 191
    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 193
    :cond_41
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v4

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->convertParticipantType(I)Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v2

    .line 199
    .local v2, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 203
    .end local v0           #builder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .end local v1           #firstName:Ljava/lang/String;
    .end local v2           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_66
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mParticipantsGalleryFragment:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->removeAllParticipants()V

    .line 204
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mParticipantsGalleryFragment:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    invoke-virtual {v4, v3}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->addParticipants(Ljava/util/Collection;)V

    goto :goto_22
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/phone/InvitationActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 211
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 100
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/InvitationActivity;->initialize(Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 234
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_10

    .line 235
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/InvitationActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 236
    const/4 v0, 0x1

    .line 238
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 127
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onStart()V

    .line 128
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_11

    .line 129
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InvitationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 130
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 132
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_11
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/InvitationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/InvitationActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 227
    return-void
.end method
