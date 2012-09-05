.class public Lcom/vlingo/client/core/recognizer/sr3/SR3Request;
.super Ljava/lang/Object;
.source "SR3Request.java"

# interfaces
.implements Lcom/vlingo/client/core/recognizer/SRRequest;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/recognizer/sr3/SR3Request$AudioSegment;
    }
.end annotation


# static fields
.field private static final ATR_ClientRequestID:Ljava/lang/String; = "ClientRequestID"

.field private static final log:Lcom/vlingo/client/core/logging/Logger;


# instance fields
.field private volatile allAudioReceived:Z

.field private audioQueue:Lcom/vlingo/client/core/recognizer/Queue;

.field private ivAudioBytesWritten:I

.field private final ivCRC32:Lcom/vlingo/client/core/util/CRC32;

.field private ivClientMeta:Lcom/vlingo/client/core/recognizer/ClientMeta;

.field private ivClientRequestID:I

.field private ivContext:Lcom/vlingo/client/core/recognizer/SRContext;

.field private final ivListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/recognizer/SRRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

.field private ivSRManager:Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;

.field private ivSoftwareMeta:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

.field private ivTimeGotResults:J

.field private ivTimeSendFinish:J

.field private ivTimeSendStart:J

.field private ivTimings:Lcom/vlingo/client/core/recognizer/TimingRepository;

.field private volatile requestCancelled:Z

.field private requestFinished:Z

.field private volatile requestThread:Ljava/lang/Thread;

.field private volatile responseReceived:Z

.field private sentCancelRequest:Z

.field private startedWritingAudio:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-class v0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;Lcom/vlingo/client/core/recognizer/TimingRepository;)V
    .registers 7
    .parameter "context"
    .parameter "clientMeta"
    .parameter "softwareMeta"
    .parameter "srManager"
    .parameter "timings"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivListeners:Ljava/util/Vector;

    .line 61
    new-instance v0, Lcom/vlingo/client/core/util/CRC32;

    invoke-direct {v0}, Lcom/vlingo/client/core/util/CRC32;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivCRC32:Lcom/vlingo/client/core/util/CRC32;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivClientRequestID:I

    .line 85
    new-instance v0, Lcom/vlingo/client/core/recognizer/Queue;

    invoke-direct {v0}, Lcom/vlingo/client/core/recognizer/Queue;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->audioQueue:Lcom/vlingo/client/core/recognizer/Queue;

    .line 93
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivContext:Lcom/vlingo/client/core/recognizer/SRContext;

    .line 94
    iput-object p2, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivClientMeta:Lcom/vlingo/client/core/recognizer/ClientMeta;

    .line 95
    iput-object p3, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSoftwareMeta:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    .line 96
    iput-object p4, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRManager:Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;

    .line 98
    const-string v0, "pref.internal.detailed_timings"

    invoke-static {v0}, Lcom/vlingo/client/core/settings/CoreSettingsProvider;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 99
    iput-object p5, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivTimings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    .line 101
    :cond_2d
    return-void
.end method

