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
    .line 38
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
    .line 173
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->meetingMembers:Ljava/util/List;

    .line 165
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;

    .line 174
    invoke-virtual {p0, p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setCommandListener(Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;)V

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setCurrentSpeaker(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;)Lcom/google/android/apps/plus/hangout/MeetingMember;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->avatarViewsByMeetingMember:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;)Lcom/google/android/apps/plus/hangout/HangoutTile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->unpinVideo()V

    return-void
.end method

.method static synthetic access$602(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
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

    .line 194
    invoke-virtual {p0, p3, p2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->addParticipant(Landroid/view/LayoutInflater;Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    move-result-object v0

    .line 195
    .local v0, avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->currentSpeaker:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->currentSpeaker:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-ne p1, v1, :cond_29

    .line 196
    invoke-virtual {p0, v0, v2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setParticipantLoudestSpeaker(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Z)V

    .line 200
    :goto_10
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isMediaBlocked()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 201
    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->setOverlayResource(I)V

    .line 203
    :cond_1e
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->avatarViewsByMeetingMember:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->meetingMembersByAvatarView:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void

    .line 198
    :cond_29
    invoke-virtual {p0, v0, v2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setParticipantActive(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Z)V

    goto :goto_10
.end method

.method private pinVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 6
    .parameter "newPinnedVideoMember"

    .prologue
    .line 313
    sget-boolean v2, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->$assertionsDisabled:Z

    if-nez v2, :cond_c

    if-nez p1, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 315
    :cond_c
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-eqz v2, :cond_20

    .line 316
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->avatarViewsByMeetingMember:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    .line 318
    .local v0, lastPinnedVideoAvatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    if-eqz v0, :cond_20

    .line 319
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->setOverlayResource(I)V

    .line 323
    .end local v0           #lastPinnedVideoAvatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    :cond_20
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->avatarViewsByMeetingMember:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    .line 325
    .local v1, newPinnedVideoAvatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    const v2, 0x7f02004d

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->setOverlayResource(I)V

    .line 327
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/hangout/GCommApp;->setSelectedVideoSource(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 328
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->updateMainVideoStreaming()V

    .line 330
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 331
    return-void
.end method

.method private setCurrentSpeaker(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 7
    .parameter "newSpeaker"

    .prologue
    const/4 v4, 0x1

    .line 291
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->currentSpeaker:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-eqz v2, :cond_14

    .line 292
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->avatarViewsByMeetingMember:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->currentSpeaker:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    .line 293
    .local v0, lastSpeakerView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    if-eqz v0, :cond_14

    .line 294
    invoke-virtual {p0, v0, v4}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setParticipantActive(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Z)V

    .line 298
    .end local v0           #lastSpeakerView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    :cond_14
    if-eqz p1, :cond_27

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->avatarViewsByMeetingMember:Ljava/util/HashMap;

    if-eqz v2, :cond_27

    .line 299
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->avatarViewsByMeetingMember:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    .line 300
    .local v1, newSpeakerAvatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    if-eqz v1, :cond_27

    .line 301
    invoke-virtual {p0, v1, v4}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setParticipantLoudestSpeaker(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Z)V

    .line 305
    .end local v1           #newSpeakerAvatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    :cond_27
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->currentSpeaker:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 306
    return-void
.end method

.method private unpinVideo()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 337
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-eqz v1, :cond_1f

    .line 338
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->avatarViewsByMeetingMember:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    .line 340
    .local v0, pinnedVideoAvatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    if-eqz v0, :cond_1f

    .line 341
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isMediaBlocked()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 343
    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->setOverlayResource(I)V

    .line 350
    .end local v0           #pinnedVideoAvatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->setSelectedVideoSource(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 351
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->updateMainVideoStreaming()V

    .line 353
    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 354
    return-void

    .line 345
    .restart local v0       #pinnedVideoAvatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    :cond_32
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->setOverlayResource(I)V

    goto :goto_1f
.end method


# virtual methods
.method public onAvatarClicked(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Lcom/google/wireless/realtimechat/proto/Data$Participant;)V
    .registers 10
    .parameter "avatarView"
    .parameter "participant"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->meetingMembersByAvatarView:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 363
    .local v6, meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    new-instance v3, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;

    invoke-direct {v3, p0, v6, p2, p1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;-><init>(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/wireless/realtimechat/proto/Data$Participant;Lcom/google/android/apps/plus/views/OverlayedAvatarView;)V

    .line 365
    .local v3, contextMenuHelper:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$AvatarContextMenuHelper;
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p1

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/util/QuickActions;->show(Landroid/view/View;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/view/View$OnCreateContextMenuListener;Landroid/view/MenuItem$OnMenuItemClickListener;Z)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->avatarContextMenuDialog:Landroid/app/Dialog;

    .line 368
    return-void
.end method

.method public onAvatarDoubleClicked(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Lcom/google/wireless/realtimechat/proto/Data$Participant;)V
    .registers 5
    .parameter "avatarView"
    .parameter "participant"

    .prologue
    .line 377
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->meetingMembersByAvatarView:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 378
    .local v0, clickedMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-eqz v0, :cond_16

    .line 379
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-ne v0, v1, :cond_12

    .line 380
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->unpinVideo()V

    .line 387
    :goto_11
    return-void

    .line 382
    :cond_12
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_11

    .line 385
    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->onAvatarClicked(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Lcom/google/wireless/realtimechat/proto/Data$Participant;)V

    goto :goto_11
.end method

.method public onPause()V
    .registers 5

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->unregisterForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 188
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->dismissAvatarMenuDialog()V

    .line 189
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->registerForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 183
    return-void
.end method

.method public onShowParticipantList()V
    .registers 3

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    invoke-interface {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->getParticipantListActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 396
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 397
    return-void
.end method

.method public setHangoutTile(Lcom/google/android/apps/plus/hangout/HangoutTile;)V
    .registers 2
    .parameter "hangoutTile"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    .line 179
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
    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->removeAllParticipants()V

    .line 215
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->avatarViewsByMeetingMember:Ljava/util/HashMap;

    .line 216
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->meetingMembersByAvatarView:Ljava/util/HashMap;

    .line 218
    if-eqz p1, :cond_71

    new-instance v7, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 221
    .local v7, participantsToDisplay:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_1e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 223
    .local v3, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->dismissAvatarMenuDialog()V

    .line 225
    iget-object v10, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->meetingMembers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 226
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

    .line 229
    iget-object v10, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->meetingMembers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_49
    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 230
    .local v4, meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getId()Ljava/lang/String;

    move-result-object v6

    .line 232
    .local v6, participantId:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v10

    if-nez v10, :cond_49

    .line 237
    if-eqz v7, :cond_73

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_73

    .line 238
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 244
    .local v5, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :goto_6d
    invoke-direct {p0, v4, v5, v3}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->addAvatarView(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/wireless/realtimechat/proto/Data$Participant;Landroid/view/LayoutInflater;)V

    goto :goto_49

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    .end local v5           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v6           #participantId:Ljava/lang/String;
    .end local v7           #participantsToDisplay:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_71
    move-object v7, v9

    .line 218
    goto :goto_1e

    .line 240
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    .restart local v4       #meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    .restart local v6       #participantId:Ljava/lang/String;
    .restart local v7       #participantsToDisplay:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_73
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v1

    .line 241
    .local v1, builder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 242
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v5

    .restart local v5       #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    goto :goto_6d

    .line 247
    .end local v1           #builder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .end local v4           #meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    .end local v5           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v6           #participantId:Ljava/lang/String;
    :cond_83
    if-eqz p2, :cond_a9

    .line 248
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_89
    :goto_89
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 249
    .restart local v6       #participantId:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_89

    .line 250
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 251
    .restart local v5       #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {p0, v3, v5}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->addParticipant(Landroid/view/LayoutInflater;Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    move-result-object v0

    .line 252
    .local v0, avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    invoke-virtual {p0, v0, v12}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setParticipantActive(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Z)V

    goto :goto_89

    .line 257
    .end local v0           #avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    .end local v5           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v6           #participantId:Ljava/lang/String;
    :cond_a9
    if-eqz v7, :cond_c9

    .line 258
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_af
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 259
    .restart local v6       #participantId:Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 260
    .restart local v5       #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {p0, v3, v5}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->addParticipant(Landroid/view/LayoutInflater;Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    move-result-object v0

    .line 261
    .restart local v0       #avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    invoke-virtual {p0, v0, v12}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setParticipantActive(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Z)V

    goto :goto_af

    .line 266
    .end local v0           #avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    .end local v5           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v6           #participantId:Ljava/lang/String;
    :cond_c9
    iget-object v10, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->currentSpeaker:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-eqz v10, :cond_dc

    .line 267
    iget-object v10, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->meetingMembers:Ljava/util/List;

    iget-object v11, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->currentSpeaker:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f6

    .line 268
    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->currentSpeaker:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-direct {p0, v9}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setCurrentSpeaker(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 275
    :cond_dc
    :goto_dc
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/apps/plus/hangout/GCommApp;->getSelectedVideoSource()Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v8

    .line 277
    .local v8, selectedVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-eqz v8, :cond_fa

    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->meetingMembers:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fa

    .line 278
    invoke-direct {p0, v8}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 282
    :goto_f5
    return-void

    .line 270
    .end local v8           #selectedVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;
    :cond_f6
    invoke-direct {p0, v9}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setCurrentSpeaker(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_dc

    .line 280
    .restart local v8       #selectedVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;
    :cond_fa
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->unpinVideo()V

    goto :goto_f5
.end method
