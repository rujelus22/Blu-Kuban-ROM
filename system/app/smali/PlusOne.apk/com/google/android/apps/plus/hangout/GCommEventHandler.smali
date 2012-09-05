.class abstract Lcom/google/android/apps/plus/hangout/GCommEventHandler;
.super Ljava/lang/Object;
.source "GCommEventHandler.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioMuteStateChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    .registers 3
    .parameter "member"
    .parameter "muted"

    .prologue
    .line 94
    return-void
.end method

.method public onCallgrokLogUploadCompleted(ILjava/lang/String;)V
    .registers 3
    .parameter "error"
    .parameter "message"

    .prologue
    .line 65
    return-void
.end method

.method public onCameraPreviewFrameDimensionsChanged(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 141
    return-void
.end method

.method public onCameraSwitchRequested()V
    .registers 1

    .prologue
    .line 129
    return-void
.end method

.method public onCurrentSpeakerChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 2
    .parameter "currentSpeaker"

    .prologue
    .line 97
    return-void
.end method

.method public onDataFromBunch(Ljava/lang/String;)V
    .registers 2
    .parameter "base64Data"

    .prologue
    .line 34
    return-void
.end method

.method public onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V
    .registers 2
    .parameter "error"

    .prologue
    .line 16
    return-void
.end method

.method public onIncomingVideoFrameDimensionsChanged(III)V
    .registers 4
    .parameter "requestID"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 83
    return-void
.end method

.method public onIncomingVideoFrameReceived(I)V
    .registers 2
    .parameter "requestID"

    .prologue
    .line 80
    return-void
.end method

.method public onIncomingVideoStarted(I)V
    .registers 2
    .parameter "requestID"

    .prologue
    .line 103
    return-void
.end method

.method public onInstantMessageReceived(Lcom/google/android/apps/plus/hangout/InstantMessage;)V
    .registers 2
    .parameter "instantMessage"

    .prologue
    .line 77
    return-void
.end method

.method public onMediaBlock(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter "blockee"
    .parameter "blocker"

    .prologue
    .line 126
    return-void
.end method

.method public onMeetingEnterError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;)V
    .registers 2
    .parameter "error"

    .prologue
    .line 37
    return-void
.end method

.method public onMeetingExited()V
    .registers 1

    .prologue
    .line 55
    return-void
.end method

.method public onMeetingMediaStarted()V
    .registers 1

    .prologue
    .line 48
    return-void
.end method

.method public onMeetingMemberEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 2
    .parameter "member"

    .prologue
    .line 68
    return-void
.end method

.method public onMeetingMemberExited(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 2
    .parameter "member"

    .prologue
    .line 74
    return-void
.end method

.method public onMeetingMemberPresenceConnectionStatusChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 2
    .parameter "member"

    .prologue
    .line 71
    return-void
.end method

.method public onMucEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 2
    .parameter "selfMeetingMember"

    .prologue
    .line 45
    return-void
.end method

.method public onOutgoingVideoStarted()V
    .registers 1

    .prologue
    .line 106
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
    .line 31
    .local p1, roomHistory:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$RoomEntry;>;"
    return-void
.end method

.method public onRemoteMute(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter "mutee"
    .parameter "muter"

    .prologue
    .line 116
    return-void
.end method

.method public onSignedIn(Ljava/lang/String;)V
    .registers 2
    .parameter "userJid"

    .prologue
    .line 22
    return-void
.end method

.method public onSignedOut()V
    .registers 1

    .prologue
    .line 25
    return-void
.end method

.method public onSigninTimeOutError()V
    .registers 1

    .prologue
    .line 19
    return-void
.end method

.method public onVCardResponse(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 2
    .parameter "member"

    .prologue
    .line 28
    return-void
.end method

.method public onVideoMuteChanged(Z)V
    .registers 2
    .parameter "muted"

    .prologue
    .line 138
    return-void
.end method

.method public onVideoMuteToggleRequested()V
    .registers 1

    .prologue
    .line 135
    return-void
.end method

.method public onVideoSourceChanged(ILcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    .registers 4
    .parameter "requestID"
    .parameter "source"
    .parameter "available"

    .prologue
    .line 100
    return-void
.end method
