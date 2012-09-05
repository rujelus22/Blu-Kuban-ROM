.class public Lorg/columba/ristretto/imap/IMAPInputStream;
.super Ljava/io/FilterInputStream;
.source "IMAPInputStream.java"


# static fields
.field private static final literalPattern:Ljava/util/regex/Pattern;


# instance fields
.field private lineBuffer:Ljava/lang/StringBuffer;

.field private literalMatcher:Ljava/util/regex/Matcher;

.field private mutex:Lorg/columba/ristretto/concurrency/Mutex;

.field private observerList:Ljava/util/LinkedList;

.field private protocol:Lorg/columba/ristretto/imap/IMAPProtocol;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const-string v0, "\\{(\\d+)\\}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/imap/IMAPInputStream;->literalPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/columba/ristretto/imap/IMAPProtocol;)V
    .registers 5
    .parameter "in"
    .parameter "protocol"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 87
    sget-object v0, Lorg/columba/ristretto/imap/IMAPInputStream;->literalPattern:Ljava/util/regex/Pattern;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->literalMatcher:Ljava/util/regex/Matcher;

    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->lineBuffer:Ljava/lang/StringBuffer;

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->observerList:Ljava/util/LinkedList;

    .line 91
    new-instance v0, Lorg/columba/ristretto/concurrency/Mutex;

    invoke-direct {v0}, Lorg/columba/ristretto/concurrency/Mutex;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    .line 93
    iput-object p2, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->protocol:Lorg/columba/ristretto/imap/IMAPProtocol;

    .line 94
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
    .line 248
    iget-object v1, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->lineBuffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->lineBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 250
    iget-object v1, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 252
    .local v0, read:I
    :goto_12
    const/16 v1, 0xd

    if-eq v0, v1, :cond_26

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    .line 253
    iget-object v1, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->lineBuffer:Ljava/lang/StringBuffer;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 254
    iget-object v1, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_12

    .line 256
    :cond_26
    iget-object v1, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->lineBuffer:Ljava/lang/StringBuffer;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 259
    iget-object v1, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 260
    const/16 v1, 0xa

    if-eq v0, v1, :cond_3c

    .line 261
    new-instance v1, Lorg/columba/ristretto/io/ConnectionDroppedException;

    invoke-direct {v1}, Lorg/columba/ristretto/io/ConnectionDroppedException;-><init>()V

    throw v1

    .line 262
    :cond_3c
    iget-object v1, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->lineBuffer:Ljava/lang/StringBuffer;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 263
    return-void
.end method


# virtual methods
.method public hasUnsolicitedReponse()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v1, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v1}, Lorg/columba/ristretto/concurrency/Mutex;->lock()V

    .line 278
    :try_start_5
    iget-object v1, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_16

    move-result v1

    if-lez v1, :cond_14

    const/4 v0, 0x1

    .line 280
    .local v0, result:Z
    :goto_e
    iget-object v1, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v1}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 282
    return v0

    .line 278
    .end local v0           #result:Z
    :cond_14
    const/4 v0, 0x0

    goto :goto_e

    .line 280
    :catchall_16
    move-exception v1

    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v2}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    throw v1
.end method

