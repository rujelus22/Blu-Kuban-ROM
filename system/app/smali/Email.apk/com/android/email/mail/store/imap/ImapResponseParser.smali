.class public Lcom/android/email/mail/store/imap/ImapResponseParser;
.super Ljava/lang/Object;
.source "ImapResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/imap/ImapResponseParser$ByeException;
    }
.end annotation


# instance fields
.field private final mBufferReadUntil:Ljava/lang/StringBuilder;

.field private final mDiscourseLogger:Lcom/android/email/mail/transport/DiscourseLogger;

.field private final mIn:Lcom/android/email/PeekableInputStream;

.field private final mLiteralKeepInMemoryThreshold:I

.field private final mParseBareString:Ljava/lang/StringBuilder;

.field private final mResponsesToDestroy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/DiscourseLogger;)V
    .registers 4
    .parameter "in"
    .parameter "discourseLogger"

    .prologue
    .line 84
    const/high16 v0, 0x20

    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;-><init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/DiscourseLogger;I)V

    .line 85
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/DiscourseLogger;I)V
    .registers 5
    .parameter "in"
    .parameter "discourseLogger"
    .parameter "literalKeepInMemoryThreshold"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Lcom/android/email/PeekableInputStream;

    invoke-direct {v0, p1}, Lcom/android/email/PeekableInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mIn:Lcom/android/email/PeekableInputStream;

    .line 96
    iput-object p2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mDiscourseLogger:Lcom/android/email/mail/transport/DiscourseLogger;

    .line 97
    iput p3, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mLiteralKeepInMemoryThreshold:I

    .line 98
    return-void
.end method

.method private static newEOSException()Ljava/io/IOException;
    .registers 3

    .prologue
    .line 101
    const-string v0, "End of stream reached"

    .line 102
    .local v0, message:Ljava/lang/String;
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_d

    .line 103
    const-string v1, "Email"

    const-string v2, "End of stream reached"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_d
    new-instance v1, Ljava/io/IOException;

    const-string v2, "End of stream reached"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private onParseError(Ljava/lang/Exception;)V
    .registers 7
    .parameter "e"

    .prologue
    .line 196
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_f

    .line 197
    :try_start_4
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_34

    move-result v0

    .line 198
    .local v0, b:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    const/16 v2, 0xa

    if-ne v0, v2, :cond_31

    .line 204
    .end local v0           #b:I
    :cond_f
    :goto_f
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mDiscourseLogger:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-virtual {v2}, Lcom/android/email/mail/transport/DiscourseLogger;->logLastDiscourse()V

    .line 206
    return-void

    .line 196
    .restart local v0       #b:I
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 202
    .end local v0           #b:I
    :catch_34
    move-exception v2

    goto :goto_f
.end method

.method private parseBareString()Lcom/android/email/mail/store/imap/ImapString;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x5d

    .line 364
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 366
    :goto_8
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v0

    .line 369
    .local v0, ch:I
    const/16 v2, 0x28

    if-eq v0, v2, :cond_30

    const/16 v2, 0x29

    if-eq v0, v2, :cond_30

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_30

    const/16 v2, 0x20

    if-eq v0, v2, :cond_30

    if-eq v0, v4, :cond_30

    const/16 v2, 0x25

    if-eq v0, v2, :cond_30

    const/16 v2, 0x22

    if-eq v0, v2, :cond_30

    if-ltz v0, :cond_2c

    const/16 v2, 0x1f

    if-le v0, v2, :cond_30

    :cond_2c
    const/16 v2, 0x7f

    if-ne v0, v2, :cond_57

    .line 381
    :cond_30
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_40

    .line 382
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "Expected string, none found."

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 384
    :cond_40
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, s:Ljava/lang/String;
    const-string v2, "NIL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 388
    sget-object v2, Lcom/android/email/mail/store/imap/ImapString;->EMPTY:Lcom/android/email/mail/store/imap/ImapString;

    .line 390
    :goto_50
    return-object v2

    :cond_51
    new-instance v2, Lcom/android/email/mail/store/imap/ImapSimpleString;

    invoke-direct {v2, v1}, Lcom/android/email/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    goto :goto_50

    .line 391
    .end local v1           #s:Ljava/lang/String;
    :cond_57
    const/16 v2, 0x5b

    if-ne v0, v2, :cond_74

    .line 393
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 397
    :cond_74
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8
.end method

