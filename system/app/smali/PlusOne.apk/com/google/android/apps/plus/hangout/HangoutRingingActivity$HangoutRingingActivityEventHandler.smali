.class Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;
.super Lcom/google/android/apps/plus/hangout/GCommEventHandler;
.source "HangoutRingingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HangoutRingingActivityEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    return-void
.end method


# virtual methods
.method public onDataFromBunch(Ljava/lang/String;)V
    .registers 8
    .parameter "base64Data"

    .prologue
    .line 301
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

    .line 304
    const/4 v4, 0x0

    :try_start_17
    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->parseFrom([B)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    .line 305
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

    .line 306
    .local v1, bunchCommand:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->processBunchCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V
    invoke-static {v4, v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$900(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V
    :try_end_38
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_17 .. :try_end_38} :catch_39

    goto :goto_27

    .line 308
    .end local v0           #batchCommand:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    .end local v1           #bunchCommand:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_39
    move-exception v2

    .line 309
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

    .line 311
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_50
    return-void
.end method

.method public onSignedIn(Ljava/lang/String;)V
    .registers 5
    .parameter "userJid"

    .prologue
    .line 287
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onSignedIn(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHasActed:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$400(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPendingFinishStatus:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$700(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 289
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$500(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/Hangout$Info;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPendingFinishStatus:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$700(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    move-result-object v2

    #calls: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->sendHangoutRingFinishRequest(Landroid/content/Context;Ljava/lang/String;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$800(Landroid/content/Context;Ljava/lang/String;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;)V

    .line 291
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->exit()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$600(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    .line 293
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signed in! User jid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 294
    return-void
.end method
