.class public Lorg/columba/ristretto/pop3/POP3InputStream;
.super Ljava/io/FilterInputStream;
.source "POP3InputStream.java"


# static fields
.field private static final RETR_BUFFER_SIZE:I = 0x400

.field private static final sizePattern:Ljava/util/regex/Pattern;


# instance fields
.field private lineBuffer:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const-string v0, "(\\d+) octets"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/pop3/POP3InputStream;->sizePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/pop3/POP3InputStream;->lineBuffer:Ljava/lang/StringBuffer;

    .line 72
    return-void
.end method

.method private readLineInBuffer()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3InputStream;->lineBuffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/columba/ristretto/pop3/POP3InputStream;->lineBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 150
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 152
    .local v0, read:I
    :goto_12
    const/16 v1, 0xd

    if-eq v0, v1, :cond_26

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    .line 153
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3InputStream;->lineBuffer:Ljava/lang/StringBuffer;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 154
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_12

    .line 156
    :cond_26
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3InputStream;->lineBuffer:Ljava/lang/StringBuffer;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 159
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 160
    const/16 v1, 0xa

    if-eq v0, v1, :cond_3c

    new-instance v1, Lorg/columba/ristretto/io/ConnectionDroppedException;

    invoke-direct {v1}, Lorg/columba/ristretto/io/ConnectionDroppedException;-><init>()V

    throw v1

    .line 161
    :cond_3c
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3InputStream;->lineBuffer:Ljava/lang/StringBuffer;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 162
    return-void
.end method


# virtual methods
.method public asyncDownload(ILorg/columba/ristretto/concurrency/Mutex;)Ljava/io/InputStream;
    .registers 4
    .parameter "size"
    .parameter "mutex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lorg/columba/ristretto/pop3/POP3MultiLineStream;

    invoke-direct {v0, p0, p1}, Lorg/columba/ristretto/pop3/POP3MultiLineStream;-><init>(Ljava/io/InputStream;I)V

    invoke-static {v0, p1, p2}, Lorg/columba/ristretto/pop3/POP3DownloadThread;->asyncDownload(Ljava/io/InputStream;ILorg/columba/ristretto/concurrency/Mutex;)Lorg/columba/ristretto/io/AsyncInputStream;

    move-result-object v0

    return-object v0
.end method

.method public readMultiLineResponse()Lorg/columba/ristretto/pop3/POP3Response;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/columba/ristretto/pop3/POP3InputStream;->readSingleLineResponse()Lorg/columba/ristretto/pop3/POP3Response;

    move-result-object v2

    .line 131
    .local v2, response:Lorg/columba/ristretto/pop3/POP3Response;
    invoke-virtual {v2}, Lorg/columba/ristretto/pop3/POP3Response;->isOK()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 132
    const/4 v3, -0x1

    .line 134
    .local v3, size:I
    sget-object v4, Lorg/columba/ristretto/pop3/POP3InputStream;->sizePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Lorg/columba/ristretto/pop3/POP3Response;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 135
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 136
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 139
    :cond_24
    new-instance v1, Lorg/columba/ristretto/pop3/POP3MultiLineStream;

    invoke-direct {v1, p0, v3}, Lorg/columba/ristretto/pop3/POP3MultiLineStream;-><init>(Ljava/io/InputStream;I)V

    .line 140
    .local v1, multiLineStream:Lorg/columba/ristretto/pop3/POP3MultiLineStream;
    const/4 v4, -0x1

    invoke-static {v1, v4}, Lorg/columba/ristretto/io/TempSourceFactory;->createTempSource(Ljava/io/InputStream;I)Lorg/columba/ristretto/io/Source;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/columba/ristretto/pop3/POP3Response;->setData(Lorg/columba/ristretto/io/Source;)V

    .line 143
    .end local v0           #matcher:Ljava/util/regex/Matcher;
    .end local v1           #multiLineStream:Lorg/columba/ristretto/pop3/POP3MultiLineStream;
    .end local v3           #size:I
    :cond_31
    return-object v2
.end method

.method public readSingleLineResponse()Lorg/columba/ristretto/pop3/POP3Response;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/columba/ristretto/pop3/POP3InputStream;->readLineInBuffer()V

    .line 86
    :try_start_3
    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3InputStream;->lineBuffer:Ljava/lang/StringBuffer;

    invoke-static {v2}, Lorg/columba/ristretto/pop3/parser/POP3ResponseParser;->parse(Ljava/lang/CharSequence;)Lorg/columba/ristretto/pop3/POP3Response;
    :try_end_8
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_3 .. :try_end_8} :catch_a

    move-result-object v1

    .line 88
    .local v1, response:Lorg/columba/ristretto/pop3/POP3Response;
    return-object v1

    .line 89
    .end local v1           #response:Lorg/columba/ristretto/pop3/POP3Response;
    :catch_a
    move-exception v0

    .line 90
    .local v0, e:Lorg/columba/ristretto/parser/ParserException;
    new-instance v2, Lorg/columba/ristretto/pop3/POP3Exception;

    invoke-virtual {v0}, Lorg/columba/ristretto/parser/ParserException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public syncDownload(I)Ljava/io/InputStream;
    .registers 3
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lorg/columba/ristretto/pop3/POP3MultiLineStream;

    invoke-direct {v0, p0, p1}, Lorg/columba/ristretto/pop3/POP3MultiLineStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method