.method private parseElement()Lcom/android/email/mail/store/imap/ImapElement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 331
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v0

    .line 332
    .local v0, next:I
    sparse-switch v0, :sswitch_data_40

    .line 350
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseBareString()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v1

    :goto_c
    return-object v1

    .line 334
    :sswitch_d
    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseList(CC)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v1

    goto :goto_c

    .line 336
    :sswitch_16
    const/16 v1, 0x5b

    const/16 v2, 0x5d

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseList(CC)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v1

    goto :goto_c

    .line 338
    :sswitch_1f
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 339
    new-instance v1, Lcom/android/email/mail/store/imap/ImapSimpleString;

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/email/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    goto :goto_c

    .line 341
    :sswitch_2e
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseLiteral()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v1

    goto :goto_c

    .line 343
    :sswitch_33
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 344
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    goto :goto_c

    .line 347
    :sswitch_3c
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    goto :goto_c

    .line 332
    :sswitch_data_40
    .sparse-switch
        0xa -> :sswitch_3c
        0xd -> :sswitch_33
        0x22 -> :sswitch_1f
        0x28 -> :sswitch_d
        0x5b -> :sswitch_16
        0x7b -> :sswitch_2e
    .end sparse-switch
.end method

.method private parseElements(Lcom/android/email/mail/store/imap/ImapList;C)V
    .registers 6
    .parameter "list"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 406
    :goto_0
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v1

    .line 407
    .local v1, next:I
    if-ne v1, p2, :cond_7

    .line 418
    :cond_6
    return-void

    .line 410
    :cond_7
    const/16 v2, 0x20

    if-eq v1, v2, :cond_15

    .line 416
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseElement()Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v0

    .line 417
    .local v0, el:Lcom/android/email/mail/store/imap/ImapElement;
    if-eqz v0, :cond_6

    .line 420
    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapList;->add(Lcom/android/email/mail/store/imap/ImapElement;)V

    goto :goto_0

    .line 414
    .end local v0           #el:Lcom/android/email/mail/store/imap/ImapElement;
    :cond_15
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    goto :goto_0
.end method

