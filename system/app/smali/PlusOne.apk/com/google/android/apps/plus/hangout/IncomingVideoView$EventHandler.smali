.class Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;
.super Lcom/google/android/apps/plus/hangout/GCommEventHandler;
.source "IncomingVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/IncomingVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/IncomingVideoView;)V
    .registers 2
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/IncomingVideoView;Lcom/google/android/apps/plus/hangout/IncomingVideoView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/IncomingVideoView;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V

    .line 217
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->AUDIO_VIDEO_SESSION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    if-ne p1, v0, :cond_e

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    sget-object v1, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->NONE:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;)V

    .line 220
    :cond_e
    return-void
.end method

.method public onIncomingVideoFrameReceived(I)V
    .registers 3
    .parameter "requestID"

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onIncomingVideoFrameReceived(I)V

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    iget v0, v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->requestID:I

    if-ne p1, v0, :cond_10

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->videoView:Lcom/google/android/apps/plus/hangout/VideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VideoView;->requestRender()V

    .line 156
    :cond_10
    return-void
.end method

.method public onIncomingVideoStarted(I)V
    .registers 3
    .parameter "requestID"

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onIncomingVideoStarted(I)V

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    iget v0, v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->requestID:I

    if-ne p1, v0, :cond_33

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isExitingHangout()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/IncomingVideoView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->access$000(Lcom/google/android/apps/plus/hangout/IncomingVideoView;)Lcom/google/android/apps/plus/hangout/HangoutTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->isTileStarted()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->videoView:Lcom/google/android/apps/plus/hangout/VideoView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/VideoView;->setRequestID(I)V

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->videoView:Lcom/google/android/apps/plus/hangout/VideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VideoView;->onResume()V

    .line 147
    :cond_33
    return-void
.end method

.method public onMediaBlock(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 5
    .parameter "blockee"
    .parameter "blocker"

    .prologue
    .line 206
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMediaBlock(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 208
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->currentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->currentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isMediaBlocked()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 209
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    sget-object v1, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->BLOCKED:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;)V

    .line 211
    :cond_1a
    return-void
.end method

.method public onVCardResponse(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "meetingMember"

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onVCardResponse(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->currentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-ne v0, p1, :cond_40

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/IncomingVideoView;->currentContent:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->access$300(Lcom/google/android/apps/plus/hangout/IncomingVideoView;)Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->AVATAR:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    if-ne v0, v1, :cond_40

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/IncomingVideoView;->showingUnknownAvatar:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->access$200(Lcom/google/android/apps/plus/hangout/IncomingVideoView;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 196
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getVCard()Lcom/google/android/apps/plus/hangout/VCard;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getVCard()Lcom/google/android/apps/plus/hangout/VCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VCard;->getAvatarData()[B

    move-result-object v0

    if-eqz v0, :cond_40

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/IncomingVideoView;->avatarView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->access$100(Lcom/google/android/apps/plus/hangout/IncomingVideoView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/google/android/apps/plus/hangout/Avatars;->renderAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/MeetingMember;Landroid/widget/ImageView;)V

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/hangout/IncomingVideoView;->showingUnknownAvatar:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->access$202(Lcom/google/android/apps/plus/hangout/IncomingVideoView;Z)Z

    .line 202
    :cond_40
    return-void
.end method

.method public onVideoSourceChanged(ILcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    .registers 8
    .parameter "requestID"
    .parameter "source"
    .parameter "videoAvailable"

    .prologue
    const/4 v2, 0x1

    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onVideoSourceChanged(ILcom/google/android/apps/plus/hangout/MeetingMember;Z)V

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    iget v0, v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->requestID:I

    if-ne p1, v0, :cond_2b

    .line 164
    if-nez p2, :cond_2c

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    sget-object v1, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->NONE:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;)V

    .line 182
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    iput-object p2, v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->currentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 184
    const-string v0, "Now showing %s on video activity"

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/IncomingVideoView;->currentContent:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->access$300(Lcom/google/android/apps/plus/hangout/IncomingVideoView;)Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :cond_2b
    return-void

    .line 168
    :cond_2c
    if-eqz p3, :cond_36

    .line 169
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    sget-object v1, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->VIDEO:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;)V

    goto :goto_13

    .line 170
    :cond_36
    invoke-virtual {p2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isMediaBlocked()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    sget-object v1, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->BLOCKED:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;)V

    goto :goto_13

    .line 173
    :cond_44
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/IncomingVideoView;->avatarView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->access$100(Lcom/google/android/apps/plus/hangout/IncomingVideoView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/google/android/apps/plus/hangout/Avatars;->renderAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/MeetingMember;Landroid/widget/ImageView;)V

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    sget-object v1, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->AVATAR:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;)V

    .line 175
    invoke-virtual {p2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getVCard()Lcom/google/android/apps/plus/hangout/VCard;

    move-result-object v0

    if-eqz v0, :cond_6a

    invoke-virtual {p2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getVCard()Lcom/google/android/apps/plus/hangout/VCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VCard;->getAvatarData()[B

    move-result-object v0

    if-nez v0, :cond_13

    .line 177
    :cond_6a
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    #setter for: Lcom/google/android/apps/plus/hangout/IncomingVideoView;->showingUnknownAvatar:Z
    invoke-static {v0, v2}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->access$202(Lcom/google/android/apps/plus/hangout/IncomingVideoView;Z)Z

    goto :goto_13
.end method
