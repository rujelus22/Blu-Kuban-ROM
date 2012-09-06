.class public Lcom/google/android/music/dl/stream/StreamRequestHandler;
.super Ljava/lang/Object;
.source "StreamRequestHandler.java"

# interfaces
.implements Lorg/apache/http/protocol/HttpRequestHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/stream/StreamRequestHandler$1;,
        Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;
    }
.end annotation


# static fields
.field protected static final LOCAL_LOGV:Z

.field private static final RANGE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final mAllowedToStreamFile:Lcom/google/android/music/dl/ContentIdentifier;

.field private final mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

.field private mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-string v0, "Streamer"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->LOCAL_LOGV:Z

    .line 39
    const-string v0, "bytes=(\\d+)-?(\\d*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->RANGE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/dl/DownloadManager;Lcom/google/android/music/dl/ContentIdentifier;)V
    .registers 3
    .parameter "downloadManager"
    .parameter "allowedToStreamFile"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    .line 54
    iput-object p2, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mAllowedToStreamFile:Lcom/google/android/music/dl/ContentIdentifier;

    .line 55
    return-void
.end method

.method private convertRangeToMs(J)J
    .registers 10
    .parameter "requestedRange"

    .prologue
    .line 165
    iget-object v2, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadLength()J

    move-result-wide v0

    .line 166
    .local v0, downloadLength:J
    cmp-long v2, p1, v0

    if-lez v2, :cond_2d

    .line 167
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested Range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " outside of size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_2d
    long-to-float v2, p1

    long-to-float v3, v0

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->getDuration()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v5}, Lcom/google/android/music/dl/DownloadOrder;->getSeekPoint()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    return-wide v2
.end method


# virtual methods
.method public getDownloadOrder()Lcom/google/android/music/dl/DownloadOrder;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    return-object v0
.end method