.method private buildMetaElement()Ljava/lang/String;
    .registers 10

    .prologue
    .line 302
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 303
    .local v4, sb:Ljava/lang/StringBuffer;
    const-string v6, "<Request "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    const-string v6, "FieldID"

    iget-object v7, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivContext:Lcom/vlingo/client/core/recognizer/SRContext;

    invoke-virtual {v7}, Lcom/vlingo/client/core/recognizer/SRContext;->getFieldID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vlingo/client/core/http/HttpUtil;->genAtr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    const-string v6, "AppID"

    iget-object v7, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSoftwareMeta:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    invoke-virtual {v7}, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vlingo/client/core/http/HttpUtil;->genAtr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    const-string v6, "FieldType"

    iget-object v7, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivContext:Lcom/vlingo/client/core/recognizer/SRContext;

    invoke-virtual {v7}, Lcom/vlingo/client/core/recognizer/SRContext;->getFieldType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vlingo/client/core/http/HttpUtil;->genAtr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    const-string v6, "FieldContext"

    iget-object v7, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivContext:Lcom/vlingo/client/core/recognizer/SRContext;

    invoke-virtual {v7}, Lcom/vlingo/client/core/recognizer/SRContext;->getFieldContext()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vlingo/client/core/http/HttpUtil;->genAtr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivContext:Lcom/vlingo/client/core/recognizer/SRContext;

    invoke-virtual {v6}, Lcom/vlingo/client/core/recognizer/SRContext;->getCurrentText()Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, curText:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6a

    .line 310
    const-string v6, "CurrentText"

    invoke-static {v6, v1}, Lcom/vlingo/client/core/http/HttpUtil;->genAtr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    const-string v6, "CursorPosition"

    iget-object v7, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivContext:Lcom/vlingo/client/core/recognizer/SRContext;

    invoke-virtual {v7}, Lcom/vlingo/client/core/recognizer/SRContext;->getCursorPosition()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vlingo/client/core/http/HttpUtil;->genAtr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    :cond_6a
    const/4 v3, 0x1

    .local v3, i:I
    :goto_6b
    const/4 v6, 0x6

    if-gt v3, v6, :cond_aa

    .line 315
    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivContext:Lcom/vlingo/client/core/recognizer/SRContext;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Custom"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vlingo/client/core/recognizer/SRContext;->getCustomParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, customValue:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a7

    .line 317
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Custom"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/vlingo/client/core/http/HttpUtil;->genAtr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    :cond_a7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6b

    .line 321
    .end local v2           #customValue:Ljava/lang/String;
    :cond_aa
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->isAudioStreamingEnabled()Z

    move-result v6

    if-eqz v6, :cond_dc

    const-string v5, "true"

    .line 322
    .local v5, streaming:Ljava/lang/String;
    :goto_b6
    const-string v6, "StreamingAudio"

    invoke-static {v6, v5}, Lcom/vlingo/client/core/http/HttpUtil;->genAtr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    const-string v6, "pref.autopunctuation"

    invoke-static {v6}, Lcom/vlingo/client/core/settings/CoreSettingsProvider;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_df

    const-string v0, "true"

    .line 325
    .local v0, autoPunctuate:Ljava/lang/String;
    :goto_c9
    const-string v6, "Punctuate"

    invoke-static {v6, v0}, Lcom/vlingo/client/core/http/HttpUtil;->genAtr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    const-string v6, "/>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 321
    .end local v0           #autoPunctuate:Ljava/lang/String;
    .end local v5           #streaming:Ljava/lang/String;
    :cond_dc
    const-string v5, "false"

    goto :goto_b6

    .line 324
    .restart local v5       #streaming:Ljava/lang/String;
    :cond_df
    const-string v0, "false"

    goto :goto_c9
.end method

