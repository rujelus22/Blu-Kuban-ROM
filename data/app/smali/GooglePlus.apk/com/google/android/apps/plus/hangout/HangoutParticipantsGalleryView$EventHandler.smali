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


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;)V
    .registers 2
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;)V

    return-void
.end method


# virtual methods
.method public onCurrentSpeakerChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter "currentSpeaker"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->access$000(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;)Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setCurrentSpeaker(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->access$100(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 49
    :cond_d
    return-void
.end method

.method public onMediaBlock(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "blockee"
    .parameter "blocker"

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMediaBlock(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->access$300(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    invoke-static {v0, p2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->access$300(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 68
    return-void
.end method

.method public onVideoPauseStateChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    .registers 4
    .parameter "member"
    .parameter "paused"

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onVideoPauseStateChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->access$300(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 74
    return-void
.end method

.method public onVideoSourceChanged(ILcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    .registers 5
    .parameter "requestID"
    .parameter "source"
    .parameter "videoAvailable"

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onVideoSourceChanged(ILcom/google/android/apps/plus/hangout/MeetingMember;Z)V

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->mainVideoRequestId:I
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->access$200(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;)I

    move-result v0

    if-ne p1, v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->pinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->access$000(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;)Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v0

    if-nez v0, :cond_18

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setCurrentSpeaker(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    invoke-static {v0, p2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->access$100(Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 61
    :cond_18
    return-void
.end method
