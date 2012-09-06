.class public Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "HangoutParticipantListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

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

.field private toastsView:Lcom/google/android/apps/plus/hangout/ToastsView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method

.method private canInviteMoreParticipants()Z
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/google/android/apps/plus/util/EsLog;->ENABLE_DOGFOOD_FEATURES:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private inviteMoreParticipants()V
    .registers 14

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080260

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, title:Ljava/lang/String;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v9

    .line 201
    .local v9, currentAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->mParticipantList:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 202
    .local v12, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-static {v12}, Lcom/google/android/apps/plus/realtimechat/ParticipantUtils;->makePersonFromParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addUser(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    goto :goto_17

    .line 204
    .end local v12           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v3

    const/4 v4, 0x5

    move-object v0, p0

    move v6, v5

    move v8, v7

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/phone/Intents;->getEditAudienceActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;IZZZZ)Landroid/content/Intent;

    move-result-object v11

    .line 207
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {p0, v11, v5}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 208
    return-void
.end method

.method private setConversationLabel(Ljava/lang/String;)V
    .registers 4
    .parameter "conversationName"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->shouldShowAndroidActionBar()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 173
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 174
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_d
    return-void

    .line 176
    :cond_e
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->showTitlebar(Z)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->setTitlebarTitle(Ljava/lang/String;)V

    goto :goto_d
.end method

.method private setParticipantCount(I)V
    .registers 10
    .parameter "count"

    .prologue
    const/4 v7, 0x1

    .line 186
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08025c

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->mParticipantList:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, subtitle:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->shouldShowAndroidActionBar()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 189
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 190
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 195
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_28
    return-void

    .line 192
    :cond_29
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->showTitlebar(Z)V

    .line 193
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->setTitlebarSubtitle(Ljava/lang/String;)V

    goto :goto_28
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 238
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->HANGOUT_PARTICIPANTS:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 212
    if-nez p1, :cond_27

    const/4 v1, -0x1

    if-ne p2, v1, :cond_27

    if-eqz p3, :cond_27

    .line 213
    const-string v1, "audience"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 215
    .local v0, inviteAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    const-string v2, "HANGOUT"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->inviteToMeeting(Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;ZZ)V

    .line 219
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->toastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    const v2, 0x7f08039a

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/ToastsView;->addToast(I)V

    .line 223
    .end local v0           #inviteAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :goto_26
    return-void

    .line 221
    :cond_27
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_26
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090274

    if-ne v0, v1, :cond_c

    .line 155
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->inviteMoreParticipants()V

    .line 157
    :cond_c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 45
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v2, 0x7f03007d

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->setContentView(I)V

    .line 48
    const v2, 0x7f090117

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/hangout/ToastsView;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->toastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    .line 50
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "account"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 51
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    .line 52
    .local v1, nativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getHangoutInfo()Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 54
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->shouldShowAndroidActionBar()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 56
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 62
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_42
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "hangout_participants"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->mParticipantList:Ljava/util/Collection;

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080399

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->setConversationLabel(Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->mParticipantList:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->setParticipantCount(I)V

    .line 67
    return-void

    .line 58
    :cond_68
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->showTitlebar(Z)V

    .line 59
    const v2, 0x7f100019

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->createTitlebarButtons(I)V

    goto :goto_42
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->shouldShowAndroidActionBar()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100019

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 136
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_14

    .line 146
    :goto_7
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 138
    :sswitch_9
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->inviteMoreParticipants()V

    goto :goto_7

    .line 142
    :sswitch_d
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 143
    const/4 v0, 0x1

    goto :goto_8

    .line 136
    :sswitch_data_14
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f0902d9 -> :sswitch_9
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPause()V

    .line 87
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->shouldShowAndroidActionBar()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 108
    const v1, 0x7f0902d9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 109
    .local v0, inviteItem:Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->canInviteMoreParticipants()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 110
    const/4 v1, 0x1

    .line 112
    .end local v0           #inviteItem:Landroid/view/MenuItem;
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->shouldShowAndroidActionBar()Z

    move-result v1

    if-nez v1, :cond_14

    .line 122
    const v1, 0x7f0902d9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 123
    .local v0, inviteItem:Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->canInviteMoreParticipants()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 125
    .end local v0           #inviteItem:Landroid/view/MenuItem;
    :cond_14
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 76
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->finish()V

    .line 79
    :cond_c
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 165
    return-void
.end method

.method public shouldShowAndroidActionBar()Z
    .registers 2

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method
