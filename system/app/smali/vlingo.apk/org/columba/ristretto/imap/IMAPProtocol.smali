.class public Lorg/columba/ristretto/imap/IMAPProtocol;
.super Ljava/lang/Object;
.source "IMAPProtocol.java"

# interfaces
.implements Lorg/columba/ristretto/auth/AuthenticationServer;


# static fields
.field public static final AUTHENTICATED:I = 0x2

.field public static final DEFAULT_PORT:I = 0x8f

.field public static final DEFAULT_SSL_PORT:I = 0x3e1

.field public static final LOGOUT:I = 0x0

.field public static final NON_AUTHENTICATED:I = 0x1

.field public static final NOT_CONNECTED:I = 0x0

.field public static final SELECTED:I = 0x3


# instance fields
.field protected host:Ljava/lang/String;

.field private in:Lorg/columba/ristretto/imap/IMAPInputStream;

.field private listeners:Ljava/util/ArrayList;

.field private lock:Ljava/lang/Object;

.field private out:Ljava/io/OutputStream;

.field protected port:I

.field private selectedMailbox:Ljava/lang/String;

.field private socket:Ljava/net/Socket;

.field private state:I

.field private tagFactory:Lorg/columba/ristretto/imap/TagFactory;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "host"
    .parameter "port"

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->host:Ljava/lang/String;

    .line 159
    iput p2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->port:I

    .line 161
    new-instance v0, Lorg/columba/ristretto/imap/TagFactory;

    invoke-direct {v0}, Lorg/columba/ristretto/imap/TagFactory;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->listeners:Ljava/util/ArrayList;

    .line 165
    return-void
.end method

.method private checkState(I)V
    .registers 4
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1717
    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPProtocol;->getState()I

    move-result v0

    if-ge v0, p1, :cond_1a

    .line 1718
    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPProtocol;->getState()I

    move-result v0

    if-nez v0, :cond_12

    .line 1719
    new-instance v0, Lorg/columba/ristretto/imap/IMAPDisconnectedException;

    invoke-direct {v0}, Lorg/columba/ristretto/imap/IMAPDisconnectedException;-><init>()V

    throw v0

    .line 1721
    :cond_12
    new-instance v0, Lorg/columba/ristretto/imap/IMAPException;

    const-string v1, "Wrong state for command"

    invoke-direct {v0, v1}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1724
    :cond_1a
    return-void
.end method

.method private declared-synchronized communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;
    .registers 9
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1664
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lorg/columba/ristretto/config/RistrettoConfig;->getInstance()Lorg/columba/ristretto/config/RistrettoConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/columba/ristretto/config/RistrettoConfig;->isCheckCommandLineLength()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {p1}, Lorg/columba/ristretto/imap/IMAPCommand;->estimateLength()I

    move-result v4

    const/16 v5, 0x3e8

    if-le v4, v5, :cond_1c

    .line 1666
    new-instance v4, Lorg/columba/ristretto/imap/CommmandTooLongException;

    invoke-direct {v4, p1}, Lorg/columba/ristretto/imap/CommmandTooLongException;-><init>(Lorg/columba/ristretto/imap/IMAPCommand;)V

    throw v4
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_19

    .line 1664
    :catchall_19
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1670
    :cond_1c
    :try_start_1c
    iget-object v4, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->in:Lorg/columba/ristretto/imap/IMAPInputStream;

    iget-object v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v4, v5}, Lorg/columba/ristretto/imap/IMAPCommand;->writeToStream(Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_23} :catch_44

    .line 1676
    :try_start_23
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_19

    .line 1680
    .local v3, responses:Ljava/util/List;
    :try_start_28
    iget-object v4, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->in:Lorg/columba/ristretto/imap/IMAPInputStream;

    invoke-virtual {v4}, Lorg/columba/ristretto/imap/IMAPInputStream;->readResponse()Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v2

    .line 1681
    .local v2, response:Lorg/columba/ristretto/imap/IMAPResponse;
    :goto_2e
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPResponse;->isTagged()Z

    move-result v4

    if-nez v4, :cond_4e

    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPResponse;->isBYE()Z

    move-result v4

    if-nez v4, :cond_4e

    .line 1682
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1683
    iget-object v4, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->in:Lorg/columba/ristretto/imap/IMAPInputStream;

    invoke-virtual {v4}, Lorg/columba/ristretto/imap/IMAPInputStream;->readResponse()Lorg/columba/ristretto/imap/IMAPResponse;
    :try_end_42
    .catchall {:try_start_28 .. :try_end_42} :catchall_19
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_42} :catch_49

    move-result-object v2

    goto :goto_2e

    .line 1671
    .end local v2           #response:Lorg/columba/ristretto/imap/IMAPResponse;
    .end local v3           #responses:Ljava/util/List;
    :catch_44
    move-exception v1

    .line 1672
    .local v1, e1:Ljava/io/IOException;
    const/4 v4, 0x0

    :try_start_46
    iput v4, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    .line 1673
    throw v1

    .line 1685
    .end local v1           #e1:Ljava/io/IOException;
    .restart local v3       #responses:Ljava/util/List;
    :catch_49
    move-exception v0

    .line 1686
    .local v0, e:Ljava/io/IOException;
    const/4 v4, 0x0

    iput v4, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    .line 1687
    throw v0

    .line 1690
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #response:Lorg/columba/ristretto/imap/IMAPResponse;
    :cond_4e
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPResponse;->isTagged()Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 1691
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPResponse;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/columba/ristretto/imap/IMAPCommand;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9b

    .line 1692
    new-instance v4, Lorg/columba/ristretto/imap/IMAPException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Tag mismatch"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPResponse;->getSource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ". Expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lorg/columba/ristretto/imap/IMAPCommand;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " but is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPResponse;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1697
    :cond_9b
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1699
    const/4 v4, 0x0

    new-array v4, v4, [Lorg/columba/ristretto/imap/IMAPResponse;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/columba/ristretto/imap/IMAPResponse;

    check-cast v4, [Lorg/columba/ristretto/imap/IMAPResponse;
    :try_end_a9
    .catchall {:try_start_46 .. :try_end_a9} :catchall_19

    monitor-exit p0

    return-object v4
.end method

.method private copyCore(Ljava/lang/String;Lorg/columba/ristretto/imap/SequenceSet;Ljava/lang/String;)Lorg/columba/ristretto/imap/CopyInfo;
    .registers 13
    .parameter "c"
    .parameter "set"
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1505
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 1507
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    invoke-static {p3}, Lorg/columba/ristretto/imap/MailboxNameUTF7Converter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, v5, p1, v6}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1510
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v3

    .line 1513
    .local v3, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_21
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_2e

    .line 1514
    aget-object v5, v3, v2

    invoke-virtual {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 1513
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1518
    :cond_2e
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v5

    if-nez v5, :cond_41

    .line 1519
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 1521
    :cond_41
    const/4 v4, 0x0

    .line 1522
    .local v4, result:Lorg/columba/ristretto/imap/CopyInfo;
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseTextCode()Lorg/columba/ristretto/imap/ResponseTextCode;

    move-result-object v5

    if-eqz v5, :cond_56

    .line 1524
    :try_start_4d
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Lorg/columba/ristretto/imap/parser/CopyInfoParser;->parse(Lorg/columba/ristretto/imap/IMAPResponse;)Lorg/columba/ristretto/imap/CopyInfo;
    :try_end_55
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_4d .. :try_end_55} :catch_57

    move-result-object v4

    .line 1531
    :cond_56
    return-object v4

    .line 1526
    :catch_57
    move-exception v1

    .line 1527
    .local v1, e1:Lorg/columba/ristretto/parser/ParserException;
    new-instance v5, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v5, v1}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private createStreams()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1703
    sget-object v0, Lorg/columba/ristretto/log/RistrettoLogger;->logStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_28

    .line 1704
    new-instance v0, Lorg/columba/ristretto/imap/IMAPInputStream;

    new-instance v1, Lorg/columba/ristretto/log/LogInputStream;

    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Lorg/columba/ristretto/log/RistrettoLogger;->logStream:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v3}, Lorg/columba/ristretto/log/LogInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-direct {v0, v1, p0}, Lorg/columba/ristretto/imap/IMAPInputStream;-><init>(Ljava/io/InputStream;Lorg/columba/ristretto/imap/IMAPProtocol;)V

    iput-object v0, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->in:Lorg/columba/ristretto/imap/IMAPInputStream;

    .line 1707
    new-instance v0, Lorg/columba/ristretto/log/LogOutputStream;

    iget-object v1, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, Lorg/columba/ristretto/log/RistrettoLogger;->logStream:Ljava/io/OutputStream;

    invoke-direct {v0, v1, v2}, Lorg/columba/ristretto/log/LogOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->out:Ljava/io/OutputStream;

    .line 1714
    :goto_27
    return-void

    .line 1710
    :cond_28
    new-instance v0, Lorg/columba/ristretto/imap/IMAPInputStream;

    iget-object v1, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/columba/ristretto/imap/IMAPInputStream;-><init>(Ljava/io/InputStream;Lorg/columba/ristretto/imap/IMAPProtocol;)V

    iput-object v0, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->in:Lorg/columba/ristretto/imap/IMAPInputStream;

    .line 1712
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->out:Ljava/io/OutputStream;

    goto :goto_27
.end method

