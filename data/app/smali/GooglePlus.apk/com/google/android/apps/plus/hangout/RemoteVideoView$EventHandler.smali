.class Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;
.super Lcom/google/android/apps/plus/hangout/GCommEventHandler;
.source "RemoteVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/RemoteVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/RemoteVideoView;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/RemoteVideoView;Lcom/google/android/apps/plus/hangout/RemoteVideoView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/RemoteVideoView;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V

    .line 249
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->AUDIO_VIDEO_SESSION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    if-ne p1, v0, :cond_e

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    sget-object v1, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->NONE:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;)V

    .line 252
    :cond_e
    return-void
.end method

.method public onIncomingVideoFrameDimensionsChanged(III)V
    .registers 5
    .parameter "requestID"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 259
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onIncomingVideoFrameDimensionsChanged(III)V

    .line 261
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    iget v0, v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->requestID:I

    if-eq p1, v0, :cond_a

    .line 269
    :cond_9
    :goto_9
    return-void

    .line 264
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    iget v0, v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->incomingVideoFrameWidth:I

    if-ne p2, v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    iget v0, v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->incomingVideoFrameHeight:I

    if-eq p3, v0, :cond_9

    .line 265
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    iput p2, v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->incomingVideoFrameWidth:I

    .line 266
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    iput p3, v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->incomingVideoFrameHeight:I

    .line 267
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->requestLayout()V

    goto :goto_9
.end method

.method public onIncomingVideoFrameReceived(I)V
    .registers 3
    .parameter "requestID"

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onIncomingVideoFrameReceived(I)V

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    iget v0, v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->requestID:I

    if-ne p1, v0, :cond_12

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mVideoSurface:Lcom/google/android/apps/plus/hangout/VideoTextureView;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->access$000(Lcom/google/android/apps/plus/hangout/RemoteVideoView;)Lcom/google/android/apps/plus/hangout/VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VideoTextureView;->requestRender()V

    .line 166
    :cond_12
    return-void
.end method

.method public onIncomingVideoStarted(I)V
    .registers 3
    .parameter "requestID"

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onIncomingVideoStarted(I)V

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    iget v0, v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->requestID:I

    if-ne p1, v0, :cond_33

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isExitingHangout()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->isHangoutTileStarted()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mVideoSurface:Lcom/google/android/apps/plus/hangout/VideoTextureView;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->access$000(Lcom/google/android/apps/plus/hangout/RemoteVideoView;)Lcom/google/android/apps/plus/hangout/VideoTextureView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/VideoTextureView;->setRequestID(I)V

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mVideoSurface:Lcom/google/android/apps/plus/hangout/VideoTextureView;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->access$000(Lcom/google/android/apps/plus/hangout/RemoteVideoView;)Lcom/google/android/apps/plus/hangout/VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VideoTextureView;->onResume()V

    .line 157
    :cond_33
    return-void
.end method

.method public onMediaBlock(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 5
    .parameter "blockee"
    .parameter "blocker"

    .prologue
    .line 237
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMediaBlock(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 239
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mCurrentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-ne p1, v0, :cond_12

    .line 240
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    iget-object v1, v1, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mCurrentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 243
    :cond_12
    return-void
.end method

.method public onVCardResponse(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "meetingMember"

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onVCardResponse(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mCurrentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-ne v0, p1, :cond_40

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/RemoteVideoView;->currentContent:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->access$200(Lcom/google/android/apps/plus/hangout/RemoteVideoView;)Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->AVATAR:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    if-ne v0, v1, :cond_40

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/RemoteVideoView;->showingUnknownAvatar:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->access$100(Lcom/google/android/apps/plus/hangout/RemoteVideoView;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 218
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getVCard()Lcom/google/android/apps/plus/hangout/VCard;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getVCard()Lcom/google/android/apps/plus/hangout/VCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VCard;->getAvatarData()[B

    move-result-object v0

    if-eqz v0, :cond_40

    .line 220
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->getAvatarView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/google/android/apps/plus/hangout/Avatars;->renderAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/MeetingMember;Landroid/widget/ImageView;)V

    .line 221
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/hangout/RemoteVideoView;->showingUnknownAvatar:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->access$102(Lcom/google/android/apps/plus/hangout/RemoteVideoView;Z)Z

    .line 224
    :cond_40
    return-void
.end method

.method public onVideoPauseStateChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    .registers 5
    .parameter "member"
    .parameter "paused"

    .prologue
    .line 228
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onVideoPauseStateChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V

    .line 230
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mCurrentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-ne p1, v0, :cond_12

    .line 231
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    iget-object v1, v1, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mCurrentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 233
    :cond_12
    return-void
.end method

.method public onVideoSourceChanged(ILcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    .registers 8
    .parameter "requestID"
    .parameter "source"
    .parameter "videoAvailable"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 171
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onVideoSourceChanged(ILcom/google/android/apps/plus/hangout/MeetingMember;Z)V

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    iget v0, v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->requestID:I

    if-eq p1, v0, :cond_c

    .line 207
    :goto_b
    return-void

    .line 177
    :cond_c
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getCurrentStatus()Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->CONNECTED:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    if-eq v0, v1, :cond_52

    .line 179
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    sget-object v1, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->NONE:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;)V

    .line 195
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mCurrentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-eq v0, p2, :cond_3e

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mListener:Lcom/google/android/apps/plus/hangout/RemoteVideoView$VideoChangeListener;

    if-eqz v0, :cond_30

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mListener:Lcom/google/android/apps/plus/hangout/RemoteVideoView$VideoChangeListener;

    invoke-interface {v0, v3}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$VideoChangeListener;->onVideoSourceAboutToChange(Z)V

    .line 201
    :cond_30
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    iput-object p2, v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mCurrentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->onPause()V

    .line 203
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->onResume()V

    .line 206
    :cond_3e
    const-string v0, "Now showing %s on video activity"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/RemoteVideoView;->currentContent:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->access$200(Lcom/google/android/apps/plus/hangout/RemoteVideoView;)Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    .line 181
    :cond_52
    invoke-virtual {p2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isVideoPaused()Z

    move-result v0

    if-nez v0, :cond_5e

    invoke-virtual {p2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isMediaBlocked()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 182
    :cond_5e
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_1d

    .line 183
    :cond_64
    if-eqz p3, :cond_6e

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    sget-object v1, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->VIDEO:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;)V

    goto :goto_1d

    .line 187
    :cond_6e
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->getAvatarView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/google/android/apps/plus/hangout/Avatars;->renderAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/MeetingMember;Landroid/widget/ImageView;)V

    .line 188
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    sget-object v1, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->AVATAR:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;)V

    .line 189
    invoke-virtual {p2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getVCard()Lcom/google/android/apps/plus/hangout/VCard;

    move-result-object v0

    if-eqz v0, :cond_94

    invoke-virtual {p2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getVCard()Lcom/google/android/apps/plus/hangout/VCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VCard;->getAvatarData()[B

    move-result-object v0

    if-nez v0, :cond_1d

    .line 190
    :cond_94
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    #setter for: Lcom/google/android/apps/plus/hangout/RemoteVideoView;->showingUnknownAvatar:Z
    invoke-static {v0, v2}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->access$102(Lcom/google/android/apps/plus/hangout/RemoteVideoView;Z)Z

    goto :goto_1d
.end method
