.class Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;
.super Lcom/google/android/apps/plus/hangout/GCommEventHandler;
.source "HangoutPhoneTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    const-class v0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;-><init>()V

    return-void
.end method

.method private notifyListeners()V
    .registers 4

    .prologue
    .line 105
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    iget-object v2, v2, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->listeners:Ljava/util/List;

    if-nez v2, :cond_7

    .line 112
    :cond_6
    return-void

    .line 109
    :cond_7
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    iget-object v2, v2, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;

    .line 110
    .local v1, listener:Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;
    invoke-interface {v1}, Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;->onParticipantPresenceChanged()V

    goto :goto_f
.end method


# virtual methods
.method public onAudioMuteStateChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    .registers 5
    .parameter "member"
    .parameter "muted"

    .prologue
    .line 381
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 382
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->updateAudioMuteMenuButtonState(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$1200(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Ljava/lang/Boolean;)V

    .line 384
    :cond_11
    return-void
.end method

.method public onCallgrokLogUploadCompleted(ILjava/lang/String;)V
    .registers 4
    .parameter "error"
    .parameter "message"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->checkAndDismissCallgrokLogUploadProgressDialog()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$1100(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V

    .line 373
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->stopHangoutTile()V

    .line 374
    return-void
.end method

.method public onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V
    .registers 6
    .parameter "error"

    .prologue
    const/4 v3, 0x1

    .line 187
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V

    .line 189
    const-string v0, "HangoutPhoneTile$EventHandler.onError(%s) %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p0, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->AUTHENTICATION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    if-ne p1, v0, :cond_4a

    .line 191
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$200(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isSigningIn()Z

    move-result v0

    if-nez v0, :cond_31

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$200(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 192
    :cond_31
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->handleAuthenticationError()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$500(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V

    .line 196
    :goto_36
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    if-eqz v0, :cond_49

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    iget-object v1, v1, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-static {v0, v1, p1, v3}, Lcom/google/android/apps/plus/hangout/ExitHistory;->recordErrorExit(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;Z)V

    .line 199
    :cond_49
    return-void

    .line 194
    :cond_4a
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->showError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;Z)V
    invoke-static {v0, p1, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$600(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;Z)V

    goto :goto_36
.end method

.method public onHangoutCreated(Lcom/google/android/apps/plus/service/Hangout$Info;)V
    .registers 6
    .parameter "hangoutInfo"

    .prologue
    .line 270
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onHangoutCreated(Lcom/google/android/apps/plus/service/Hangout$Info;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    iput-object p1, v0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HangoutPhoneTile.onHangoutCreated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->updateOverlayMenuAndMessageViews()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$100(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V

    .line 275
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    iget-object v2, v2, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->greenRoomParticipants:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    iget-boolean v3, v3, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHoaConsented:Z

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->enterHangout(Lcom/google/android/apps/plus/service/Hangout$Info;ZLjava/util/List;Z)V

    .line 277
    return-void
.end method

.method public onHangoutWaitTimeout(Lcom/google/android/apps/plus/service/Hangout$Info;)V
    .registers 5
    .parameter "hangoutInfo"

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onHangoutWaitTimeout(Lcom/google/android/apps/plus/service/Hangout$Info;)V

    .line 283
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMessageContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$900(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMessageView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$1000(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08038e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    return-void
.end method

.method public onMeetingEnterError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;)V
    .registers 6
    .parameter "error"

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingEnterError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;)V

    .line 209
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$300(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_c

    .line 266
    :goto_b
    return-void

    .line 212
    :cond_c
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    sget-object v3, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->READY_TO_LAUNCH_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$400(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 215
    sget-object v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->HANGOUT_ON_AIR:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    if-ne p1, v2, :cond_23

    .line 216
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mJoinButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$700(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->showHoaNotification(Landroid/widget/Button;)V

    goto :goto_b

    .line 220
    :cond_23
    sget-object v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->OUTDATED_CLIENT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    if-ne p1, v2, :cond_2d

    .line 221
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->showUpgradeClientDialog()V
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$800(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V

    goto :goto_b

    .line 227
    :cond_2d
    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$14;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_7c

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, finishOnOk:Z
    const v1, 0x7f08035f

    .line 264
    .local v1, messageId:I
    :goto_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HangoutPhoneTile.onMeetingEnterError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 265
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->showError(IZ)V

    goto :goto_b

    .line 236
    .end local v0           #finishOnOk:Z
    .end local v1           #messageId:I
    :pswitch_58
    const/4 v0, 0x0

    .line 237
    .restart local v0       #finishOnOk:Z
    const v1, 0x7f080360

    .line 238
    .restart local v1       #messageId:I
    goto :goto_3c

    .line 240
    .end local v0           #finishOnOk:Z
    .end local v1           #messageId:I
    :pswitch_5d
    const/4 v0, 0x0

    .line 241
    .restart local v0       #finishOnOk:Z
    const v1, 0x7f080361

    .line 242
    .restart local v1       #messageId:I
    goto :goto_3c

    .line 244
    .end local v0           #finishOnOk:Z
    .end local v1           #messageId:I
    :pswitch_62
    const/4 v0, 0x0

    .line 245
    .restart local v0       #finishOnOk:Z
    const v1, 0x7f080362

    .line 246
    .restart local v1       #messageId:I
    goto :goto_3c

    .line 248
    .end local v0           #finishOnOk:Z
    .end local v1           #messageId:I
    :pswitch_67
    const/4 v0, 0x0

    .line 249
    .restart local v0       #finishOnOk:Z
    const v1, 0x7f080363

    .line 250
    .restart local v1       #messageId:I
    goto :goto_3c

    .line 252
    .end local v0           #finishOnOk:Z
    .end local v1           #messageId:I
    :pswitch_6c
    const/4 v0, 0x0

    .line 253
    .restart local v0       #finishOnOk:Z
    const v1, 0x7f080364

    .line 254
    .restart local v1       #messageId:I
    goto :goto_3c

    .line 256
    .end local v0           #finishOnOk:Z
    .end local v1           #messageId:I
    :pswitch_71
    const/4 v0, 0x0

    .line 257
    .restart local v0       #finishOnOk:Z
    const v1, 0x7f080365

    .line 258
    .restart local v1       #messageId:I
    goto :goto_3c

    .line 260
    .end local v0           #finishOnOk:Z
    .end local v1           #messageId:I
    :pswitch_76
    const/4 v0, 0x1

    .line 261
    .restart local v0       #finishOnOk:Z
    const v1, 0x7f080366

    .restart local v1       #messageId:I
    goto :goto_3c

    .line 227
    nop

    :pswitch_data_7c
    .packed-switch 0x3
        :pswitch_58
        :pswitch_58
        :pswitch_5d
        :pswitch_62
        :pswitch_67
        :pswitch_6c
        :pswitch_71
        :pswitch_76
    .end packed-switch
.end method

.method public onMeetingExited(Z)V
    .registers 8
    .parameter "clientInitiated"

    .prologue
    const/4 v5, 0x1

    .line 325
    const-string v1, "HangoutPhoneTile$EventHandler.onMeetingExited: this=%s, tile=%s clientInitiated=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingExited(Z)V

    .line 335
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$300(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$200(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 365
    :cond_2a
    :goto_2a
    return-void

    .line 339
    :cond_2b
    if-eqz p1, :cond_8f

    .line 340
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    iget-object v1, v1, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/util/StringUtils;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "google.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 350
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->uploadCallgrokLog()V

    .line 351
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080397

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080398

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    .line 355
    .local v0, callgrokLogUploadProgressDialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getEsFragmentActivity()Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "log_upload"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 364
    .end local v0           #callgrokLogUploadProgressDialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    :goto_77
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    iget-object v2, v2, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-static {v1, v2, v5}, Lcom/google/android/apps/plus/hangout/ExitHistory;->recordNormalExit(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;Z)V

    goto :goto_2a

    .line 359
    :cond_85
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->stopHangoutTile()V

    goto :goto_77

    .line 362
    :cond_8f
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    const v2, 0x7f080374

    invoke-virtual {v1, v2, v5}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->showError(IZ)V

    goto :goto_77
.end method

.method public onMeetingMediaStarted()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 300
    invoke-super {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMediaStarted()V

    .line 304
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$300(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_d

    .line 318
    :goto_c
    return-void

    .line 307
    :cond_d
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.apps.plus.hangout.HangoutTile"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 308
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "filmStrip_"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 309
    .local v1, useFilmStrip:Z
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    if-eqz v1, :cond_52

    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_FILM_STRIP:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    :goto_25
    #calls: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    invoke-static {v3, v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$400(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 312
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->updateOverlayMenuAndMessageViews()V
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$100(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V

    .line 314
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommService()Lcom/google/android/apps/plus/hangout/GCommService;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->getHangoutNotificationIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/hangout/GCommService;->showHangoutNotification(Landroid/content/Intent;)V

    .line 317
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->onMeetingMediaStarted()V

    goto :goto_c

    .line 309
    :cond_52
    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_SELF_VIDEO_INSET:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    goto :goto_25
.end method

.method public onMeetingMemberEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter "meetingMember"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMemberEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->updateOverlayMenuAndMessageViews()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$100(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V

    .line 87
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->notifyListeners()V

    .line 88
    return-void
.end method

.method public onMeetingMemberExited(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter "meetingMember"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMemberExited(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->updateOverlayMenuAndMessageViews()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$100(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V

    .line 101
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->notifyListeners()V

    .line 102
    return-void
.end method

.method public onMeetingMemberPresenceConnectionStatusChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter "meetingMember"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMemberPresenceConnectionStatusChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->updateOverlayMenuAndMessageViews()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$100(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V

    .line 94
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->notifyListeners()V

    .line 95
    return-void
.end method

.method public onMucEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter "selfMeetingMember"

    .prologue
    .line 290
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMucEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 292
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->sendInvites()V

    .line 293
    return-void
.end method

.method public onRemoteMute(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 5
    .parameter "mutee"
    .parameter "muter"

    .prologue
    .line 391
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 392
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->updateAudioMuteMenuButtonState(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$1200(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Ljava/lang/Boolean;)V

    .line 394
    :cond_10
    return-void
.end method

.method public onSignedIn(Ljava/lang/String;)V
    .registers 9
    .parameter "userJid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onSignedIn(Ljava/lang/String;)V

    .line 120
    const-string v3, "HangoutPhoneTile$EventHandler.onSignedIn: this=%s, tile=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    sget-boolean v3, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_2f

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$200(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isSigningIn()Z

    move-result v3

    if-nez v3, :cond_2f

    new-instance v1, Ljava/lang/AssertionError;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$200(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 126
    :cond_2f
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$300(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Landroid/view/ViewGroup;

    move-result-object v3

    if-nez v3, :cond_38

    .line 146
    :goto_37
    return-void

    .line 130
    :cond_38
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    iget-boolean v3, v3, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->skipGreenRoom:Z

    if-eqz v3, :cond_93

    .line 131
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    sget-object v4, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ENTERING_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    invoke-static {v3, v4}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$400(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 133
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    iget-object v3, v3, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    if-nez v3, :cond_6b

    .line 134
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 135
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    const-string v3, "hangout_ring_invitees"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->createHangout(Z)V

    goto :goto_37

    .line 138
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6b
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    iget-object v4, v4, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    iget-object v5, v5, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/service/Hangout$Info;->getLaunchSource()Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    move-result-object v5

    sget-object v6, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->MissedCall:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    if-ne v5, v6, :cond_91

    :goto_85
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    iget-object v2, v2, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->greenRoomParticipants:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    iget-boolean v5, v5, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHoaConsented:Z

    invoke-virtual {v3, v4, v1, v2, v5}, Lcom/google/android/apps/plus/hangout/GCommApp;->enterHangout(Lcom/google/android/apps/plus/service/Hangout$Info;ZLjava/util/List;Z)V

    goto :goto_37

    :cond_91
    move v1, v2

    goto :goto_85

    .line 144
    :cond_93
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->READY_TO_LAUNCH_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$400(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    goto :goto_37
.end method

.method public onSignedOut()V
    .registers 4

    .prologue
    .line 153
    invoke-super {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onSignedOut()V

    .line 155
    const-string v0, "HangoutPhoneTile$EventHandler.onSignedOut"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$300(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_11

    .line 163
    :goto_10
    return-void

    .line 161
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    const v1, 0x7f08035e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->showError(IZ)V

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->SIGNIN_ERROR:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$400(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    goto :goto_10
.end method

.method public onSigninTimeOutError()V
    .registers 4

    .prologue
    .line 170
    invoke-super {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onSigninTimeOutError()V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HangoutPhoneTile$EventHandler.onSigninTimeOutError: this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$300(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_22

    .line 180
    :goto_21
    return-void

    .line 178
    :cond_22
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    const v1, 0x7f08035e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->showError(IZ)V

    .line 179
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->SIGNIN_ERROR:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$400(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    goto :goto_21
.end method

.method public onVideoMuteChanged(Z)V
    .registers 4
    .parameter "muted"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->updateVideoMuteMenuButtonState(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$1300(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Ljava/lang/Boolean;)V

    .line 402
    return-void
.end method
