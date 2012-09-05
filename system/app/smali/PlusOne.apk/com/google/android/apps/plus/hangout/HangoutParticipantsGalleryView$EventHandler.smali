.class Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;
.super Lcom/google/android/apps/plus/hangout/GCommEventHandler;
.source "HangoutParticipantsGalleryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;)V

    return-void
.end method


# virtual methods
.method public onCurrentSpeakerChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter "currentSpeaker"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setCurrentSpeaker(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->access$000(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 48
    return-void
.end method

.method public onMediaBlock(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 6
    .parameter "blockee"
    .parameter "blocker"

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMediaBlock(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, blockedWithSelf:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 56
    move-object v0, p2

    .line 61
    :cond_b
    :goto_b
    if-eqz v0, :cond_3f

    .line 62
    sget-boolean v1, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_25

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isMediaBlocked()Z

    move-result v1

    if-nez v1, :cond_25

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 57
    :cond_1d
    invoke-virtual {p2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 58
    move-object v0, p1

    goto :goto_b

    .line 64
    :cond_25
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->access$100(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;)Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v1

    if-eq v0, v1, :cond_3f

    .line 65
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->avatarViewsByMeetingMember:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->access$200(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    const v2, 0x7f0200d2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->setOverlayResource(I)V

    .line 69
    :cond_3f
    return-void
.end method
