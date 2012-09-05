.class public abstract Lcom/google/android/apps/plus/hangout/IncomingVideoView;
.super Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications;
.source "IncomingVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/IncomingVideoView$1;,
        Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;,
        Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;,
        Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;,
        Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;
    }
.end annotation


# instance fields
.field private final avatarView:Landroid/widget/ImageView;

.field private final blockedView:Landroid/view/View;

.field private currentContent:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

.field protected currentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

.field private final eventHandler:Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;

.field protected incomingVideoHeight:I

.field protected incomingVideoWidth:I

.field private mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

.field protected requestID:I

.field private showingUnknownAvatar:Z

.field protected final videoView:Lcom/google/android/apps/plus/hangout/VideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 239
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 232
    sget-object v1, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->NONE:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->currentContent:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    .line 233
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->requestID:I

    .line 236
    new-instance v1, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/IncomingVideoView;Lcom/google/android/apps/plus/hangout/IncomingVideoView$1;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->eventHandler:Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;

    .line 240
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 241
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03002e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 242
    const v1, 0x7f0d009b

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/VideoView;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->videoView:Lcom/google/android/apps/plus/hangout/VideoView;

    .line 243
    const v1, 0x7f0d009c

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->avatarView:Landroid/widget/ImageView;

    .line 244
    const v1, 0x7f0d009d

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->blockedView:Landroid/view/View;

    .line 245
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/IncomingVideoView;)Lcom/google/android/apps/plus/hangout/HangoutTile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/IncomingVideoView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->avatarView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/IncomingVideoView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->showingUnknownAvatar:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/plus/hangout/IncomingVideoView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->showingUnknownAvatar:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/hangout/IncomingVideoView;)Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->currentContent:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    return-object v0
.end method


# virtual methods
.method public onPause()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 261
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->eventHandler:Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->unregisterForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 264
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->videoView:Lcom/google/android/apps/plus/hangout/VideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VideoView;->onPause()V

    .line 265
    iget v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->requestID:I

    if-eqz v0, :cond_2e

    .line 266
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->requestID:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->stopIncomingVideo(I)V

    .line 267
    iput v3, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->requestID:I

    .line 269
    :cond_2e
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->eventHandler:Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->registerForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 253
    sget-object v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->VIDEO:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;)V

    .line 257
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->requestVideo()V

    .line 258
    return-void
.end method

.method protected abstract requestVideo()V
.end method

.method public setHangoutTile(Lcom/google/android/apps/plus/hangout/HangoutTile;)V
    .registers 2
    .parameter "hangoutTile"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    .line 249
    return-void
.end method

.method protected setIncomingContent(Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;)V
    .registers 6
    .parameter "newContent"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 274
    sget-object v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$1;->$SwitchMap$com$google$android$apps$plus$hangout$IncomingVideoView$IncomingContentType:[I

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5a

    .line 304
    :goto_e
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->currentContent:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    .line 305
    return-void

    .line 276
    :pswitch_11
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->videoView:Lcom/google/android/apps/plus/hangout/VideoView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/hangout/VideoView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->avatarView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->blockedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iput-boolean v3, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->showingUnknownAvatar:Z

    goto :goto_e

    .line 285
    :pswitch_23
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->videoView:Lcom/google/android/apps/plus/hangout/VideoView;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/hangout/VideoView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->avatarView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->blockedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iput-boolean v3, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->showingUnknownAvatar:Z

    goto :goto_e

    .line 291
    :pswitch_35
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->videoView:Lcom/google/android/apps/plus/hangout/VideoView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/hangout/VideoView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->avatarView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->blockedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iput-boolean v3, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->showingUnknownAvatar:Z

    goto :goto_e

    .line 297
    :pswitch_47
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->videoView:Lcom/google/android/apps/plus/hangout/VideoView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/hangout/VideoView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->avatarView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->blockedView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iput-boolean v3, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->showingUnknownAvatar:Z

    goto :goto_e

    .line 274
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_23
        :pswitch_35
        :pswitch_47
    .end packed-switch
.end method
