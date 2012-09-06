.class public Lcom/google/android/apps/plus/hangout/HangoutActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "HangoutActivity.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;
.implements Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog;,
        Lcom/google/android/apps/plus/hangout/HangoutActivity$HangoutParticipantPresenceListener;
    }
.end annotation


# instance fields
.field private hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

.field private final hangoutParticipantPresenceListener:Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;

.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

.field private mShakeDetectorWasRunning:Z

.field private mSkipGreenRoom:Z

.field private mSkipMinorWarning:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mSkipGreenRoom:Z

    .line 84
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutActivity$HangoutParticipantPresenceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutActivity$HangoutParticipantPresenceListener;-><init>(Lcom/google/android/apps/plus/hangout/HangoutActivity;Lcom/google/android/apps/plus/hangout/HangoutActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->hangoutParticipantPresenceListener:Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/HangoutActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->displayParticipantsInTray()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/HangoutActivity;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/plus/hangout/HangoutActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mSkipMinorWarning:Z

    return p1
.end method

.method private displayParticipantsInTray()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 493
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->setParticipants(Ljava/util/HashMap;Ljava/util/HashSet;)V

    .line 494
    return-void
.end method

.method private showError(I)V
    .registers 3
    .parameter "messageId"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->showError(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .registers 7
    .parameter "message"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 102
    const-string v1, "showError: message=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080209

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1080027

    invoke-static {v4, p1, v1, v4, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 106
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setCancelable(Z)V

    .line 107
    new-instance v1, Lcom/google/android/apps/plus/hangout/HangoutActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity$1;-><init>(Lcom/google/android/apps/plus/hangout/HangoutActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setListener(Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;)V

    .line 125
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method private showMinorNotification()V
    .registers 4

    .prologue
    .line 177
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog;-><init>(Lcom/google/android/apps/plus/hangout/HangoutActivity;)V

    .line 178
    .local v0, dialog:Landroid/support/v4/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "warning"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 180
    return-void
.end method


# virtual methods
.method public blockPerson(Ljava/io/Serializable;)V
    .registers 3
    .parameter "callbackData"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->blockPerson(Ljava/io/Serializable;)V

    .line 483
    return-void
.end method

.method canTransfer()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 574
    :try_start_1
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getCurrentState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    :try_end_c
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_c} :catch_1b

    move-result-object v0

    .line 578
    .local v0, appState:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    sget-object v3, Lcom/google/android/apps/plus/util/Property;->ENABLE_HANGOUT_SWITCH:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/util/Property;->getBoolean()Z

    move-result v3

    if-eqz v3, :cond_1a

    sget-object v3, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->IN_MEETING_WITH_MEDIA:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    if-ne v0, v3, :cond_1a

    const/4 v2, 0x1

    .end local v0           #appState:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    :cond_1a
    :goto_1a
    return v2

    .line 575
    :catch_1b
    move-exception v1

    .line 576
    .local v1, err:Ljava/lang/LinkageError;
    goto :goto_1a
.end method

.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .parameter "source"

    .prologue
    const/4 v5, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 191
    .local v2, res:Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 192
    .local v1, icon:Landroid/graphics/Bitmap;
    const-string v3, "block_icon"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 193
    const v3, 0x7f02018b

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 199
    :goto_15
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 200
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 202
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_25
    return-object v0

    .line 194
    :cond_26
    const-string v3, "exit_icon"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 195
    const v3, 0x7f02007b

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_15

    .line 197
    :cond_36
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public getGreenRoomParticipantListActivityIntent(Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 537
    .local p1, participants:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/google/android/apps/plus/phone/Intents;->getHangoutParticipantListActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 539
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method

.method public getHangoutNotificationIntent()Landroid/content/Intent;
    .registers 8

    .prologue
    .line 509
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v2

    .line 512
    .local v2, nativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 513
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 514
    .local v1, invitedAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    const-string v4, "audience"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 515
    const-string v4, "audience"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .end local v1           #invitedAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 517
    .restart local v1       #invitedAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :cond_1d
    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getHangoutInfo()Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v5

    iget-boolean v6, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mSkipGreenRoom:Z

    invoke-static {p0, v4, v5, v6, v1}, Lcom/google/android/apps/plus/phone/Intents;->getHangoutActivityAudienceIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$Info;ZLcom/google/wireless/tacotruck/proto/Data$Audience;)Landroid/content/Intent;

    move-result-object v3

    .line 520
    .local v3, notificationIntent:Landroid/content/Intent;
    const-string v4, "hangout_skip_minor_warning"

    iget-boolean v5, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mSkipMinorWarning:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 521
    return-object v3
.end method

.method public getParticipantListActivityIntent()Landroid/content/Intent;
    .registers 10

    .prologue
    .line 547
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getMeetingMembersOrderedByEntry()Ljava/util/List;

    move-result-object v4

    .line 549
    .local v4, meetingMembers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/hangout/MeetingMember;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 550
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

    .line 551
    .local v3, meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v7

    if-nez v7, :cond_19

    .line 554
    const-string v0, ""

    .line 555
    .local v0, fullName:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getVCard()Lcom/google/android/apps/plus/hangout/VCard;

    move-result-object v7

    if-eqz v7, :cond_3b

    .line 556
    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getVCard()Lcom/google/android/apps/plus/hangout/VCard;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/plus/hangout/VCard;->getFullName()Ljava/lang/String;

    move-result-object v0

    .line 558
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

    .line 563
    .local v5, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 566
    .end local v0           #fullName:Ljava/lang/String;
    .end local v3           #meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    .end local v5           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_5b
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v7

    invoke-static {p0, v7, v6}, Lcom/google/android/apps/plus/phone/Intents;->getHangoutParticipantListActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    .line 568
    .local v2, intent:Landroid/content/Intent;
    return-object v2
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 474
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->HANGOUT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onActivityResult(IILandroid/content/Intent;)V

    .line 585
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 586
    return-void
.end method

.method public onBlockCompleted(Z)V
    .registers 2
    .parameter "success"

    .prologue
    .line 490
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 210
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HangoutActivity.onCreate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 216
    :try_start_1c
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getCurrentState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    :try_end_27
    .catch Ljava/lang/LinkageError; {:try_start_1c .. :try_end_27} :catch_df

    .line 225
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 226
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "account"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 227
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->isChild()Z

    move-result v0

    if-eqz v0, :cond_fd

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/content/EsAccountsData;->hasSeenMinorHangoutWarningDialog(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-nez v0, :cond_fd

    const-string v0, "hangout_skip_minor_warning"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_fd

    move v10, v4

    .line 230
    .local v10, needMinorNotification:Z
    :goto_4e
    if-nez v10, :cond_100

    const-string v0, "hangout_skip_green_room"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_100

    move v0, v4

    :goto_59
    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mSkipGreenRoom:Z

    .line 232
    const-string v0, "hangout_info"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/Hangout$Info;

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 235
    const-string v0, "hangout_participants"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 240
    .local v3, participants:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    if-eqz v0, :cond_103

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/Hangout$Info;->getLaunchSource()Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Ring:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    if-eq v0, v1, :cond_85

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/Hangout$Info;->getLaunchSource()Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Transfer:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    if-ne v0, v1, :cond_103

    .line 243
    :cond_85
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x680080

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 253
    :goto_8f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_107

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 254
    .local v6, actionBar:Landroid/app/ActionBar;
    :goto_99
    if-eqz v6, :cond_9e

    .line 255
    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 259
    :cond_9e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_109

    sget-object v0, Lcom/google/android/apps/plus/util/Property;->ENABLE_ADVANCED_HANGOUTS:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/util/Property;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_109

    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_109

    .line 261
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    .line 269
    :cond_bf
    :goto_bf
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 271
    .local v9, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {p0, v0, v9}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    iget-boolean v5, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mSkipGreenRoom:Z

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/hangout/HangoutTile;->setHangoutInfo(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$Info;Ljava/util/ArrayList;ZZ)V

    .line 274
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onCreate(Landroid/os/Bundle;)V

    .line 276
    if-eqz v10, :cond_de

    .line 277
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->showMinorNotification()V

    .line 279
    .end local v3           #participants:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    .end local v6           #actionBar:Landroid/app/ActionBar;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v10           #needMinorNotification:Z
    :cond_de
    :goto_de
    return-void

    .line 217
    :catch_df
    move-exception v7

    .line 218
    .local v7, err:Ljava/lang/LinkageError;
    new-instance v11, Landroid/view/View;

    invoke-direct {v11, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 219
    .local v11, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 220
    invoke-virtual {p0, v11}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->setContentView(Landroid/view/View;)V

    .line 221
    const v0, 0x7f080368

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->showError(I)V

    goto :goto_de

    .end local v7           #err:Ljava/lang/LinkageError;
    .end local v11           #view:Landroid/view/View;
    .restart local v8       #intent:Landroid/content/Intent;
    :cond_fd
    move v10, v1

    .line 227
    goto/16 :goto_4e

    .restart local v10       #needMinorNotification:Z
    :cond_100
    move v0, v1

    .line 230
    goto/16 :goto_59

    .line 249
    .restart local v3       #participants:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    :cond_103
    invoke-static {}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->stopRingActivity()V

    goto :goto_8f

    .line 253
    :cond_107
    const/4 v6, 0x0

    goto :goto_99

    .line 263
    .restart local v6       #actionBar:Landroid/app/ActionBar;
    :cond_109
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    .line 265
    if-eqz v6, :cond_bf

    .line 266
    invoke-virtual {v6}, Landroid/app/ActionBar;->hide()V

    goto :goto_bf
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    .line 380
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 382
    .local v1, inflater:Landroid/view/MenuInflater;
    const v4, 0x7f100018

    invoke-virtual {v1, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 383
    const v4, 0x7f10001b

    invoke-virtual {v1, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 384
    const v4, 0x7f0902e1

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 385
    .local v3, transferItem:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->canTransfer()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 388
    const v4, 0x7f0902ad

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 389
    .local v2, item:Landroid/view/MenuItem;
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 390
    const v4, 0x7f0902ac

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 391
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 393
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isDebuggable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 394
    const-string v4, "Debug"

    invoke-interface {p1, v4}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 395
    .local v0, debugMenu:Landroid/view/Menu;
    const v4, 0x7f100015

    invoke-virtual {v1, v4, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 398
    .end local v0           #debugMenu:Landroid/view/Menu;
    :cond_45
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v4, :cond_4e

    .line 399
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v4, p1, v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 401
    :cond_4e
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v4

    return v4
.end method

.method public onMeetingMediaStarted()V
    .registers 1

    .prologue
    .line 530
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 367
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

    .line 368
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->setIntent(Landroid/content/Intent;)V

    .line 369
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 10
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 424
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 425
    .local v2, itemId:I
    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v6, p1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 466
    :goto_d
    return v5

    .line 428
    :cond_e
    const v6, 0x102002c

    if-ne v2, v6, :cond_19

    .line 429
    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_d

    .line 433
    :cond_19
    const v6, 0x7f0902ad

    if-ne v2, v6, :cond_38

    .line 434
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080351

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, helpUrl:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 436
    .local v3, launchBrowser:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->startExternalActivity(Landroid/content/Intent;)V

    goto :goto_d

    .line 439
    .end local v1           #helpUrl:Ljava/lang/String;
    .end local v3           #launchBrowser:Landroid/content/Intent;
    :cond_38
    const v6, 0x7f0902ac

    if-ne v2, v6, :cond_46

    .line 440
    sget-object v6, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->SETTINGS_FEEDBACK:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 441
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/GoogleFeedback;->launch(Landroid/app/Activity;)V

    goto :goto_d

    .line 444
    :cond_46
    const v6, 0x7f0902d5

    if-ne v2, v6, :cond_65

    .line 448
    new-instance v4, Lcom/google/android/apps/plus/hangout/crash/CrashReport;

    invoke-direct {v4, v5}, Lcom/google/android/apps/plus/hangout/crash/CrashReport;-><init>(Z)V

    .line 450
    .local v4, report:Lcom/google/android/apps/plus/hangout/crash/CrashReport;
    :try_start_50
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Dummy exception for testing crash reports"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_58} :catch_58

    .line 451
    :catch_58
    move-exception v0

    .line 452
    .local v0, ex:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->computeJavaCrashSignature(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->generateReport(Ljava/lang/String;)Z

    .line 454
    const/4 v6, 0x0

    invoke-virtual {v4, p0, v6}, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->send(Landroid/app/Activity;Z)V

    goto :goto_d

    .line 457
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v4           #report:Lcom/google/android/apps/plus/hangout/crash/CrashReport;
    :cond_65
    const v6, 0x7f0902d6

    if-ne v2, v6, :cond_72

    .line 458
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/plus/hangout/GCommApp;->raiseNetworkError()V

    goto :goto_d

    .line 461
    :cond_72
    const v6, 0x7f0902e1

    if-ne v2, v6, :cond_7d

    .line 462
    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/hangout/HangoutTile;->transfer()V

    goto :goto_d

    .line 466
    :cond_7d
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    goto :goto_d
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v0, :cond_e

    .line 321
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onTilePause()V

    .line 322
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onPause()V

    .line 325
    :cond_e
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPause()V

    .line 326
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 409
    const v1, 0x7f0902e1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 410
    .local v0, transferItem:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->canTransfer()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 412
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v1, :cond_17

    .line 413
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 415
    :cond_17
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 307
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 309
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v0, :cond_11

    .line 310
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onResume()V

    .line 311
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onTileResume()V

    .line 313
    :cond_11
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "outState"

    .prologue
    .line 333
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 335
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v0, :cond_c

    .line 336
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 338
    :cond_c
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 286
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onStart()V

    .line 288
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v1, :cond_1b

    .line 289
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onStart()V

    .line 290
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onTileStart()V

    .line 291
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->displayParticipantsInTray()V

    .line 292
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->hangoutParticipantPresenceListener:Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->addParticipantPresenceListener(Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;)V

    .line 296
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ShakeDetector;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ShakeDetector;

    move-result-object v0

    .line 297
    .local v0, shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    if-eqz v0, :cond_2b

    .line 298
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/ShakeDetector;->stop()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mShakeDetectorWasRunning:Z

    .line 300
    :cond_2b
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 345
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onStop()V

    .line 347
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v1, :cond_18

    .line 348
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->hangoutParticipantPresenceListener:Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->removeParticipantPresenceListener(Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;)V

    .line 349
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onTileStop()V

    .line 350
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onStop()V

    .line 354
    :cond_18
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity;->mShakeDetectorWasRunning:Z

    if-eqz v1, :cond_29

    .line 355
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ShakeDetector;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ShakeDetector;

    move-result-object v0

    .line 356
    .local v0, shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    if-eqz v0, :cond_29

    .line 357
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/ShakeDetector;->start()Z

    .line 360
    .end local v0           #shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    :cond_29
    return-void
.end method

.method public stopHangoutTile()V
    .registers 1

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->finish()V

    .line 502
    return-void
.end method
