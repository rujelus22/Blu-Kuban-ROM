.class Lcom/google/android/apps/plus/hangout/ToastsView$EventHandler;
.super Lcom/google/android/apps/plus/hangout/GCommEventHandler;
.source "ToastsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/ToastsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/ToastsView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/ToastsView;)V
    .registers 2
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/ToastsView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/ToastsView;Lcom/google/android/apps/plus/hangout/ToastsView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/ToastsView$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/ToastsView;)V

    return-void
.end method


# virtual methods
.method public onMediaBlock(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 6
    .parameter "blockee"
    .parameter "blocker"

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMediaBlock(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/ToastsView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    new-instance v1, Lcom/google/android/apps/plus/hangout/ToastsView$MediaBlockToast;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/ToastsView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-direct {v1, v2, p1, p2}, Lcom/google/android/apps/plus/hangout/ToastsView$MediaBlockToast;-><init>(Lcom/google/android/apps/plus/hangout/ToastsView;Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/ToastsView;->addToast(Lcom/google/android/apps/plus/hangout/ToastsView$ToastInfo;)V

    .line 61
    return-void
.end method

.method public onMeetingMemberExited(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 5
    .parameter "meetingMember"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMemberExited(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 46
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/ToastsView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    new-instance v1, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/ToastsView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-direct {v1, v2, p1}, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;-><init>(Lcom/google/android/apps/plus/hangout/ToastsView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/ToastsView;->addToast(Lcom/google/android/apps/plus/hangout/ToastsView$ToastInfo;)V

    .line 47
    return-void
.end method

.method public onMeetingMemberPresenceConnectionStatusChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 5
    .parameter "meetingMember"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/ToastsView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/ToastsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/GCommApp;->shouldShowToastForMember(Lcom/google/android/apps/plus/hangout/MeetingMember;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/ToastsView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    new-instance v1, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/ToastsView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-direct {v1, v2, p1}, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;-><init>(Lcom/google/android/apps/plus/hangout/ToastsView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/ToastsView;->addToast(Lcom/google/android/apps/plus/hangout/ToastsView$ToastInfo;)V

    .line 40
    :cond_1c
    return-void
.end method

.method public onRemoteMute(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 6
    .parameter "mutee"
    .parameter "muter"

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onRemoteMute(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 53
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/ToastsView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    new-instance v1, Lcom/google/android/apps/plus/hangout/ToastsView$RemoteMuteToast;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/ToastsView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-direct {v1, v2, p1, p2}, Lcom/google/android/apps/plus/hangout/ToastsView$RemoteMuteToast;-><init>(Lcom/google/android/apps/plus/hangout/ToastsView;Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/ToastsView;->addToast(Lcom/google/android/apps/plus/hangout/ToastsView$ToastInfo;)V

    .line 54
    return-void
.end method

.method public onVCardResponse(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 5
    .parameter "meetingMember"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onVCardResponse(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 30
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/ToastsView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/ToastsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/GCommApp;->shouldShowToastForMember(Lcom/google/android/apps/plus/hangout/MeetingMember;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/ToastsView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    new-instance v1, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/ToastsView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-direct {v1, v2, p1}, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;-><init>(Lcom/google/android/apps/plus/hangout/ToastsView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/ToastsView;->addToast(Lcom/google/android/apps/plus/hangout/ToastsView$ToastInfo;)V

    .line 33
    :cond_1f
    return-void
.end method
