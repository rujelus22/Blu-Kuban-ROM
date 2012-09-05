.class Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;
.super Lcom/google/android/apps/plus/hangout/GCommEventHandler;
.source "HermesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HermesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HermesActivityEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/HermesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/HermesActivity;Lcom/google/android/apps/plus/hangout/HermesActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;-><init>(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    return-void
.end method


# virtual methods
.method public onAudioMuteStateChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    .registers 4
    .parameter "member"
    .parameter "muted"

    .prologue
    .line 447
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 448
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->updateAudioMuteMenuButtonState(Z)V
    invoke-static {v0, p2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$3300(Lcom/google/android/apps/plus/hangout/HermesActivity;Z)V

    .line 450
    :cond_d
    return-void
.end method

.method public onDataFromBunch(Ljava/lang/String;)V
    .registers 8
    .parameter "base64Data"

    .prologue
    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data from bunch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 266
    const/4 v4, 0x0

    :try_start_17
    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->parseFrom([B)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    .line 267
    .local v0, batchCommand:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->getCommandList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    .line 268
    .local v1, bunchCommand:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->processBunchCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V
    invoke-static {v4, v1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$1900(Lcom/google/android/apps/plus/hangout/HermesActivity;Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V
    :try_end_38
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_17 .. :try_end_38} :catch_39

    goto :goto_27

    .line 270
    .end local v0           #batchCommand:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    .end local v1           #bunchCommand:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_39
    move-exception v2

    .line 271
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception parsing batch command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 273
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_50
    return-void
.end method

.method public onInstantMessageReceived(Lcom/google/android/apps/plus/hangout/InstantMessage;)V
    .registers 4
    .parameter "instantMessage"

    .prologue
    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/InstantMessage;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method public onMeetingEnterError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 359
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingEnterError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;)V

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEETING ENTER ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public onMeetingMediaStarted()V
    .registers 2

    .prologue
    .line 368
    invoke-super {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMediaStarted()V

    .line 369
    const-string v0, "onMeetingMediaStarted"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public onMeetingMemberEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "member"

    .prologue
    .line 299
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMemberEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Presence = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getPresenceConnectionStatus()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteMeetingMembers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$400(Lcom/google/android/apps/plus/hangout/HermesActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsCaller:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$000(Lcom/google/android/apps/plus/hangout/HermesActivity;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 304
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mInviterMucJid:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$2400(Lcom/google/android/apps/plus/hangout/HermesActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 306
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mCancelCallRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$1600(Lcom/google/android/apps/plus/hangout/HermesActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 307
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getPresenceConnectionStatus()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->CONNECTING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    if-ne v0, v1, :cond_71

    .line 309
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->playRingTone()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$2500(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    .line 316
    :cond_70
    :goto_70
    return-void

    .line 312
    :cond_71
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mCancelCallRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$1600(Lcom/google/android/apps/plus/hangout/HermesActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_70
.end method

.method public onMeetingMemberExited(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 7
    .parameter "member"

    .prologue
    .line 323
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMemberExited(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 324
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteMeetingMembers:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$400(Lcom/google/android/apps/plus/hangout/HermesActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exited: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteMeetingMembers:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$400(Lcom/google/android/apps/plus/hangout/HermesActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-virtual {p1, v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". MucJid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsCaller:Z
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$000(Lcom/google/android/apps/plus/hangout/HermesActivity;)Z

    move-result v2

    if-eqz v2, :cond_f5

    .line 328
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mAccepted:Z
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$200(Lcom/google/android/apps/plus/hangout/HermesActivity;)Z

    move-result v2

    if-eqz v2, :cond_7a

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$2600(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v2

    if-eqz v2, :cond_f4

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$2600(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 331
    :cond_7a
    const-string v2, "Leaving the hangout since remote user hangup or a user rejected"

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 332
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteMeetingMembers:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$400(Lcom/google/android/apps/plus/hangout/HermesActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e3

    .line 334
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteMeetingMembers:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$400(Lcom/google/android/apps/plus/hangout/HermesActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_99
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 335
    .local v1, otherMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Kicking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mucjid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$500(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Initiator ended call"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->kickMeetingMember(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_99

    .line 341
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #otherMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    :cond_e3
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->stopRingBackTone()V
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$100(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    .line 342
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    sget-object v3, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->CANCELED:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->sendInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;)V
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$300(Lcom/google/android/apps/plus/hangout/HermesActivity;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;)V

    .line 343
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->exitHermes()V
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$700(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    .line 352
    :cond_f4
    :goto_f4
    return-void

    .line 346
    :cond_f5
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mInviterMucJid:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$2400(Lcom/google/android/apps/plus/hangout/HermesActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 347
    const-string v2, "Leaving the hangout since the inviter exitted!"

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 348
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->stopRingTone()V
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$600(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    .line 349
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->exitHermes()V
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$700(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    goto :goto_f4
.end method

.method public onMeetingMemberPresenceConnectionStatusChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 10
    .parameter "member"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 377
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getPresenceConnectionStatus()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    move-result-object v1

    .line 379
    .local v1, connectionStatus:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-virtual {p1, v5}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " presence status changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getPresenceConnectionStatus()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 381
    sget-object v4, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->CONNECTED:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    if-ne v1, v4, :cond_165

    .line 382
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsCaller:Z
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$000(Lcom/google/android/apps/plus/hangout/HermesActivity;)Z

    move-result v4

    if-eqz v4, :cond_14d

    .line 383
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    iget-object v4, v4, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mCancelCallRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$1600(Lcom/google/android/apps/plus/hangout/HermesActivity;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 384
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #setter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mAccepted:Z
    invoke-static {v4, v6}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$202(Lcom/google/android/apps/plus/hangout/HermesActivity;Z)Z

    .line 385
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->hideCallStatus()V
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$2700(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    .line 386
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #setter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-static {v4, p1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$2602(Lcom/google/android/apps/plus/hangout/HermesActivity;Lcom/google/android/apps/plus/hangout/MeetingMember;)Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 387
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->stopRingBackTone()V
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$100(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    .line 388
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    sget-object v5, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->CONNECTED:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->sendInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;)V
    invoke-static {v4, v5}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$300(Lcom/google/android/apps/plus/hangout/HermesActivity;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;)V

    .line 390
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteMeetingMembers:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$400(Lcom/google/android/apps/plus/hangout/HermesActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_70
    :goto_70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 391
    .local v3, otherMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_70

    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Kicking "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mucjid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 394
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$500(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Accepted on other device"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->kickMeetingMember(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70

    .line 400
    .end local v3           #otherMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    :cond_c8
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getNickName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "hangout"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f9

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enabling upgrade to hangout for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-virtual {p1, v5}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 403
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mUpgradeToHangoutMenuButton:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$2800(Lcom/google/android/apps/plus/hangout/HermesActivity;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 405
    :cond_f9
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mCallOptionsMenu:Landroid/view/View;
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$2900(Lcom/google/android/apps/plus/hangout/HermesActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$500(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v4

    sget-object v5, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->CONNECTED:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setPresenceConnectionStatus(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;)V

    .line 416
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_111
    :goto_111
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mAwaitingVideoResponse:Z
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$3000(Lcom/google/android/apps/plus/hangout/HermesActivity;)Z

    move-result v4

    if-eqz v4, :cond_14c

    .line 417
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    const v5, 0x7f060002

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->playSound(I)V
    invoke-static {v4, v5}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$3100(Lcom/google/android/apps/plus/hangout/HermesActivity;I)V

    .line 418
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    const v5, 0x7f0702d9

    const/16 v6, 0x5dc

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 421
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mUpgradeToHangoutMenuButton:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$2800(Lcom/google/android/apps/plus/hangout/HermesActivity;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 422
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #setter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mAwaitingVideoResponse:Z
    invoke-static {v4, v7}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$3002(Lcom/google/android/apps/plus/hangout/HermesActivity;Z)Z

    .line 423
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$500(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v4

    sget-object v5, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->CONNECTED:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setPresenceConnectionStatus(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;)V

    .line 440
    :cond_14c
    :goto_14c
    return-void

    .line 410
    :cond_14d
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mAccepted:Z
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$200(Lcom/google/android/apps/plus/hangout/HermesActivity;)Z

    move-result v4

    if-nez v4, :cond_111

    .line 411
    const-string v4, "Leaving the hangout since someone else accepted before me!"

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 412
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->stopRingTone()V
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$600(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    .line 413
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->exitHermes()V
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$700(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    goto :goto_111

    .line 426
    :cond_165
    sget-object v4, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->VIDEO_CONNECTING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    if-ne v1, v4, :cond_1ba

    .line 427
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mAwaitingVideoResponse:Z
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$3000(Lcom/google/android/apps/plus/hangout/HermesActivity;)Z

    move-result v4

    if-nez v4, :cond_14c

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got an invitation to enter hangout from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-virtual {p1, v5}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 430
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$500(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v4

    sget-object v5, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->VIDEO_CONNECTING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setPresenceConnectionStatus(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;)V

    .line 432
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 433
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "inviter_name"

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-virtual {p1, v5}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-virtual {v4, v6, v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 435
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    const v5, 0x7f060001

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->playSound(I)V
    invoke-static {v4, v5}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$3100(Lcom/google/android/apps/plus/hangout/HermesActivity;I)V

    goto :goto_14c

    .line 437
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1ba
    sget-object v4, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->VIDEO_CONNECTED:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    if-ne v1, v4, :cond_14c

    .line 438
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->upgradeToHangout()V
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$3200(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    goto :goto_14c
.end method

.method public onMucEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "selfMember"

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMucEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelfMember nick : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #setter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mSelfMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$2002(Lcom/google/android/apps/plus/hangout/HermesActivity;Lcom/google/android/apps/plus/hangout/MeetingMember;)Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 284
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$500(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->CONNECTING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setPresenceConnectionStatus(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;)V

    .line 286
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsCaller:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$000(Lcom/google/android/apps/plus/hangout/HermesActivity;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 287
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->sendInviteRequest()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$2100(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    .line 288
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->startDuration()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$2200(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    .line 292
    :goto_53
    return-void

    .line 290
    :cond_54
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mSlidingTabControl:Lcom/google/android/apps/plus/widget/SlidingTab;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$2300(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/widget/SlidingTab;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/widget/SlidingTab;->setVisibility(I)V

    goto :goto_53
.end method

.method public onSignedIn(Ljava/lang/String;)V
    .registers 8
    .parameter "userJid"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 235
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onSignedIn(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #setter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mSelfUserJid:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$1302(Lcom/google/android/apps/plus/hangout/HermesActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignedIn. Self jid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsCaller:Z
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$000(Lcom/google/android/apps/plus/hangout/HermesActivity;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 240
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$500(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$1400(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v4, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->enterHangout(Lcom/google/android/apps/plus/service/Hangout$Info;ZLjava/util/List;Z)V

    .line 242
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->playRingBackTone()V
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$1500(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    .line 243
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    iget-object v1, v1, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mCancelCallRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$1600(Lcom/google/android/apps/plus/hangout/HermesActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mEndCallButton:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$1700(Lcom/google/android/apps/plus/hangout/HermesActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    const v3, 0x7f0702d3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->setCallStatus(Ljava/lang/CharSequence;)V
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$1800(Lcom/google/android/apps/plus/hangout/HermesActivity;Ljava/lang/CharSequence;)V

    .line 253
    :goto_63
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$1200(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsCaller:Z
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$000(Lcom/google/android/apps/plus/hangout/HermesActivity;)Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$1400(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/phone/Intents;->getResumeHermesActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZLcom/google/android/apps/plus/service/Hangout$Info;)Landroid/content/Intent;

    move-result-object v0

    .line 255
    .local v0, notificationIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$500(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommService()Lcom/google/android/apps/plus/hangout/GCommService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/hangout/GCommService;->showHangoutNotification(Landroid/content/Intent;)V

    .line 256
    return-void

    .line 247
    .end local v0           #notificationIntent:Landroid/content/Intent;
    :cond_89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering MucJid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$1400(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/service/Hangout$Info;->getMucJid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$500(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$1400(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v4, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->enterHangout(Lcom/google/android/apps/plus/service/Hangout$Info;ZLjava/util/List;Z)V

    .line 250
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    const v3, 0x7f0702d4

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->setCallStatus(Ljava/lang/CharSequence;)V
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$1800(Lcom/google/android/apps/plus/hangout/HermesActivity;Ljava/lang/CharSequence;)V

    .line 251
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    iget-object v1, v1, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mCancelCallRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$1600(Lcom/google/android/apps/plus/hangout/HermesActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_63
.end method
