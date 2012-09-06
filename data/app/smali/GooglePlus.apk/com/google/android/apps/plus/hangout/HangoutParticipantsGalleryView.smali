.class public Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;
.super Lcom/google/android/apps/plus/views/ParticipantsGalleryView;
.source "HangoutParticipantsGalleryView.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$1;,
        Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;,
        Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private avatarViewsByMeetingMember:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/apps/plus/hangout/MeetingMember;",
            "Lcom/google/android/apps/plus/views/OverlayedAvatarView;",
            ">;"
        }
    .end annotation
.end field

.field private currentSpeaker:Lcom/google/android/apps/plus/hangout/MeetingMember;

.field private final eventHandler:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;

.field private mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

.field private mainVideoRequestId:I

.field private final meetingMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/hangout/MeetingMember;",
            ">;"
        }
    .end annotation
.end field

.field private meetingMembersByAvatarView:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/apps/plus/views/OverlayedAvatarView;",
            "Lcom/google/android/apps/plus/hangout/MeetingMember;",
            ">;"
        }
    .end annotation
.end field

.field private pinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->meetingMembers:Ljava/util/List;

    .line 171
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->mainVideoRequestId:I

    .line 181
    invoke-virtual {p0, p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setCommandListener(Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;)V

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;)Lcom/google/android/apps/plus/hangout/MeetingMember;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setCurrentSpeaker(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->mainVideoRequestId:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;)Lcom/google/android/apps/plus/hangout/HangoutTile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->unpinVideo()V

    return-void
.end method

