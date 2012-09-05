.class Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;
.super Landroid/os/Handler;
.source "FindTagActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/richinfo/FindTagActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 17
    .parameter "msg"

    .prologue
    .line 294
    iget-object v11, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    const/16 v12, 0x3e8

    invoke-static {v11, v12}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1012(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;I)I

    .line 295
    iget-object v11, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecorder:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v11}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1100(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->getDuration()I

    move-result v2

    .line 296
    .local v2, duration:I
    iget-object v11, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecorder:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v11}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1100(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 297
    .local v0, current:I
    const/4 v4, 0x0

    .line 304
    .local v4, readSize:I
    iget-object v11, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecordingTime:I
    invoke-static {v11}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1000(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)I

    move-result v11

    const/16 v12, 0x3a98

    if-le v11, v12, :cond_48

    .line 307
    iget-object v11, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecordingCompleteHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1200(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_3d

    .line 308
    iget-object v11, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecordingCompleteHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1200(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 309
    :cond_3d
    iget-object v11, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRichInfoResponseHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1300(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 367
    :goto_47
    return-void

    .line 315
    :cond_48
    if-ge v0, v2, :cond_53

    add-int/lit16 v11, v0, -0x2710

    int-to-long v11, v11

    const-wide/16 v13, 0x2710

    cmp-long v11, v11, v13

    if-lez v11, :cond_188

    .line 316
    :cond_53
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 317
    .local v5, recordOrder:Landroid/os/Parcel;
    const-string v11, "android.media.IMediaPlayer"

    invoke-virtual {v5, v11}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 318
    const v11, 0x1869f

    invoke-virtual {v5, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    const v11, 0x251c0

    invoke-virtual {v5, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 323
    .local v7, recordedReply:Landroid/os/Parcel;
    iget-object v11, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecorder:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v11}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1100(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v11

    invoke-virtual {v11, v5, v7}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setSoundAlive(Landroid/os/Parcel;Landroid/os/Parcel;)I

    .line 325
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 326
    const-string v11, "RichInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$000()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " read size: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-array v6, v4, [B

    .line 329
    .local v6, recordedBuffer:[B
    invoke-virtual {v7, v6}, Landroid/os/Parcel;->readByteArray([B)V

    .line 335
    iget-object v11, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mSigExtractor:Lcom/shazam/sig/SIGExtractor;
    invoke-static {v11}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1400(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Lcom/shazam/sig/SIGExtractor;

    move-result-object v11

    const/16 v12, 0x1f40

    const/4 v13, 0x2

    div-int/lit8 v14, v4, 0x2

    add-int/lit16 v14, v14, 0x3e80

    invoke-virtual {v11, v12, v13, v14, v4}, Lcom/shazam/sig/SIGExtractor;->sigInit(IIII)I

    move-result v9

    .line 337
    .local v9, sigInitStatus:I
    const-string v11, "RichInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$000()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " sigInit status: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v11, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mSigExtractor:Lcom/shazam/sig/SIGExtractor;
    invoke-static {v11}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1400(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Lcom/shazam/sig/SIGExtractor;

    move-result-object v11

    invoke-virtual {v11, v6, v4}, Lcom/shazam/sig/SIGExtractor;->sigFlow([BI)I

    move-result v8

    .line 340
    .local v8, sigFlowStatus:I
    const-string v11, "RichInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$000()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " sigFlow status: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v11, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mSigExtractor:Lcom/shazam/sig/SIGExtractor;
    invoke-static {v11}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1400(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Lcom/shazam/sig/SIGExtractor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/shazam/sig/SIGExtractor;->sigGet()[B

    move-result-object v10

    .line 347
    .local v10, signature:[B
    iget-object v11, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecorder:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v11}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1100(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->stop()V

    .line 348
    iget-object v11, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecorder:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v11}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1100(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 349
    iget-object v11, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    const/4 v12, 0x0

    #setter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecorder:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v11, v12}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1102(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;Lcom/sec/android/app/music/framework/SecMediaPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 351
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 352
    .local v3, message:Landroid/os/Message;
    const/4 v11, 0x2

    iput v11, v3, Landroid/os/Message;->what:I

    .line 353
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 354
    .local v1, data:Landroid/os/Bundle;
    const-string v11, "sigdata"

    invoke-virtual {v1, v11, v10}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 355
    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 356
    iget-object v11, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRichInfoResponseHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1300(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 358
    const-string v11, "RichInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$000()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " sigDestroy status: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mSigExtractor:Lcom/shazam/sig/SIGExtractor;
    invoke-static {v13}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1400(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Lcom/shazam/sig/SIGExtractor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/shazam/sig/SIGExtractor;->sigDestroy()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v11, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    const/4 v12, 0x0

    #setter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mSigExtractor:Lcom/shazam/sig/SIGExtractor;
    invoke-static {v11, v12}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1402(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;Lcom/shazam/sig/SIGExtractor;)Lcom/shazam/sig/SIGExtractor;

    .line 361
    iget-object v11, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecordingCompleteHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1200(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_180

    .line 362
    iget-object v11, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecordingCompleteHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1200(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 363
    :cond_180
    iget-object v11, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    const/4 v12, 0x0

    #setter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecordingTime:I
    invoke-static {v11, v12}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1002(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;I)I

    goto/16 :goto_47

    .line 365
    .end local v1           #data:Landroid/os/Bundle;
    .end local v3           #message:Landroid/os/Message;
    .end local v5           #recordOrder:Landroid/os/Parcel;
    .end local v6           #recordedBuffer:[B
    .end local v7           #recordedReply:Landroid/os/Parcel;
    .end local v8           #sigFlowStatus:I
    .end local v9           #sigInitStatus:I
    .end local v10           #signature:[B
    :cond_188
    iget-object v11, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecordingCompleteHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1200(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x0

    const-wide/16 v13, 0x3e8

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_47
.end method
