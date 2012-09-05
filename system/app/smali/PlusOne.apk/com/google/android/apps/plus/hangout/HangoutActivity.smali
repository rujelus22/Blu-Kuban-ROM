.class public Lcom/google/android/apps/plus/hangout/HangoutActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "HangoutActivity.java"

# interfaces
.implements Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/HangoutActivity$1;,
        Lcom/google/android/apps/plus/hangout/HangoutActivity$HangoutParticipantPresenceListener;
    }
.end annotation


# instance fields
.field private final hangoutParticipantPresenceListener:Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;

.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mFromHangoutRinging:Z

.field private mFromHermes:Z

.field mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

.field private mSkipGreenRoom:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    .line 49
    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mFromHermes:Z

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mFromHangoutRinging:Z

    .line 51
    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mSkipGreenRoom:Z

    .line 52
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutActivity$HangoutParticipantPresenceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutActivity$HangoutParticipantPresenceListener;-><init>(Lcom/google/android/apps/plus/hangout/HangoutActivity;Lcom/google/android/apps/plus/hangout/HangoutActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->hangoutParticipantPresenceListener:Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/HangoutActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->displayParticipantsInTray()V

    return-void
.end method

.method private displayParticipantsInTray()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->setParticipants(Ljava/util/HashMap;Ljava/util/HashSet;)V

    .line 265
    return-void
.end method


# virtual methods
.method public blockPerson(Ljava/io/Serializable;)V
    .registers 3
    .parameter "callbackData"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->blockPerson(Ljava/io/Serializable;)V

    .line 254
    return-void
.end method

.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method public getHangoutNotificationIntent()Landroid/content/Intent;
    .registers 9

    .prologue
    .line 280
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v7

    .line 282
    .local v7, nativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    invoke-virtual {v7}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-virtual {v7}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getHangoutInfo()Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v2

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mFromHermes:Z

    iget-boolean v5, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mFromHangoutRinging:Z

    iget-boolean v6, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mSkipGreenRoom:Z

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/Intents;->getHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$Info;Ljava/util/ArrayList;ZZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantListActivityIntent()Landroid/content/Intent;
    .registers 10

    .prologue
    .line 305
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getMeetingMembersOrderedByEntry()Ljava/util/List;

    move-result-object v4

    .line 307
    .local v4, meetingMembers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/hangout/MeetingMember;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 308
    .local v6, participants:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 309
    .local v3, meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v7

    if-nez v7, :cond_19

    .line 312
    const-string v0, ""

    .line 313
    .local v0, fullName:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getVCard()Lcom/google/android/apps/plus/hangout/VCard;

    move-result-object v7

    if-eqz v7, :cond_3b

    .line 314
    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getVCard()Lcom/google/android/apps/plus/hangout/VCard;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/plus/hangout/VCard;->getFullName()Ljava/lang/String;

    move-result-object v0

    .line 316
    :cond_3b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v7

    invoke-static {v0}, Lcom/google/android/apps/plus/service/Hangout;->getFirstNameFromFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v5

    .line 321
    .local v5, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 324
    .end local v0           #fullName:Ljava/lang/String;
    .end local v3           #meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    .end local v5           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_5b
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v7

    invoke-static {p0, v7, v6}, Lcom/google/android/apps/plus/phone/Intents;->getHangoutParticipantListActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    .line 326
    .local v2, intent:Landroid/content/Intent;
    return-object v2
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 245
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->HANGOUT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onBlockCompleted(Z)V
    .registers 2
    .parameter "success"

    .prologue
    .line 261
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HangoutActivity.onCreate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "account"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 76
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "hangout_from_hermes"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mFromHermes:Z

    .line 77
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "hangout_from_hangout_ringing"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mFromHangoutRinging:Z

    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "hangout_skip_green_room"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mSkipGreenRoom:Z

    .line 81
    const v2, 0x7f03002b

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "hangout_room_info"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 87
    .local v0, info:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "hangout_participants"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 92
    .local v1, participants:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    iget-boolean v2, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mFromHermes:Z

    if-nez v2, :cond_72

    iget-boolean v2, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mFromHangoutRinging:Z

    if-eqz v2, :cond_7c

    .line 93
    :cond_72
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x680080

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 99
    :cond_7c
    const v2, 0x7f0d008d

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/hangout/HangoutTile;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    .line 100
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->setHangoutInfo(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$Info;Ljava/util/ArrayList;)V

    .line 101
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    iget-boolean v3, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mFromHermes:Z

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/hangout/HangoutTile;->setFromHermes(Z)V

    .line 102
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    iget-boolean v3, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mSkipGreenRoom:Z

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/hangout/HangoutTile;->setSkipGreenRoom(Z)V

    .line 103
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onCreate(Landroid/os/Bundle;)V

    .line 104
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 180
    if-nez p1, :cond_9

    .line 181
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->createDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 183
    :goto_8
    return-object v0

    :cond_9
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 194
    .local v1, inflater:Landroid/view/MenuInflater;
    const v2, 0x7f100008

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 195
    const v2, 0x7f100007

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 197
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isDebuggable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 198
    const-string v2, "Debug"

    invoke-interface {p1, v2}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 199
    .local v0, debugMenu:Landroid/view/Menu;
    const v2, 0x7f10000f

    invoke-virtual {v1, v2, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 202
    .end local v0           #debugMenu:Landroid/view/Menu;
    :cond_22
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method public onMeetingMediaStarted()V
    .registers 1

    .prologue
    .line 298
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->setIntent(Landroid/content/Intent;)V

    .line 169
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 10
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 210
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 211
    .local v2, itemId:I
    const v6, 0x7f0d01c6

    if-ne v2, v6, :cond_24

    .line 212
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070290

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, helpUrl:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 214
    .local v3, launchBrowser:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->startActivity(Landroid/content/Intent;)V

    .line 237
    .end local v1           #helpUrl:Ljava/lang/String;
    .end local v3           #launchBrowser:Landroid/content/Intent;
    :goto_23
    return v5

    .line 216
    :cond_24
    const v6, 0x7f0d01c7

    if-ne v2, v6, :cond_32

    .line 217
    sget-object v6, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->SETTINGS_FEEDBACK:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 218
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/GoogleFeedback;->launch(Landroid/app/Activity;)V

    goto :goto_23

    .line 220
    :cond_32
    const v6, 0x7f0d01d8

    if-ne v2, v6, :cond_51

    .line 224
    new-instance v4, Lcom/google/android/apps/plus/hangout/crash/CrashReport;

    invoke-direct {v4, v5}, Lcom/google/android/apps/plus/hangout/crash/CrashReport;-><init>(Z)V

    .line 226
    .local v4, report:Lcom/google/android/apps/plus/hangout/crash/CrashReport;
    :try_start_3c
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Dummy exception for testing crash reports"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_44} :catch_44

    .line 227
    :catch_44
    move-exception v0

    .line 228
    .local v0, ex:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->computeJavaCrashSignature(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->generateReport(Ljava/lang/String;)Z

    .line 230
    const/4 v6, 0x0

    invoke-virtual {v4, p0, v6}, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->send(Landroid/app/Activity;Z)V

    goto :goto_23

    .line 232
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v4           #report:Lcom/google/android/apps/plus/hangout/crash/CrashReport;
    :cond_51
    const v6, 0x7f0d01d9

    if-ne v2, v6, :cond_5e

    .line 233
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/plus/hangout/GCommApp;->raiseNetworkError()V

    goto :goto_23

    .line 237
    :cond_5e
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    goto :goto_23
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 135
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPause()V

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onTilePause()V

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onPause()V

    .line 138
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onResume()V

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onTileResume()V

    .line 128
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "outState"

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 111
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onStart()V

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onStart()V

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onTileStart()V

    .line 115
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->displayParticipantsInTray()V

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->hangoutParticipantPresenceListener:Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->addParticipantPresenceListener(Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;)V

    .line 117
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 155
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onStop()V

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->hangoutParticipantPresenceListener:Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->removeParticipantPresenceListener(Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onTileStop()V

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onStop()V

    .line 160
    return-void
.end method

.method public stopHangoutTile()V
    .registers 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->finish()V

    .line 273
    return-void
.end method
