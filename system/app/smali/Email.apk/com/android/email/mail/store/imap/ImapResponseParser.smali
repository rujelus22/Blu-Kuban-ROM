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

.field private mListener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;

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
    .line 91
    const/high16 v0, 0x100

    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;-><init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/DiscourseLogger;I)V

    .line 92
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/DiscourseLogger;I)V
    .registers 6
    .parameter "in"
    .parameter "discourseLogger"
    .parameter "literalKeepInMemoryThreshold"

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    .line 73
    iput-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mListener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;

    .line 102
    new-instance v0, Lcom/android/email/PeekableInputStream;

    invoke-direct {v0, p1}, Lcom/android/email/PeekableInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mIn:Lcom/android/email/PeekableInputStream;

    .line 103
    iput-object p2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mDiscourseLogger:Lcom/android/email/mail/transport/DiscourseLogger;

    .line 104
    iput p3, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mLiteralKeepInMemoryThreshold:I

    .line 105
    iput-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mListener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;

    .line 107
    return-void
.end method

.method private static newEOSException()Ljava/io/IOException;
    .registers 3

    .prologue
    .line 110
    const-string v0, "End of stream reached"

    .line 111
    .local v0, message:Ljava/lang/String;
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_d

    .line 112
    const-string v1, "Email"

    const-string v2, "End of stream reached"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
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
    .line 218
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_f

    .line 219
    :try_start_4
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_34

    move-result v0

    .line 220
    .local v0, b:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    const/16 v2, 0xa

    if-ne v0, v2, :cond_31

    .line 226
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

    .line 227
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mDiscourseLogger:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-virtual {v2}, Lcom/android/email/mail/transport/DiscourseLogger;->logLastDiscourse()V

    .line 228
    return-void

    .line 218
    .restart local v0       #b:I
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    .end local v0           #b:I
    :catch_34
    move-exception v2

    goto :goto_f
.end method

