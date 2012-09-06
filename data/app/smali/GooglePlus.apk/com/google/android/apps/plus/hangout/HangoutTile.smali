.class public abstract Lcom/google/android/apps/plus/hangout/HangoutTile;
.super Landroid/widget/RelativeLayout;
.source "HangoutTile.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/Tile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog;,
        Lcom/google/android/apps/plus/hangout/HangoutTile$State;,
        Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;
    }
.end annotation


# instance fields
.field protected greenRoomParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;"
        }
    .end annotation
.end field

.field protected hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

.field protected listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field protected mHoaConsented:Z

.field protected skipGreenRoom:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    return-void
.end method

.method private getString(I)Ljava/lang/String;
    .registers 3
    .parameter "resId"

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addParticipantPresenceListener(Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->listeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 163
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->listeners:Ljava/util/List;

    .line 166
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public blockPerson(Ljava/io/Serializable;)V
    .registers 14
    .parameter "callbackData"

    .prologue
    .line 226
    move-object v6, p1

    check-cast v6, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 229
    .local v6, blockedMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v8

    .line 230
    .local v8, gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    invoke-virtual {v8}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getMeetingMembersOrderedByEntry()Ljava/util/List;

    move-result-object v11

    .line 234
    .local v11, members:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/hangout/MeetingMember;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 235
    .local v10, member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-virtual {v10}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 236
    invoke-virtual {v8, v10}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->blockMedia(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 242
    .end local v10           #member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getEsFragmentActivity()Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    move-result-object v0

    .line 243
    .local v0, activity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/fragments/BlockFragment;->getInstance(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/google/android/apps/plus/fragments/BlockFragment;

    move-result-object v7

    .line 246
    .local v7, dialog:Lcom/google/android/apps/plus/fragments/BlockFragment;
    invoke-virtual {v7, v0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->show(Landroid/support/v4/app/FragmentActivity;)V

    .line 247
    return-void
.end method

.method public getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method public getActiveParticipantIds()Ljava/util/HashSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 183
    .local v0, activeParticipantIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInstantiated()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 184
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getMeetingMembersOrderedByEntry()Ljava/util/List;

    move-result-object v3

    .line 185
    .local v3, members:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/hangout/MeetingMember;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 186
    .local v2, member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 190
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    .end local v3           #members:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/hangout/MeetingMember;>;"
    :cond_2b
    return-object v0
.end method

.method protected getEsFragmentActivity()Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
    .registers 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    return-object v0
.end method

.method public getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    .registers 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    return-object v0
.end method

.method protected getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;
    .registers 2

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    return-object v0
.end method

.method protected getWaitingMessage(Z)Ljava/lang/String;
    .registers 10
    .parameter "hadParticipantsPreviously"

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08038d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 197
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "audience"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d

    if-nez p1, :cond_4d

    .line 198
    const-string v3, "audience"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 201
    .local v1, invitedAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleCount()I

    move-result v3

    if-nez v3, :cond_4d

    .line 202
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v3

    if-ne v3, v7, :cond_4e

    .line 203
    const v3, 0x7f08038a

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v6}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUser(I)Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .end local v1           #invitedAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :cond_4d
    :goto_4d
    return-object v2

    .line 206
    .restart local v1       #invitedAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :cond_4e
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v3

    if-ne v3, v5, :cond_6c

    .line 207
    const v3, 0x7f08038b

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v6}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUser(I)Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4d

    .line 210
    :cond_6c
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v3

    if-le v3, v5, :cond_4d

    .line 211
    const v3, 0x7f08038c

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v6}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUser(I)Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4d
.end method

.method public hideChild(Landroid/view/View;)V
    .registers 2
    .parameter "child"

    .prologue
    .line 358
    return-void
.end method

.method protected inviteMoreParticipants()V
    .registers 18

    .prologue
    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 252
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080260

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, title:Ljava/lang/String;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v10

    .line 256
    .local v10, currentAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getMeetingMembersOrderedByEntry()Ljava/util/List;

    move-result-object v15

    .line 259
    .local v15, meetingMembers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/hangout/MeetingMember;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 260
    .local v14, meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-virtual {v14}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v1

    if-nez v1, :cond_25

    .line 263
    const-string v11, ""

    .line 264
    .local v11, fullName:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getVCard()Lcom/google/android/apps/plus/hangout/VCard;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 265
    invoke-virtual {v14}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getVCard()Lcom/google/android/apps/plus/hangout/VCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/VCard;->getFullName()Ljava/lang/String;

    move-result-object v11

    .line 267
    :cond_47
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v1

    invoke-virtual {v14}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v1

    invoke-static {v11}, Lcom/google/android/apps/plus/service/Hangout;->getFirstNameFromFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v16

    .line 272
    .local v16, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-static/range {v16 .. v16}, Lcom/google/android/apps/plus/realtimechat/ParticipantUtils;->makePersonFromParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addUser(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    goto :goto_25

    .line 275
    .end local v11           #fullName:Ljava/lang/String;
    .end local v14           #meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    .end local v16           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_6b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static/range {v0 .. v9}, Lcom/google/android/apps/plus/phone/Intents;->getEditAudienceActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;IZZZZZ)Landroid/content/Intent;

    move-result-object v13

    .line 278
    .local v13, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 279
    return-void
.end method

.method public abstract isTileStarted()Z
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 334
    if-nez p1, :cond_38

    const/4 v3, -0x1

    if-ne p2, v3, :cond_38

    if-eqz p3, :cond_38

    .line 335
    const-string v3, "audience"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 343
    .local v0, inviteAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/service/Hangout$Info;->getLaunchSource()Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Creation:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/service/Hangout$Info;->getRingInvitees()Z

    move-result v3

    if-eqz v3, :cond_39

    :cond_26
    move v1, v2

    .line 347
    .local v1, ringParticipants:Z
    :goto_27
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v3

    const-string v4, "HANGOUT"

    invoke-virtual {v3, v0, v4, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->inviteToMeeting(Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;ZZ)V

    .line 351
    .end local v0           #inviteAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .end local v1           #ringParticipants:Z
    :cond_38
    return-void

    .line 343
    .restart local v0       #inviteAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :cond_39
    const/4 v1, 0x0

    goto :goto_27
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 309
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 316
    return-void
.end method

.method public removeParticipantPresenceListener(Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->listeners:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 172
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 174
    :cond_9
    return-void
.end method

.method protected sendInvites()V
    .registers 7

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 284
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "audience"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 285
    const-string v3, "audience"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 288
    .local v1, inviteAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    if-nez v1, :cond_1d

    .line 301
    .end local v1           #inviteAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :cond_1c
    :goto_1c
    return-void

    .line 294
    .restart local v1       #inviteAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :cond_1d
    const-string v2, "HANGOUT"

    .line 297
    .local v2, inviteType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/service/Hangout$Info;->getRingInvitees()Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->inviteToMeeting(Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;ZZ)V

    goto :goto_1c
.end method

.method public setHangoutInfo(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$Info;Ljava/util/ArrayList;ZZ)V
    .registers 9
    .parameter "account"
    .parameter "hangoutInfo"
    .parameter
    .parameter "refreshGreenRoomParticipantList"
    .parameter "skipGreenRoom"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Lcom/google/android/apps/plus/service/Hangout$Info;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p3, greenRoomParticipants:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 124
    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 125
    iput-object p3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->greenRoomParticipants:Ljava/util/ArrayList;

    .line 126
    iput-boolean p5, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->skipGreenRoom:Z

    .line 128
    const-string v0, "setHangoutInfo: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getEsFragmentActivity()Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/apps/plus/hangout/HangoutActivity;

    if-eqz v0, :cond_2a

    .line 130
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/android/apps/plus/hangout/StressMode;->initialize(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/service/Hangout$Info;)V

    .line 132
    :cond_2a
    return-void
.end method

.method public abstract setParticipants(Ljava/util/HashMap;Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public showChild(Landroid/view/View;)V
    .registers 2
    .parameter "child"

    .prologue
    .line 365
    return-void
.end method

.method protected showError(IZ)V
    .registers 4
    .parameter "messageId"
    .parameter "finishOnOk"

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->showError(Ljava/lang/String;Z)V

    .line 410
    return-void
.end method

.method protected showError(Ljava/lang/String;Z)V
    .registers 10
    .parameter "message"
    .parameter "finishOnOk"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 372
    const-string v1, "showError: message=%s finishOnOk=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    invoke-static {}, Lcom/google/android/apps/plus/hangout/StressMode;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 374
    if-eqz p2, :cond_24

    .line 377
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 406
    :cond_24
    :goto_24
    return-void

    .line 380
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080209

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1080027

    invoke-static {v6, p1, v1, v6, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 383
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setCancelable(Z)V

    .line 384
    new-instance v1, Lcom/google/android/apps/plus/hangout/HangoutTile$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/apps/plus/hangout/HangoutTile$1;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTile;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setListener(Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;)V

    .line 404
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getEsFragmentActivity()Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_24
.end method

.method protected showHoaNotification(Landroid/widget/Button;)V
    .registers 5
    .parameter "joinButton"

    .prologue
    .line 458
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTile;Landroid/widget/Button;)V

    .line 459
    .local v0, dialog:Landroid/support/v4/app/DialogFragment;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getEsFragmentActivity()Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public abstract transfer()V
.end method

.method public abstract updateMainVideoStreaming()V
.end method
