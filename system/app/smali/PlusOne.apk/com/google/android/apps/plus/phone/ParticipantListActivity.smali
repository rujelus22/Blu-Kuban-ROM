.class public Lcom/google/android/apps/plus/phone/ParticipantListActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "ParticipantListActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/ParticipantListActivity$ConversationQuery;,
        Lcom/google/android/apps/plus/phone/ParticipantListActivity$ParticipantsQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsFragmentActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mConversationRowId:J

.field private mIsGroup:Z

.field private mNeedToInviteParticipants:Z

.field private mParticipantCount:I

.field private mParticipantList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;"
        }
    .end annotation
.end field

.field private mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    .line 59
    return-void
.end method

.method private setConversationLabel(Ljava/lang/String;)V
    .registers 5
    .parameter "conversationName"

    .prologue
    .line 255
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_11

    .line 256
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->showTitlebar(Z)V

    .line 257
    const v1, 0x7f020088

    invoke-virtual {p0, v1, p1}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 262
    :goto_10
    return-void

    .line 259
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 260
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method

.method private setParticipantCount(I)V
    .registers 2
    .parameter "count"

    .prologue
    .line 269
    iput p1, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mParticipantCount:I

    .line 270
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->updateSubtitle()V

    .line 271
    return-void
.end method

