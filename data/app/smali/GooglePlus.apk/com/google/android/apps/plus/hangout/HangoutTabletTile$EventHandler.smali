.class Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;
.super Lcom/google/android/apps/plus/hangout/GCommEventHandler;
.source "HangoutTabletTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutTabletTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    const-class v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;-><init>()V

    return-void
.end method

.method private notifyListeners()V
    .registers 4

    .prologue
    .line 87
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iget-object v2, v2, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->listeners:Ljava/util/List;

    if-nez v2, :cond_7

    .line 94
    :cond_6
    return-void

    .line 91
    :cond_7
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iget-object v2, v2, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->listeners:Ljava/util/List;

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

    .line 92
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
    .line 362
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onAudioMuteStateChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V

    .line 363
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 364
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->updateAudioMuteMenuButtonState(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$1000(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Ljava/lang/Boolean;)V

    .line 368
    :goto_14
    return-void

    .line 366
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->setAudioMutedOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    invoke-static {v0, p1, p2}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$1400(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V

    goto :goto_14
.end method

.method public onCallgrokLogUploadCompleted(ILjava/lang/String;)V
    .registers 4
    .parameter "error"
    .parameter "message"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->checkAndDismissCallgrokLogUploadProgressDialog()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$1300(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    .line 354
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->stopHangoutTile()V

    .line 355
    return-void
.end method

.method public onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V
    .registers 6
    .parameter "error"

    .prologue
    const/4 v3, 0x1

    .line 169
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V

    .line 171
    const-string v0, "HangoutTabletTile$EventHandler.onError(%s) %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p0, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->AUTHENTICATION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    if-ne p1, v0, :cond_4a

    .line 173
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$200(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isSigningIn()Z

    move-result v0

    if-nez v0, :cond_31

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$200(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 174
    :cond_31
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->handleAuthenticationError()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$500(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    .line 178
    :goto_36
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    if-eqz v0, :cond_49

    .line 179
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iget-object v1, v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-static {v0, v1, p1, v3}, Lcom/google/android/apps/plus/hangout/ExitHistory;->recordErrorExit(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;Z)V

    .line 181
    :cond_49
    return-void

    .line 176
    :cond_4a
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;Z)V
    invoke-static {v0, p1, v3}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$600(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;Z)V

    goto :goto_36
.end method

.method public onHangoutCreated(Lcom/google/android/apps/plus/service/Hangout$Info;)V
    .registers 6
    .parameter "hangoutInfo"

    .prologue
    .line 252
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onHangoutCreated(Lcom/google/android/apps/plus/service/Hangout$Info;)V

    .line 254
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iput-object p1, v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HangoutTabletTile.onHangoutCreated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->updateHangoutViews()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$000(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    .line 258
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iget-object v2, v2, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->greenRoomParticipants:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iget-boolean v3, v3, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mHoaConsented:Z

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->enterHangout(Lcom/google/android/apps/plus/service/Hangout$Info;ZLjava/util/List;Z)V

    .line 260
    return-void
.end method

.method public onHangoutWaitTimeout(Lcom/google/android/apps/plus/service/Hangout$Info;)V
    .registers 5
    .parameter "hangoutInfo"

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onHangoutWaitTimeout(Lcom/google/android/apps/plus/service/Hangout$Info;)V

    .line 266
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mMessageView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$900(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08038e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    return-void
.end method

.method public onMeetingEnterError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;)V
    .registers 6
    .parameter "error"

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingEnterError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;)V

    .line 191
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->isRegistered:Z
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$300(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 248
    :goto_b
    return-void

    .line 194
    :cond_c
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    sget-object v3, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->READY_TO_LAUNCH_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$400(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 197
    sget-object v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->HANGOUT_ON_AIR:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    if-ne p1, v2, :cond_23

    .line 198
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mJoinButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$700(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showHoaNotification(Landroid/widget/Button;)V

    goto :goto_b

    .line 202
    :cond_23
    sget-object v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->OUTDATED_CLIENT:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    if-ne p1, v2, :cond_2d

    .line 203
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showUpgradeClientDialog()V
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    goto :goto_b

    .line 209
    :cond_2d
    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_7c

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, finishOnOk:Z
    const v1, 0x7f08035f

    .line 246
    .local v1, messageId:I
    :goto_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HangoutTabletTile.onMeetingEnterError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 247
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showError(IZ)V

    goto :goto_b

    .line 218
    .end local v0           #finishOnOk:Z
    .end local v1           #messageId:I
    :pswitch_58
    const/4 v0, 0x0

    .line 219
    .restart local v0       #finishOnOk:Z
    const v1, 0x7f080360

    .line 220
    .restart local v1       #messageId:I
    goto :goto_3c

    .line 222
    .end local v0           #finishOnOk:Z
    .end local v1           #messageId:I
    :pswitch_5d
    const/4 v0, 0x0

    .line 223
    .restart local v0       #finishOnOk:Z
    const v1, 0x7f080361

    .line 224
    .restart local v1       #messageId:I
    goto :goto_3c

    .line 226
    .end local v0           #finishOnOk:Z
    .end local v1           #messageId:I
    :pswitch_62
    const/4 v0, 0x0

    .line 227
    .restart local v0       #finishOnOk:Z
    const v1, 0x7f080362

    .line 228
    .restart local v1       #messageId:I
    goto :goto_3c

    .line 230
    .end local v0           #finishOnOk:Z
    .end local v1           #messageId:I
    :pswitch_67
    const/4 v0, 0x0

    .line 231
    .restart local v0       #finishOnOk:Z
    const v1, 0x7f080363

    .line 232
    .restart local v1       #messageId:I
    goto :goto_3c

    .line 234
    .end local v0           #finishOnOk:Z
    .end local v1           #messageId:I
    :pswitch_6c
    const/4 v0, 0x0

    .line 235
    .restart local v0       #finishOnOk:Z
    const v1, 0x7f080364

    .line 236
    .restart local v1       #messageId:I
    goto :goto_3c

    .line 238
    .end local v0           #finishOnOk:Z
    .end local v1           #messageId:I
    :pswitch_71
    const/4 v0, 0x0

    .line 239
    .restart local v0       #finishOnOk:Z
    const v1, 0x7f080365

    .line 240
    .restart local v1       #messageId:I
    goto :goto_3c

    .line 242
    .end local v0           #finishOnOk:Z
    .end local v1           #messageId:I
    :pswitch_76
    const/4 v0, 0x1

    .line 243
    .restart local v0       #finishOnOk:Z
    const v1, 0x7f080366

    .restart local v1       #messageId:I
    goto :goto_3c

    .line 209
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

    .line 306
    const-string v1, "HangoutTabletTile$EventHandler.onMeetingExited: this=%s, tile=%s clientInitiated=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingExited(Z)V

    .line 316
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->isRegistered:Z
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$300(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$200(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 346
    :cond_2a
    :goto_2a
    return-void

    .line 320
    :cond_2b
    if-eqz p1, :cond_8f

    .line 321
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iget-object v1, v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/util/StringUtils;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "google.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 331
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->uploadCallgrokLog()V

    .line 332
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080397

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080398

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    .line 336
    .local v0, callgrokLogUploadProgressDialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActivity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$1200(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "log_upload"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 345
    .end local v0           #callgrokLogUploadProgressDialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    :goto_77
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iget-object v2, v2, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-static {v1, v2, v5}, Lcom/google/android/apps/plus/hangout/ExitHistory;->recordNormalExit(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;Z)V

    goto :goto_2a

    .line 340
    :cond_85
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->stopHangoutTile()V

    goto :goto_77

    .line 343
    :cond_8f
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    const v2, 0x7f080374

    invoke-virtual {v1, v2, v5}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showError(IZ)V

    goto :goto_77
.end method

.method public onMeetingMediaStarted()V
    .registers 3

    .prologue
    .line 282
    invoke-super {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMediaStarted()V

    .line 286
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->isRegistered:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$300(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 299
    :goto_b
    return-void

    .line 290
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$400(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 291
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->updateHangoutViews()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$000(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    .line 292
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    const/4 v1, 0x0

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->updateAudioMuteMenuButtonState(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$1000(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Ljava/lang/Boolean;)V

    .line 293
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showFilmStrip()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$1100(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    .line 295
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommService()Lcom/google/android/apps/plus/hangout/GCommService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->getHangoutNotificationIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommService;->showHangoutNotification(Landroid/content/Intent;)V

    .line 298
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->onMeetingMediaStarted()V

    goto :goto_b
.end method

.method public onMeetingMemberEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter "meetingMember"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMemberEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->updateHangoutViews()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$000(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    .line 68
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->notifyListeners()V

    .line 69
    return-void
.end method

.method public onMeetingMemberExited(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter "meetingMember"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMemberExited(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->updateHangoutViews()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$000(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    .line 82
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->notifyListeners()V

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->memberExited(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$100(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 84
    return-void
.end method

.method public onMeetingMemberPresenceConnectionStatusChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter "meetingMember"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMemberPresenceConnectionStatusChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->updateHangoutViews()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$000(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    .line 75
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->notifyListeners()V

    .line 76
    return-void
.end method

.method public onMucEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter "selfMeetingMember"

    .prologue
    .line 272
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMucEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 274
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->sendInvites()V

    .line 275
    return-void
.end method

.method public onRemoteMute(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 5
    .parameter "mutee"
    .parameter "muter"

    .prologue
    const/4 v1, 0x1

    .line 375
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 376
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->updateAudioMuteMenuButtonState(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$1000(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Ljava/lang/Boolean;)V

    .line 380
    :goto_10
    return-void

    .line 378
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->setAudioMutedOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    invoke-static {v0, p1, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$1400(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V

    goto :goto_10
.end method

.method public onSignedIn(Ljava/lang/String;)V
    .registers 9
    .parameter "userJid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onSignedIn(Ljava/lang/String;)V

    .line 102
    const-string v3, "HangoutTabletTile$EventHandler.onSignedIn: this=%s, tile=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    sget-boolean v3, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_2f

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$200(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isSigningIn()Z

    move-result v3

    if-nez v3, :cond_2f

    new-instance v1, Ljava/lang/AssertionError;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$200(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 108
    :cond_2f
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->isRegistered:Z
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$300(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 128
    :goto_37
    return-void

    .line 112
    :cond_38
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iget-boolean v3, v3, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->skipGreenRoom:Z

    if-eqz v3, :cond_93

    .line 113
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    sget-object v4, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ENTERING_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    invoke-static {v3, v4}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$400(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 115
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iget-object v3, v3, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    if-nez v3, :cond_6b

    .line 116
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 117
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    const-string v3, "hangout_ring_invitees"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->createHangout(Z)V

    goto :goto_37

    .line 120
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6b
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iget-object v4, v4, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iget-object v5, v5, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/service/Hangout$Info;->getLaunchSource()Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    move-result-object v5

    sget-object v6, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->MissedCall:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    if-ne v5, v6, :cond_91

    :goto_85
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iget-object v2, v2, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->greenRoomParticipants:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iget-boolean v5, v5, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mHoaConsented:Z

    invoke-virtual {v3, v4, v1, v2, v5}, Lcom/google/android/apps/plus/hangout/GCommApp;->enterHangout(Lcom/google/android/apps/plus/service/Hangout$Info;ZLjava/util/List;Z)V

    goto :goto_37

    :cond_91
    move v1, v2

    goto :goto_85

    .line 126
    :cond_93
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->READY_TO_LAUNCH_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$400(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    goto :goto_37
.end method

.method public onSignedOut()V
    .registers 4

    .prologue
    .line 135
    invoke-super {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onSignedOut()V

    .line 137
    const-string v0, "HangoutTabletTile$EventHandler.onSignedOut"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->isRegistered:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$300(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 145
    :goto_10
    return-void

    .line 143
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    const v1, 0x7f08035e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showError(IZ)V

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->SIGNIN_ERROR:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$400(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    goto :goto_10
.end method

.method public onSigninTimeOutError()V
    .registers 4

    .prologue
    .line 152
    invoke-super {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onSigninTimeOutError()V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HangoutTabletTile$EventHandler.onSigninTimeOutError: this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->isRegistered:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$300(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 162
    :goto_21
    return-void

    .line 160
    :cond_22
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    const v1, 0x7f08035e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showError(IZ)V

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->SIGNIN_ERROR:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$400(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    goto :goto_21
.end method

.method public onVideoMuteChanged(Z)V
    .registers 4
    .parameter "muted"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->updateVideoMuteMenuButtonState(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$1500(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Ljava/lang/Boolean;)V

    .line 401
    return-void
.end method

.method public onVolumeChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;I)V
    .registers 5
    .parameter "member"
    .parameter "volume"

    .prologue
    const/4 v1, 0x0

    .line 388
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 389
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->updateAudioMuteMenuButtonState(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$1000(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Ljava/lang/Boolean;)V

    .line 393
    :goto_12
    return-void

    .line 391
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->setAudioMutedOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    invoke-static {v0, p1, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$1400(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V

    goto :goto_12
.end method