.method private cancelRequest()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 516
    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    if-nez v6, :cond_6

    .line 568
    :cond_5
    :goto_5
    return-void

    .line 519
    :cond_6
    iget-boolean v6, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->requestFinished:Z

    if-eqz v6, :cond_67

    .line 520
    iget-boolean v6, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->sentCancelRequest:Z

    if-nez v6, :cond_5

    .line 521
    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRManager:Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;

    invoke-virtual {v6}, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->getServerDetails()Lcom/vlingo/client/core/recognizer/SRServerDetails;

    move-result-object v5

    .line 522
    .local v5, serverDetails:Lcom/vlingo/client/core/recognizer/SRServerDetails;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 523
    .local v0, data:Ljava/lang/StringBuffer;
    const-string v6, "<Cancel "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 524
    const-string v6, "ClientRequestID"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivClientRequestID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vlingo/client/core/http/HttpUtil;->genAtr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 525
    const-string v6, "/>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    const-string v6, "SRCancel"

    new-instance v7, Lcom/vlingo/client/core/http/BaseHttpCallback;

    invoke-direct {v7}, Lcom/vlingo/client/core/http/BaseHttpCallback;-><init>()V

    invoke-interface {v5}, Lcom/vlingo/client/core/recognizer/SRServerDetails;->getASRCancelURL()Lcom/vlingo/client/core/http/URL;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->createVLRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Lcom/vlingo/client/core/http/URL;Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    move-result-object v4

    .line 527
    .local v4, request:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivClientMeta:Lcom/vlingo/client/core/recognizer/ClientMeta;

    invoke-virtual {v4, v6}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->setClientMeta(Lcom/vlingo/client/core/recognizer/ClientMeta;)V

    .line 528
    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSoftwareMeta:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    invoke-virtual {v4, v6}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->setSoftwareMeta(Lcom/vlingo/client/core/recognizer/SoftwareMeta;)V

    .line 529
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v10, v8}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->schedule(JZZ)V

    .line 530
    iput-boolean v10, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->sentCancelRequest:Z

    goto :goto_5

    .line 534
    .end local v0           #data:Ljava/lang/StringBuffer;
    .end local v4           #request:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    .end local v5           #serverDetails:Lcom/vlingo/client/core/recognizer/SRServerDetails;
    :cond_67
    :try_start_67
    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    invoke-virtual {v6}, Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;->getOut()Lcom/vlingo/client/core/http/custom/MPOutputStream;

    move-result-object v3

    .line 535
    .local v3, mpOut:Lcom/vlingo/client/core/http/custom/MPOutputStream;
    iget-boolean v6, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->startedWritingAudio:Z

    if-eqz v6, :cond_97

    .line 537
    invoke-virtual {v3}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->writeEndFieldValue()V

    .line 538
    invoke-virtual {v3}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->writeBoundary()V

    .line 541
    const-string v6, "checksum"

    const-string v7, "text/crc32"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivCRC32:Lcom/vlingo/client/core/util/CRC32;

    invoke-virtual {v9}, Lcom/vlingo/client/core/util/CRC32;->getValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->writeField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :cond_97
    const-string v6, "cancel"

    const-string v7, "text/xml"

    const-string v8, "<cancel/>"

    invoke-virtual {v3, v6, v7, v8}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->writeField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-virtual {v3}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->flush()V

    .line 547
    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    invoke-virtual {v6}, Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;->finishRequest()V

    .line 549
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->requestFinished:Z

    .line 552
    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    invoke-virtual {v6}, Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;->getIn()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/vlingo/client/core/http/HttpUtil;->readData(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 556
    .local v2, httpResponse:[B
    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    invoke-virtual {v6}, Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;->finishResponse()V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_ba} :catch_bc

    goto/16 :goto_5

    .line 557
    .end local v2           #httpResponse:[B
    .end local v3           #mpOut:Lcom/vlingo/client/core/http/custom/MPOutputStream;
    :catch_bc
    move-exception v1

    .line 562
    .local v1, ex:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->closeConnection()V

    goto/16 :goto_5
.end method

.method private closeConnection()V
    .registers 2

    .prologue
    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_9

    .line 360
    :goto_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    .line 361
    return-void

    .line 356
    :catch_9
    move-exception v0

    goto :goto_5
.end method

.method private fail(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5
    .parameter "method"
    .parameter "e"

    .prologue
    .line 336
    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->notifyListeners(I)V

    .line 340
    invoke-static {}, Lcom/vlingo/client/util/NetworkUtil;->isNetworkConnectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 341
    sget-object v0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v1, "Data Network Connection is Available"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 344
    :goto_11
    sget-object v0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->log:Lcom/vlingo/client/core/logging/Logger;

    invoke-static {}, Lcom/vlingo/client/core/net/ConnectionManager;->getInstance()Lcom/vlingo/client/core/net/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/net/ConnectionManager;->generateNetworkInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 347
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->closeConnection()V

    .line 348
    return-void

    .line 343
    :cond_22
    sget-object v0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v1, "Data Network Connection is NOT Available"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_11
.end method

.method private finishRequest()V
    .registers 7

    .prologue
    .line 422
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    if-nez v1, :cond_5

    .line 453
    :goto_4
    return-void

    .line 427
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;->getOut()Lcom/vlingo/client/core/http/custom/MPOutputStream;

    move-result-object v0

    .line 428
    .local v0, mpOut:Lcom/vlingo/client/core/http/custom/MPOutputStream;
    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->writeEndFieldValue()V

    .line 429
    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->writeBoundary()V

    .line 432
    const-string v1, "checksum"

    const-string v2, "text/crc32"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivCRC32:Lcom/vlingo/client/core/util/CRC32;

    invoke-virtual {v4}, Lcom/vlingo/client/core/util/CRC32;->getValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->writeField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->flush()V

    .line 435
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;->finishRequest()V

    .line 437
    const-string v1, "REQD"

    invoke-direct {p0, v1}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->recordDetailedTiming(Ljava/lang/String;)V

    .line 439
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->requestFinished:Z

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivTimeSendFinish:J
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_4a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_47} :catch_48

    goto :goto_4

    .line 442
    .end local v0           #mpOut:Lcom/vlingo/client/core/http/custom/MPOutputStream;
    :catch_48
    move-exception v1

    goto :goto_4

    .line 449
    :catchall_4a
    move-exception v1

    throw v1
.end method

.method private isErrorState(I)Z
    .registers 3
    .parameter "state"

    .prologue
    .line 594
    if-gez p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private notifyListeners(I)V
    .registers 6
    .parameter "state"

    .prologue
    .line 579
    invoke-static {}, Lcom/vlingo/client/core/asr/RecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/asr/RecognitionManager;->getRecognizer()Lcom/vlingo/client/core/recognizer/Recognizer;

    move-result-object v1

    .line 580
    .local v1, recoLock:Lcom/vlingo/client/core/recognizer/Recognizer;
    monitor-enter v1

    .line 581
    :try_start_9
    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivListeners:Ljava/util/Vector;

    monitor-enter v3
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_38

    .line 582
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    :try_start_d
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_3b

    .line 583
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->isErrorState(I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 584
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivListeners:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/core/recognizer/SRRequestListener;

    invoke-interface {v2, p1}, Lcom/vlingo/client/core/recognizer/SRRequestListener;->requestFailed(I)V

    .line 582
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 586
    :cond_29
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivListeners:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/core/recognizer/SRRequestListener;

    invoke-interface {v2, p1}, Lcom/vlingo/client/core/recognizer/SRRequestListener;->stateChanged(I)V

    goto :goto_26

    .line 589
    :catchall_35
    move-exception v2

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_35

    :try_start_37
    throw v2

    .line 590
    .end local v0           #i:I
    :catchall_38
    move-exception v2

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_38

    throw v2

    .line 589
    .restart local v0       #i:I
    :cond_3b
    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_35

    .line 590
    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_38

    .line 591
    return-void
.end method

.method private notifyListeners(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 571
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivListeners:Ljava/util/Vector;

    monitor-enter v2

    .line 572
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    :try_start_4
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 573
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivListeners:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/recognizer/SRRequestListener;

    invoke-interface {v1, p1}, Lcom/vlingo/client/core/recognizer/SRRequestListener;->resultReceived(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 575
    :cond_1a
    monitor-exit v2

    .line 576
    return-void

    .line 575
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private receiveResponse()V
    .registers 11

    .prologue
    .line 459
    iget-boolean v8, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->requestCancelled:Z

    if-eqz v8, :cond_5

    .line 510
    :cond_4
    :goto_4
    return-void

    .line 462
    :cond_5
    iget-object v8, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    if-eqz v8, :cond_4

    .line 464
    iget-object v8, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    invoke-virtual {v8}, Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;->getConnection()Lcom/vlingo/client/core/http/custom/VHttpConnection;

    move-result-object v7

    .line 465
    .local v7, vHttp:Lcom/vlingo/client/core/http/custom/VHttpConnection;
    invoke-virtual {v7}, Lcom/vlingo/client/core/http/custom/VHttpConnection;->getVStreamConnection()Lcom/vlingo/client/core/http/custom/VStreamConnection;

    move-result-object v6

    .line 466
    .local v6, vCon:Lcom/vlingo/client/core/http/custom/VStreamConnection;
    invoke-virtual {v7}, Lcom/vlingo/client/core/http/custom/VHttpConnection;->getHttpInteraction()Lcom/vlingo/client/core/http/custom/HttpInteraction;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vlingo/client/core/http/custom/HttpInteraction;->getResponse()Lcom/vlingo/client/core/http/custom/HttpResponse;

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/vlingo/client/core/http/custom/VStreamConnection;->startResponse(Lcom/vlingo/client/core/http/custom/HttpResponse;)V

    .line 467
    iget-object v8, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    if-eqz v8, :cond_4

    .line 470
    const/16 v8, 0x8

    invoke-direct {p0, v8}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->notifyListeners(I)V

    .line 472
    :try_start_27
    const-string v8, "RESP"

    invoke-direct {p0, v8}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->recordDetailedTiming(Ljava/lang/String;)V

    .line 474
    iget-object v8, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    invoke-virtual {v8}, Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;->getIn()Ljava/io/InputStream;

    move-result-object v2

    .line 476
    .local v2, in:Ljava/io/InputStream;
    const-string v8, "RESH"

    invoke-direct {p0, v8}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->recordDetailedTiming(Ljava/lang/String;)V

    .line 478
    invoke-static {v2}, Lcom/vlingo/client/core/http/HttpUtil;->readData(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 480
    .local v1, httpResponse:[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivTimeGotResults:J

    .line 482
    iget-object v8, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    invoke-static {v8}, Lcom/vlingo/client/core/http/cookies/CookieHandler;->extractCookies(Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;)Lcom/vlingo/client/core/http/cookies/CookieJar;

    move-result-object v4

    .line 483
    .local v4, responseCookies:Lcom/vlingo/client/core/http/cookies/CookieJar;
    invoke-static {v4}, Lcom/vlingo/client/core/vlservice/VLServiceUtil;->handleResponseCookies(Lcom/vlingo/client/core/http/cookies/CookieJar;)V

    .line 485
    new-instance v5, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v5, v1, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 486
    .local v5, responseXML:Ljava/lang/String;
    iget-object v8, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRManager:Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;

    invoke-virtual {v8}, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->getResponseParser()Lcom/vlingo/client/core/recognizer/results/SRResponseParser;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->parseResponseXml(Ljava/lang/String;)Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    move-result-object v3

    .line 491
    .local v3, response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->responseReceived:Z

    .line 493
    invoke-virtual {p0}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_4

    .line 495
    iget-object v8, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRManager:Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;

    invoke-virtual {v3}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getGUttId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->setLastGuttID(Ljava/lang/String;)V

    .line 497
    invoke-direct {p0, v3}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->notifyListeners(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V

    .line 499
    iget-object v8, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    if-eqz v8, :cond_4

    .line 500
    iget-object v8, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    invoke-virtual {v8}, Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;->finishResponse()V
    :try_end_79
    .catchall {:try_start_27 .. :try_end_79} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_79} :catch_7a

    goto :goto_4

    .line 504
    .end local v1           #httpResponse:[B
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
    .end local v4           #responseCookies:Lcom/vlingo/client/core/http/cookies/CookieJar;
    .end local v5           #responseXML:Ljava/lang/String;
    :catch_7a
    move-exception v0

    .line 505
    .local v0, e:Ljava/lang/Exception;
    :try_start_7b
    const-string v8, "receiveResponse"

    invoke-direct {p0, v8, v0}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->fail(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_80
    .catchall {:try_start_7b .. :try_end_80} :catchall_81

    goto :goto_4

    .line 506
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_81
    move-exception v8

    throw v8
.end method

.method private recordDetailedTiming(Ljava/lang/String;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivTimings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    if-eqz v0, :cond_9

    .line 599
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivTimings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/recognizer/TimingRepository;->recordAndTimeStampEvent(Ljava/lang/String;)V

    .line 601
    :cond_9
    return-void
.end method

.method private sendAudioSegment(Lcom/vlingo/client/core/recognizer/sr3/SR3Request$AudioSegment;)Z
    .registers 10
    .parameter "chunk"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 372
    iget-object v4, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    if-nez v4, :cond_7

    .line 411
    :goto_6
    return v2

    .line 376
    :cond_7
    :try_start_7
    iget v4, p1, Lcom/vlingo/client/core/recognizer/sr3/SR3Request$AudioSegment;->length:I

    if-nez v4, :cond_d

    move v2, v3

    .line 379
    goto :goto_6

    .line 382
    :cond_d
    iget-boolean v4, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->startedWritingAudio:Z

    if-nez v4, :cond_2b

    .line 383
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->startedWritingAudio:Z

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivTimeSendStart:J

    .line 386
    iget-object v4, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;->getOut()Lcom/vlingo/client/core/http/custom/MPOutputStream;

    move-result-object v4

    const-string v5, "audio"

    const-string v6, "audio"

    invoke-virtual {v4, v5, v6}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->writeFileFieldHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const/4 v4, 0x7

    invoke-direct {p0, v4}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->notifyListeners(I)V

    .line 390
    :cond_2b
    iget-object v4, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;->getOut()Lcom/vlingo/client/core/http/custom/MPOutputStream;

    move-result-object v1

    .line 391
    .local v1, mpOut:Lcom/vlingo/client/core/http/custom/MPOutputStream;
    iget-object v4, p1, Lcom/vlingo/client/core/recognizer/sr3/SR3Request$AudioSegment;->audio:[B

    iget v5, p1, Lcom/vlingo/client/core/recognizer/sr3/SR3Request$AudioSegment;->offset:I

    iget v6, p1, Lcom/vlingo/client/core/recognizer/sr3/SR3Request$AudioSegment;->length:I

    invoke-virtual {v1, v4, v5, v6}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->write([BII)V

    .line 392
    invoke-virtual {v1}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->flush()V

    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AUD"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/vlingo/client/core/recognizer/sr3/SR3Request$AudioSegment;->length:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->recordDetailedTiming(Ljava/lang/String;)V

    .line 397
    iget v4, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivAudioBytesWritten:I

    iget v5, p1, Lcom/vlingo/client/core/recognizer/sr3/SR3Request$AudioSegment;->length:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivAudioBytesWritten:I

    .line 405
    iget-object v4, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivCRC32:Lcom/vlingo/client/core/util/CRC32;

    iget-object v5, p1, Lcom/vlingo/client/core/recognizer/sr3/SR3Request$AudioSegment;->audio:[B

    iget v6, p1, Lcom/vlingo/client/core/recognizer/sr3/SR3Request$AudioSegment;->offset:I

    iget v7, p1, Lcom/vlingo/client/core/recognizer/sr3/SR3Request$AudioSegment;->length:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/vlingo/client/core/util/CRC32;->update([BII)V
    :try_end_67
    .catchall {:try_start_7 .. :try_end_67} :catchall_6b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_67} :catch_69

    move v2, v3

    .line 406
    goto :goto_6

    .line 407
    .end local v1           #mpOut:Lcom/vlingo/client/core/http/custom/MPOutputStream;
    :catch_69
    move-exception v0

    .line 411
    .local v0, e:Ljava/lang/Exception;
    goto :goto_6

    .line 412
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_6b
    move-exception v2

    throw v2
.end method


# virtual methods
.method public addListener(Lcom/vlingo/client/core/recognizer/SRRequestListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 228
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivListeners:Ljava/util/Vector;

    monitor-enter v1

    .line 229
    :try_start_3
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 230
    monitor-exit v1

    .line 231
    return-void

    .line 230
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public declared-synchronized cancel(Z)V
    .registers 3
    .parameter "timedOut"

    .prologue
    .line 181
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->responseReceived:Z

    if-nez v0, :cond_14

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->requestCancelled:Z

    .line 195
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->requestThread:Ljava/lang/Thread;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_16

    if-eqz v0, :cond_11

    .line 200
    :try_start_c
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->requestThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_19

    .line 209
    :cond_11
    :goto_11
    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_16

    .line 211
    :cond_14
    monitor-exit p0

    return-void

    .line 181
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0

    .line 202
    :catch_19
    move-exception v0

    goto :goto_11
.end method

.method public declared-synchronized finish()V
    .registers 2

    .prologue
    .line 175
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->allAudioReceived:Z

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 177
    monitor-exit p0

    return-void

    .line 175
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTimeGotResult()J
    .registers 3

    .prologue
    .line 248
    iget-wide v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivTimeGotResults:J

    return-wide v0
.end method

.method public getTimeSendFinish()J
    .registers 3

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivTimeSendFinish:J

    return-wide v0
.end method

.method public getTimeSendStart()J
    .registers 3

    .prologue
    .line 240
    iget-wide v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivTimeSendStart:J

    return-wide v0
.end method

.method public declared-synchronized isCancelled()Z
    .registers 2

    .prologue
    .line 220
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->requestCancelled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isResponseReceived()Z
    .registers 2

    .prologue
    .line 224
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->responseReceived:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Lcom/vlingo/client/core/recognizer/SRRequestListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 234
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivListeners:Ljava/util/Vector;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    .line 235
    :try_start_4
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 236
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_c

    .line 237
    monitor-exit p0

    return-void

    .line 236
    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    :try_start_e
    throw v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_f

    .line 234
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 107
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iput-object v5, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->requestThread:Ljava/lang/Thread;

    .line 109
    iget-boolean v5, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->requestCancelled:Z

    if-eqz v5, :cond_c

    .line 161
    :goto_b
    return-void

    .line 119
    :cond_c
    invoke-virtual {p0}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->startRequest()V

    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, allAudioSent:Z
    const/4 v2, 0x0

    .line 124
    .local v2, errorOnAudioSend:Z
    :cond_11
    const/4 v4, 0x0

    .line 125
    .local v4, segment:Lcom/vlingo/client/core/recognizer/sr3/SR3Request$AudioSegment;
    monitor-enter p0

    .line 126
    :try_start_13
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->audioQueue:Lcom/vlingo/client/core/recognizer/Queue;

    invoke-virtual {v5}, Lcom/vlingo/client/core/recognizer/Queue;->pop()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request$AudioSegment;

    move-object v4, v0

    .line 127
    if-nez v4, :cond_2a

    .line 128
    iget-boolean v5, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->requestCancelled:Z

    if-nez v5, :cond_2a

    .line 129
    iget-boolean v5, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->allAudioReceived:Z
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_61

    if-nez v5, :cond_64

    .line 131
    :try_start_27
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_61
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_56

    .line 139
    :cond_2a
    :goto_2a
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_61

    .line 141
    if-eqz v4, :cond_38

    iget-boolean v5, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->requestCancelled:Z

    if-nez v5, :cond_38

    .line 142
    invoke-direct {p0, v4}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->sendAudioSegment(Lcom/vlingo/client/core/recognizer/sr3/SR3Request$AudioSegment;)Z

    move-result v5

    if-nez v5, :cond_66

    move v2, v6

    .line 144
    :cond_38
    :goto_38
    if-nez v1, :cond_40

    iget-boolean v5, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->requestCancelled:Z

    if-nez v5, :cond_40

    if-eqz v2, :cond_11

    .line 146
    :cond_40
    iget-boolean v5, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->startedWritingAudio:Z

    if-nez v5, :cond_4e

    iget-boolean v5, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->requestCancelled:Z

    if-nez v5, :cond_4e

    .line 148
    iput-boolean v6, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->requestCancelled:Z

    .line 149
    const/4 v5, -0x5

    invoke-direct {p0, v5}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->notifyListeners(I)V

    .line 152
    :cond_4e
    iget-boolean v5, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->requestCancelled:Z

    if-eqz v5, :cond_68

    .line 153
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->cancelRequest()V

    goto :goto_b

    .line 131
    :catch_56
    move-exception v3

    .line 132
    .local v3, ex:Ljava/lang/InterruptedException;
    :try_start_57
    const-string v5, "VLG_EXCEPTION"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 139
    .end local v3           #ex:Ljava/lang/InterruptedException;
    :catchall_61
    move-exception v5

    monitor-exit p0
    :try_end_63
    .catchall {:try_start_57 .. :try_end_63} :catchall_61

    throw v5

    .line 135
    :cond_64
    const/4 v1, 0x1

    goto :goto_2a

    .line 142
    :cond_66
    const/4 v2, 0x0

    goto :goto_38

    .line 155
    :cond_68
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->finishRequest()V

    .line 156
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->receiveResponse()V

    goto :goto_b
.end method

.method public declared-synchronized sendAudio([BII)V
    .registers 6
    .parameter "audio"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 167
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request$AudioSegment;

    invoke-direct {v0, p1, p2, p3}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request$AudioSegment;-><init>([BII)V

    .line 168
    .local v0, segment:Lcom/vlingo/client/core/recognizer/sr3/SR3Request$AudioSegment;
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->audioQueue:Lcom/vlingo/client/core/recognizer/Queue;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/core/recognizer/Queue;->add(Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 170
    monitor-exit p0

    return-void

    .line 167
    .end local v0           #segment:Lcom/vlingo/client/core/recognizer/sr3/SR3Request$AudioSegment;
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method startRequest()V
    .registers 10

    .prologue
    .line 255
    const-string v5, "RUN"

    invoke-direct {p0, v5}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->recordDetailedTiming(Ljava/lang/String;)V

    .line 258
    const/4 v5, 0x6

    :try_start_6
    invoke-direct {p0, v5}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->notifyListeners(I)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_7a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_73

    .line 264
    :try_start_9
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRManager:Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;

    invoke-virtual {v5}, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->getConnection()Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    .line 266
    const-string v5, "OPEN"

    invoke-direct {p0, v5}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->recordDetailedTiming(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_16} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_73

    .line 271
    :try_start_16
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    const-string v6, "X-vlrequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClientRequestID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    invoke-virtual {v8}, Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;->getRequestID()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    invoke-virtual {v5}, Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;->getConnection()Lcom/vlingo/client/core/http/custom/VHttpConnection;

    move-result-object v4

    .line 276
    .local v4, vHttp:Lcom/vlingo/client/core/http/custom/VHttpConnection;
    invoke-virtual {v4}, Lcom/vlingo/client/core/http/custom/VHttpConnection;->getVStreamConnection()Lcom/vlingo/client/core/http/custom/VStreamConnection;

    move-result-object v3

    .line 277
    .local v3, vCon:Lcom/vlingo/client/core/http/custom/VStreamConnection;
    invoke-virtual {v4}, Lcom/vlingo/client/core/http/custom/VHttpConnection;->getHttpInteraction()Lcom/vlingo/client/core/http/custom/HttpInteraction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vlingo/client/core/http/custom/HttpInteraction;->getRequest()Lcom/vlingo/client/core/http/custom/HttpRequest;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/vlingo/client/core/http/custom/VStreamConnection;->startRequest(Lcom/vlingo/client/core/http/custom/HttpRequest;)V

    .line 280
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->ivSRCon:Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    invoke-virtual {v5}, Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;->getOut()Lcom/vlingo/client/core/http/custom/MPOutputStream;

    move-result-object v2

    .line 282
    .local v2, out:Lcom/vlingo/client/core/http/custom/MPOutputStream;
    const-string v5, "HDRS"

    invoke-direct {p0, v5}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->recordDetailedTiming(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v2}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->writeBoundary()V

    .line 286
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->buildMetaElement()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, meta:Ljava/lang/String;
    const-string v5, "meta"

    const-string v6, "text/xml"

    invoke-virtual {v2, v5, v6, v1}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->writeField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v2}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->flush()V

    .line 291
    const-string v5, "META"

    invoke-direct {p0, v5}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->recordDetailedTiming(Ljava/lang/String;)V

    .line 299
    .end local v1           #meta:Ljava/lang/String;
    .end local v2           #out:Lcom/vlingo/client/core/http/custom/MPOutputStream;
    .end local v3           #vCon:Lcom/vlingo/client/core/http/custom/VStreamConnection;
    .end local v4           #vHttp:Lcom/vlingo/client/core/http/custom/VHttpConnection;
    :goto_6c
    return-void

    .line 267
    :catch_6d
    move-exception v0

    .line 268
    .local v0, e:Ljava/io/IOException;
    const/4 v5, -0x3

    invoke-direct {p0, v5}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->notifyListeners(I)V
    :try_end_72
    .catchall {:try_start_16 .. :try_end_72} :catchall_7a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_72} :catch_73

    goto :goto_6c

    .line 293
    .end local v0           #e:Ljava/io/IOException;
    :catch_73
    move-exception v0

    .line 294
    .local v0, e:Ljava/lang/Exception;
    :try_start_74
    const-string v5, "startRequest"

    invoke-direct {p0, v5, v0}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->fail(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_79
    .catchall {:try_start_74 .. :try_end_79} :catchall_7a

    goto :goto_6c

    .line 295
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_7a
    move-exception v5

    throw v5
.end method
