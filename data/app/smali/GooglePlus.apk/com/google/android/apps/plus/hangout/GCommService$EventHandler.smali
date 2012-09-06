.class Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;
.super Lcom/google/android/apps/plus/hangout/GCommEventHandler;
.source "GCommService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/GCommService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/GCommService;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/GCommService;)V
    .registers 2
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/GCommService;Lcom/google/android/apps/plus/hangout/GCommService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/GCommService;)V

    return-void
.end method

.method private playSound(I)V
    .registers 7
    .parameter "resid"

    .prologue
    .line 347
    const/4 v1, 0x0

    .line 349
    .local v1, player:Landroid/media/MediaPlayer;
    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-static {v2, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_6} :catch_20

    move-result-object v1

    .line 354
    :goto_7
    if-nez v1, :cond_2d

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create MediaPlayer for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 360
    :goto_1f
    return-void

    .line 350
    :catch_20
    move-exception v0

    .line 352
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "Error playing media: "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 357
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_2d
    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 358
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_1f
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2
    .parameter "mp"

    .prologue
    .line 364
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 365
    return-void
.end method

.method public onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 313
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V

    .line 315
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommService;->access$100(Lcom/google/android/apps/plus/hangout/GCommService;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 316
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommService;->access$200(Lcom/google/android/apps/plus/hangout/GCommService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommService;->access$100(Lcom/google/android/apps/plus/hangout/GCommService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 317
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommService;->access$102(Lcom/google/android/apps/plus/hangout/GCommService;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 319
    :cond_20
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommService;->stopRingback()V

    .line 321
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommService;->stopForeground(Z)V

    .line 322
    return-void
.end method

.method public onMediaBlock(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "blockee"
    .parameter "blocker"

    .prologue
    .line 335
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMediaBlock(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 337
    invoke-virtual {p2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v0

    if-nez v0, :cond_e

    .line 338
    const/high16 v0, 0x7f06

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->playSound(I)V

    .line 340
    :cond_e
    return-void
.end method

.method public onMeetingEnterError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingEnterError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;)V

    .line 212
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommService;->access$100(Lcom/google/android/apps/plus/hangout/GCommService;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommService;->access$200(Lcom/google/android/apps/plus/hangout/GCommService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommService;->access$100(Lcom/google/android/apps/plus/hangout/GCommService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommService;->access$102(Lcom/google/android/apps/plus/hangout/GCommService;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 216
    :cond_20
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommService;->stopRingback()V

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommService;->stopForeground(Z)V

    .line 219
    return-void
.end method

.method public onMeetingExited(Z)V
    .registers 4
    .parameter "clientInitiated"

    .prologue
    .line 300
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingExited(Z)V

    .line 302
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommService;->access$100(Lcom/google/android/apps/plus/hangout/GCommService;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 303
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommService;->access$200(Lcom/google/android/apps/plus/hangout/GCommService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommService;->access$100(Lcom/google/android/apps/plus/hangout/GCommService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 304
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommService;->access$102(Lcom/google/android/apps/plus/hangout/GCommService;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 306
    :cond_20
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommService;->stopRingback()V

    .line 308
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommService;->stopForeground(Z)V

    .line 309
    return-void
.end method

.method public onMeetingMediaStarted()V
    .registers 7

    .prologue
    .line 268
    invoke-super {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMediaStarted()V

    .line 270
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    .line 272
    .local v1, nativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getHangoutInfo()Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v0

    .line 273
    .local v0, hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    if-nez v0, :cond_19

    .line 274
    const-string v2, "Hangout info is null"

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 296
    :cond_18
    :goto_18
    return-void

    .line 280
    :cond_19
    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/Hangout$Info;->getLaunchSource()Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Ring:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    if-ne v2, v3, :cond_18

    .line 281
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getMeetingMemberCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 282
    const-string v2, "Leaving meeting since there are no participants"

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 284
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    new-instance v3, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$3;

    invoke-direct {v3, p0, v1}, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$3;-><init>(Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;)V

    #setter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/hangout/GCommService;->access$102(Lcom/google/android/apps/plus/hangout/GCommService;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 293
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommService;->access$200(Lcom/google/android/apps/plus/hangout/GCommService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommService;->access$100(Lcom/google/android/apps/plus/hangout/GCommService;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_18
.end method

.method public onMeetingMemberEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "meetingMember"

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMemberEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 135
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getCurrentStatus()Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->CONNECTED:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    if-ne v0, v1, :cond_2d

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommService;->access$100(Lcom/google/android/apps/plus/hangout/GCommService;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommService;->access$200(Lcom/google/android/apps/plus/hangout/GCommService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommService;->access$100(Lcom/google/android/apps/plus/hangout/GCommService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommService;->access$102(Lcom/google/android/apps/plus/hangout/GCommService;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 141
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommService;->stopRingback()V

    .line 143
    :cond_2d
    return-void
.end method

.method public onMeetingMemberExited(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 8
    .parameter "meetingMember"

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMemberExited(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 178
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    .line 180
    .local v1, nativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getHangoutInfo()Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v0

    .line 181
    .local v0, hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    if-eqz v0, :cond_60

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/Hangout$Info;->getLaunchSource()Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Ring:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    if-eq v2, v3, :cond_21

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/Hangout$Info;->getRingInvitees()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 185
    :cond_21
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getMeetingMemberCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_60

    .line 186
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommService;->access$100(Lcom/google/android/apps/plus/hangout/GCommService;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 187
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommService;->access$200(Lcom/google/android/apps/plus/hangout/GCommService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommService;->access$100(Lcom/google/android/apps/plus/hangout/GCommService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    const/4 v3, 0x0

    #setter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/hangout/GCommService;->access$102(Lcom/google/android/apps/plus/hangout/GCommService;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 191
    :cond_45
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    new-instance v3, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$1;

    invoke-direct {v3, p0, v1}, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$1;-><init>(Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;)V

    #setter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/hangout/GCommService;->access$102(Lcom/google/android/apps/plus/hangout/GCommService;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 201
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommService;->access$200(Lcom/google/android/apps/plus/hangout/GCommService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommService;->access$100(Lcom/google/android/apps/plus/hangout/GCommService;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    :cond_60
    const v2, 0x7f060003

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->playSound(I)V

    .line 206
    return-void
.end method

.method public onMeetingMemberPresenceConnectionStatusChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "meetingMember"

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMemberPresenceConnectionStatusChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 159
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getCurrentStatus()Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->CONNECTED:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    if-ne v0, v1, :cond_2d

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommService;->access$100(Lcom/google/android/apps/plus/hangout/GCommService;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommService;->access$200(Lcom/google/android/apps/plus/hangout/GCommService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommService;->access$100(Lcom/google/android/apps/plus/hangout/GCommService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommService;->access$102(Lcom/google/android/apps/plus/hangout/GCommService;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 165
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommService;->stopRingback()V

    .line 168
    :cond_2d
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/GCommApp;->shouldShowToastForMember(Lcom/google/android/apps/plus/hangout/MeetingMember;)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getCurrentStatus()Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->CONNECTED:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    if-ne v0, v1, :cond_47

    .line 170
    const v0, 0x7f060002

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->playSound(I)V

    .line 172
    :cond_47
    return-void
.end method

.method public onMucEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 8
    .parameter "selfMeetingMember"

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMucEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 225
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    .line 227
    .local v1, nativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getHangoutInfo()Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v0

    .line 228
    .local v0, hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    if-nez v0, :cond_19

    .line 229
    const-string v2, "hangoutInfo is null?!?"

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 265
    :cond_18
    :goto_18
    return-void

    .line 233
    :cond_19
    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/Hangout$Info;->getRingInvitees()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 234
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommService;->startRingback()V

    .line 236
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommService;->access$100(Lcom/google/android/apps/plus/hangout/GCommService;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 237
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommService;->access$200(Lcom/google/android/apps/plus/hangout/GCommService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommService;->access$100(Lcom/google/android/apps/plus/hangout/GCommService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 238
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    const/4 v3, 0x0

    #setter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/hangout/GCommService;->access$102(Lcom/google/android/apps/plus/hangout/GCommService;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 241
    :cond_41
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    new-instance v3, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2;-><init>(Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;Lcom/google/android/apps/plus/service/Hangout$Info;Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;)V

    #setter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/hangout/GCommService;->access$102(Lcom/google/android/apps/plus/hangout/GCommService;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 262
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommService;->access$200(Lcom/google/android/apps/plus/hangout/GCommService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommService;->access$100(Lcom/google/android/apps/plus/hangout/GCommService;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/32 v4, 0xafc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_18
.end method

.method public onRemoteMute(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "mutee"
    .parameter "muter"

    .prologue
    .line 326
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onRemoteMute(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 328
    invoke-virtual {p2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v0

    if-nez v0, :cond_e

    .line 329
    const/high16 v0, 0x7f06

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->playSound(I)V

    .line 331
    :cond_e
    return-void
.end method

.method public onVCardResponse(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "meetingMember"

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onVCardResponse(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 149
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/GCommApp;->shouldShowToastForMember(Lcom/google/android/apps/plus/hangout/MeetingMember;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getCurrentStatus()Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->CONNECTED:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    if-ne v0, v1, :cond_1d

    .line 151
    const v0, 0x7f060002

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->playSound(I)V

    .line 153
    :cond_1d
    return-void
.end method