.method private parseBareString()Lcom/android/email/mail/store/imap/ImapString;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x5d

    const/16 v4, 0x29

    .line 406
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 408
    :goto_a
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v0

    .line 414
    .local v0, ch:I
    if-eq v0, v4, :cond_2c

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_2c

    const/16 v2, 0x20

    if-eq v0, v2, :cond_2c

    if-eq v0, v5, :cond_2c

    const/16 v2, 0x25

    if-eq v0, v2, :cond_2c

    const/16 v2, 0x22

    if-eq v0, v2, :cond_2c

    if-ltz v0, :cond_28

    const/16 v2, 0x1f

    if-le v0, v2, :cond_2c

    :cond_28
    const/16 v2, 0x7f

    if-ne v0, v2, :cond_53

    .line 429
    :cond_2c
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_3c

    .line 430
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "Expected string, none found."

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 432
    :cond_3c
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, s:Ljava/lang/String;
    const-string v2, "NIL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 436
    sget-object v2, Lcom/android/email/mail/store/imap/ImapString;->EMPTY:Lcom/android/email/mail/store/imap/ImapString;

    .line 438
    :goto_4c
    return-object v2

    :cond_4d
    new-instance v2, Lcom/android/email/mail/store/imap/ImapSimpleString;

    invoke-direct {v2, v1}, Lcom/android/email/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    goto :goto_4c

    .line 439
    .end local v1           #s:Ljava/lang/String;
    :cond_53
    const/16 v2, 0x5b

    if-ne v0, v2, :cond_70

    .line 441
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 447
    :cond_70
    const/16 v2, 0x28

    if-ne v0, v2, :cond_8e

    .line 449
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 450
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 454
    :cond_8e
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_a
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

    .line 372
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v0

    .line 377
    .local v0, next:I
    sparse-switch v0, :sswitch_data_40

    .line 395
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseBareString()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v1

    :goto_c
    return-object v1

    .line 379
    :sswitch_d
    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseList(CC)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v1

    goto :goto_c

    .line 381
    :sswitch_16
    const/16 v1, 0x5b

    const/16 v2, 0x5d

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseList(CC)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v1

    goto :goto_c

    .line 383
    :sswitch_1f
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 384
    new-instance v1, Lcom/android/email/mail/store/imap/ImapSimpleString;

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/email/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    goto :goto_c

    .line 386
    :sswitch_2e
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseLiteral()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v1

    goto :goto_c

    .line 388
    :sswitch_33
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 389
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    goto :goto_c

    .line 392
    :sswitch_3c
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    goto :goto_c

    .line 377
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
    .line 462
    :goto_0
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v1

    .line 463
    .local v1, next:I
    if-ne v1, p2, :cond_7

    .line 474
    :cond_6
    return-void

    .line 466
    :cond_7
    const/16 v2, 0x20

    if-eq v1, v2, :cond_15

    .line 472
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseElement()Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v0

    .line 473
    .local v0, el:Lcom/android/email/mail/store/imap/ImapElement;
    if-eqz v0, :cond_6

    .line 476
    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapList;->add(Lcom/android/email/mail/store/imap/ImapElement;)V

    goto :goto_0

    .line 470
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
    .line 481
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 482
    new-instance v0, Lcom/android/email/mail/store/imap/ImapList;

    invoke-direct {v0}, Lcom/android/email/mail/store/imap/ImapList;-><init>()V

    .line 483
    .local v0, list:Lcom/android/email/mail/store/imap/ImapList;
    invoke-direct {p0, v0, p2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseElements(Lcom/android/email/mail/store/imap/ImapList;C)V

    .line 484
    invoke-virtual {p0, p2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 485
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
    .line 489
    const/16 v3, 0x7b

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 492
    const/16 v3, 0x7d

    :try_start_7
    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_e} :catch_1d

    move-result v2

    .line 496
    .local v2, size:I
    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 497
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 498
    if-gez v2, :cond_26

    .line 499
    const/4 v3, 0x0

    .line 512
    :goto_1c
    return-object v3

    .line 493
    .end local v2           #size:I
    :catch_1d
    move-exception v1

    .line 494
    .local v1, nfe:Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const-string v4, "Invalid length in literal"

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 501
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    .restart local v2       #size:I
    :cond_26
    new-instance v0, Lcom/android/email/FixedLengthInputStream;

    iget-object v3, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mIn:Lcom/android/email/PeekableInputStream;

    invoke-direct {v0, v3, v2}, Lcom/android/email/FixedLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 502
    .local v0, in:Lcom/android/email/FixedLengthInputStream;
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 503
    iget v3, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mLiteralKeepInMemoryThreshold:I

    if-le v2, v3, :cond_3f

    .line 504
    new-instance v3, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;

    iget-object v4, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mListener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;

    invoke-direct {v3, v0, v4}, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;-><init>(Lcom/android/email/FixedLengthInputStream;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_1c

    .line 506
    :cond_3f
    new-instance v3, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;

    iget-object v4, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mListener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;

    invoke-direct {v3, v0, v4}, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;-><init>(Lcom/android/email/FixedLengthInputStream;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_1c

    .line 509
    :cond_47
    iget v3, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mLiteralKeepInMemoryThreshold:I

    if-le v2, v3, :cond_51

    .line 510
    new-instance v3, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;

    invoke-direct {v3, v0}, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;-><init>(Lcom/android/email/FixedLengthInputStream;)V

    goto :goto_1c

    .line 512
    :cond_51
    new-instance v3, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;

    invoke-direct {v3, v0}, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;-><init>(Lcom/android/email/FixedLengthInputStream;)V

    goto :goto_1c
.end method

.method private parseResponse()Lcom/android/email/mail/store/imap/ImapResponse;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x5b

    const/16 v9, 0x28

    const/16 v10, 0x20

    .line 281
    const/4 v3, 0x0

    .line 285
    .local v3, responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    :try_start_7
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v0

    .line 286
    .local v0, ch:I
    const/16 v8, 0x2b

    if-ne v0, v8, :cond_30

    .line 287
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 288
    const/16 v8, 0x20

    invoke-virtual {p0, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 289
    new-instance v4, Lcom/android/email/mail/store/imap/ImapResponse;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v4, v8, v9}, Lcom/android/email/mail/store/imap/ImapResponse;-><init>(Ljava/lang/String;Z)V
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_be

    .line 293
    .end local v3           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .local v4, responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    :try_start_1e
    new-instance v8, Lcom/android/email/mail/store/imap/ImapSimpleString;

    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntilEol()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/email/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->add(Lcom/android/email/mail/store/imap/ImapElement;)V
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_a6

    .line 296
    move-object v5, v4

    .line 297
    .local v5, responseToReturn:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v3, 0x0

    .line 362
    .end local v4           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v3       #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    :goto_2c
    if-eqz v3, :cond_2f

    .line 364
    throw v3

    .line 368
    :cond_2f
    return-object v5

    .line 301
    .end local v5           #responseToReturn:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_30
    const/16 v8, 0x2a

    if-ne v0, v8, :cond_88

    .line 302
    const/4 v7, 0x0

    .line 303
    .local v7, tag:Ljava/lang/String;
    :try_start_35
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 304
    const/16 v8, 0x20

    invoke-virtual {p0, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 308
    :goto_3d
    new-instance v4, Lcom/android/email/mail/store/imap/ImapResponse;

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lcom/android/email/mail/store/imap/ImapResponse;-><init>(Ljava/lang/String;Z)V
    :try_end_43
    .catchall {:try_start_35 .. :try_end_43} :catchall_be

    .line 310
    .end local v3           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v4       #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    :try_start_43
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseBareString()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v1

    .line 311
    .local v1, firstString:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual {v4, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->add(Lcom/android/email/mail/store/imap/ImapElement;)V

    .line 317
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v8

    if-ne v8, v10, :cond_b3

    .line 318
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 320
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isStatusResponse()Z

    move-result v8

    if-eqz v8, :cond_ae

    .line 324
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v2

    .line 331
    .local v2, next:I
    if-ne v2, v11, :cond_8f

    .line 332
    const/16 v8, 0x5b

    const/16 v9, 0x5d

    invoke-direct {p0, v8, v9}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseList(CC)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->add(Lcom/android/email/mail/store/imap/ImapElement;)V

    .line 333
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v8

    if-ne v8, v10, :cond_73

    .line 334
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 344
    :cond_73
    :goto_73
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntilEol()Ljava/lang/String;

    move-result-object v6

    .line 345
    .local v6, rest:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_85

    .line 347
    new-instance v8, Lcom/android/email/mail/store/imap/ImapSimpleString;

    invoke-direct {v8, v6}, Lcom/android/email/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->add(Lcom/android/email/mail/store/imap/ImapElement;)V
    :try_end_85
    .catchall {:try_start_43 .. :try_end_85} :catchall_a6

    .line 358
    .end local v2           #next:I
    .end local v6           #rest:Ljava/lang/String;
    :cond_85
    :goto_85
    move-object v5, v4

    .line 359
    .restart local v5       #responseToReturn:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v3, 0x0

    .end local v4           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v3       #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    goto :goto_2c

    .line 306
    .end local v1           #firstString:Lcom/android/email/mail/store/imap/ImapString;
    .end local v5           #responseToReturn:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v7           #tag:Ljava/lang/String;
    :cond_88
    const/16 v8, 0x20

    :try_start_8a
    invoke-virtual {p0, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_be

    move-result-object v7

    .restart local v7       #tag:Ljava/lang/String;
    goto :goto_3d

    .line 338
    .end local v3           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v1       #firstString:Lcom/android/email/mail/store/imap/ImapString;
    .restart local v2       #next:I
    .restart local v4       #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_8f
    if-ne v2, v9, :cond_73

    .line 339
    const/16 v8, 0x28

    const/16 v9, 0x29

    :try_start_95
    invoke-direct {p0, v8, v9}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseList(CC)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->add(Lcom/android/email/mail/store/imap/ImapElement;)V

    .line 340
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v8

    if-ne v8, v10, :cond_73

    .line 341
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I
    :try_end_a5
    .catchall {:try_start_95 .. :try_end_a5} :catchall_a6

    goto :goto_73

    .line 362
    .end local v1           #firstString:Lcom/android/email/mail/store/imap/ImapString;
    .end local v2           #next:I
    .end local v7           #tag:Ljava/lang/String;
    :catchall_a6
    move-exception v8

    move-object v3, v4

    .end local v0           #ch:I
    .end local v4           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v3       #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    :goto_a8
    if-eqz v3, :cond_ad

    .line 364
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapResponse;->destroy()V

    :cond_ad
    throw v8

    .line 350
    .end local v3           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v0       #ch:I
    .restart local v1       #firstString:Lcom/android/email/mail/store/imap/ImapString;
    .restart local v4       #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v7       #tag:Ljava/lang/String;
    :cond_ae
    const/4 v8, 0x0

    :try_start_af
    invoke-direct {p0, v4, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseElements(Lcom/android/email/mail/store/imap/ImapList;C)V

    goto :goto_85

    .line 353
    :cond_b3
    const/16 v8, 0xd

    invoke-virtual {p0, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 354
    const/16 v8, 0xa

    invoke-virtual {p0, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V
    :try_end_bd
    .catchall {:try_start_af .. :try_end_bd} :catchall_a6

    goto :goto_85

    .line 362
    .end local v0           #ch:I
    .end local v1           #firstString:Lcom/android/email/mail/store/imap/ImapString;
    .end local v4           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v7           #tag:Ljava/lang/String;
    .restart local v3       #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    :catchall_be
    move-exception v8

    goto :goto_a8
.end method

.method private peek()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mIn:Lcom/android/email/PeekableInputStream;

    invoke-virtual {v1}, Lcom/android/email/PeekableInputStream;->peek()I

    move-result v0

    .line 124
    .local v0, next:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 125
    invoke-static {}, Lcom/android/email/mail/store/imap/ImapResponseParser;->newEOSException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 127
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
    .line 137
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mIn:Lcom/android/email/PeekableInputStream;

    invoke-virtual {v1}, Lcom/android/email/PeekableInputStream;->read()I

    move-result v0

    .line 138
    .local v0, next:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 139
    invoke-static {}, Lcom/android/email/mail/store/imap/ImapResponseParser;->newEOSException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 141
    :cond_e
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mDiscourseLogger:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-virtual {v1, v0}, Lcom/android/email/mail/transport/DiscourseLogger;->addReceivedByte(I)V

    .line 142
    return v0
.end method


# virtual methods
.method public destroyResponses()V
    .registers 4

    .prologue
    .line 152
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mListener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;

    .line 153
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 154
    .local v1, r:Lcom/android/email/mail/store/imap/ImapResponse;
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->destroy()V

    goto :goto_9

    .line 156
    .end local v1           #r:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_19
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 157
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
    .line 235
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v0

    .line 236
    .local v0, next:I
    if-eq p1, v0, :cond_32

    .line 237
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

    .line 240
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
    .line 172
    const/4 v1, 0x0

    .line 174
    .local v1, response:Lcom/android/email/mail/store/imap/ImapResponse;
    :try_start_1
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v1

    .line 175
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_25

    .line 176
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

    .line 191
    :cond_25
    const/4 v2, 0x0

    const-string v3, "BYE"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 192
    const-string v2, "Email"

    const-string v3, "Received BYE"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->destroy()V

    .line 194
    new-instance v2, Lcom/android/email/mail/store/imap/ImapResponseParser$ByeException;

    invoke-direct {v2}, Lcom/android/email/mail/store/imap/ImapResponseParser$ByeException;-><init>()V

    throw v2

    .line 179
    :catch_3e
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->onParseError(Ljava/lang/Exception;)V

    .line 182
    throw v0

    .line 183
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_43
    move-exception v0

    .line 185
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->onParseError(Ljava/lang/Exception;)V

    .line 186
    throw v0

    .line 196
    .end local v0           #e:Ljava/io/IOException;
    :cond_48
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    return-object v1
.end method

.method public readResponse(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/email/mail/store/imap/ImapResponse;
    .registers 3
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mListener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;

    .line 203
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    return-object v0
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
    .line 248
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 250
    :goto_6
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v0

    .line 251
    .local v0, ch:I
    if-eq v0, p1, :cond_13

    .line 252
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 254
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
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 263
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, ret:Ljava/lang/String;
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 265
    return-object v0
.end method
