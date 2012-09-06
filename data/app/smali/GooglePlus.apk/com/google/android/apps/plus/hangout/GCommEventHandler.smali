.class abstract Lcom/google/android/apps/plus/hangout/GCommEventHandler;
.super Ljava/lang/Object;
.source "GCommEventHandler.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioMuteStateChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    .registers 3
    .parameter "member"
    .parameter "muted"

    .prologue
    .line 112
    return-void
.end method

.method public onCallgrokLogUploadCompleted(ILjava/lang/String;)V
    .registers 3
    .parameter "error"
    .parameter "message"

    .prologue
    .line 74
    return-void
.end method

.method public onCameraPreviewFrameDimensionsChanged(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 171
    return-void
.end method

.method public onCameraSwitchRequested()V
    .registers 1

    .prologue
    .line 159
    return-void
.end method

.method public onCurrentSpeakerChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 2
    .parameter "currentSpeaker"

    .prologue
    .line 127
    return-void
.end method

.method public onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V
    .registers 2
    .parameter "error"

    .prologue
    .line 17
    return-void
.end method

.method public onHangoutCreated(Lcom/google/android/apps/plus/service/Hangout$Info;)V
    .registers 4
    .parameter "hangoutInfo"

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onHangoutCreated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onHangoutWaitTimeout(Lcom/google/android/apps/plus/service/Hangout$Info;)V
    .registers 4
    .parameter "hangoutInfo"

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onHangoutWaitTimeout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public onIncomingVideoFrameDimensionsChanged(III)V
    .registers 4
    .parameter "requestID"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 101
    return-void
.end method

.method public onIncomingVideoFrameReceived(I)V
    .registers 2
    .parameter "requestID"

    .prologue
    .line 98
    return-void
.end method

.method public onIncomingVideoStarted(I)V
    .registers 2
    .parameter "requestID"

    .prologue
    .line 133
    return-void
.end method

.method public onInstantMessageReceived(Lcom/google/android/apps/plus/hangout/InstantMessage;)V
    .registers 2
    .parameter "instantMessage"

    .prologue
    .line 95
    return-void
.end method

.method public onMediaBlock(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter "blockee"
    .parameter "blocker"

    .prologue
    .line 156
    return-void
.end method

.method public onMeetingEnterError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;)V
    .registers 2
    .parameter "error"

    .prologue
    .line 38
    return-void
.end method

.method public onMeetingExited(Z)V
    .registers 2
    .parameter "clientInitiated"

    .prologue
    .line 64
    return-void
.end method

.method public onMeetingMediaStarted()V
    .registers 1

    .prologue
    .line 57
    return-void
.end method

.method public onMeetingMemberEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "member"

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onMeetingMemberEntered Id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " currentStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getCurrentStatus()Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prevStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getPreviousStatus()Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onMeetingMemberExited(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "member"

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onMeetingMemberExited Id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " currentStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getCurrentStatus()Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prevStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getPreviousStatus()Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onMeetingMemberPresenceConnectionStatusChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "member"

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onMeetingMemberPresenceConnectionStatusChanged Id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " currentStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getCurrentStatus()Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prevStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getPreviousStatus()Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onMucEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 2
    .parameter "selfMeetingMember"

    .prologue
    .line 54
    return-void
.end method

.method public onOutgoingVideoStarted()V
    .registers 1

    .prologue
    .line 136
    return-void
.end method

.method public onReceivedRoomHistory(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$RoomEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, roomHistory:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$RoomEntry;>;"
    return-void
.end method

.method public onRemoteMute(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter "mutee"
    .parameter "muter"

    .prologue
    .line 146
    return-void
.end method

.method public onSignedIn(Ljava/lang/String;)V
    .registers 2
    .parameter "userJid"

    .prologue
    .line 23
    return-void
.end method

.method public onSignedOut()V
    .registers 1

    .prologue
    .line 26
    return-void
.end method

.method public onSigninTimeOutError()V
    .registers 1

    .prologue
    .line 20
    return-void
.end method

.method public onVCardResponse(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "member"

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onVCardResponse Id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " currentStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getCurrentStatus()Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prevStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getPreviousStatus()Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public onVideoMuteChanged(Z)V
    .registers 2
    .parameter "muted"

    .prologue
    .line 168
    return-void
.end method

.method public onVideoMuteToggleRequested()V
    .registers 1

    .prologue
    .line 165
    return-void
.end method

.method public onVideoPauseStateChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    .registers 3
    .parameter "member"
    .parameter "paused"

    .prologue
    .line 115
    return-void
.end method

.method public onVideoSourceChanged(ILcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    .registers 4
    .parameter "requestID"
    .parameter "source"
    .parameter "available"

    .prologue
    .line 130
    return-void
.end method

.method public onVolumeChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;I)V
    .registers 3
    .parameter "member"
    .parameter "volume"

    .prologue
    .line 124
    return-void
.end method
