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
    .line 115
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/GCommService;Lcom/google/android/apps/plus/hangout/GCommService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/GCommService;)V

    return-void
.end method

.method private playSound(I)V
    .registers 5
    .parameter "resid"

    .prologue
    .line 178
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->isHermes()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 189
    :goto_c
    return-void

    .line 182
    :cond_d
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-static {v1, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 183
    .local v0, player:Landroid/media/MediaPlayer;
    if-nez v0, :cond_2c

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create MediaPlayer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    goto :goto_c

    .line 186
    :cond_2c
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 187
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_c
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2
    .parameter "mp"

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 194
    return-void
.end method

.method public onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V

    .line 170
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommService;->stopForeground(Z)V

    .line 171
    return-void
.end method

.method public onInstantMessageReceived(Lcom/google/android/apps/plus/hangout/InstantMessage;)V
    .registers 2
    .parameter "instantMessage"

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onInstantMessageReceived(Lcom/google/android/apps/plus/hangout/InstantMessage;)V

    .line 123
    return-void
.end method

.method public onMediaBlock(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "blockee"
    .parameter "blocker"

    .prologue
    .line 145
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMediaBlock(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 147
    invoke-virtual {p2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v0

    if-nez v0, :cond_e

    .line 148
    const/high16 v0, 0x7f06

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->playSound(I)V

    .line 150
    :cond_e
    return-void
.end method

.method public onMeetingExited()V
    .registers 3

    .prologue
    .line 161
    invoke-super {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingExited()V

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommService;->stopForeground(Z)V

    .line 164
    return-void
.end method

.method public onMeetingMemberExited(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter "meetingMember"

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMemberExited(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 156
    const v0, 0x7f060002

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->playSound(I)V

    .line 157
    return-void
.end method

.method public onRemoteMute(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "mutee"
    .parameter "muter"

    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onRemoteMute(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 138
    invoke-virtual {p2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v0

    if-nez v0, :cond_e

    .line 139
    const/high16 v0, 0x7f06

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->playSound(I)V

    .line 141
    :cond_e
    return-void
.end method

.method public onVCardResponse(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter "meetingMember"

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onVCardResponse(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/GCommApp;->filterToastForMember(Lcom/google/android/apps/plus/hangout/MeetingMember;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 130
    const v0, 0x7f060001

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->playSound(I)V

    .line 132
    :cond_15
    return-void
.end method