.method public readBodyNonBlocking()Ljava/io/InputStream;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v8, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v8}, Lorg/columba/ristretto/concurrency/Mutex;->lock()V

    .line 108
    const/4 v2, 0x0

    .line 113
    .local v2, dontrelease:Z
    :try_start_6
    invoke-direct {p0}, Lorg/columba/ristretto/imap/IMAPInputStream;->readLineInBuffer()V

    .line 114
    iget-object v8, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->lineBuffer:Ljava/lang/StringBuffer;

    invoke-static {v8}, Lorg/columba/ristretto/imap/parser/IMAPResponseParser;->parse(Ljava/lang/CharSequence;)Lorg/columba/ristretto/imap/IMAPResponse;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_2c
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_6 .. :try_end_e} :catch_35

    move-result-object v5

    .line 120
    .local v5, response:Lorg/columba/ristretto/imap/IMAPResponse;
    :try_start_f
    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->isTagged()Z

    move-result v8

    if-eqz v8, :cond_3c

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->isBAD()Z

    move-result v8

    if-nez v8, :cond_21

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->isNO()Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 121
    :cond_21
    iget-object v8, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v8}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 122
    new-instance v8, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v8, v5}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Lorg/columba/ristretto/imap/IMAPResponse;)V

    throw v8
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_2c

    .line 185
    .end local v5           #response:Lorg/columba/ristretto/imap/IMAPResponse;
    :catchall_2c
    move-exception v8

    if-nez v2, :cond_34

    .line 186
    iget-object v9, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v9}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    :cond_34
    throw v8

    .line 115
    :catch_35
    move-exception v3

    .line 116
    .local v3, e:Lorg/columba/ristretto/parser/ParserException;
    :try_start_36
    new-instance v8, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v8, v3}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 128
    .end local v3           #e:Lorg/columba/ristretto/parser/ParserException;
    .restart local v5       #response:Lorg/columba/ristretto/imap/IMAPResponse;
    :cond_3c
    :goto_3c
    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->isTagged()Z

    move-result v8

    if-nez v8, :cond_76

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseSubType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "FETCH"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_76

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    const-string v9, "BODY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_76

    .line 129
    iget-object v8, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->protocol:Lorg/columba/ristretto/imap/IMAPProtocol;

    invoke-virtual {v8, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V
    :try_end_60
    .catchall {:try_start_36 .. :try_end_60} :catchall_2c

    .line 132
    :try_start_60
    invoke-direct {p0}, Lorg/columba/ristretto/imap/IMAPInputStream;->readLineInBuffer()V

    .line 133
    iget-object v8, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->lineBuffer:Ljava/lang/StringBuffer;

    invoke-static {v8}, Lorg/columba/ristretto/imap/parser/IMAPResponseParser;->parse(Ljava/lang/CharSequence;)Lorg/columba/ristretto/imap/IMAPResponse;
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_2c
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_60 .. :try_end_68} :catch_6a

    move-result-object v5

    goto :goto_3c

    .line 134
    :catch_6a
    move-exception v3

    .line 135
    .restart local v3       #e:Lorg/columba/ristretto/parser/ParserException;
    :try_start_6b
    iget-object v8, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v8}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 136
    new-instance v8, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v8, v3}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 141
    .end local v3           #e:Lorg/columba/ristretto/parser/ParserException;
    :cond_76
    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->isTagged()Z

    move-result v8

    if-eqz v8, :cond_93

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->isBAD()Z

    move-result v8

    if-nez v8, :cond_88

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->isNO()Z

    move-result v8

    if-eqz v8, :cond_93

    .line 142
    :cond_88
    iget-object v8, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v8}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 143
    new-instance v8, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v8, v5}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Lorg/columba/ristretto/imap/IMAPResponse;)V

    throw v8

    .line 147
    :cond_93
    iget-object v8, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->literalMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 150
    iget-object v8, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->literalMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_be

    .line 153
    iget-object v8, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->literalMatcher:Ljava/util/regex/Matcher;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 155
    .local v7, size:I
    iget-object v8, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-static {p0, v7, v8}, Lorg/columba/ristretto/imap/IMAPDownloadThread;->asyncDownload(Ljava/io/InputStream;ILorg/columba/ristretto/concurrency/Mutex;)Lorg/columba/ristretto/io/AsyncInputStream;
    :try_end_b4
    .catchall {:try_start_6b .. :try_end_b4} :catchall_2c

    move-result-object v6

    .line 157
    .local v6, result:Lorg/columba/ristretto/io/AsyncInputStream;
    const/4 v2, 0x1

    .line 185
    if-nez v2, :cond_bd

    .line 186
    iget-object v8, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v8}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .end local v6           #result:Lorg/columba/ristretto/io/AsyncInputStream;
    .end local v7           #size:I
    :cond_bd
    :goto_bd
    return-object v6

    .line 161
    :cond_be
    :try_start_be
    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/columba/ristretto/imap/parser/MessageAttributeParser;->parse(Ljava/lang/String;)Lorg/columba/ristretto/message/Attributes;

    move-result-object v0

    .line 163
    .local v0, attributes:Lorg/columba/ristretto/message/Attributes;
    const-string v8, "BODY"

    invoke-virtual {v0, v8}, Lorg/columba/ristretto/message/Attributes;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    .local v1, body:Ljava/lang/String;
    if-nez v1, :cond_e5

    .line 165
    iget-object v8, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v8}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 166
    new-instance v6, Ljava/io/ByteArrayInputStream;

    const/4 v8, 0x0

    new-array v8, v8, [B

    invoke-direct {v6, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_dd
    .catchall {:try_start_be .. :try_end_dd} :catchall_2c

    .line 185
    if-nez v2, :cond_bd

    .line 186
    iget-object v8, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v8}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    goto :goto_bd

    .line 169
    :cond_e5
    :try_start_e5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_ff

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x22

    if-ne v8, v9, :cond_ff

    .line 170
    const/4 v8, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_fe
    .catchall {:try_start_e5 .. :try_end_fe} :catchall_2c

    move-result-object v1

    .line 175
    :cond_ff
    :try_start_ff
    invoke-direct {p0}, Lorg/columba/ristretto/imap/IMAPInputStream;->readLineInBuffer()V
    :try_end_102
    .catchall {:try_start_ff .. :try_end_102} :catchall_2c
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_102} :catch_117

    .line 181
    :try_start_102
    new-instance v6, Ljava/io/ByteArrayInputStream;

    if-eqz v1, :cond_11e

    const-string v8, "US-ASCII"

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    :goto_10c
    invoke-direct {v6, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_10f
    .catchall {:try_start_102 .. :try_end_10f} :catchall_2c

    .line 185
    if-nez v2, :cond_bd

    .line 186
    iget-object v8, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v8}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    goto :goto_bd

    .line 176
    :catch_117
    move-exception v4

    .line 177
    .local v4, e1:Ljava/io/IOException;
    :try_start_118
    iget-object v8, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v8}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 178
    throw v4

    .line 181
    .end local v4           #e1:Ljava/io/IOException;
    :cond_11e
    const/4 v8, 0x0

    new-array v8, v8, [B
    :try_end_121
    .catchall {:try_start_118 .. :try_end_121} :catchall_2c

    goto :goto_10c
.end method

.method public readResponse()Lorg/columba/ristretto/imap/IMAPResponse;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v6, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v6}, Lorg/columba/ristretto/concurrency/Mutex;->lock()V

    .line 205
    :try_start_5
    invoke-direct {p0}, Lorg/columba/ristretto/imap/IMAPInputStream;->readLineInBuffer()V

    .line 206
    iget-object v6, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->lineBuffer:Ljava/lang/StringBuffer;

    invoke-static {v6}, Lorg/columba/ristretto/imap/parser/IMAPResponseParser;->parse(Ljava/lang/CharSequence;)Lorg/columba/ristretto/imap/IMAPResponse;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_94
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_5 .. :try_end_d} :catch_8d

    move-result-object v4

    .line 211
    .local v4, response:Lorg/columba/ristretto/imap/IMAPResponse;
    :try_start_e
    iget-object v6, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->literalMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 212
    const/4 v1, 0x0

    .local v1, literalIndex:I
    move v2, v1

    .line 213
    .end local v1           #literalIndex:I
    .local v2, literalIndex:I
    :goto_19
    iget-object v6, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->literalMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 215
    iget-object v6, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->literalMatcher:Ljava/util/regex/Matcher;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 219
    .local v3, literalSize:I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->literalMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x7b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    add-int/lit8 v1, v2, 0x1

    .end local v2           #literalIndex:I
    .restart local v1       #literalIndex:I
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x7d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/columba/ristretto/imap/IMAPResponse;->setResponseMessage(Ljava/lang/String;)V

    .line 224
    invoke-static {p0, v3}, Lorg/columba/ristretto/io/TempSourceFactory;->createTempSource(Ljava/io/InputStream;I)Lorg/columba/ristretto/io/Source;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/columba/ristretto/imap/IMAPResponse;->addLiteral(Lorg/columba/ristretto/io/Source;)V

    .line 228
    invoke-direct {p0}, Lorg/columba/ristretto/imap/IMAPInputStream;->readLineInBuffer()V

    .line 229
    iget-object v6, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->lineBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, restresponse:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 232
    invoke-virtual {v4, v5}, Lorg/columba/ristretto/imap/IMAPResponse;->appendResponseText(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_8b

    .line 236
    iget-object v6, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->literalMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    :cond_8b
    move v2, v1

    .line 238
    .end local v1           #literalIndex:I
    .restart local v2       #literalIndex:I
    goto :goto_19

    .line 207
    .end local v2           #literalIndex:I
    .end local v3           #literalSize:I
    .end local v4           #response:Lorg/columba/ristretto/imap/IMAPResponse;
    .end local v5           #restresponse:Ljava/lang/String;
    :catch_8d
    move-exception v0

    .line 208
    .local v0, e:Lorg/columba/ristretto/parser/ParserException;
    new-instance v6, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v6, v0}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_94
    .catchall {:try_start_e .. :try_end_94} :catchall_94

    .line 241
    .end local v0           #e:Lorg/columba/ristretto/parser/ParserException;
    :catchall_94
    move-exception v6

    iget-object v7, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v7}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    throw v6

    .restart local v2       #literalIndex:I
    .restart local v4       #response:Lorg/columba/ristretto/imap/IMAPResponse;
    :cond_9b
    iget-object v6, p0, Lorg/columba/ristretto/imap/IMAPInputStream;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v6}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 243
    return-object v4
.end method