.method private updateSubtitle()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 277
    const/4 v1, 0x0

    .line 278
    .local v1, subtitle:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mIsGroup:Z

    if-eqz v2, :cond_20

    iget v2, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mParticipantCount:I

    if-lez v2, :cond_20

    .line 279
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701ae

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mParticipantCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 281
    :cond_20
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_2d

    .line 282
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->showTitlebar(Z)V

    .line 283
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->setTitlebarSubtitle(Ljava/lang/String;)V

    .line 288
    :goto_2c
    return-void

    .line 285
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 286
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_2c
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 368
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->CONVERSATION_PARTICIPANT_LIST:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected goHome(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 6
    .parameter "account"

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->goHomeToDestination(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 306
    :goto_6
    return-void

    .line 301
    :cond_7
    iget-wide v1, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mConversationRowId:J

    iget-boolean v3, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mIsGroup:Z

    invoke-static {p0, p1, v1, v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)Landroid/content/Intent;

    move-result-object v0

    .line 303
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->startActivity(Landroid/content/Intent;)V

    .line 305
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->finish()V

    goto :goto_6
.end method

.method public inviteMoreParticipants()V
    .registers 4

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mParticipantList:Ljava/util/Collection;

    if-eqz v0, :cond_11

    .line 326
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mParticipantList:Ljava/util/Collection;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mIsGroup:Z

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/apps/plus/phone/ParticipantHelper;->inviteMoreParticipants(Landroid/app/Activity;Ljava/util/Collection;ZLcom/google/android/apps/plus/content/EsAccount;)V

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mNeedToInviteParticipants:Z

    .line 334
    :goto_10
    return-void

    .line 332
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mNeedToInviteParticipants:Z

    goto :goto_10
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 341
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3a

    .line 342
    const/4 v0, -0x1

    if-ne p2, v0, :cond_39

    if-eqz p3, :cond_39

    .line 343
    const-string v0, "audience"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 344
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    if-eqz v0, :cond_39

    .line 345
    const-string v0, "ParticipantList"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 346
    const-string v0, "ParticipantList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got audience "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_39
    :goto_39
    return-void

    .line 351
    :cond_3a
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_39
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d018b

    if-ne v0, v1, :cond_c

    .line 238
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->inviteMoreParticipants()V

    .line 240
    :cond_c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 164
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    const v1, 0x7f030055

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->setContentView(I)V

    .line 167
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 168
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "is_group"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mIsGroup:Z

    .line 169
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "conversation_row_id"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mConversationRowId:J

    .line 173
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_55

    .line 174
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 175
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 181
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_45
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v5, v6, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 182
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v6, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 183
    return-void

    .line 177
    :cond_55
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->showTitlebar(Z)V

    .line 178
    const v1, 0x7f100012

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->createTitlebarButtons(I)V

    goto :goto_45
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

    const/4 v5, 0x1

    .line 88
    if-ne p1, v5, :cond_22

    .line 89
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/phone/ParticipantListActivity$ConversationQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "_id=?"

    new-array v5, v5, [Ljava/lang/String;

    iget-wide v7, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mConversationRowId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_21
    return-object v0

    .line 94
    :cond_22
    const/4 v0, 0x2

    if-ne p1, v0, :cond_44

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v3, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mConversationRowId:J

    invoke-static {v0, v3, v4}, Lcom/google/android/apps/plus/content/EsProvider;->buildParticipantsUri(Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/net/Uri;

    move-result-object v2

    .line 97
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    sget-object v3, Lcom/google/android/apps/plus/phone/ParticipantListActivity$ParticipantsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "participant_id!=? AND active=1"

    new-array v5, v5, [Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v9

    const-string v6, "first_name ASC"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .end local v2           #uri:Landroid/net/Uri;
    :cond_44
    move-object v0, v6

    .line 104
    goto :goto_21
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 313
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_12

    .line 314
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100012

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 315
    const/4 v0, 0x1

    .line 317
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
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
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 113
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v4

    if-ne v4, v6, :cond_22

    .line 114
    if-eqz p2, :cond_21

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 115
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, name:Ljava/lang/String;
    if-nez v2, :cond_1b

    .line 117
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    :cond_1b
    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->setConversationLabel(Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->updateSubtitle()V

    .line 149
    .end local v2           #name:Ljava/lang/String;
    :cond_21
    :goto_21
    return-void

    .line 122
    :cond_22
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v4

    if-ne v4, v7, :cond_21

    .line 123
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mParticipantList:Ljava/util/Collection;

    .line 124
    :goto_2f
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 125
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    .line 126
    .local v0, builder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    const/4 v4, 0x3

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, firstName:Ljava/lang/String;
    if-eqz v1, :cond_43

    .line 128
    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 130
    :cond_43
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v4

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

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

    move-result-object v3

    .line 136
    .local v3, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mParticipantList:Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 138
    .end local v0           #builder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .end local v1           #firstName:Ljava/lang/String;
    .end local v3           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_6a
    if-eqz p2, :cond_89

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_89

    .line 139
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->setParticipantCount(I)V

    .line 143
    :goto_79
    iget-boolean v4, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mNeedToInviteParticipants:Z

    if-eqz v4, :cond_21

    .line 144
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mParticipantList:Ljava/util/Collection;

    iget-boolean v5, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mIsGroup:Z

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v4, v5, v6}, Lcom/google/android/apps/plus/phone/ParticipantHelper;->inviteMoreParticipants(Landroid/app/Activity;Ljava/util/Collection;ZLcom/google/android/apps/plus/content/EsAccount;)V

    .line 146
    iput-boolean v8, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mNeedToInviteParticipants:Z

    goto :goto_21

    .line 141
    :cond_89
    invoke-direct {p0, v8}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->setParticipantCount(I)V

    goto :goto_79
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 157
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 219
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_14

    .line 229
    :goto_7
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 221
    :sswitch_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->inviteMoreParticipants()V

    goto :goto_7

    .line 225
    :sswitch_d
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 226
    const/4 v0, 0x1

    goto :goto_8

    .line 219
    :sswitch_data_14
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f0d01c9 -> :sswitch_9
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 210
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPause()V

    .line 211
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->allowDisconnect(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 212
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 190
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 191
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->isIntentAccountActive()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 192
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->connectAndStayConnected(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    if-eqz v0, :cond_1e

    .line 195
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v1, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mConversationRowId:J

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->inviteParticipants(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/tacotruck/proto/Data$Audience;)I

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 203
    :cond_1e
    :goto_1e
    return-void

    .line 200
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->finish()V

    goto :goto_1e
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ParticipantListActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 248
    return-void
.end method