.method static synthetic access$702(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->avatarContextMenuDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private addAvatarView(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/wireless/realtimechat/proto/Data$Participant;Landroid/view/LayoutInflater;)V
    .registers 7
    .parameter "meetingMember"
    .parameter "participant"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x1

    .line 201
    invoke-virtual {p0, p3, p2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->addParticipant(Landroid/view/LayoutInflater;Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    move-result-object v0

    .line 202
    .local v0, avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->currentSpeaker:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->currentSpeaker:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-ne p1, v1, :cond_1e

    .line 203
    invoke-virtual {p0, v0, v2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setParticipantLoudestSpeaker(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Z)V

    .line 207
    :goto_10
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->avatarViewsByMeetingMember:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->meetingMembersByAvatarView:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 210
    return-void

    .line 205
    :cond_1e
    invoke-virtual {p0, v0, v2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setParticipantActive(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Z)V

    goto :goto_10
.end method

.method private pinVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "newPinnedVideoMember"

    .prologue
    .line 319
    sget-boolean v1, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p1, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 320
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 322
    .local v0, oldPinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/hangout/GCommApp;->setSelectedVideoSource(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 323
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->updateMainVideoStreaming()V

    .line 325
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 326
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 327
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 328
    return-void
.end method

.method private setCurrentSpeaker(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 7
    .parameter "newSpeaker"

    .prologue
    const/4 v4, 0x1

    .line 297
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->currentSpeaker:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-eqz v2, :cond_14

    .line 298
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->avatarViewsByMeetingMember:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->currentSpeaker:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    .line 299
    .local v0, lastSpeakerView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    if-eqz v0, :cond_14

    .line 300
    invoke-virtual {p0, v0, v4}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setParticipantActive(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Z)V

    .line 304
    .end local v0           #lastSpeakerView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    :cond_14
    if-eqz p1, :cond_27

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->avatarViewsByMeetingMember:Ljava/util/HashMap;

    if-eqz v2, :cond_27

    .line 305
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->avatarViewsByMeetingMember:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    .line 306
    .local v1, newSpeakerAvatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    if-eqz v1, :cond_27

    .line 307
    invoke-virtual {p0, v1, v4}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setParticipantLoudestSpeaker(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Z)V

    .line 311
    .end local v1           #newSpeakerAvatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    :cond_27
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->currentSpeaker:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 312
    return-void
.end method

.method private setOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 5
    .parameter "member"

    .prologue
    .line 391
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 412
    :cond_8
    :goto_8
    return-void

    .line 395
    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->avatarViewsByMeetingMember:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    .line 397
    .local v0, avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-ne p1, v1, :cond_1c

    .line 398
    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->setOverlayResource(I)V

    goto :goto_8

    .line 399
    :cond_1c
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isMediaBlocked()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 400
    const v1, 0x7f0201b7

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->setOverlayResource(I)V

    goto :goto_8

    .line 401
    :cond_29
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isVideoPaused()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 402
    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->setOverlayResource(I)V

    goto :goto_8

    .line 404
    :cond_36
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->setOverlayResource(I)V

    .line 406
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getCurrentStatus()Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->CONNECTING:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    if-ne v1, v2, :cond_47

    .line 407
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->setParticipantType(I)V

    goto :goto_8

    .line 409
    :cond_47
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->setParticipantType(I)V

    goto :goto_8
.end method

.method private unpinVideo()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 334
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->setSelectedVideoSource(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 335
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->updateMainVideoStreaming()V

    .line 337
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 338
    .local v0, oldPinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 339
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 340
    return-void
.end method


# virtual methods
.method public onAvatarClicked(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Lcom/google/wireless/realtimechat/proto/Data$Participant;)V
    .registers 10
    .parameter "avatarView"
    .parameter "participant"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->meetingMembersByAvatarView:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 349
    .local v6, meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    new-instance v3, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;

    invoke-direct {v3, p0, v6, p2, p1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;-><init>(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/wireless/realtimechat/proto/Data$Participant;Lcom/google/android/apps/plus/views/OverlayedAvatarView;)V

    .line 351
    .local v3, contextMenuHelper:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p1

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/util/QuickActions;->show(Landroid/view/View;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/view/View$OnCreateContextMenuListener;Landroid/view/MenuItem$OnMenuItemClickListener;Z)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->avatarContextMenuDialog:Landroid/app/Dialog;

    .line 354
    return-void
.end method

.method public onAvatarDoubleClicked(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Lcom/google/wireless/realtimechat/proto/Data$Participant;)V
    .registers 5
    .parameter "avatarView"
    .parameter "participant"

    .prologue
    .line 363
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->meetingMembersByAvatarView:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 364
    .local v0, clickedMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-eqz v0, :cond_16

    .line 365
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-ne v0, v1, :cond_12

    .line 366
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->unpinVideo()V

    .line 373
    :goto_11
    return-void

    .line 368
    :cond_12
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_11

    .line 371
    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->onAvatarClicked(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Lcom/google/wireless/realtimechat/proto/Data$Participant;)V

    goto :goto_11
.end method

.method public onPause()V
    .registers 5

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->unregisterForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 195
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->dismissAvatarMenuDialog()V

    .line 196
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->registerForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 190
    return-void
.end method

.method public onShowParticipantList()V
    .registers 3

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    invoke-interface {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->getParticipantListActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 382
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 383
    return-void
.end method

.method public setHangoutTile(Lcom/google/android/apps/plus/hangout/HangoutTile;)V
    .registers 2
    .parameter "hangoutTile"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    .line 186
    return-void
.end method

.method setMainVideoRequestId(I)V
    .registers 3
    .parameter "requestId"

    .prologue
    .line 386
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 387
    :cond_c
    iput p1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->mainVideoRequestId:I

    .line 388
    return-void
.end method

.method public setParticipants(Ljava/util/HashMap;Ljava/util/HashSet;)V
    .registers 16
    .parameter
    .parameter
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

    .prologue
    .local p1, participantsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    .local p2, activeParticipantsInAnyTile:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v12, 0x0

    const/4 v9, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->removeAllParticipants()V

    .line 220
    iput-object v9, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 221
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->avatarViewsByMeetingMember:Ljava/util/HashMap;

    .line 222
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->meetingMembersByAvatarView:Ljava/util/HashMap;

    .line 224
    if-eqz p1, :cond_73

    new-instance v7, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 227
    .local v7, participantsToDisplay:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_20
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 229
    .local v3, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->dismissAvatarMenuDialog()V

    .line 231
    iget-object v10, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->meetingMembers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 232
    iget-object v10, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->meetingMembers:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getMeetingMembersOrderedByEntry()Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 235
    iget-object v10, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->meetingMembers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4b
    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_85

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 236
    .local v4, meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getId()Ljava/lang/String;

    move-result-object v6

    .line 238
    .local v6, participantId:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v10

    if-nez v10, :cond_4b

    .line 243
    if-eqz v7, :cond_75

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_75

    .line 244
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 250
    .local v5, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :goto_6f
    invoke-direct {p0, v4, v5, v3}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->addAvatarView(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/wireless/realtimechat/proto/Data$Participant;Landroid/view/LayoutInflater;)V

    goto :goto_4b

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    .end local v5           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v6           #participantId:Ljava/lang/String;
    .end local v7           #participantsToDisplay:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_73
    move-object v7, v9

    .line 224
    goto :goto_20

    .line 246
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    .restart local v4       #meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    .restart local v6       #participantId:Ljava/lang/String;
    .restart local v7       #participantsToDisplay:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_75
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v1

    .line 247
    .local v1, builder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 248
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v5

    .restart local v5       #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    goto :goto_6f

    .line 253
    .end local v1           #builder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .end local v4           #meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    .end local v5           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v6           #participantId:Ljava/lang/String;
    :cond_85
    if-eqz p2, :cond_ab

    .line 254
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8b
    :goto_8b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ab

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 255
    .restart local v6       #participantId:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8b

    .line 256
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 257
    .restart local v5       #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {p0, v3, v5}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->addParticipant(Landroid/view/LayoutInflater;Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    move-result-object v0

    .line 258
    .local v0, avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    invoke-virtual {p0, v0, v12}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setParticipantActive(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Z)V

    goto :goto_8b

    .line 263
    .end local v0           #avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    .end local v5           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v6           #participantId:Ljava/lang/String;
    :cond_ab
    if-eqz v7, :cond_cb

    .line 264
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_cb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 265
    .restart local v6       #participantId:Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 266
    .restart local v5       #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {p0, v3, v5}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->addParticipant(Landroid/view/LayoutInflater;Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    move-result-object v0

    .line 267
    .restart local v0       #avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    invoke-virtual {p0, v0, v12}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setParticipantActive(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Z)V

    goto :goto_b1

    .line 272
    .end local v0           #avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    .end local v5           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v6           #participantId:Ljava/lang/String;
    :cond_cb
    iget-object v10, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->currentSpeaker:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-eqz v10, :cond_de

    .line 273
    iget-object v10, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->meetingMembers:Ljava/util/List;

    iget-object v11, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->currentSpeaker:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f8

    .line 274
    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->currentSpeaker:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-direct {p0, v9}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setCurrentSpeaker(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 281
    :cond_de
    :goto_de
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/apps/plus/hangout/GCommApp;->getSelectedVideoSource()Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v8

    .line 283
    .local v8, selectedVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-eqz v8, :cond_fc

    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->meetingMembers:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fc

    .line 284
    invoke-direct {p0, v8}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 288
    :goto_f7
    return-void

    .line 276
    .end local v8           #selectedVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;
    :cond_f8
    invoke-direct {p0, v9}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setCurrentSpeaker(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_de

    .line 286
    .restart local v8       #selectedVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;
    :cond_fc
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->unpinVideo()V

    goto :goto_f7
.end method
