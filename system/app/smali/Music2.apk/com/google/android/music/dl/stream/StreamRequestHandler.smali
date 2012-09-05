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
    .line 149
    iget-object v2, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadLength()J

    move-result-wide v0

    .line 150
    .local v0, downloadLength:J
    cmp-long v2, p1, v0

    if-lez v2, :cond_2d

    .line 151
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

    .line 154
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
    .line 159
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    return-object v0
.end method

.method public handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .registers 25
    .parameter "request"
    .parameter "response"
    .parameter "context"

    .prologue
    .line 58
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v7

    .line 62
    .local v7, reqLine:Lorg/apache/http/RequestLine;
    invoke-interface {v7}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, path:Ljava/lang/String;
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 64
    .local v4, lastSlash:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_31

    .line 65
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown URL requested: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 67
    :cond_31
    const-string v17, "&seek="

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 68
    .local v10, seekIdx:I
    add-int/lit8 v18, v4, 0x1

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_6e

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v17

    :goto_45
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/google/android/music/dl/ContentIdentifier;->parseFromUrlSring(Ljava/lang/String;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v11

    .line 72
    .local v11, songId:Lcom/google/android/music/dl/ContentIdentifier;
    if-nez v11, :cond_71

    .line 73
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown URL requested: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .end local v11           #songId:Lcom/google/android/music/dl/ContentIdentifier;
    :cond_6e
    move/from16 v17, v10

    .line 68
    goto :goto_45

    .line 76
    .restart local v11       #songId:Lcom/google/android/music/dl/ContentIdentifier;
    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mAllowedToStreamFile:Lcom/google/android/music/dl/ContentIdentifier;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v17

    if-nez v17, :cond_bd

    .line 78
    sget-boolean v17, Lcom/google/android/music/dl/stream/StreamRequestHandler;->LOCAL_LOGV:Z

    if-eqz v17, :cond_b3

    .line 79
    const-string v17, "Streamer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Requesting file ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ") which is not mAllowedToBeStreamed ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mAllowedToStreamFile:Lcom/google/android/music/dl/ContentIdentifier;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_b3
    const/16 v17, 0x194

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 145
    :goto_bc
    return-void

    .line 86
    :cond_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/google/android/music/dl/DownloadManager;->getStreamingDownload(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    .line 88
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_175

    const-wide/16 v12, 0x0

    .line 91
    .local v12, startMs:J
    :goto_d7
    const-string v17, "Range"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/http/HttpRequest;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 92
    .local v3, headerRange:Lorg/apache/http/Header;
    const/16 v16, 0x0

    .line 93
    .local v16, usingRangeHeader:Z
    if-eqz v3, :cond_129

    .line 96
    sget-object v17, Lcom/google/android/music/dl/stream/StreamRequestHandler;->RANGE_PATTERN:Ljava/util/regex/Pattern;

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 97
    .local v5, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v17

    if-eqz v17, :cond_129

    .line 98
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 99
    .local v8, requestByte:J
    sget-boolean v17, Lcom/google/android/music/dl/stream/StreamRequestHandler;->LOCAL_LOGV:Z

    if-eqz v17, :cond_11f

    const-string v17, "Streamer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Server requesting byte: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_11f
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/google/android/music/dl/stream/StreamRequestHandler;->convertRangeToMs(J)J

    move-result-wide v17

    add-long v12, v12, v17

    .line 101
    const/16 v16, 0x1

    .line 105
    .end local v5           #matcher:Ljava/util/regex/Matcher;
    .end local v8           #requestByte:J
    :cond_129
    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-eqz v17, :cond_189

    .line 106
    const-string v17, "Streamer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Starting playback from: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v12, v13}, Lcom/google/android/music/dl/DownloadManager;->getPartialDownload(Lcom/google/android/music/dl/ContentIdentifier;J)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v17, v0

    if-nez v17, :cond_189

    .line 109
    const-string v17, "Streamer"

    const-string v18, "Failed to resume download"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/16 v17, 0x19a

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto/16 :goto_bc

    .line 88
    .end local v3           #headerRange:Lorg/apache/http/Header;
    .end local v12           #startMs:J
    .end local v16           #usingRangeHeader:Z
    :cond_175
    const-string v17, "&seek="

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v17, v17, v10

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    goto/16 :goto_d7

    .line 115
    .restart local v3       #headerRange:Lorg/apache/http/Header;
    .restart local v12       #startMs:J
    .restart local v16       #usingRangeHeader:Z
    :cond_189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v17, v0

    if-nez v17, :cond_1ac

    .line 116
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "File is not being downloaded: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 119
    :cond_1ac
    sget-boolean v17, Lcom/google/android/music/dl/stream/StreamRequestHandler;->LOCAL_LOGV:Z

    if-eqz v17, :cond_1de

    .line 120
    const-string v17, "Streamer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Received request ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/music/dl/DownloadOrder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1de
    const-string v17, "content-type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/dl/DownloadOrder;->getHandler()Lcom/google/android/music/dl/DownloadHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/dl/DownloadHandler;->getContentType()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v17, "X-SocketTimeout"

    const-string v18, "60"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v17, "Pragma"

    const-string v18, "no-cache"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v17, "Cache-Control"

    const-string v18, "no-cache"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-wide/16 v14, 0x0

    .line 132
    .local v14, startReadByte:J
    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-eqz v17, :cond_25c

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/dl/DownloadOrder;->getSeekPoint()J

    move-result-wide v17

    sub-long v17, v12, v17

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/dl/DownloadOrder;->getDuration()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadLength()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-long v14, v0

    .line 138
    :cond_25c
    new-instance v17, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/dl/DownloadOrder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Lcom/google/android/music/dl/TailStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/stream/StreamRequestHandler;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v14, v15}, Lcom/google/android/music/dl/TailStream;-><init>(Lcom/google/android/music/dl/DownloadOrder;J)V

    const/16 v20, 0x0

    invoke-direct/range {v17 .. v20}, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/google/android/music/dl/stream/StreamRequestHandler$1;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 140
    if-eqz v16, :cond_290

    .line 141
    const/16 v17, 0xce

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto/16 :goto_bc

    .line 143
    :cond_290
    const/16 v17, 0xc8

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto/16 :goto_bc
.end method