.method private fetchBodyCore(Ljava/lang/String;I[Ljava/lang/Integer;)Ljava/io/InputStream;
    .registers 13
    .parameter "c"
    .parameter "id"
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1313
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 1314
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v2}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    new-instance v4, Lorg/columba/ristretto/imap/Section;

    const-string v5, "BODY.PEEK"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p3, v6, v7

    invoke-direct {v4, v5, v6}, Lorg/columba/ristretto/imap/Section;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    aput-object v4, v3, v8

    invoke-direct {v0, v2, p1, v3}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1319
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    :try_start_27
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->in:Lorg/columba/ristretto/imap/IMAPInputStream;

    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2, v3}, Lorg/columba/ristretto/imap/IMAPCommand;->writeToStream(Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2e} :catch_35

    .line 1325
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->in:Lorg/columba/ristretto/imap/IMAPInputStream;

    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPInputStream;->readBodyNonBlocking()Ljava/io/InputStream;

    move-result-object v2

    return-object v2

    .line 1320
    :catch_35
    move-exception v1

    .line 1321
    .local v1, e:Ljava/io/IOException;
    iput v7, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    .line 1322
    throw v1
.end method

.method private fetchBodystructureCore(Ljava/lang/String;I)Lorg/columba/ristretto/message/MimeTree;
    .registers 12
    .parameter "c"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1358
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 1359
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "BODYSTRUCTURE"

    aput-object v8, v6, v7

    invoke-direct {v0, v5, p1, v6}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1362
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v3

    .line 1364
    .local v3, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    const/4 v4, 0x0

    .line 1365
    .local v4, result:Lorg/columba/ristretto/message/MimeTree;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_24
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_5c

    .line 1366
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseSubType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FETCH"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    aget-object v5, v3, v2

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BODYSTRUCTURE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_56

    .line 1368
    :try_start_46
    aget-object v5, v3, v2

    invoke-static {v5}, Lorg/columba/ristretto/imap/parser/MimeTreeParser;->parse(Lorg/columba/ristretto/imap/IMAPResponse;)Lorg/columba/ristretto/message/MimeTree;
    :try_end_4b
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_46 .. :try_end_4b} :catch_4f

    move-result-object v4

    .line 1365
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 1369
    :catch_4f
    move-exception v1

    .line 1370
    .local v1, e:Lorg/columba/ristretto/parser/ParserException;
    new-instance v5, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v5, v1}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1373
    .end local v1           #e:Lorg/columba/ristretto/parser/ParserException;
    :cond_56
    aget-object v5, v3, v2

    invoke-virtual {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    goto :goto_4c

    .line 1377
    :cond_5c
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v5

    if-nez v5, :cond_6f

    .line 1378
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 1380
    :cond_6f
    return-object v4
.end method

.method private fetchHeaderCore(Ljava/lang/String;Lorg/columba/ristretto/imap/SequenceSet;)[Lorg/columba/ristretto/imap/IMAPHeader;
    .registers 16
    .parameter "c"
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1255
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 1257
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v11

    new-instance v7, Lorg/columba/ristretto/imap/Section;

    const-string v8, "RFC822.SIZE BODY.PEEK"

    new-array v9, v12, [Ljava/lang/Object;

    const-string v10, "HEADER"

    aput-object v10, v9, v11

    invoke-direct {v7, v8, v9}, Lorg/columba/ristretto/imap/Section;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    aput-object v7, v6, v12

    invoke-direct {v0, v5, p1, v6}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1263
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v3

    .line 1264
    .local v3, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1267
    .local v4, result:Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_32
    :try_start_32
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_6d

    .line 1268
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseSubType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FETCH"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    aget-object v5, v3, v2

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BODY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_60

    .line 1269
    aget-object v5, v3, v2

    invoke-static {v5}, Lorg/columba/ristretto/imap/parser/IMAPHeaderParser;->parse(Lorg/columba/ristretto/imap/IMAPResponse;)Lorg/columba/ristretto/imap/IMAPHeader;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 1271
    :cond_60
    aget-object v5, v3, v2

    invoke-virtual {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V
    :try_end_65
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_32 .. :try_end_65} :catch_66

    goto :goto_5d

    .line 1274
    :catch_66
    move-exception v1

    .line 1275
    .local v1, e:Lorg/columba/ristretto/parser/ParserException;
    new-instance v5, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v5, v1}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1279
    .end local v1           #e:Lorg/columba/ristretto/parser/ParserException;
    :cond_6d
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v5

    if-nez v5, :cond_80

    .line 1280
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 1282
    :cond_80
    new-array v5, v11, [Lorg/columba/ristretto/imap/IMAPHeader;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/columba/ristretto/imap/IMAPHeader;

    check-cast v5, [Lorg/columba/ristretto/imap/IMAPHeader;

    return-object v5
.end method

.method private fetchHeaderFieldsCore(Ljava/lang/String;Lorg/columba/ristretto/imap/SequenceSet;[Ljava/lang/String;)[Lorg/columba/ristretto/imap/IMAPHeader;
    .registers 17
    .parameter "c"
    .parameter "set"
    .parameter "fields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1193
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 1195
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    new-instance v8, Lorg/columba/ristretto/imap/Section;

    const-string v9, "RFC822.SIZE BODY.PEEK"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "HEADER.FIELDS"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p3, v10, v11

    invoke-direct {v8, v9, v10}, Lorg/columba/ristretto/imap/Section;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    aput-object v8, v6, v7

    invoke-direct {v0, v5, p1, v6}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1201
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v3

    .line 1203
    .local v3, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1206
    .local v4, result:Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_37
    :try_start_37
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_72

    .line 1207
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseSubType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FETCH"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    aget-object v5, v3, v2

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BODY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_65

    .line 1209
    aget-object v5, v3, v2

    invoke-static {v5}, Lorg/columba/ristretto/imap/parser/IMAPHeaderParser;->parse(Lorg/columba/ristretto/imap/IMAPResponse;)Lorg/columba/ristretto/imap/IMAPHeader;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    :goto_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 1211
    :cond_65
    aget-object v5, v3, v2

    invoke-virtual {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V
    :try_end_6a
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_37 .. :try_end_6a} :catch_6b

    goto :goto_62

    .line 1214
    :catch_6b
    move-exception v1

    .line 1215
    .local v1, e:Lorg/columba/ristretto/parser/ParserException;
    new-instance v5, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v5, v1}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1219
    .end local v1           #e:Lorg/columba/ristretto/parser/ParserException;
    :cond_72
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v5

    if-nez v5, :cond_85

    .line 1220
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 1222
    :cond_85
    const/4 v5, 0x0

    new-array v5, v5, [Lorg/columba/ristretto/imap/IMAPHeader;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/columba/ristretto/imap/IMAPHeader;

    check-cast v5, [Lorg/columba/ristretto/imap/IMAPHeader;

    return-object v5
.end method

.method private fetchMessageCore(Ljava/lang/String;I)Ljava/io/InputStream;
    .registers 10
    .parameter "c"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1411
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 1412
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v2}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-string v5, "BODY.PEEK[]"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, p1, v3}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1417
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    :try_start_22
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->in:Lorg/columba/ristretto/imap/IMAPInputStream;

    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2, v3}, Lorg/columba/ristretto/imap/IMAPCommand;->writeToStream(Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_29} :catch_30

    .line 1424
    :try_start_29
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->in:Lorg/columba/ristretto/imap/IMAPInputStream;

    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPInputStream;->readBodyNonBlocking()Ljava/io/InputStream;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_34

    move-result-object v2

    return-object v2

    .line 1418
    :catch_30
    move-exception v1

    .line 1419
    .local v1, e:Ljava/io/IOException;
    iput v6, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    .line 1420
    throw v1

    .line 1425
    .end local v1           #e:Ljava/io/IOException;
    :catch_34
    move-exception v1

    .line 1426
    .restart local v1       #e:Ljava/io/IOException;
    iput v6, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    .line 1427
    throw v1
.end method

.method private fetchMimeHeaderSourceCore(Ljava/lang/String;I[Ljava/lang/Integer;)Ljava/io/InputStream;
    .registers 14
    .parameter "c"
    .parameter "id"
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1458
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 1459
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v2}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    new-instance v4, Lorg/columba/ristretto/imap/Section;

    const-string v5, "BODY.PEEK"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p3, v6, v8

    const-string v7, ".MIME"

    aput-object v7, v6, v9

    invoke-direct {v4, v5, v6}, Lorg/columba/ristretto/imap/Section;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    aput-object v4, v3, v9

    invoke-direct {v0, v2, p1, v3}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1466
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    :try_start_2b
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->in:Lorg/columba/ristretto/imap/IMAPInputStream;

    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2, v3}, Lorg/columba/ristretto/imap/IMAPCommand;->writeToStream(Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_32} :catch_39

    .line 1472
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->in:Lorg/columba/ristretto/imap/IMAPInputStream;

    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPInputStream;->readBodyNonBlocking()Ljava/io/InputStream;

    move-result-object v2

    return-object v2

    .line 1467
    :catch_39
    move-exception v1

    .line 1468
    .local v1, e:Ljava/io/IOException;
    iput v8, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    .line 1469
    throw v1
.end method

.method private listCore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lorg/columba/ristretto/imap/ListInfo;
    .registers 14
    .parameter "reference"
    .parameter "mailbox"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/imap/IMAPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x0

    .line 747
    invoke-direct {p0, v6}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 748
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/columba/ristretto/imap/MailboxNameUTF7Converter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-static {p2}, Lorg/columba/ristretto/imap/MailboxNameUTF7Converter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, v5, p3, v6}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 752
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v3

    .line 754
    .local v3, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v5

    if-nez v5, :cond_36

    .line 755
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 757
    :cond_36
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v4, result:Ljava/util/List;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3c
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_66

    .line 760
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseSubType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 762
    :try_start_4d
    aget-object v5, v3, v2

    invoke-static {v5}, Lorg/columba/ristretto/imap/parser/ListInfoParser;->parse(Lorg/columba/ristretto/imap/IMAPResponse;)Lorg/columba/ristretto/imap/ListInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_4d .. :try_end_56} :catch_59

    .line 759
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 763
    :catch_59
    move-exception v1

    .line 764
    .local v1, e:Lorg/columba/ristretto/parser/ParserException;
    new-instance v5, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v5, v1}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 767
    .end local v1           #e:Lorg/columba/ristretto/parser/ParserException;
    :cond_60
    aget-object v5, v3, v2

    invoke-virtual {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    goto :goto_56

    .line 771
    :cond_66
    new-array v5, v9, [Lorg/columba/ristretto/imap/ListInfo;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/columba/ristretto/imap/ListInfo;

    check-cast v5, [Lorg/columba/ristretto/imap/ListInfo;

    return-object v5
.end method

.method private processUnsolicitedResponses()V
    .registers 4

    .prologue
    .line 1736
    iget v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    if-lez v2, :cond_1c

    .line 1738
    :goto_4
    :try_start_4
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->in:Lorg/columba/ristretto/imap/IMAPInputStream;

    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPInputStream;->hasUnsolicitedReponse()Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_1b
    .catch Lorg/columba/ristretto/imap/IMAPException; {:try_start_4 .. :try_end_9} :catch_1d

    move-result v2

    if-eqz v2, :cond_1c

    .line 1741
    :try_start_c
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->in:Lorg/columba/ristretto/imap/IMAPInputStream;

    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPInputStream;->readResponse()Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v1

    .line 1742
    .local v1, response:Lorg/columba/ristretto/imap/IMAPResponse;
    invoke-virtual {p0, v1}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_16
    .catch Lorg/columba/ristretto/imap/IMAPException; {:try_start_c .. :try_end_15} :catch_1d

    goto :goto_4

    .line 1743
    .end local v1           #response:Lorg/columba/ristretto/imap/IMAPResponse;
    :catch_16
    move-exception v0

    .line 1744
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    :try_start_18
    iput v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1a} :catch_1b
    .catch Lorg/columba/ristretto/imap/IMAPException; {:try_start_18 .. :try_end_1a} :catch_1d

    goto :goto_4

    .line 1747
    .end local v0           #e:Ljava/io/IOException;
    :catch_1b
    move-exception v2

    .line 1752
    :cond_1c
    :goto_1c
    return-void

    .line 1749
    :catch_1d
    move-exception v2

    goto :goto_1c
.end method

.method private searchCore(Ljava/lang/String;Ljava/nio/charset/Charset;[Lorg/columba/ristretto/imap/SearchKey;)[Ljava/lang/Integer;
    .registers 11
    .parameter "c"
    .parameter "charset"
    .parameter "search"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/imap/IMAPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1055
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 1057
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1058
    .local v0, args:Ljava/util/List;
    if-eqz p2, :cond_13

    .line 1059
    const-string v5, "CHARSET"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1062
    :cond_13
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    array-length v5, p3

    if-ge v2, v5, :cond_1f

    .line 1063
    aget-object v5, p3, v2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1062
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1066
    :cond_1f
    if-nez p2, :cond_52

    .line 1067
    new-instance v1, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v1, v5, p1, v6}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1073
    .local v1, command:Lorg/columba/ristretto/imap/IMAPCommand;
    :goto_30
    const/4 v4, 0x0

    .line 1074
    .local v4, result:[Ljava/lang/Integer;
    invoke-direct {p0, v1}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v3

    .line 1075
    .local v3, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    const/4 v2, 0x0

    :goto_36
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_68

    .line 1076
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseSubType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SEARCH"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1077
    aget-object v5, v3, v2

    invoke-static {v5}, Lorg/columba/ristretto/imap/parser/NumberListParser;->parse(Lorg/columba/ristretto/imap/IMAPResponse;)[Ljava/lang/Integer;

    move-result-object v4

    .line 1075
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 1069
    .end local v1           #command:Lorg/columba/ristretto/imap/IMAPCommand;
    .end local v3           #responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    .end local v4           #result:[Ljava/lang/Integer;
    :cond_52
    new-instance v1, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v1, v5, p1, v6, p2}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/nio/charset/Charset;)V

    .restart local v1       #command:Lorg/columba/ristretto/imap/IMAPCommand;
    goto :goto_30

    .line 1079
    .restart local v3       #responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    .restart local v4       #result:[Ljava/lang/Integer;
    :cond_62
    aget-object v5, v3, v2

    invoke-virtual {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    goto :goto_4f

    .line 1084
    :cond_68
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v5

    if-nez v5, :cond_7b

    .line 1085
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 1087
    :cond_7b
    return-object v4
.end method

.method private selectCore(Ljava/lang/String;Ljava/lang/String;)Lorg/columba/ristretto/message/MailboxInfo;
    .registers 14
    .parameter "mailbox"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/imap/IMAPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 481
    invoke-direct {p0, v10}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 482
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Lorg/columba/ristretto/imap/MailboxNameUTF7Converter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, v5, p2, v6}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v3

    .line 487
    .local v3, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    new-instance v4, Lorg/columba/ristretto/message/MailboxInfo;

    invoke-direct {v4}, Lorg/columba/ristretto/message/MailboxInfo;-><init>()V

    .line 489
    .local v4, result:Lorg/columba/ristretto/message/MailboxInfo;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_23
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_4e

    .line 490
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseType()I

    move-result v5

    if-eq v5, v9, :cond_38

    aget-object v5, v3, v2

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 493
    :cond_38
    :try_start_38
    aget-object v5, v3, v2

    invoke-static {v5, v4}, Lorg/columba/ristretto/imap/parser/MailboxInfoParser;->parse(Lorg/columba/ristretto/imap/IMAPResponse;Lorg/columba/ristretto/message/MailboxInfo;)Lorg/columba/ristretto/message/MailboxInfo;
    :try_end_3d
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_38 .. :try_end_3d} :catch_41

    move-result-object v4

    .line 489
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 494
    :catch_41
    move-exception v1

    .line 495
    .local v1, e1:Lorg/columba/ristretto/parser/ParserException;
    new-instance v5, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v5, v1}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 498
    .end local v1           #e1:Lorg/columba/ristretto/parser/ParserException;
    :cond_48
    aget-object v5, v3, v2

    invoke-virtual {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    goto :goto_3e

    .line 503
    :cond_4e
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v5

    if-nez v5, :cond_63

    .line 504
    iput v10, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    .line 505
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 510
    :cond_63
    :try_start_63
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-static {v5, v4}, Lorg/columba/ristretto/imap/parser/MailboxInfoParser;->parse(Lorg/columba/ristretto/imap/IMAPResponse;Lorg/columba/ristretto/message/MailboxInfo;)Lorg/columba/ristretto/message/MailboxInfo;
    :try_end_6b
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_63 .. :try_end_6b} :catch_72

    move-result-object v4

    .line 516
    const/4 v5, 0x3

    iput v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    .line 517
    iput-object p1, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->selectedMailbox:Ljava/lang/String;

    .line 519
    return-object v4

    .line 512
    :catch_72
    move-exception v1

    .line 513
    .restart local v1       #e1:Lorg/columba/ristretto/parser/ParserException;
    new-instance v5, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v5, v1}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private storeCore(Ljava/lang/String;Lorg/columba/ristretto/imap/SequenceSet;ZLorg/columba/ristretto/imap/IMAPFlags;)[Lorg/columba/ristretto/imap/IMAPFlags;
    .registers 14
    .parameter "c"
    .parameter "set"
    .parameter "type"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x0

    .line 1568
    invoke-direct {p0, v6}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 1570
    if-eqz p3, :cond_4a

    const-string v1, "+FLAGS.SILENT"

    .line 1572
    .local v1, flagType:Ljava/lang/String;
    :goto_9
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v8

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    aput-object p4, v6, v7

    invoke-direct {v0, v5, p1, v6}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1575
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v3

    .line 1577
    .local v3, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1578
    .local v4, result:Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2b
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_68

    .line 1579
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseSubType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FLAGS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 1580
    aget-object v5, v3, v2

    invoke-static {v5}, Lorg/columba/ristretto/imap/parser/FlagsParser;->parse(Lorg/columba/ristretto/imap/IMAPResponse;)Lorg/columba/ristretto/imap/IMAPFlags;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1578
    :cond_47
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 1570
    .end local v0           #command:Lorg/columba/ristretto/imap/IMAPCommand;
    .end local v1           #flagType:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    .end local v4           #result:Ljava/util/ArrayList;
    :cond_4a
    const-string v1, "-FLAGS.SILENT"

    goto :goto_9

    .line 1581
    .restart local v0       #command:Lorg/columba/ristretto/imap/IMAPCommand;
    .restart local v1       #flagType:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    .restart local v4       #result:Ljava/util/ArrayList;
    :cond_4d
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseTextCode()Lorg/columba/ristretto/imap/ResponseTextCode;

    move-result-object v5

    if-eqz v5, :cond_62

    aget-object v5, v3, v2

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseTextCode()Lorg/columba/ristretto/imap/ResponseTextCode;

    move-result-object v5

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/ResponseTextCode;->getType()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_47

    .line 1584
    :cond_62
    aget-object v5, v3, v2

    invoke-virtual {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    goto :goto_47

    .line 1589
    :cond_68
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v5

    if-nez v5, :cond_7b

    .line 1590
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 1592
    :cond_7b
    new-array v5, v8, [Lorg/columba/ristretto/imap/IMAPFlags;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/columba/ristretto/imap/IMAPFlags;

    check-cast v5, [Lorg/columba/ristretto/imap/IMAPFlags;

    return-object v5
.end method

.method private throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V
    .registers 3
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p1}, Lorg/columba/ristretto/imap/IMAPResponse;->isBYE()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 297
    invoke-virtual {p0, p1}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 301
    return-void

    .line 299
    :cond_a
    new-instance v0, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v0, p1}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Lorg/columba/ristretto/imap/IMAPResponse;)V

    throw v0
.end method


# virtual methods
.method public addIMAPListener(Lorg/columba/ristretto/imap/IMAPListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 1760
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1761
    return-void
.end method

.method public append(Ljava/lang/String;Ljava/io/InputStream;)Lorg/columba/ristretto/imap/AppendInfo;
    .registers 4
    .parameter "mailbox"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 923
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->append(Ljava/lang/String;Ljava/io/InputStream;[Ljava/lang/Object;)Lorg/columba/ristretto/imap/AppendInfo;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/String;Ljava/io/InputStream;[Ljava/lang/Object;)Lorg/columba/ristretto/imap/AppendInfo;
    .registers 13
    .parameter "mailbox"
    .parameter "message"
    .parameter "optargs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 854
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 856
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 857
    .local v0, args:Ljava/util/List;
    invoke-static {p1}, Lorg/columba/ristretto/imap/MailboxNameUTF7Converter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 858
    if-eqz p3, :cond_1e

    .line 859
    const/4 v3, 0x0

    .local v3, i:I
    :goto_13
    array-length v6, p3

    if-ge v3, v6, :cond_1e

    .line 860
    aget-object v6, p3, v3

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 863
    .end local v3           #i:I
    :cond_1e
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    new-instance v1, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v6, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v6}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "APPEND"

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 867
    .local v1, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v1}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v4

    .line 870
    .local v4, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_37
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_44

    .line 871
    aget-object v6, v4, v3

    invoke-virtual {p0, v6}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 870
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 874
    :cond_44
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v4, v6

    invoke-virtual {v6}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v6

    if-nez v6, :cond_57

    .line 875
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v4, v6

    invoke-direct {p0, v6}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 877
    :cond_57
    const/4 v5, 0x0

    .line 878
    .local v5, result:Lorg/columba/ristretto/imap/AppendInfo;
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v4, v6

    invoke-virtual {v6}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseTextCode()Lorg/columba/ristretto/imap/ResponseTextCode;

    move-result-object v6

    if-eqz v6, :cond_6c

    .line 880
    :try_start_63
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Lorg/columba/ristretto/imap/parser/AppendInfoParser;->parse(Lorg/columba/ristretto/imap/IMAPResponse;)Lorg/columba/ristretto/imap/AppendInfo;
    :try_end_6b
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_63 .. :try_end_6b} :catch_6d

    move-result-object v5

    .line 887
    :cond_6c
    return-object v5

    .line 882
    :catch_6d
    move-exception v2

    .line 883
    .local v2, e1:Lorg/columba/ristretto/parser/ParserException;
    new-instance v6, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v6, v2}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public appendPlus(Ljava/lang/String;Ljava/io/InputStream;[Ljava/lang/Object;)Lorg/columba/ristretto/imap/AppendInfo;
    .registers 5
    .parameter "mailbox"
    .parameter "message"
    .parameter "optargs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 905
    invoke-virtual {p0, p1, p2, p3}, Lorg/columba/ristretto/imap/IMAPProtocol;->append(Ljava/lang/String;Ljava/io/InputStream;[Ljava/lang/Object;)Lorg/columba/ristretto/imap/AppendInfo;

    move-result-object v0

    return-object v0
.end method

.method public authReceive()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/auth/AuthenticationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1857
    :try_start_0
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->in:Lorg/columba/ristretto/imap/IMAPInputStream;

    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPInputStream;->readResponse()Lorg/columba/ristretto/imap/IMAPResponse;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_16
    .catch Lorg/columba/ristretto/imap/IMAPException; {:try_start_0 .. :try_end_5} :catch_1b

    move-result-object v1

    .line 1863
    .local v1, response:Lorg/columba/ristretto/imap/IMAPResponse;
    :try_start_6
    invoke-virtual {v1}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_22

    .line 1864
    invoke-virtual {v1}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/columba/ristretto/coder/Base64;->decodeToArray(Ljava/lang/CharSequence;)[B

    move-result-object v2

    return-object v2

    .line 1858
    .end local v1           #response:Lorg/columba/ristretto/imap/IMAPResponse;
    :catch_16
    move-exception v0

    .line 1859
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    iput v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    .line 1860
    throw v0
    :try_end_1b
    .catch Lorg/columba/ristretto/imap/IMAPException; {:try_start_6 .. :try_end_1b} :catch_1b

    .line 1868
    .end local v0           #e:Ljava/io/IOException;
    :catch_1b
    move-exception v0

    .line 1869
    .local v0, e:Lorg/columba/ristretto/imap/IMAPException;
    new-instance v2, Lorg/columba/ristretto/auth/AuthenticationException;

    invoke-direct {v2, v0}, Lorg/columba/ristretto/auth/AuthenticationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1866
    .end local v0           #e:Lorg/columba/ristretto/imap/IMAPException;
    .restart local v1       #response:Lorg/columba/ristretto/imap/IMAPResponse;
    :cond_22
    :try_start_22
    new-instance v2, Lorg/columba/ristretto/auth/AuthenticationException;

    new-instance v3, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v3, v1}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Lorg/columba/ristretto/imap/IMAPResponse;)V

    invoke-direct {v2, v3}, Lorg/columba/ristretto/auth/AuthenticationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2d
    .catch Lorg/columba/ristretto/imap/IMAPException; {:try_start_22 .. :try_end_2d} :catch_1b
.end method

.method public authSend([B)V
    .registers 5
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1877
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->out:Ljava/io/OutputStream;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/columba/ristretto/coder/Base64;->encode(Ljava/nio/ByteBuffer;Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1879
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1880
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1881
    return-void
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/String;[C)V
    .registers 13
    .parameter "method"
    .parameter "user"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;,
            Lorg/columba/ristretto/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 381
    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 382
    iget-object v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, tag:Ljava/lang/String;
    :try_start_b
    invoke-static {}, Lorg/columba/ristretto/auth/AuthenticationFactory;->getInstance()Lorg/columba/ristretto/auth/AuthenticationFactory;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/columba/ristretto/auth/AuthenticationFactory;->getAuthentication(Ljava/lang/String;)Lorg/columba/ristretto/auth/AuthenticationMechanism;

    move-result-object v0

    .line 387
    .local v0, auth:Lorg/columba/ristretto/auth/AuthenticationMechanism;
    new-instance v1, Lorg/columba/ristretto/imap/IMAPCommand;

    const-string v5, "AUTHENTICATE"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-direct {v1, v4, v5, v6}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catch Lorg/columba/ristretto/auth/NoSuchAuthenticationException; {:try_start_b .. :try_end_20} :catch_45

    .line 392
    .local v1, command:Lorg/columba/ristretto/imap/IMAPCommand;
    :try_start_20
    iget-object v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->in:Lorg/columba/ristretto/imap/IMAPInputStream;

    iget-object v6, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v5, v6}, Lorg/columba/ristretto/imap/IMAPCommand;->writeToStream(Lorg/columba/ristretto/imap/IMAPInputStream;Ljava/io/OutputStream;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_27} :catch_40
    .catch Lorg/columba/ristretto/auth/NoSuchAuthenticationException; {:try_start_20 .. :try_end_27} :catch_45

    .line 398
    :try_start_27
    invoke-interface {v0, p0, p2, p3}, Lorg/columba/ristretto/auth/AuthenticationMechanism;->authenticate(Lorg/columba/ristretto/auth/AuthenticationServer;Ljava/lang/String;[C)V
    :try_end_2a
    .catch Lorg/columba/ristretto/auth/NoSuchAuthenticationException; {:try_start_27 .. :try_end_2a} :catch_45

    .line 406
    :try_start_2a
    iget-object v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->in:Lorg/columba/ristretto/imap/IMAPInputStream;

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPInputStream;->readResponse()Lorg/columba/ristretto/imap/IMAPResponse;
    :try_end_2f
    .catch Ljava/net/SocketException; {:try_start_2a .. :try_end_2f} :catch_4c

    move-result-object v3

    .line 414
    .local v3, response:Lorg/columba/ristretto/imap/IMAPResponse;
    :goto_30
    invoke-virtual {v3}, Lorg/columba/ristretto/imap/IMAPResponse;->isTagged()Z

    move-result v5

    if-nez v5, :cond_54

    .line 415
    invoke-virtual {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 417
    :try_start_39
    iget-object v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->in:Lorg/columba/ristretto/imap/IMAPInputStream;

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPInputStream;->readResponse()Lorg/columba/ristretto/imap/IMAPResponse;
    :try_end_3e
    .catch Ljava/net/SocketException; {:try_start_39 .. :try_end_3e} :catch_50

    move-result-object v3

    goto :goto_30

    .line 393
    .end local v3           #response:Lorg/columba/ristretto/imap/IMAPResponse;
    :catch_40
    move-exception v2

    .line 394
    .local v2, e:Ljava/io/IOException;
    const/4 v5, 0x0

    :try_start_42
    iput v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    .line 395
    throw v2
    :try_end_45
    .catch Lorg/columba/ristretto/auth/NoSuchAuthenticationException; {:try_start_42 .. :try_end_45} :catch_45

    .line 399
    .end local v0           #auth:Lorg/columba/ristretto/auth/AuthenticationMechanism;
    .end local v1           #command:Lorg/columba/ristretto/imap/IMAPCommand;
    .end local v2           #e:Ljava/io/IOException;
    :catch_45
    move-exception v2

    .line 400
    .local v2, e:Lorg/columba/ristretto/auth/NoSuchAuthenticationException;
    new-instance v5, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v5, v2}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 407
    .end local v2           #e:Lorg/columba/ristretto/auth/NoSuchAuthenticationException;
    .restart local v0       #auth:Lorg/columba/ristretto/auth/AuthenticationMechanism;
    .restart local v1       #command:Lorg/columba/ristretto/imap/IMAPCommand;
    :catch_4c
    move-exception v2

    .line 408
    .local v2, e:Ljava/net/SocketException;
    iput v8, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    .line 409
    throw v2

    .line 418
    .end local v2           #e:Ljava/net/SocketException;
    .restart local v3       #response:Lorg/columba/ristretto/imap/IMAPResponse;
    :catch_50
    move-exception v2

    .line 419
    .restart local v2       #e:Ljava/net/SocketException;
    iput v8, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    .line 420
    throw v2

    .line 424
    .end local v2           #e:Ljava/net/SocketException;
    :cond_54
    invoke-virtual {v3}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v5

    if-nez v5, :cond_60

    .line 425
    new-instance v5, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v5, v3}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Lorg/columba/ristretto/imap/IMAPResponse;)V

    throw v5

    .line 426
    :cond_60
    const/4 v5, 0x2

    iput v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    .line 427
    return-void
.end method

.method public capability()[Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 246
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 247
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v4, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v4}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CAPABILITY"

    invoke-direct {v0, v4, v5}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v2

    .line 251
    .local v2, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v3, result:Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_49

    .line 253
    aget-object v4, v2, v1

    invoke-virtual {v4}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseSubType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CAPABILITY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 254
    aget-object v4, v2, v6

    invoke-virtual {v4}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/columba/ristretto/imap/parser/StringListParser;->parse(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 252
    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 257
    :cond_43
    aget-object v4, v2, v1

    invoke-virtual {p0, v4}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    goto :goto_40

    .line 262
    :cond_49
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    invoke-virtual {v4}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v4

    if-nez v4, :cond_5c

    .line 263
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    invoke-direct {p0, v4}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 265
    :cond_5c
    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public check()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 939
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 940
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CHECK"

    invoke-direct {v0, v3, v4}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v2

    .line 944
    .local v2, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_23

    .line 945
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 944
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 948
    :cond_23
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v3

    if-nez v3, :cond_36

    .line 949
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-direct {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 950
    :cond_36
    return-void
.end method

.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 962
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 963
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CLOSE"

    invoke-direct {v0, v3, v4}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v2

    .line 967
    .local v2, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_23

    .line 968
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 967
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 971
    :cond_23
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v3

    if-nez v3, :cond_36

    .line 972
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-direct {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 973
    :cond_36
    const/4 v3, 0x2

    iput v3, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    .line 974
    return-void
.end method

.method public copy(Lorg/columba/ristretto/imap/SequenceSet;Ljava/lang/String;)Lorg/columba/ristretto/imap/CopyInfo;
    .registers 4
    .parameter "set"
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1547
    const-string v0, "COPY"

    invoke-direct {p0, v0, p1, p2}, Lorg/columba/ristretto/imap/IMAPProtocol;->copyCore(Ljava/lang/String;Lorg/columba/ristretto/imap/SequenceSet;Ljava/lang/String;)Lorg/columba/ristretto/imap/CopyInfo;

    move-result-object v0

    return-object v0
.end method

.method public create(Ljava/lang/String;)V
    .registers 10
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 548
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 549
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CREATE"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Lorg/columba/ristretto/imap/MailboxNameUTF7Converter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v0, v3, v4, v5}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v2

    .line 555
    .local v2, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2d

    .line 556
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 555
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 560
    :cond_2d
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v3

    if-nez v3, :cond_40

    .line 561
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-direct {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 562
    :cond_40
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .registers 10
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 575
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 576
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DELETE"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Lorg/columba/ristretto/imap/MailboxNameUTF7Converter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v0, v3, v4, v5}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v2

    .line 582
    .local v2, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2d

    .line 583
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 587
    :cond_2d
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v3

    if-nez v3, :cond_40

    .line 588
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-direct {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 589
    :cond_40
    return-void
.end method

.method public examine(Ljava/lang/String;)Lorg/columba/ristretto/message/MailboxInfo;
    .registers 3
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 534
    const-string v0, "EXAMINE"

    invoke-direct {p0, p1, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->selectCore(Ljava/lang/String;Ljava/lang/String;)Lorg/columba/ristretto/message/MailboxInfo;

    move-result-object v0

    return-object v0
.end method

.method public expunge()[I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 986
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 987
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EXPUNGE"

    invoke-direct {v0, v5, v6}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v4

    .line 990
    .local v4, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v5

    if-nez v5, :cond_28

    .line 991
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 993
    :cond_28
    new-instance v1, Ljava/util/ArrayList;

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 995
    .local v1, expunged:Ljava/util/List;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_31
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_5b

    .line 996
    aget-object v5, v4, v3

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseSubType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EXPUNGE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 997
    new-instance v5, Ljava/lang/Integer;

    aget-object v6, v4, v3

    invoke-virtual {v6}, Lorg/columba/ristretto/imap/IMAPResponse;->getPreNumber()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 999
    :cond_55
    aget-object v5, v4, v3

    invoke-virtual {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    goto :goto_52

    .line 1003
    :cond_5b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [I

    .line 1004
    .local v2, expungedArray:[I
    const/4 v3, 0x0

    :goto_62
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_77

    .line 1005
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v2, v3

    .line 1004
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    .line 1008
    :cond_77
    return-object v2
.end method

.method public fetchBody(I[Ljava/lang/Integer;)Ljava/io/InputStream;
    .registers 4
    .parameter "index"
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1339
    const-string v0, "FETCH"

    invoke-direct {p0, v0, p1, p2}, Lorg/columba/ristretto/imap/IMAPProtocol;->fetchBodyCore(Ljava/lang/String;I[Ljava/lang/Integer;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public fetchBodystructure(I)Lorg/columba/ristretto/message/MimeTree;
    .registers 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1393
    const-string v0, "FETCH"

    invoke-direct {p0, v0, p1}, Lorg/columba/ristretto/imap/IMAPProtocol;->fetchBodystructureCore(Ljava/lang/String;I)Lorg/columba/ristretto/message/MimeTree;

    move-result-object v0

    return-object v0
.end method

.method public fetchFlags(Lorg/columba/ristretto/imap/SequenceSet;)[Lorg/columba/ristretto/imap/IMAPFlags;
    .registers 13
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1130
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 1132
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v4, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v4}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FETCH"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p1, v6, v9

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "FLAGS"

    aput-object v8, v7, v9

    const-string v8, "UID"

    aput-object v8, v7, v10

    aput-object v7, v6, v10

    invoke-direct {v0, v4, v5, v6}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1135
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v2

    .line 1137
    .local v2, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1138
    .local v3, result:Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_31
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_56

    .line 1139
    aget-object v4, v2, v1

    invoke-virtual {v4}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseSubType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FETCH"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 1140
    aget-object v4, v2, v1

    invoke-static {v4}, Lorg/columba/ristretto/imap/parser/FlagsParser;->parse(Lorg/columba/ristretto/imap/IMAPResponse;)Lorg/columba/ristretto/imap/IMAPFlags;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    :goto_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 1142
    :cond_50
    aget-object v4, v2, v1

    invoke-virtual {p0, v4}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    goto :goto_4d

    .line 1147
    :cond_56
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    invoke-virtual {v4}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v4

    if-nez v4, :cond_69

    .line 1148
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    invoke-direct {p0, v4}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 1150
    :cond_69
    new-array v4, v9, [Lorg/columba/ristretto/imap/IMAPFlags;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/columba/ristretto/imap/IMAPFlags;

    check-cast v4, [Lorg/columba/ristretto/imap/IMAPFlags;

    return-object v4
.end method

.method public fetchHeader(Lorg/columba/ristretto/imap/SequenceSet;)[Lorg/columba/ristretto/imap/IMAPHeader;
    .registers 3
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1295
    const-string v0, "FETCH"

    invoke-direct {p0, v0, p1}, Lorg/columba/ristretto/imap/IMAPProtocol;->fetchHeaderCore(Ljava/lang/String;Lorg/columba/ristretto/imap/SequenceSet;)[Lorg/columba/ristretto/imap/IMAPHeader;

    move-result-object v0

    return-object v0
.end method

.method public fetchHeaderFields(Lorg/columba/ristretto/imap/SequenceSet;[Ljava/lang/String;)[Lorg/columba/ristretto/imap/IMAPHeader;
    .registers 4
    .parameter "set"
    .parameter "fields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1236
    const-string v0, "FETCH"

    invoke-direct {p0, v0, p1, p2}, Lorg/columba/ristretto/imap/IMAPProtocol;->fetchHeaderFieldsCore(Ljava/lang/String;Lorg/columba/ristretto/imap/SequenceSet;[Ljava/lang/String;)[Lorg/columba/ristretto/imap/IMAPHeader;

    move-result-object v0

    return-object v0
.end method

.method public fetchMessage(I)Ljava/io/InputStream;
    .registers 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1440
    const-string v0, "FETCH"

    invoke-direct {p0, v0, p1}, Lorg/columba/ristretto/imap/IMAPProtocol;->fetchMessageCore(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public fetchMimeHeaderSource(I[Ljava/lang/Integer;)Ljava/io/InputStream;
    .registers 4
    .parameter "index"
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1486
    const-string v0, "FETCH"

    invoke-direct {p0, v0, p1, p2}, Lorg/columba/ristretto/imap/IMAPProtocol;->fetchMimeHeaderSourceCore(Ljava/lang/String;I[Ljava/lang/Integer;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public fetchUid(Lorg/columba/ristretto/imap/SequenceSet;)[Ljava/lang/Integer;
    .registers 13
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1163
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 1165
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FETCH"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v10

    const/4 v8, 0x1

    const-string v9, "UID"

    aput-object v9, v7, v8

    invoke-direct {v0, v5, v6, v7}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1168
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v3

    .line 1170
    .local v3, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1173
    .local v4, result:Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_29
    :try_start_29
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_55

    .line 1174
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseSubType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FETCH"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 1175
    aget-object v5, v3, v2

    invoke-static {v5}, Lorg/columba/ristretto/imap/parser/UIDParser;->parse(Lorg/columba/ristretto/imap/IMAPResponse;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 1177
    :cond_48
    aget-object v5, v3, v2

    invoke-virtual {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V
    :try_end_4d
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_29 .. :try_end_4d} :catch_4e

    goto :goto_45

    .line 1180
    :catch_4e
    move-exception v1

    .line 1181
    .local v1, e:Lorg/columba/ristretto/parser/ParserException;
    new-instance v5, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v5, v1}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1185
    .end local v1           #e:Lorg/columba/ristretto/parser/ParserException;
    :cond_55
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v5

    if-nez v5, :cond_68

    .line 1186
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 1188
    :cond_68
    new-array v5, v10, [Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    check-cast v5, [Ljava/lang/Integer;

    return-object v5
.end method

.method public getHostName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1887
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getQuota(Ljava/lang/String;)Lorg/columba/ristretto/imap/QuotaInfo;
    .registers 13
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 604
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 605
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GETQUOTAROOT"

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Lorg/columba/ristretto/imap/MailboxNameUTF7Converter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v0, v5, v6, v7}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v3

    .line 610
    .local v3, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    const/4 v4, 0x0

    .line 611
    .local v4, result:Lorg/columba/ristretto/imap/QuotaInfo;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_21
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_44

    .line 612
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseType()I

    move-result v5

    if-ne v5, v10, :cond_3e

    .line 614
    :try_start_2e
    aget-object v5, v3, v2

    invoke-static {v5, v4}, Lorg/columba/ristretto/imap/parser/QuotaInfoParser;->parse(Lorg/columba/ristretto/imap/IMAPResponse;Lorg/columba/ristretto/imap/QuotaInfo;)Lorg/columba/ristretto/imap/QuotaInfo;
    :try_end_33
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_2e .. :try_end_33} :catch_37

    move-result-object v4

    .line 611
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 615
    :catch_37
    move-exception v1

    .line 616
    .local v1, e:Lorg/columba/ristretto/parser/ParserException;
    new-instance v5, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v5, v1}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 619
    .end local v1           #e:Lorg/columba/ristretto/parser/ParserException;
    :cond_3e
    aget-object v5, v3, v2

    invoke-virtual {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    goto :goto_34

    .line 624
    :cond_44
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v5

    if-nez v5, :cond_57

    .line 625
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 627
    :cond_57
    return-object v4
.end method

.method public getSelectedMailbox()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1901
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->selectedMailbox:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1894
    const-string v0, "imap"

    return-object v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 1730
    invoke-direct {p0}, Lorg/columba/ristretto/imap/IMAPProtocol;->processUnsolicitedResponses()V

    .line 1732
    iget v0, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    return v0
.end method

.method handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V
    .registers 8
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 1774
    invoke-virtual {p1}, Lorg/columba/ristretto/imap/IMAPResponse;->isBYE()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1775
    const/4 v2, 0x0

    iput v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    .line 1778
    :try_start_a
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->in:Lorg/columba/ristretto/imap/IMAPInputStream;

    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPInputStream;->close()V

    .line 1779
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->in:Lorg/columba/ristretto/imap/IMAPInputStream;

    .line 1780
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1781
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->out:Ljava/io/OutputStream;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1a} :catch_13f

    .line 1785
    :goto_1a
    new-instance v2, Lorg/columba/ristretto/imap/IMAPDisconnectedException;

    invoke-direct {v2, p1}, Lorg/columba/ristretto/imap/IMAPDisconnectedException;-><init>(Lorg/columba/ristretto/imap/IMAPResponse;)V

    throw v2

    .line 1788
    :cond_20
    invoke-virtual {p1}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseSubType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EXISTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1790
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1791
    .local v1, it:Ljava/util/Iterator;
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1792
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/columba/ristretto/imap/IMAPListener;

    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPProtocol;->getSelectedMailbox()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/columba/ristretto/imap/IMAPResponse;->getPreNumber()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lorg/columba/ristretto/imap/IMAPListener;->existsChanged(Ljava/lang/String;I)V

    goto :goto_32

    .line 1797
    .end local v1           #it:Ljava/util/Iterator;
    :cond_4a
    invoke-virtual {p1}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseSubType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FLAGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 1798
    invoke-static {p1}, Lorg/columba/ristretto/imap/parser/FlagsParser;->parse(Lorg/columba/ristretto/imap/IMAPResponse;)Lorg/columba/ristretto/imap/IMAPFlags;

    move-result-object v0

    .line 1799
    .local v0, changedFlags:Lorg/columba/ristretto/imap/IMAPFlags;
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/IMAPFlags;->getIndex()I

    move-result v2

    if-eq v2, v5, :cond_7a

    .line 1801
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1802
    .restart local v1       #it:Ljava/util/Iterator;
    :goto_66
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 1803
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/columba/ristretto/imap/IMAPListener;

    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPProtocol;->getSelectedMailbox()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/columba/ristretto/imap/IMAPListener;->flagsChanged(Ljava/lang/String;Lorg/columba/ristretto/imap/IMAPFlags;)V

    goto :goto_66

    .line 1809
    .end local v0           #changedFlags:Lorg/columba/ristretto/imap/IMAPFlags;
    .end local v1           #it:Ljava/util/Iterator;
    :cond_7a
    invoke-virtual {p1}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseSubType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FETCH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    invoke-virtual {p1}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FLAGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_b0

    .line 1812
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1813
    .restart local v1       #it:Ljava/util/Iterator;
    :goto_98
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 1814
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/columba/ristretto/imap/IMAPListener;

    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPProtocol;->getSelectedMailbox()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lorg/columba/ristretto/imap/parser/FlagsParser;->parse(Lorg/columba/ristretto/imap/IMAPResponse;)Lorg/columba/ristretto/imap/IMAPFlags;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/columba/ristretto/imap/IMAPListener;->flagsChanged(Ljava/lang/String;Lorg/columba/ristretto/imap/IMAPFlags;)V

    goto :goto_98

    .line 1819
    .end local v1           #it:Ljava/util/Iterator;
    :cond_b0
    invoke-virtual {p1}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseSubType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RECENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 1821
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1822
    .restart local v1       #it:Ljava/util/Iterator;
    :goto_c2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_da

    .line 1823
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/columba/ristretto/imap/IMAPListener;

    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPProtocol;->getSelectedMailbox()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/columba/ristretto/imap/IMAPResponse;->getPreNumber()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lorg/columba/ristretto/imap/IMAPListener;->recentChanged(Ljava/lang/String;I)V

    goto :goto_c2

    .line 1828
    .end local v1           #it:Ljava/util/Iterator;
    :cond_da
    invoke-virtual {p1}, Lorg/columba/ristretto/imap/IMAPResponse;->isNO()Z

    move-result v2

    if-nez v2, :cond_ec

    invoke-virtual {p1}, Lorg/columba/ristretto/imap/IMAPResponse;->isBAD()Z

    move-result v2

    if-nez v2, :cond_ec

    invoke-virtual {p1}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v2

    if-eqz v2, :cond_13e

    :cond_ec
    invoke-virtual {p1}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseTextCode()Lorg/columba/ristretto/imap/ResponseTextCode;

    move-result-object v2

    if-eqz v2, :cond_13e

    .line 1830
    invoke-virtual {p1}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseTextCode()Lorg/columba/ristretto/imap/ResponseTextCode;

    move-result-object v2

    const-string v3, "ALERT"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    .line 1832
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1833
    .restart local v1       #it:Ljava/util/Iterator;
    :goto_104
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_118

    .line 1834
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/columba/ristretto/imap/IMAPListener;

    invoke-virtual {p1}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/columba/ristretto/imap/IMAPListener;->alertMessage(Ljava/lang/String;)V

    goto :goto_104

    .line 1839
    .end local v1           #it:Ljava/util/Iterator;
    :cond_118
    invoke-virtual {p1}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseTextCode()Lorg/columba/ristretto/imap/ResponseTextCode;

    move-result-object v2

    const-string v3, "PARSE"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13e

    .line 1841
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1842
    .restart local v1       #it:Ljava/util/Iterator;
    :goto_12a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13e

    .line 1843
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/columba/ristretto/imap/IMAPListener;

    invoke-virtual {p1}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/columba/ristretto/imap/IMAPListener;->parseError(Ljava/lang/String;)V

    goto :goto_12a

    .line 1848
    .end local v1           #it:Ljava/util/Iterator;
    :cond_13e
    return-void

    .line 1782
    :catch_13f
    move-exception v2

    goto/16 :goto_1a
.end method

.method public list(Ljava/lang/String;Ljava/lang/String;)[Lorg/columba/ristretto/imap/ListInfo;
    .registers 4
    .parameter "reference"
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 735
    const-string v0, "LIST"

    invoke-direct {p0, p1, p2, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->listCore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lorg/columba/ristretto/imap/ListInfo;

    move-result-object v0

    return-object v0
.end method

.method public login(Ljava/lang/String;[C)V
    .registers 12
    .parameter "user"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 443
    invoke-direct {p0, v7}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 444
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LOGIN"

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2}, Ljava/lang/String;-><init>([C)V

    aput-object v6, v5, v7

    invoke-direct {v0, v3, v4, v5}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v2

    .line 451
    .local v2, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_23
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_30

    .line 452
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 456
    :cond_30
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v3

    if-nez v3, :cond_43

    .line 457
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-direct {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 458
    :cond_43
    iput v8, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    .line 459
    return-void
.end method

.method public logout()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 310
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 311
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LOGOUT"

    invoke-direct {v0, v3, v4}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v2

    .line 316
    .local v2, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    array-length v3, v2

    if-ge v1, v3, :cond_2a

    .line 317
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/IMAPResponse;->isBYE()Z

    move-result v3

    if-nez v3, :cond_27

    .line 318
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 316
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 322
    :cond_2a
    const/4 v3, 0x0

    iput v3, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    .line 324
    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->in:Lorg/columba/ristretto/imap/IMAPInputStream;

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/IMAPInputStream;->close()V

    .line 325
    iput-object v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->in:Lorg/columba/ristretto/imap/IMAPInputStream;

    .line 326
    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 327
    iput-object v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->out:Ljava/io/OutputStream;

    .line 328
    return-void
.end method

.method public lsub(Ljava/lang/String;Ljava/lang/String;)[Lorg/columba/ristretto/imap/ListInfo;
    .registers 4
    .parameter "reference"
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 787
    const-string v0, "LSUB"

    invoke-direct {p0, p1, p2, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->listCore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lorg/columba/ristretto/imap/ListInfo;

    move-result-object v0

    return-object v0
.end method

.method public namespace()Lorg/columba/ristretto/imap/NamespaceCollection;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1631
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 1632
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NAMESPACE"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {v0, v5, v6, v7}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1635
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v3

    .line 1637
    .local v3, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v5

    if-nez v5, :cond_2b

    .line 1638
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 1640
    :cond_2b
    const/4 v4, 0x0

    .line 1642
    .local v4, result:Lorg/columba/ristretto/imap/NamespaceCollection;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2d
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_5b

    .line 1643
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseSubType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NAMESPACE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 1645
    :try_start_40
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    .line 1647
    aget-object v5, v3, v2

    invoke-static {v5}, Lorg/columba/ristretto/imap/parser/NamespaceParser;->parse(Lorg/columba/ristretto/imap/IMAPResponse;)Lorg/columba/ristretto/imap/NamespaceCollection;
    :try_end_4a
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_40 .. :try_end_4a} :catch_4e

    move-result-object v4

    .line 1642
    :goto_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 1648
    :catch_4e
    move-exception v1

    .line 1649
    .local v1, e:Lorg/columba/ristretto/parser/ParserException;
    new-instance v5, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v5, v1}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1652
    .end local v1           #e:Lorg/columba/ristretto/parser/ParserException;
    :cond_55
    aget-object v5, v3, v2

    invoke-virtual {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    goto :goto_4b

    .line 1656
    :cond_5b
    return-object v4
.end method

.method public noop()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 276
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 278
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NOOP"

    invoke-direct {v0, v3, v4}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v2

    .line 282
    .local v2, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_23

    .line 283
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 287
    :cond_23
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v3

    if-nez v3, :cond_36

    .line 288
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-direct {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 289
    :cond_36
    return-void
.end method

.method public openPort()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v2, Ljava/net/Socket;

    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->host:Ljava/lang/String;

    iget v4, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->port:I

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->socket:Ljava/net/Socket;

    .line 175
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->socket:Ljava/net/Socket;

    invoke-static {}, Lorg/columba/ristretto/config/RistrettoConfig;->getInstance()Lorg/columba/ristretto/config/RistrettoConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/columba/ristretto/config/RistrettoConfig;->getTimeout()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 177
    invoke-direct {p0}, Lorg/columba/ristretto/imap/IMAPProtocol;->createStreams()V

    .line 181
    :try_start_1b
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->in:Lorg/columba/ristretto/imap/IMAPInputStream;

    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPInputStream;->readResponse()Lorg/columba/ristretto/imap/IMAPResponse;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_2d

    move-result-object v1

    .line 188
    .local v1, response:Lorg/columba/ristretto/imap/IMAPResponse;
    invoke-virtual {v1}, Lorg/columba/ristretto/imap/IMAPResponse;->isBYE()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 189
    new-instance v2, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v2, v1}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Lorg/columba/ristretto/imap/IMAPResponse;)V

    throw v2

    .line 182
    .end local v1           #response:Lorg/columba/ristretto/imap/IMAPResponse;
    :catch_2d
    move-exception v0

    .line 183
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    iput v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    .line 184
    throw v0

    .line 191
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #response:Lorg/columba/ristretto/imap/IMAPResponse;
    :cond_32
    invoke-virtual {v1}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 192
    const/4 v2, 0x1

    iput v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    .line 196
    :goto_3b
    return-void

    .line 195
    :cond_3c
    const/4 v2, 0x2

    iput v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    goto :goto_3b
.end method

.method public openSSLPort()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/net/ssl/SSLException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {}, Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;->getInstance()Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;

    move-result-object v2

    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->host:Ljava/lang/String;

    iget v4, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->port:I

    invoke-virtual {v2, v3, v4}, Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->socket:Ljava/net/Socket;

    .line 209
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->socket:Ljava/net/Socket;

    invoke-static {}, Lorg/columba/ristretto/config/RistrettoConfig;->getInstance()Lorg/columba/ristretto/config/RistrettoConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/columba/ristretto/config/RistrettoConfig;->getTimeout()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 212
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->socket:Ljava/net/Socket;

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 214
    invoke-direct {p0}, Lorg/columba/ristretto/imap/IMAPProtocol;->createStreams()V

    .line 218
    :try_start_25
    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->in:Lorg/columba/ristretto/imap/IMAPInputStream;

    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPInputStream;->readResponse()Lorg/columba/ristretto/imap/IMAPResponse;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_37

    move-result-object v1

    .line 225
    .local v1, response:Lorg/columba/ristretto/imap/IMAPResponse;
    invoke-virtual {v1}, Lorg/columba/ristretto/imap/IMAPResponse;->isBYE()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 226
    new-instance v2, Lorg/columba/ristretto/imap/IMAPException;

    invoke-direct {v2, v1}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Lorg/columba/ristretto/imap/IMAPResponse;)V

    throw v2

    .line 219
    .end local v1           #response:Lorg/columba/ristretto/imap/IMAPResponse;
    :catch_37
    move-exception v0

    .line 220
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    iput v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    .line 221
    throw v0

    .line 228
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #response:Lorg/columba/ristretto/imap/IMAPResponse;
    :cond_3c
    invoke-virtual {v1}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 229
    const/4 v2, 0x1

    iput v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    .line 233
    :goto_45
    return-void

    .line 232
    :cond_46
    const/4 v2, 0x2

    iput v2, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->state:I

    goto :goto_45
.end method

.method public removeIMAPListener(Lorg/columba/ristretto/imap/IMAPListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 1769
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1770
    return-void
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "oldname"
    .parameter "newname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 643
    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 644
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RENAME"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Lorg/columba/ristretto/imap/MailboxNameUTF7Converter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Lorg/columba/ristretto/imap/MailboxNameUTF7Converter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v0, v3, v4, v5}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 648
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v2

    .line 651
    .local v2, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_33

    .line 652
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 651
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 656
    :cond_33
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v3

    if-nez v3, :cond_46

    .line 657
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-direct {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 658
    :cond_46
    return-void
.end method

.method public search(Ljava/nio/charset/Charset;[Lorg/columba/ristretto/imap/SearchKey;)[Ljava/lang/Integer;
    .registers 4
    .parameter "charset"
    .parameter "search"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1026
    const-string v0, "SEARCH"

    invoke-direct {p0, v0, p1, p2}, Lorg/columba/ristretto/imap/IMAPProtocol;->searchCore(Ljava/lang/String;Ljava/nio/charset/Charset;[Lorg/columba/ristretto/imap/SearchKey;)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public search([Lorg/columba/ristretto/imap/SearchKey;)[Ljava/lang/Integer;
    .registers 4
    .parameter "search"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1102
    const-string v0, "SEARCH"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/columba/ristretto/imap/IMAPProtocol;->searchCore(Ljava/lang/String;Ljava/nio/charset/Charset;[Lorg/columba/ristretto/imap/SearchKey;)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public select(Ljava/lang/String;)Lorg/columba/ristretto/message/MailboxInfo;
    .registers 3
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 476
    const-string v0, "SELECT"

    invoke-direct {p0, p1, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->selectCore(Ljava/lang/String;Ljava/lang/String;)Lorg/columba/ristretto/message/MailboxInfo;

    move-result-object v0

    return-object v0
.end method

.method public startTLS()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/net/ssl/SSLException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 342
    invoke-direct {p0, v7}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 344
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "STARTTLS"

    invoke-direct {v0, v3, v4}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v2

    .line 348
    .local v2, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_23

    .line 349
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 353
    :cond_23
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v3

    if-nez v3, :cond_36

    .line 354
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-direct {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 356
    :cond_36
    invoke-static {}, Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;->getInstance()Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;

    move-result-object v3

    iget-object v4, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->socket:Ljava/net/Socket;

    iget-object v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->host:Ljava/lang/String;

    iget v6, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->port:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->socket:Ljava/net/Socket;

    .line 360
    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->socket:Ljava/net/Socket;

    check-cast v3, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 362
    invoke-direct {p0}, Lorg/columba/ristretto/imap/IMAPProtocol;->createStreams()V

    .line 363
    return-void
.end method

.method public status(Ljava/lang/String;[Ljava/lang/String;)Lorg/columba/ristretto/imap/MailboxStatus;
    .registers 13
    .parameter "mailbox"
    .parameter "statusItems"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 804
    invoke-direct {p0, v7}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 806
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v5, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "STATUS"

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Lorg/columba/ristretto/imap/MailboxNameUTF7Converter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-direct {v0, v5, v6, v7}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 810
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v3

    .line 812
    .local v3, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    const/4 v4, 0x0

    .line 816
    .local v4, result:Lorg/columba/ristretto/imap/MailboxStatus;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_23
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_4e

    .line 817
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseSubType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "STATUS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 819
    :try_start_36
    aget-object v5, v3, v2

    invoke-static {v5}, Lorg/columba/ristretto/imap/parser/MailboxStatusParser;->parse(Lorg/columba/ristretto/imap/IMAPResponse;)Lorg/columba/ristretto/imap/MailboxStatus;
    :try_end_3b
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_36 .. :try_end_3b} :catch_3f

    move-result-object v4

    .line 816
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 820
    :catch_3f
    move-exception v1

    .line 821
    .local v1, e:Lorg/columba/ristretto/parser/ParserException;
    new-instance v5, Lorg/columba/ristretto/imap/IMAPException;

    aget-object v6, v3, v2

    invoke-direct {v5, v6}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Lorg/columba/ristretto/imap/IMAPResponse;)V

    throw v5

    .line 824
    .end local v1           #e:Lorg/columba/ristretto/parser/ParserException;
    :cond_48
    aget-object v5, v3, v2

    invoke-virtual {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    goto :goto_3c

    .line 828
    :cond_4e
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v5

    if-nez v5, :cond_61

    .line 829
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-direct {p0, v5}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 831
    :cond_61
    return-object v4
.end method

.method public store(Lorg/columba/ristretto/imap/SequenceSet;ZLorg/columba/ristretto/imap/IMAPFlags;)V
    .registers 5
    .parameter "set"
    .parameter "type"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1606
    const-string v0, "STORE"

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/columba/ristretto/imap/IMAPProtocol;->storeCore(Ljava/lang/String;Lorg/columba/ristretto/imap/SequenceSet;ZLorg/columba/ristretto/imap/IMAPFlags;)[Lorg/columba/ristretto/imap/IMAPFlags;

    .line 1607
    return-void
.end method

.method public subscribe(Ljava/lang/String;)V
    .registers 10
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 672
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 673
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUBSCRIBE"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Lorg/columba/ristretto/imap/MailboxNameUTF7Converter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v0, v3, v4, v5}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 677
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v2

    .line 680
    .local v2, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2d

    .line 681
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 680
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 685
    :cond_2d
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v3

    if-nez v3, :cond_40

    .line 686
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-direct {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 687
    :cond_40
    return-void
.end method

.method public uidCopy(Lorg/columba/ristretto/imap/SequenceSet;Ljava/lang/String;)Lorg/columba/ristretto/imap/CopyInfo;
    .registers 4
    .parameter "set"
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1563
    const-string v0, "UID COPY"

    invoke-direct {p0, v0, p1, p2}, Lorg/columba/ristretto/imap/IMAPProtocol;->copyCore(Ljava/lang/String;Lorg/columba/ristretto/imap/SequenceSet;Ljava/lang/String;)Lorg/columba/ristretto/imap/CopyInfo;

    move-result-object v0

    return-object v0
.end method

.method public uidFetchBody(I[Ljava/lang/Integer;)Ljava/io/InputStream;
    .registers 4
    .parameter "uid"
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1353
    const-string v0, "UID FETCH"

    invoke-direct {p0, v0, p1, p2}, Lorg/columba/ristretto/imap/IMAPProtocol;->fetchBodyCore(Ljava/lang/String;I[Ljava/lang/Integer;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public uidFetchBodystructure(I)Lorg/columba/ristretto/message/MimeTree;
    .registers 3
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1406
    const-string v0, "UID FETCH"

    invoke-direct {p0, v0, p1}, Lorg/columba/ristretto/imap/IMAPProtocol;->fetchBodystructureCore(Ljava/lang/String;I)Lorg/columba/ristretto/message/MimeTree;

    move-result-object v0

    return-object v0
.end method

.method public uidFetchHeader(Lorg/columba/ristretto/imap/SequenceSet;)[Lorg/columba/ristretto/imap/IMAPHeader;
    .registers 3
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1308
    const-string v0, "UID FETCH"

    invoke-direct {p0, v0, p1}, Lorg/columba/ristretto/imap/IMAPProtocol;->fetchHeaderCore(Ljava/lang/String;Lorg/columba/ristretto/imap/SequenceSet;)[Lorg/columba/ristretto/imap/IMAPHeader;

    move-result-object v0

    return-object v0
.end method

.method public uidFetchHeaderFields(Lorg/columba/ristretto/imap/SequenceSet;[Ljava/lang/String;)[Lorg/columba/ristretto/imap/IMAPHeader;
    .registers 4
    .parameter "set"
    .parameter "fields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1250
    const-string v0, "UID FETCH"

    invoke-direct {p0, v0, p1, p2}, Lorg/columba/ristretto/imap/IMAPProtocol;->fetchHeaderFieldsCore(Ljava/lang/String;Lorg/columba/ristretto/imap/SequenceSet;[Ljava/lang/String;)[Lorg/columba/ristretto/imap/IMAPHeader;

    move-result-object v0

    return-object v0
.end method

.method public uidFetchMessage(I)Ljava/io/InputStream;
    .registers 3
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1453
    const-string v0, "UID FETCH"

    invoke-direct {p0, v0, p1}, Lorg/columba/ristretto/imap/IMAPProtocol;->fetchMessageCore(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public uidFetchMimeHeaderSource(I[Ljava/lang/Integer;)Ljava/io/InputStream;
    .registers 4
    .parameter "uid"
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1500
    const-string v0, "UID FETCH"

    invoke-direct {p0, v0, p1, p2}, Lorg/columba/ristretto/imap/IMAPProtocol;->fetchMimeHeaderSourceCore(Ljava/lang/String;I[Ljava/lang/Integer;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public uidSearch(Ljava/nio/charset/Charset;[Lorg/columba/ristretto/imap/SearchKey;)[Ljava/lang/Integer;
    .registers 4
    .parameter "charset"
    .parameter "search"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1042
    const-string v0, "UID SEARCH"

    invoke-direct {p0, v0, p1, p2}, Lorg/columba/ristretto/imap/IMAPProtocol;->searchCore(Ljava/lang/String;Ljava/nio/charset/Charset;[Lorg/columba/ristretto/imap/SearchKey;)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public uidSearch([Lorg/columba/ristretto/imap/SearchKey;)[Ljava/lang/Integer;
    .registers 4
    .parameter "search"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1117
    const-string v0, "UID SEARCH"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/columba/ristretto/imap/IMAPProtocol;->searchCore(Ljava/lang/String;Ljava/nio/charset/Charset;[Lorg/columba/ristretto/imap/SearchKey;)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public uidStore(Lorg/columba/ristretto/imap/SequenceSet;ZLorg/columba/ristretto/imap/IMAPFlags;)V
    .registers 5
    .parameter "set"
    .parameter "type"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 1620
    const-string v0, "UID STORE"

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/columba/ristretto/imap/IMAPProtocol;->storeCore(Ljava/lang/String;Lorg/columba/ristretto/imap/SequenceSet;ZLorg/columba/ristretto/imap/IMAPFlags;)[Lorg/columba/ristretto/imap/IMAPFlags;

    .line 1621
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .registers 10
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/imap/IMAPException;
        }
    .end annotation

    .prologue
    .line 701
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->checkState(I)V

    .line 702
    new-instance v0, Lorg/columba/ristretto/imap/IMAPCommand;

    iget-object v3, p0, Lorg/columba/ristretto/imap/IMAPProtocol;->tagFactory:Lorg/columba/ristretto/imap/TagFactory;

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/TagFactory;->nextTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UNSUBSCRIBE"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Lorg/columba/ristretto/imap/MailboxNameUTF7Converter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v0, v3, v4, v5}, Lorg/columba/ristretto/imap/IMAPCommand;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 706
    .local v0, command:Lorg/columba/ristretto/imap/IMAPCommand;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->communicate(Lorg/columba/ristretto/imap/IMAPCommand;)[Lorg/columba/ristretto/imap/IMAPResponse;

    move-result-object v2

    .line 709
    .local v2, responses:[Lorg/columba/ristretto/imap/IMAPResponse;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2d

    .line 710
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->handleResponse(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 709
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 714
    :cond_2d
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/IMAPResponse;->isOK()Z

    move-result v3

    if-nez v3, :cond_40

    .line 715
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-direct {p0, v3}, Lorg/columba/ristretto/imap/IMAPProtocol;->throwException(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 716
    :cond_40
    return-void
.end method
