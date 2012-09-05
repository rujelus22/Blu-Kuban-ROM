.class public Lcom/google/android/apps/plus/hangout/GCommMessageHandler;
.super Landroid/os/Handler;
.source "GCommMessageHandler.java"


# instance fields
.field private final eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/hangout/GCommEventHandler;Landroid/content/Context;)V
    .registers 4
    .parameter "eventHandler"
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 22
    invoke-static {p2}, Lcom/google/android/apps/plus/hangout/Utils;->isOnMainThread(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Preconditions;->checkState(Z)V

    .line 23
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .line 24
    return-void
.end method


# virtual methods
.method getEventHandler()Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "message"

    .prologue
    .line 33
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_174

    .line 147
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 149
    :goto_8
    return-void

    .line 35
    :sswitch_9
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    invoke-virtual {v7, v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V

    goto :goto_8

    .line 38
    :sswitch_13
    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onSigninTimeOutError()V

    goto :goto_8

    .line 41
    :sswitch_19
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onSignedIn(Ljava/lang/String;)V

    goto :goto_8

    .line 44
    :sswitch_23
    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onSignedOut()V

    goto :goto_8

    .line 47
    :sswitch_29
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v7, v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onVCardResponse(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_8

    .line 50
    :sswitch_33
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-virtual {v7, v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onReceivedRoomHistory(Ljava/util/List;)V

    goto :goto_8

    .line 53
    :sswitch_3d
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onDataFromBunch(Ljava/lang/String;)V

    goto :goto_8

    .line 56
    :sswitch_47
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    invoke-virtual {v7, v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingEnterError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;)V

    goto :goto_8

    .line 60
    :sswitch_51
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v7, v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMucEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_8

    .line 63
    :sswitch_5b
    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMediaStarted()V

    goto :goto_8

    .line 66
    :sswitch_61
    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingExited()V

    goto :goto_8

    .line 69
    :sswitch_67
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    .line 70
    .local v2, arg:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onCallgrokLogUploadCompleted(ILjava/lang/String;)V

    goto :goto_8

    .line 74
    .end local v2           #arg:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :sswitch_7d
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v7, v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMemberEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_8

    .line 77
    :sswitch_87
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v7, v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMemberPresenceConnectionStatusChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto/16 :goto_8

    .line 81
    :sswitch_92
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v7, v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMemberExited(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto/16 :goto_8

    .line 84
    :sswitch_9d
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/plus/hangout/InstantMessage;

    invoke-virtual {v7, v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onInstantMessageReceived(Lcom/google/android/apps/plus/hangout/InstantMessage;)V

    goto/16 :goto_8

    .line 87
    :sswitch_a8
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onIncomingVideoFrameReceived(I)V

    goto/16 :goto_8

    .line 90
    :sswitch_b7
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$FrameDimensionsChangedMessageParams;

    .line 92
    .local v4, frameDimensionsChangedparams:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$FrameDimensionsChangedMessageParams;
    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$FrameDimensionsChangedMessageParams;->getRequestID()I

    move-result v7

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$FrameDimensionsChangedMessageParams;->getDimensions()Lcom/google/android/apps/plus/hangout/RectangleDimensions;

    move-result-object v8

    iget v8, v8, Lcom/google/android/apps/plus/hangout/RectangleDimensions;->width:I

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$FrameDimensionsChangedMessageParams;->getDimensions()Lcom/google/android/apps/plus/hangout/RectangleDimensions;

    move-result-object v9

    iget v9, v9, Lcom/google/android/apps/plus/hangout/RectangleDimensions;->height:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onIncomingVideoFrameDimensionsChanged(III)V

    goto/16 :goto_8

    .line 99
    .end local v4           #frameDimensionsChangedparams:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$FrameDimensionsChangedMessageParams;
    :sswitch_d2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 100
    .local v1, arg:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/plus/hangout/MeetingMember;Ljava/lang/Boolean;>;"
    iget-object v8, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/plus/hangout/MeetingMember;

    iget-object v7, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v6, v7}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onAudioMuteStateChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V

    goto/16 :goto_8

    .line 104
    .end local v1           #arg:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/plus/hangout/MeetingMember;Ljava/lang/Boolean;>;"
    :sswitch_e9
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v7, v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onCurrentSpeakerChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto/16 :goto_8

    .line 107
    :sswitch_f4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;

    .line 109
    .local v5, params:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;
    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;->getRequestID()I

    move-result v7

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;->getSource()Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;->isVideoAvailable()Z

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onVideoSourceChanged(ILcom/google/android/apps/plus/hangout/MeetingMember;Z)V

    goto/16 :goto_8

    .line 114
    .end local v5           #params:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;
    :sswitch_10b
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onIncomingVideoStarted(I)V

    goto/16 :goto_8

    .line 117
    :sswitch_11a
    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onOutgoingVideoStarted()V

    goto/16 :goto_8

    .line 120
    :sswitch_121
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 122
    .local v0, arg:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;>;"
    iget-object v8, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/plus/hangout/MeetingMember;

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v8, v6, v7}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onRemoteMute(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto/16 :goto_8

    .line 126
    .end local v0           #arg:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;>;"
    :sswitch_134
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 128
    .restart local v0       #arg:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;>;"
    iget-object v8, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/plus/hangout/MeetingMember;

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v8, v6, v7}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMediaBlock(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto/16 :goto_8

    .line 132
    .end local v0           #arg:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;>;"
    :sswitch_147
    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onCameraSwitchRequested()V

    goto/16 :goto_8

    .line 135
    :sswitch_14e
    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onVideoMuteToggleRequested()V

    goto/16 :goto_8

    .line 138
    :sswitch_155
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v7, v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onVideoMuteChanged(Z)V

    goto/16 :goto_8

    .line 141
    :sswitch_164
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/apps/plus/hangout/RectangleDimensions;

    .line 142
    .local v3, dimensions:Lcom/google/android/apps/plus/hangout/RectangleDimensions;
    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    iget v7, v3, Lcom/google/android/apps/plus/hangout/RectangleDimensions;->width:I

    iget v8, v3, Lcom/google/android/apps/plus/hangout/RectangleDimensions;->height:I

    invoke-virtual {v6, v7, v8}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onCameraPreviewFrameDimensionsChanged(II)V

    goto/16 :goto_8

    .line 33
    nop

    :sswitch_data_174
    .sparse-switch
        -0x3 -> :sswitch_47
        -0x2 -> :sswitch_13
        -0x1 -> :sswitch_9
        0x1 -> :sswitch_19
        0x2 -> :sswitch_23
        0x3 -> :sswitch_29
        0x4 -> :sswitch_33
        0x5 -> :sswitch_3d
        0x33 -> :sswitch_51
        0x34 -> :sswitch_5b
        0x35 -> :sswitch_61
        0x36 -> :sswitch_7d
        0x37 -> :sswitch_87
        0x38 -> :sswitch_92
        0x3a -> :sswitch_9d
        0x3b -> :sswitch_67
        0x65 -> :sswitch_d2
        0x66 -> :sswitch_e9
        0x67 -> :sswitch_f4
        0x68 -> :sswitch_10b
        0x69 -> :sswitch_11a
        0x6a -> :sswitch_a8
        0x6b -> :sswitch_b7
        0x6d -> :sswitch_121
        0x6e -> :sswitch_134
        0xc9 -> :sswitch_147
        0xca -> :sswitch_14e
        0xcb -> :sswitch_155
        0xcc -> :sswitch_164
    .end sparse-switch
.end method