.method private parseList(CC)Lcom/android/email/mail/store/imap/ImapList;
    .registers 4
    .parameter "opening"
    .parameter "closing"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 427
    new-instance v0, Lcom/android/email/mail/store/imap/ImapList;

    invoke-direct {v0}, Lcom/android/email/mail/store/imap/ImapList;-><init>()V

    .line 428
    .local v0, list:Lcom/android/email/mail/store/imap/ImapList;
    invoke-direct {p0, v0, p2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseElements(Lcom/android/email/mail/store/imap/ImapList;C)V

    .line 429
    invoke-virtual {p0, p2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 430
    return-object v0
.end method

.method private parseLiteral()Lcom/android/email/mail/store/imap/ImapString;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 434
    const/16 v3, 0x7b

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 437
    const/16 v3, 0x7d

    :try_start_7
    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_e} :catch_2a

    move-result v2

    .line 441
    .local v2, size:I
    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 442
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 443
    new-instance v0, Lcom/android/email/FixedLengthInputStream;

    iget-object v3, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mIn:Lcom/android/email/PeekableInputStream;

    invoke-direct {v0, v3, v2}, Lcom/android/email/FixedLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 444
    .local v0, in:Lcom/android/email/FixedLengthInputStream;
    iget v3, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mLiteralKeepInMemoryThreshold:I

    if-le v2, v3, :cond_33

    .line 445
    new-instance v3, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;

    invoke-direct {v3, v0}, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;-><init>(Lcom/android/email/FixedLengthInputStream;)V

    .line 447
    :goto_29
    return-object v3

    .line 438
    .end local v0           #in:Lcom/android/email/FixedLengthInputStream;
    .end local v2           #size:I
    :catch_2a
    move-exception v1

    .line 439
    .local v1, nfe:Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const-string v4, "Invalid length in literal"

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 447
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    .restart local v0       #in:Lcom/android/email/FixedLengthInputStream;
    .restart local v2       #size:I
    :cond_33
    new-instance v3, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;

    invoke-direct {v3, v0}, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;-><init>(Lcom/android/email/FixedLengthInputStream;)V

    goto :goto_29
.end method

.method private parseResponse()Lcom/android/email/mail/store/imap/ImapResponse;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5b

    const/16 v10, 0x20

    .line 255
    const/4 v3, 0x0

    .line 259
    .local v3, responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    :try_start_5
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v0

    .line 260
    .local v0, ch:I
    const/16 v8, 0x2b

    if-ne v0, v8, :cond_30

    .line 261
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 262
    const/16 v8, 0x20

    invoke-virtual {p0, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 263
    new-instance v4, Lcom/android/email/mail/store/imap/ImapResponse;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v4, v8, v9}, Lcom/android/email/mail/store/imap/ImapResponse;-><init>(Ljava/lang/String;Z)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_a7

    .line 266
    .end local v3           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .local v4, responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    :try_start_1c
    new-instance v8, Lcom/android/email/mail/store/imap/ImapSimpleString;

    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntilEol()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/email/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->add(Lcom/android/email/mail/store/imap/ImapElement;)V
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_94

    .line 269
    move-object v5, v4

    .line 270
    .local v5, responseToReturn:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v3, 0x0

    .line 321
    .end local v4           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v3       #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    :goto_2a
    if-eqz v3, :cond_2f

    .line 323
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapResponse;->destroy()V

    .line 327
    :cond_2f
    return-object v5

    .line 274
    .end local v5           #responseToReturn:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_30
    const/16 v8, 0x2a

    if-ne v0, v8, :cond_88

    .line 275
    const/4 v7, 0x0

    .line 276
    .local v7, tag:Ljava/lang/String;
    :try_start_35
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 277
    const/16 v8, 0x20

    invoke-virtual {p0, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 281
    :goto_3d
    new-instance v4, Lcom/android/email/mail/store/imap/ImapResponse;

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lcom/android/email/mail/store/imap/ImapResponse;-><init>(Ljava/lang/String;Z)V
    :try_end_43
    .catchall {:try_start_35 .. :try_end_43} :catchall_a7

    .line 283
    .end local v3           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v4       #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    :try_start_43
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseBareString()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v1

    .line 284
    .local v1, firstString:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual {v4, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->add(Lcom/android/email/mail/store/imap/ImapElement;)V

    .line 289
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v8

    if-ne v8, v10, :cond_9c

    .line 290
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 292
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isStatusResponse()Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 295
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v2

    .line 296
    .local v2, next:I
    if-ne v2, v9, :cond_73

    .line 297
    const/16 v8, 0x5b

    const/16 v9, 0x5d

    invoke-direct {p0, v8, v9}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseList(CC)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->add(Lcom/android/email/mail/store/imap/ImapElement;)V

    .line 298
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v8

    if-ne v8, v10, :cond_73

    .line 299
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 303
    :cond_73
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntilEol()Ljava/lang/String;

    move-result-object v6

    .line 304
    .local v6, rest:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_85

    .line 306
    new-instance v8, Lcom/android/email/mail/store/imap/ImapSimpleString;

    invoke-direct {v8, v6}, Lcom/android/email/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->add(Lcom/android/email/mail/store/imap/ImapElement;)V
    :try_end_85
    .catchall {:try_start_43 .. :try_end_85} :catchall_94

    .line 317
    .end local v2           #next:I
    .end local v6           #rest:Ljava/lang/String;
    :cond_85
    :goto_85
    move-object v5, v4

    .line 318
    .restart local v5       #responseToReturn:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v3, 0x0

    .end local v4           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v3       #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    goto :goto_2a

    .line 279
    .end local v1           #firstString:Lcom/android/email/mail/store/imap/ImapString;
    .end local v5           #responseToReturn:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v7           #tag:Ljava/lang/String;
    :cond_88
    const/16 v8, 0x20

    :try_start_8a
    invoke-virtual {p0, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_a7

    move-result-object v7

    .restart local v7       #tag:Ljava/lang/String;
    goto :goto_3d

    .line 309
    .end local v3           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v1       #firstString:Lcom/android/email/mail/store/imap/ImapString;
    .restart local v4       #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_8f
    const/4 v8, 0x0

    :try_start_90
    invoke-direct {p0, v4, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseElements(Lcom/android/email/mail/store/imap/ImapList;C)V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_94

    goto :goto_85

    .line 321
    .end local v1           #firstString:Lcom/android/email/mail/store/imap/ImapString;
    .end local v7           #tag:Ljava/lang/String;
    :catchall_94
    move-exception v8

    move-object v3, v4

    .end local v0           #ch:I
    .end local v4           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v3       #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    :goto_96
    if-eqz v3, :cond_9b

    .line 323
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapResponse;->destroy()V

    :cond_9b
    throw v8

    .line 312
    .end local v3           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v0       #ch:I
    .restart local v1       #firstString:Lcom/android/email/mail/store/imap/ImapString;
    .restart local v4       #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v7       #tag:Ljava/lang/String;
    :cond_9c
    const/16 v8, 0xd

    :try_start_9e
    invoke-virtual {p0, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 313
    const/16 v8, 0xa

    invoke-virtual {p0, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V
    :try_end_a6
    .catchall {:try_start_9e .. :try_end_a6} :catchall_94

    goto :goto_85

    .line 321
    .end local v0           #ch:I
    .end local v1           #firstString:Lcom/android/email/mail/store/imap/ImapString;
    .end local v4           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v7           #tag:Ljava/lang/String;
    .restart local v3       #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    :catchall_a7
    move-exception v8

    goto :goto_96
.end method

.method private peek()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mIn:Lcom/android/email/PeekableInputStream;

    invoke-virtual {v1}, Lcom/android/email/PeekableInputStream;->peek()I

    move-result v0

    .line 116
    .local v0, next:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 117
    invoke-static {}, Lcom/android/email/mail/store/imap/ImapResponseParser;->newEOSException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 119
    :cond_e
    return v0
.end method

.method private readByte()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mIn:Lcom/android/email/PeekableInputStream;

    invoke-virtual {v1}, Lcom/android/email/PeekableInputStream;->read()I

    move-result v0

    .line 130
    .local v0, next:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 131
    invoke-static {}, Lcom/android/email/mail/store/imap/ImapResponseParser;->newEOSException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 133
    :cond_e
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mDiscourseLogger:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-virtual {v1, v0}, Lcom/android/email/mail/transport/DiscourseLogger;->addReceivedByte(I)V

    .line 134
    return v0
.end method


# virtual methods
.method public destroyResponses()V
    .registers 4

    .prologue
    .line 143
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 144
    .local v1, r:Lcom/android/email/mail/store/imap/ImapResponse;
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->destroy()V

    goto :goto_6

    .line 146
    .end local v1           #r:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_16
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 147
    return-void
.end method

.method expect(C)V
    .registers 8
    .parameter "expected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v0

    .line 214
    .local v0, next:I
    if-eq p1, v0, :cond_32

    .line 215
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Expected %04x (%c) but got %04x (%c)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_32
    return-void
.end method

.method public readResponse()Lcom/android/email/mail/store/imap/ImapResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v1, 0x0

    .line 163
    .local v1, response:Lcom/android/email/mail/store/imap/ImapResponse;
    :try_start_1
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v1

    .line 164
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_25

    .line 165
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_25} :catch_3e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_25} :catch_43

    .line 179
    :cond_25
    const/4 v2, 0x0

    const-string v3, "BYE"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 180
    const-string v2, "Email"

    const-string v3, "Received BYE"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->destroy()V

    .line 182
    new-instance v2, Lcom/android/email/mail/store/imap/ImapResponseParser$ByeException;

    invoke-direct {v2}, Lcom/android/email/mail/store/imap/ImapResponseParser$ByeException;-><init>()V

    throw v2

    .line 168
    :catch_3e
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->onParseError(Ljava/lang/Exception;)V

    .line 171
    throw v0

    .line 172
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_43
    move-exception v0

    .line 174
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->onParseError(Ljava/lang/Exception;)V

    .line 175
    throw v0

    .line 184
    .end local v0           #e:Ljava/io/IOException;
    :cond_48
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    return-object v1
.end method

.method readUntil(C)Ljava/lang/String;
    .registers 5
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 227
    :goto_6
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v0

    .line 228
    .local v0, ch:I
    if-eq v0, p1, :cond_13

    .line 229
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 231
    :cond_13
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method readUntilEol()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, ret:Ljava/lang/String;
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 242
    return-object v0
.end method