.method public handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .registers 28
    .parameter "request"
    .parameter "response"
    .parameter "context"

    .prologue
    .line 58
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v10

    .line 62
    .local v10, reqLine:Lorg/apache/http/RequestLine;
    invoke-interface {v10}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v9

    .line 63
    .local v9, path:Ljava/lang/String;
    const/16 v20, 0x2f

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 64
    .local v7, lastSlash:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v7, v0, :cond_31

    .line 65
    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown URL requested: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 67
    :cond_31
    const-string v20, "&seek="

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 68
    .local v13, seekIdx:I
    add-int/lit8 v21, v7, 0x1

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_6e

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v20

    :goto_45
    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/google/android/music/dl/ContentIdentifier;->parseFromUrlSring(Ljava/lang/String;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v14

    .line 72
    .local v14, songId:Lcom/google/android/music/dl/ContentIdentifier;
    if-nez v14, :cond_71

    .line 73
    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown URL requested: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .end local v14           #songId:Lcom/google/android/music/dl/ContentIdentifier;
    :cond_6e
    move/from16 v20, v13

    .line 68
    goto :goto_45

    .line 76
    .restart local v14       #songId:Lcom/google/android/music/dl/ContentIdentifier;
    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mAllowedToStreamFile:Lcom/google/android/music/dl/ContentIdentifier;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v20

    if-nez v20, :cond_bd

    .line 78
    sget-boolean v20, Lcom/google/android/music/dl/stream/StreamRequestHandler;->LOCAL_LOGV:Z

    if-eqz v20, :cond_b3

    .line 79
    const-string v20, "Streamer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Requesting file ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ") which is not mAllowedToBeStreamed ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mAllowedToStreamFile:Lcom/google/android/music/dl/ContentIdentifier;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_b3
    const/16 v20, 0x194

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 161
    :goto_bc
    return-void

    .line 86
    :cond_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/google/android/music/dl/DownloadManager;->getStreamingDownload(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    .line 88
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_177

    const-wide/16 v15, 0x0

    .line 91
    .local v15, startMs:J
    :goto_d7
    const-string v20, "Range"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/http/HttpRequest;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 92
    .local v6, headerRange:Lorg/apache/http/Header;
    const/16 v19, 0x0

    .line 93
    .local v19, usingRangeHeader:Z
    if-eqz v6, :cond_129

    .line 96
    sget-object v20, Lcom/google/android/music/dl/stream/StreamRequestHandler;->RANGE_PATTERN:Ljava/util/regex/Pattern;

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 97
    .local v8, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v20

    if-eqz v20, :cond_129

    .line 98
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 99
    .local v11, requestByte:J
    sget-boolean v20, Lcom/google/android/music/dl/stream/StreamRequestHandler;->LOCAL_LOGV:Z

    if-eqz v20, :cond_11f

    const-string v20, "Streamer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Server requesting byte: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_11f
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/google/android/music/dl/stream/StreamRequestHandler;->convertRangeToMs(J)J

    move-result-wide v20

    add-long v15, v15, v20

    .line 101
    const/16 v19, 0x1

    .line 105
    .end local v8           #matcher:Ljava/util/regex/Matcher;
    .end local v11           #requestByte:J
    :cond_129
    const-wide/16 v20, 0x0

    cmp-long v20, v15, v20

    if-eqz v20, :cond_18b

    .line 106
    const-string v20, "Streamer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Starting playback from: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide v1, v15

    invoke-virtual {v0, v14, v1, v2}, Lcom/google/android/music/dl/DownloadManager;->getPartialDownload(Lcom/google/android/music/dl/ContentIdentifier;J)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v20, v0

    if-nez v20, :cond_18b

    .line 109
    const-string v20, "Streamer"

    const-string v21, "Failed to resume download"

    invoke-static/range {v20 .. v21}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/16 v20, 0x19a

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto/16 :goto_bc

    .line 88
    .end local v6           #headerRange:Lorg/apache/http/Header;
    .end local v15           #startMs:J
    .end local v19           #usingRangeHeader:Z
    :cond_177
    const-string v20, "&seek="

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v20, v20, v13

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    goto/16 :goto_d7

    .line 115
    .restart local v6       #headerRange:Lorg/apache/http/Header;
    .restart local v15       #startMs:J
    .restart local v19       #usingRangeHeader:Z
    :cond_18b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v20, v0

    if-nez v20, :cond_1ae

    .line 116
    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "File is not being downloaded: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 119
    :cond_1ae
    sget-boolean v20, Lcom/google/android/music/dl/stream/StreamRequestHandler;->LOCAL_LOGV:Z

    if-eqz v20, :cond_1e0

    .line 120
    const-string v20, "Streamer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Received request ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/music/dl/DownloadOrder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_1e0
    :try_start_1e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x1

    invoke-virtual/range {v20 .. v22}, Lcom/google/android/music/dl/DownloadOrder;->waitForData(J)V
    :try_end_1eb
    .catch Ljava/lang/InterruptedException; {:try_start_1e0 .. :try_end_1eb} :catch_20d

    .line 133
    :cond_1eb
    :goto_1eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/dl/DownloadOrder;->getHandler()Lcom/google/android/music/dl/DownloadHandler;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/dl/DownloadHandler;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, contentType:Ljava/lang/String;
    if-nez v4, :cond_21a

    .line 135
    const-string v20, "Streamer"

    const-string v21, "Missing content type - exiting"

    invoke-static/range {v20 .. v21}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/16 v20, 0x194

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto/16 :goto_bc

    .line 127
    .end local v4           #contentType:Ljava/lang/String;
    :catch_20d
    move-exception v5

    .line 128
    .local v5, e:Ljava/lang/InterruptedException;
    sget-boolean v20, Lcom/google/android/music/dl/stream/StreamRequestHandler;->LOCAL_LOGV:Z

    if-eqz v20, :cond_1eb

    .line 129
    const-string v20, "Streamer"

    const-string v21, "Interrupted while waiting for data"

    invoke-static/range {v20 .. v21}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1eb

    .line 139
    .end local v5           #e:Ljava/lang/InterruptedException;
    .restart local v4       #contentType:Ljava/lang/String;
    :cond_21a
    const-string v20, "content-type"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v4}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v20, "X-SocketTimeout"

    const-string v21, "60"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v20, "Pragma"

    const-string v21, "no-cache"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v20, "Cache-Control"

    const-string v21, "no-cache"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-wide/16 v17, 0x0

    .line 148
    .local v17, startReadByte:J
    const-wide/16 v20, 0x0

    cmp-long v20, v15, v20

    if-eqz v20, :cond_28a

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/dl/DownloadOrder;->getSeekPoint()J

    move-result-wide v20

    sub-long v20, v15, v20

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/dl/DownloadOrder;->getDuration()J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadLength()J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-long v0, v0

    move-wide/from16 v17, v0

    .line 154
    :cond_28a
    new-instance v20, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/dl/DownloadOrder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Lcom/google/android/music/dl/TailStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-wide/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/dl/TailStream;-><init>(Lcom/google/android/music/dl/DownloadOrder;J)V

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/google/android/music/dl/stream/StreamRequestHandler$1;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 156
    if-eqz v19, :cond_2c0

    .line 157
    const/16 v20, 0xce

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto/16 :goto_bc

    .line 159
    :cond_2c0
    const/16 v20, 0xc8

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto/16 :goto_bc
.end method
