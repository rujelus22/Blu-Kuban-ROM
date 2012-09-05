.class Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;
.super Lcom/google/android/apps/plus/hangout/GCommEventHandler;
.source "HangoutTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 121
    const-class v0, Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTile;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;-><init>()V

    return-void
.end method

.method private notifyListeners()V
    .registers 4

    .prologue
    .line 143
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->listeners:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$200(Lcom/google/android/apps/plus/hangout/HangoutTile;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_9

    .line 150
    :cond_8
    return-void

    .line 147
    :cond_9
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->listeners:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$200(Lcom/google/android/apps/plus/hangout/HangoutTile;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;

    .line 148
    .local v1, listener:Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;
    invoke-interface {v1}, Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;->onParticipantPresenceChanged()V

    goto :goto_13
.end method


# virtual methods
.method public onAudioMuteStateChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    .registers 5
    .parameter "member"
    .parameter "muted"

    .prologue
    .line 336
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 337
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTile;->updateAudioMuteMenuButtonState(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$1700(Lcom/google/android/apps/plus/hangout/HangoutTile;Ljava/lang/Boolean;)V

    .line 339
    :cond_11
    return-void
.end method

.method public onCallgrokLogUploadCompleted(ILjava/lang/String;)V
    .registers 4
    .parameter "error"
    .parameter "message"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTile;->checkAndDismissCallgrokLogUploadProgressDialog()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$1600(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    .line 328
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$1100(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->stopHangoutTile()V

    .line 329
    return-void
.end method

.method public onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V
    .registers 6
    .parameter "error"

    .prologue
    const/4 v3, 0x1

    .line 199
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V

    .line 201
    const-string v0, "HangoutTile$EventHandler.onError(%s) %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p0, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->AUTHENTICATION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    if-ne p1, v0, :cond_46

    .line 203
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$300(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isSigningIn()Z

    move-result v0

    if-nez v0, :cond_31

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$300(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 204
    :cond_31
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->handleAuthenticationError()V

    .line 209
    :goto_36
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$700(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v1

    invoke-static {v0, v1, p1, v3}, Lcom/google/android/apps/plus/hangout/ExitHistory;->recordErrorExit(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;Z)V

    .line 210
    return-void

    .line 206
    :cond_46
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTile;->showError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;Z)V
    invoke-static {v0, p1, v3}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$1000(Lcom/google/android/apps/plus/hangout/HangoutTile;Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;Z)V

    goto :goto_36
.end method

.method public onMeetingEnterError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingEnterError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;)V

    .line 221
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->rootView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$400(Lcom/google/android/apps/plus/hangout/HangoutTile;)Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_c

    .line 251
    :goto_b
    return-void

    .line 224
    :cond_c
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->READY_TO_LAUNCH_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$500(Lcom/google/android/apps/plus/hangout/HangoutTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 227
    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$MeetingEnterError:[I

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3c

    .line 231
    const v0, 0x7f07029b

    .line 250
    .local v0, messageId:I
    :goto_21
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    const/4 v2, 0x0

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTile;->showError(IZ)V
    invoke-static {v1, v0, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$900(Lcom/google/android/apps/plus/hangout/HangoutTile;IZ)V

    goto :goto_b

    .line 235
    .end local v0           #messageId:I
    :pswitch_28
    const v0, 0x7f07029c

    .line 236
    .restart local v0       #messageId:I
    goto :goto_21

    .line 238
    .end local v0           #messageId:I
    :pswitch_2c
    const v0, 0x7f07029d

    .line 239
    .restart local v0       #messageId:I
    goto :goto_21

    .line 241
    .end local v0           #messageId:I
    :pswitch_30
    const v0, 0x7f07029e

    .line 242
    .restart local v0       #messageId:I
    goto :goto_21

    .line 244
    .end local v0           #messageId:I
    :pswitch_34
    const v0, 0x7f07029f

    .line 245
    .restart local v0       #messageId:I
    goto :goto_21

    .line 247
    .end local v0           #messageId:I
    :pswitch_38
    const v0, 0x7f0702a0

    .restart local v0       #messageId:I
    goto :goto_21

    .line 227
    :pswitch_data_3c
    .packed-switch 0x3
        :pswitch_28
        :pswitch_28
        :pswitch_2c
        :pswitch_30
        :pswitch_34
        :pswitch_38
    .end packed-switch
.end method

.method public onMeetingExited()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 282
    const-string v0, "HangoutTile$EventHandler.onMeetingExit: this=%s, tile=%s userRequested=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->userRequestedMeetingExit:Z
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$1200(Lcom/google/android/apps/plus/hangout/HangoutTile;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    invoke-super {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingExited()V

    .line 291
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->rootView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$400(Lcom/google/android/apps/plus/hangout/HangoutTile;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$300(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v0

    if-nez v0, :cond_31

    .line 320
    :cond_30
    :goto_30
    return-void

    .line 295
    :cond_31
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->userRequestedMeetingExit:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$1200(Lcom/google/android/apps/plus/hangout/HangoutTile;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 296
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$1300(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/util/StringUtils;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "google.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 306
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->uploadCallgrokLog()V

    .line 307
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v1

    #setter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->callgrokLogUploadProgressDialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$1402(Lcom/google/android/apps/plus/hangout/HangoutTile;Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    .line 310
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->callgrokLogUploadProgressDialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$1400(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTile;->getEsFragmentActivity()Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$1500(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "log_upload"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 319
    :goto_90
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$700(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/google/android/apps/plus/hangout/ExitHistory;->recordNormalExit(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;Z)V

    goto :goto_30

    .line 314
    :cond_a0
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$1100(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->stopHangoutTile()V

    goto :goto_90

    .line 317
    :cond_aa
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    const v1, 0x7f0702a2

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTile;->showError(IZ)V
    invoke-static {v0, v1, v4}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$900(Lcom/google/android/apps/plus/hangout/HangoutTile;IZ)V

    goto :goto_90
.end method

.method public onMeetingMediaStarted()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 258
    invoke-super {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMediaStarted()V

    .line 262
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->rootView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$400(Lcom/google/android/apps/plus/hangout/HangoutTile;)Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_d

    .line 275
    :goto_c
    return-void

    .line 266
    :cond_d
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.apps.plus.hangout.HangoutTile"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 267
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "filmStrip_"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 268
    .local v1, useFilmStrip:Z
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v1, :cond_4d

    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_FILM_STRIP:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    :goto_25
    #calls: Lcom/google/android/apps/plus/hangout/HangoutTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    invoke-static {v3, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$500(Lcom/google/android/apps/plus/hangout/HangoutTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 271
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommService()Lcom/google/android/apps/plus/hangout/GCommService;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$1100(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->getHangoutNotificationIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/hangout/GCommService;->showHangoutNotification(Landroid/content/Intent;)V

    .line 274
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$1100(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->onMeetingMediaStarted()V

    goto :goto_c

    .line 268
    :cond_4d
    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_SELF_VIDEO_INSET:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    goto :goto_25
.end method

.method public onMeetingMemberEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 2
    .parameter "meetingMember"

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMemberEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 127
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->notifyListeners()V

    .line 128
    return-void
.end method

.method public onMeetingMemberExited(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "meetingMember"

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMemberExited(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 134
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->notifyListeners()V

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->fromHermes:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$100(Lcom/google/android/apps/plus/hangout/HangoutTile;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onExit(Landroid/view/View;)V

    .line 140
    :cond_14
    return-void
.end method

.method public onRemoteMute(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 5
    .parameter "mutee"
    .parameter "muter"

    .prologue
    .line 346
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 347
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTile;->updateAudioMuteMenuButtonState(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$1700(Lcom/google/android/apps/plus/hangout/HangoutTile;Ljava/lang/Boolean;)V

    .line 349
    :cond_10
    return-void
.end method

.method public onSignedIn(Ljava/lang/String;)V
    .registers 7
    .parameter "userJid"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 157
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onSignedIn(Ljava/lang/String;)V

    .line 158
    const-string v0, "HangoutTile$EventHandler.onSignedIn: this=%s, tile=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$300(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isSigningIn()Z

    move-result v0

    if-nez v0, :cond_2f

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$300(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 164
    :cond_2f
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->rootView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$400(Lcom/google/android/apps/plus/hangout/HangoutTile;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_38

    .line 174
    :cond_37
    :goto_37
    return-void

    .line 168
    :cond_38
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->READY_TO_LAUNCH_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$500(Lcom/google/android/apps/plus/hangout/HangoutTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->skipGreenRoom:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$600(Lcom/google/android/apps/plus/hangout/HangoutTile;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 170
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ENTERING_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$500(Lcom/google/android/apps/plus/hangout/HangoutTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$700(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->participants:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$800(Lcom/google/android/apps/plus/hangout/HangoutTile;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->enterHangout(Lcom/google/android/apps/plus/service/Hangout$Info;ZLjava/util/List;Z)V

    goto :goto_37
.end method

.method public onSigninTimeOutError()V
    .registers 4

    .prologue
    .line 181
    invoke-super {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onSigninTimeOutError()V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HangoutTile$EventHandler.onSigninTimeOutError: this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->rootView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$400(Lcom/google/android/apps/plus/hangout/HangoutTile;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_22

    .line 192
    :goto_21
    return-void

    .line 190
    :cond_22
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    const v1, 0x7f07029a

    const/4 v2, 0x1

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTile;->showError(IZ)V
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$900(Lcom/google/android/apps/plus/hangout/HangoutTile;IZ)V

    .line 191
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->SIGNIN_ERROR:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$500(Lcom/google/android/apps/plus/hangout/HangoutTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    goto :goto_21
.end method

.method public onVideoMuteChanged(Z)V
    .registers 4
    .parameter "muted"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTile;->updateVideoMuteMenuButtonState(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$1800(Lcom/google/android/apps/plus/hangout/HangoutTile;Ljava/lang/Boolean;)V

    .line 357
    return-void
.end method
