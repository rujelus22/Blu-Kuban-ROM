.class public Ljcifs/smb/SmbTransport;
.super Ljcifs/util/transport/Transport;
.source "SmbTransport.java"

# interfaces
.implements Ljcifs/smb/SmbConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/SmbTransport$ServerData;
    }
.end annotation


# static fields
.field static final BUF:[B

.field static final NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

.field static dfsRoots:Ljava/util/HashMap;

.field static log:Ljcifs/util/LogStream;


# instance fields
.field address:Ljcifs/UniAddress;

.field capabilities:I

.field digest:Ljcifs/smb/SigningDigest;

.field flags2:I

.field in:Ljava/io/InputStream;

.field key:Ljcifs/smb/SmbComBlankResponse;

.field localAddr:Ljava/net/InetAddress;

.field localPort:I

.field maxMpxCount:I

.field mid:I

.field out:Ljava/io/OutputStream;

.field port:I

.field rcv_buf_size:I

.field referrals:Ljava/util/LinkedList;

.field sbuf:[B

.field server:Ljcifs/smb/SmbTransport$ServerData;

.field sessionExpiration:J

.field sessionKey:I

.field sessions:Ljava/util/LinkedList;

.field snd_buf_size:I

.field socket:Ljava/net/Socket;

.field tconHostName:Ljava/lang/String;

.field useUnicode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const v0, 0xffff

    new-array v0, v0, [B

    sput-object v0, Ljcifs/smb/SmbTransport;->BUF:[B

    .line 36
    new-instance v0, Ljcifs/smb/SmbComNegotiate;

    invoke-direct {v0}, Ljcifs/smb/SmbComNegotiate;-><init>()V

    sput-object v0, Ljcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

    .line 37
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Ljcifs/smb/SmbTransport;->dfsRoots:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Ljcifs/UniAddress;ILjava/net/InetAddress;I)V
    .registers 10
    .parameter "address"
    .parameter "port"
    .parameter "localAddr"
    .parameter "localPort"

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-direct {p0}, Ljcifs/util/transport/Transport;-><init>()V

    .line 95
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 96
    new-instance v0, Ljcifs/smb/SmbComBlankResponse;

    invoke-direct {v0}, Ljcifs/smb/SmbComBlankResponse;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->key:Ljcifs/smb/SmbComBlankResponse;

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Ljcifs/smb/SmbTransport;->SO_TIMEOUT:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbTransport;->sessionExpiration:J

    .line 98
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->referrals:Ljava/util/LinkedList;

    .line 99
    iput-object v4, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    .line 100
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    .line 101
    new-instance v0, Ljcifs/smb/SmbTransport$ServerData;

    invoke-direct {v0, p0}, Ljcifs/smb/SmbTransport$ServerData;-><init>(Ljcifs/smb/SmbTransport;)V

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 103
    sget v0, Ljcifs/smb/SmbTransport;->FLAGS2:I

    iput v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    .line 104
    sget v0, Ljcifs/smb/SmbTransport;->MAX_MPX_COUNT:I

    iput v0, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    .line 105
    sget v0, Ljcifs/smb/SmbTransport;->SND_BUF_SIZE:I

    iput v0, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    .line 106
    sget v0, Ljcifs/smb/SmbTransport;->RCV_BUF_SIZE:I

    iput v0, p0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    .line 107
    sget v0, Ljcifs/smb/SmbTransport;->CAPABILITIES:I

    iput v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/SmbTransport;->sessionKey:I

    .line 109
    sget-boolean v0, Ljcifs/smb/SmbTransport;->USE_UNICODE:Z

    iput-boolean v0, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    .line 110
    iput-object v4, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    .line 113
    iput-object p1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    .line 114
    iput p2, p0, Ljcifs/smb/SmbTransport;->port:I

    .line 115
    iput-object p3, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    .line 116
    iput p4, p0, Ljcifs/smb/SmbTransport;->localPort:I

    .line 117
    return-void
.end method

.method static declared-synchronized getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;
    .registers 6
    .parameter "address"
    .parameter "port"

    .prologue
    .line 41
    const-class v1, Ljcifs/smb/SmbTransport;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljcifs/smb/SmbTransport;->LADDR:Ljava/net/InetAddress;

    sget v2, Ljcifs/smb/SmbTransport;->LPORT:I

    const/4 v3, 0x0

    invoke-static {p0, p1, v0, v2, v3}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Ljcifs/smb/SmbTransport;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_e

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getSmbTransport(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Ljcifs/smb/SmbTransport;
    .registers 15
    .parameter "address"
    .parameter "port"
    .parameter "localAddr"
    .parameter "localPort"
    .parameter "hostName"

    .prologue
    .line 47
    const-class v8, Ljcifs/smb/SmbTransport;

    monitor-enter v8

    :try_start_3
    sget-object v9, Ljcifs/smb/SmbTransport;->CONNECTIONS:Ljava/util/LinkedList;

    monitor-enter v9
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_4b

    .line 48
    :try_start_6
    sget v1, Ljcifs/smb/SmbTransport;->SSN_LIMIT:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3a

    .line 49
    sget-object v1, Ljcifs/smb/SmbTransport;->CONNECTIONS:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    .line 50
    .local v7, iter:Ljava/util/ListIterator;
    :cond_11
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 51
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/smb/SmbTransport;

    .local v0, conn:Ljcifs/smb/SmbTransport;
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 52
    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/SmbTransport;->matches(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget v1, Ljcifs/smb/SmbTransport;->SSN_LIMIT:I

    if-eqz v1, :cond_36

    iget-object v1, v0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sget v2, Ljcifs/smb/SmbTransport;->SSN_LIMIT:I

    if-ge v1, v2, :cond_11

    .line 54
    :cond_36
    monitor-exit v9
    :try_end_37
    .catchall {:try_start_6 .. :try_end_37} :catchall_48

    move-object v6, v0

    .line 63
    .end local v0           #conn:Ljcifs/smb/SmbTransport;
    .end local v7           #iter:Ljava/util/ListIterator;
    .local v6, conn:Ljava/lang/Object;
    :goto_38
    monitor-exit v8

    return-object v6

    .line 59
    .end local v6           #conn:Ljava/lang/Object;
    :cond_3a
    :try_start_3a
    new-instance v0, Ljcifs/smb/SmbTransport;

    invoke-direct {v0, p0, p1, p2, p3}, Ljcifs/smb/SmbTransport;-><init>(Ljcifs/UniAddress;ILjava/net/InetAddress;I)V

    .line 60
    .restart local v0       #conn:Ljcifs/smb/SmbTransport;
    sget-object v1, Ljcifs/smb/SmbTransport;->CONNECTIONS:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 61
    monitor-exit v9

    move-object v6, v0

    .line 63
    .restart local v6       #conn:Ljava/lang/Object;
    goto :goto_38

    .line 61
    .end local v0           #conn:Ljcifs/smb/SmbTransport;
    .end local v6           #conn:Ljava/lang/Object;
    :catchall_48
    move-exception v1

    monitor-exit v9
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_48

    :try_start_4a
    throw v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    .line 47
    :catchall_4b
    move-exception v1

    monitor-exit v8

    throw v1
.end method

.method private negotiate(ILjcifs/smb/ServerMessageBlock;)V
    .registers 13
    .parameter "port"
    .parameter "resp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v9, 0xffff

    const/4 v8, 0x6

    const/4 v7, 0x4

    .line 238
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    monitor-enter v3

    .line 239
    const/16 v2, 0x8b

    if-ne p1, v2, :cond_6e

    .line 240
    :try_start_c
    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->ssn139()V

    .line 254
    :goto_f
    iget v2, p0, Ljcifs/smb/SmbTransport;->mid:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljcifs/smb/SmbTransport;->mid:I

    const/16 v4, 0x7d00

    if-ne v2, v4, :cond_1c

    const/4 v2, 0x1

    iput v2, p0, Ljcifs/smb/SmbTransport;->mid:I

    .line 255
    :cond_1c
    sget-object v2, Ljcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

    iget v4, p0, Ljcifs/smb/SmbTransport;->mid:I

    iput v4, v2, Ljcifs/smb/SmbComNegotiate;->mid:I

    .line 256
    sget-object v2, Ljcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x4

    invoke-virtual {v2, v4, v5}, Ljcifs/smb/SmbComNegotiate;->encode([BI)I

    move-result v0

    .line 257
    .local v0, n:I
    and-int v2, v0, v9

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    .line 259
    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v7, :cond_4e

    .line 260
    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget-object v4, Ljcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

    invoke-virtual {v2, v4}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 261
    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v8, :cond_4e

    .line 262
    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x4

    invoke-static {v2, v4, v5, v0}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 266
    :cond_4e
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x0

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 267
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 271
    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->peekKey()Ljcifs/util/transport/Request;

    move-result-object v2

    if-nez v2, :cond_ae

    .line 272
    new-instance v2, Ljava/io/IOException;

    const-string v4, "transport closed in negotiate"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    .end local v0           #n:I
    :catchall_6b
    move-exception v2

    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_c .. :try_end_6d} :catchall_6b

    throw v2

    .line 242
    :cond_6e
    if-nez p1, :cond_72

    .line 243
    const/16 p1, 0x1bd

    .line 244
    :cond_72
    :try_start_72
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    if-nez v2, :cond_9c

    .line 245
    new-instance v2, Ljava/net/Socket;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v4}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, p1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 249
    :goto_83
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    sget v4, Ljcifs/smb/SmbTransport;->SO_TIMEOUT:I

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 250
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    .line 251
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    goto/16 :goto_f

    .line 247
    :cond_9c
    new-instance v2, Ljava/net/Socket;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v4}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    iget v6, p0, Ljcifs/smb/SmbTransport;->localPort:I

    invoke-direct {v2, v4, p1, v5, v6}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    iput-object v2, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    goto :goto_83

    .line 273
    .restart local v0       #n:I
    :cond_ae
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v4, 0x2

    invoke-static {v2, v4}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v2

    and-int v1, v2, v9

    .line 274
    .local v1, size:I
    const/16 v2, 0x21

    if-lt v1, v2, :cond_c2

    add-int/lit8 v2, v1, 0x4

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    array-length v4, v4

    if-le v2, v4, :cond_db

    .line 275
    :cond_c2
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid payload size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 277
    :cond_db
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/16 v5, 0x24

    add-int/lit8 v6, v1, -0x20

    invoke-static {v2, v4, v5, v6}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    .line 278
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v4, 0x4

    invoke-virtual {p2, v2, v4}, Ljcifs/smb/ServerMessageBlock;->decode([BI)I

    .line 280
    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v7, :cond_105

    .line 281
    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, p2}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 282
    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v8, :cond_105

    .line 283
    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x4

    invoke-static {v2, v4, v5, v0}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 286
    :cond_105
    monitor-exit v3
    :try_end_106
    .catchall {:try_start_72 .. :try_end_106} :catchall_6b

    .line 287
    return-void
.end method


# virtual methods
.method __getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)[Ljcifs/smb/DfsReferral;
    .registers 19
    .parameter "auth"
    .parameter "path"
    .parameter "rn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 724
    invoke-virtual/range {p0 .. p1}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v9

    const-string v10, "IPC$"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v7

    .line 725
    .local v7, ipc:Ljcifs/smb/SmbTree;
    new-instance v8, Ljcifs/smb/Trans2GetDfsReferralResponse;

    invoke-direct {v8}, Ljcifs/smb/Trans2GetDfsReferralResponse;-><init>()V

    .line 726
    .local v8, resp:Ljcifs/smb/Trans2GetDfsReferralResponse;
    new-instance v9, Ljcifs/smb/Trans2GetDfsReferral;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljcifs/smb/Trans2GetDfsReferral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9, v8}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 728
    if-eqz p3, :cond_22

    iget v9, v8, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    move/from16 v0, p3

    if-ge v9, v0, :cond_26

    .line 729
    :cond_22
    iget v0, v8, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    move/from16 p3, v0

    .line 732
    :cond_26
    move/from16 v0, p3

    new-array v4, v0, [Ljcifs/smb/DfsReferral;

    .line 733
    .local v4, drs:[Ljcifs/smb/DfsReferral;
    const/4 v9, 0x4

    new-array v1, v9, [Ljava/lang/String;

    .line 734
    .local v1, arr:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sget-wide v11, Ljcifs/smb/Dfs;->TTL:J

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    add-long v5, v9, v11

    .line 736
    .local v5, expiration:J
    const/4 v2, 0x0

    .local v2, di:I
    :goto_39
    array-length v9, v4

    if-ge v2, v9, :cond_8f

    .line 737
    new-instance v3, Ljcifs/smb/DfsReferral;

    invoke-direct {v3}, Ljcifs/smb/DfsReferral;-><init>()V

    .line 740
    .local v3, dr:Ljcifs/smb/DfsReferral;
    move-object/from16 v0, p1

    iget-boolean v9, v0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    iput-boolean v9, v3, Ljcifs/smb/DfsReferral;->resolveHashes:Z

    .line 741
    iget-object v9, v8, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v9, v9, v2

    iget v9, v9, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    int-to-long v9, v9

    iput-wide v9, v3, Ljcifs/smb/DfsReferral;->ttl:J

    .line 742
    iput-wide v5, v3, Ljcifs/smb/DfsReferral;->expiration:J

    .line 743
    const-string v9, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_76

    .line 744
    iget-object v9, v8, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v9, v9, v2

    iget-object v9, v9, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 751
    :goto_6d
    iget v9, v8, Ljcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    iput v9, v3, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 752
    aput-object v3, v4, v2

    .line 736
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 746
    :cond_76
    iget-object v9, v8, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v9, v9, v2

    iget-object v9, v9, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    invoke-virtual {p0, v9, v1}, Ljcifs/smb/SmbTransport;->dfsPathSplit(Ljava/lang/String;[Ljava/lang/String;)V

    .line 747
    const/4 v9, 0x1

    aget-object v9, v1, v9

    iput-object v9, v3, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 748
    const/4 v9, 0x2

    aget-object v9, v1, v9

    iput-object v9, v3, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    .line 749
    const/4 v9, 0x3

    aget-object v9, v1, v9

    iput-object v9, v3, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    goto :goto_6d

    .line 755
    .end local v3           #dr:Ljcifs/smb/DfsReferral;
    :cond_8f
    return-object v4
.end method

.method checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .registers 8
    .parameter "req"
    .parameter "resp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 510
    iget v1, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-static {v1}, Ljcifs/smb/SmbException;->getStatusByCode(I)I

    move-result v1

    iput v1, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 511
    iget v1, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    sparse-switch v1, :sswitch_data_52

    .line 541
    new-instance v1, Ljcifs/smb/SmbException;

    iget v2, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {v1, v2, v4}, Ljcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 524
    :sswitch_16
    new-instance v1, Ljcifs/smb/SmbAuthException;

    iget v2, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {v1, v2}, Ljcifs/smb/SmbAuthException;-><init>(I)V

    throw v1

    .line 526
    :sswitch_1e
    iget-object v1, p1, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    if-nez v1, :cond_2a

    .line 527
    new-instance v1, Ljcifs/smb/SmbException;

    iget v2, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {v1, v2, v4}, Ljcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 530
    :cond_2a
    iget-object v1, p1, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v2, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;

    move-result-object v0

    .line 531
    .local v0, dr:Ljcifs/smb/DfsReferral;
    if-nez v0, :cond_3d

    .line 532
    new-instance v1, Ljcifs/smb/SmbException;

    iget v2, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {v1, v2, v4}, Ljcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 534
    :cond_3d
    sget-object v1, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    iget-object v2, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljcifs/smb/Dfs;->insert(Ljava/lang/String;Ljcifs/smb/DfsReferral;)V

    .line 535
    throw v0

    .line 543
    .end local v0           #dr:Ljcifs/smb/DfsReferral;
    :sswitch_45
    iget-boolean v1, p2, Ljcifs/smb/ServerMessageBlock;->verifyFailed:Z

    if-eqz v1, :cond_51

    .line 544
    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, "Signature verification failed."

    invoke-direct {v1, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 546
    :cond_51
    return-void

    .line 511
    :sswitch_data_52
    .sparse-switch
        -0x7ffffffb -> :sswitch_45
        -0x3fffffea -> :sswitch_45
        -0x3fffffde -> :sswitch_16
        -0x3fffff96 -> :sswitch_16
        -0x3fffff93 -> :sswitch_16
        -0x3fffff92 -> :sswitch_16
        -0x3fffff91 -> :sswitch_16
        -0x3fffff90 -> :sswitch_16
        -0x3fffff8f -> :sswitch_16
        -0x3fffff8e -> :sswitch_16
        -0x3ffffe74 -> :sswitch_16
        -0x3ffffdcc -> :sswitch_16
        -0x3ffffda9 -> :sswitch_1e
        0x0 -> :sswitch_45
    .end sparse-switch
.end method

.method public connect()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 290
    :try_start_0
    sget v1, Ljcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v1, v1

    invoke-super {p0, v1, v2}, Ljcifs/util/transport/Transport;->connect(J)V
    :try_end_6
    .catch Ljcifs/util/transport/TransportException; {:try_start_0 .. :try_end_6} :catch_7

    .line 294
    return-void

    .line 291
    :catch_7
    move-exception v0

    .line 292
    .local v0, te:Ljcifs/util/transport/TransportException;
    new-instance v1, Ljcifs/smb/SmbException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method dfsPathSplit(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12
    .parameter "path"
    .parameter "result"

    .prologue
    .line 658
    const/4 v4, 0x0

    .local v4, ri:I
    array-length v7, p2

    add-int/lit8 v6, v7, -0x1

    .line 659
    .local v6, rlast:I
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v0, 0x0

    .local v0, b:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, len:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    move v5, v4

    .line 662
    .end local v4           #ri:I
    .local v5, ri:I
    :goto_c
    if-ne v5, v6, :cond_17

    .line 663
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, p2, v6

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    move v4, v5

    .line 675
    .end local v5           #ri:I
    .restart local v4       #ri:I
    :cond_16
    return-void

    .line 666
    .end local v1           #i:I
    .end local v4           #ri:I
    .restart local v2       #i:I
    .restart local v5       #ri:I
    :cond_17
    if-eq v2, v3, :cond_21

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_3d

    .line 667
    :cond_21
    add-int/lit8 v4, v5, 0x1

    .end local v5           #ri:I
    .restart local v4       #ri:I
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, p2, v5

    .line 668
    add-int/lit8 v0, v2, 0x1

    .line 670
    :goto_2b
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    if-lt v2, v3, :cond_3a

    .line 672
    :goto_2f
    array-length v7, p2

    if-ge v4, v7, :cond_16

    .line 673
    add-int/lit8 v5, v4, 0x1

    .end local v4           #ri:I
    .restart local v5       #ri:I
    const-string v7, ""

    aput-object v7, p2, v4

    move v4, v5

    .end local v5           #ri:I
    .restart local v4       #ri:I
    goto :goto_2f

    :cond_3a
    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    move v5, v4

    .end local v4           #ri:I
    .restart local v5       #ri:I
    goto :goto_c

    :cond_3d
    move v4, v5

    .end local v5           #ri:I
    .restart local v4       #ri:I
    goto :goto_2b
.end method

.method protected doConnect()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8b

    const/4 v7, 0x1

    const/16 v3, 0x1bd

    const/high16 v6, -0x8000

    .line 300
    new-instance v2, Ljcifs/smb/SmbComNegotiateResponse;

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-direct {v2, v5}, Ljcifs/smb/SmbComNegotiateResponse;-><init>(Ljcifs/smb/SmbTransport$ServerData;)V

    .line 302
    .local v2, resp:Ljcifs/smb/SmbComNegotiateResponse;
    :try_start_e
    iget v5, p0, Ljcifs/smb/SmbTransport;->port:I

    invoke-direct {p0, v5, v2}, Ljcifs/smb/SmbTransport;->negotiate(ILjcifs/smb/ServerMessageBlock;)V
    :try_end_13
    .catch Ljava/net/ConnectException; {:try_start_e .. :try_end_13} :catch_21
    .catch Ljava/net/NoRouteToHostException; {:try_start_e .. :try_end_13} :catch_33

    .line 311
    :goto_13
    iget v3, v2, Ljcifs/smb/SmbComNegotiateResponse;->dialectIndex:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_45

    .line 312
    new-instance v3, Ljcifs/smb/SmbException;

    const-string v4, "This client does not support the negotiated dialect."

    invoke-direct {v3, v4}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 303
    :catch_21
    move-exception v0

    .line 304
    .local v0, ce:Ljava/net/ConnectException;
    iget v5, p0, Ljcifs/smb/SmbTransport;->port:I

    if-eqz v5, :cond_2a

    iget v5, p0, Ljcifs/smb/SmbTransport;->port:I

    if-ne v5, v3, :cond_2b

    :cond_2a
    move v3, v4

    :cond_2b
    iput v3, p0, Ljcifs/smb/SmbTransport;->port:I

    .line 305
    iget v3, p0, Ljcifs/smb/SmbTransport;->port:I

    invoke-direct {p0, v3, v2}, Ljcifs/smb/SmbTransport;->negotiate(ILjcifs/smb/ServerMessageBlock;)V

    goto :goto_13

    .line 306
    .end local v0           #ce:Ljava/net/ConnectException;
    :catch_33
    move-exception v1

    .line 307
    .local v1, nr:Ljava/net/NoRouteToHostException;
    iget v5, p0, Ljcifs/smb/SmbTransport;->port:I

    if-eqz v5, :cond_3c

    iget v5, p0, Ljcifs/smb/SmbTransport;->port:I

    if-ne v5, v3, :cond_3d

    :cond_3c
    move v3, v4

    :cond_3d
    iput v3, p0, Ljcifs/smb/SmbTransport;->port:I

    .line 308
    iget v3, p0, Ljcifs/smb/SmbTransport;->port:I

    invoke-direct {p0, v3, v2}, Ljcifs/smb/SmbTransport;->negotiate(ILjcifs/smb/ServerMessageBlock;)V

    goto :goto_13

    .line 314
    .end local v1           #nr:Ljava/net/NoRouteToHostException;
    :cond_45
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v3, v3, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    and-int/2addr v3, v6

    if-eq v3, v6, :cond_75

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v3, v3, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_75

    sget v3, Ljcifs/smb/SmbTransport;->LM_COMPATIBILITY:I

    if-nez v3, :cond_75

    .line 317
    new-instance v3, Ljcifs/smb/SmbException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected encryption key length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v5, v5, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 322
    :cond_75
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v3}, Ljcifs/UniAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    .line 323
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-boolean v3, v3, Ljcifs/smb/SmbTransport$ServerData;->signaturesRequired:Z

    if-nez v3, :cond_8d

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-boolean v3, v3, Ljcifs/smb/SmbTransport$ServerData;->signaturesEnabled:Z

    if-eqz v3, :cond_d7

    sget-boolean v3, Ljcifs/smb/SmbTransport;->SIGNPREF:Z

    if-eqz v3, :cond_d7

    .line 324
    :cond_8d
    iget v3, p0, Ljcifs/smb/SmbTransport;->flags2:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Ljcifs/smb/SmbTransport;->flags2:I

    .line 328
    :goto_93
    iget v3, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v4, v4, Ljcifs/smb/SmbTransport$ServerData;->maxMpxCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    .line 329
    iget v3, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    if-ge v3, v7, :cond_a5

    iput v7, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    .line 330
    :cond_a5
    iget v3, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v4, v4, Ljcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    .line 331
    iget v3, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v4, v4, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    and-int/2addr v3, v4

    iput v3, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    .line 332
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v3, v3, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_c6

    .line 333
    iget v3, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    or-int/2addr v3, v6

    iput v3, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    .line 335
    :cond_c6
    iget v3, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_d6

    .line 337
    sget-boolean v3, Ljcifs/smb/SmbTransport;->FORCE_UNICODE:Z

    if-eqz v3, :cond_e0

    .line 338
    iget v3, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    .line 344
    :cond_d6
    :goto_d6
    return-void

    .line 326
    :cond_d7
    iget v3, p0, Ljcifs/smb/SmbTransport;->flags2:I

    const v4, 0xfffb

    and-int/2addr v3, v4

    iput v3, p0, Ljcifs/smb/SmbTransport;->flags2:I

    goto :goto_93

    .line 340
    :cond_e0
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    .line 341
    iget v3, p0, Ljcifs/smb/SmbTransport;->flags2:I

    and-int/lit16 v3, v3, 0x7fff

    iput v3, p0, Ljcifs/smb/SmbTransport;->flags2:I

    goto :goto_d6
.end method

.method protected doDisconnect(Z)V
    .registers 5
    .parameter "hard"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 347
    .local v0, iter:Ljava/util/ListIterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 348
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/SmbSession;

    .line 349
    .local v1, ssn:Ljcifs/smb/SmbSession;
    invoke-virtual {v1, p1}, Ljcifs/smb/SmbSession;->logoff(Z)V

    goto :goto_6

    .line 351
    .end local v1           #ssn:Ljcifs/smb/SmbSession;
    :cond_16
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownOutput()V

    .line 352
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 353
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 354
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 355
    const/4 v2, 0x0

    iput-object v2, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    .line 356
    return-void
.end method

.method protected doRecv(Ljcifs/util/transport/Response;)V
    .registers 16
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v9, -0x8000

    const/4 v7, 0x0

    const/4 v13, 0x4

    .line 450
    move-object v5, p1

    check-cast v5, Ljcifs/smb/ServerMessageBlock;

    .line 451
    .local v5, resp:Ljcifs/smb/ServerMessageBlock;
    iget-boolean v8, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    iput-boolean v8, v5, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 452
    iget v8, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_11

    const/4 v7, 0x1

    :cond_11
    iput-boolean v7, v5, Ljcifs/smb/ServerMessageBlock;->extendedSecurity:Z

    .line 454
    sget-object v8, Ljcifs/smb/SmbTransport;->BUF:[B

    monitor-enter v8

    .line 455
    :try_start_16
    iget-object v7, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v9, 0x0

    sget-object v10, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v11, 0x0

    const/16 v12, 0x24

    invoke-static {v7, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    sget-object v7, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v9, 0x2

    invoke-static {v7, v9}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v7

    const v9, 0xffff

    and-int v6, v7, v9

    .line 457
    .local v6, size:I
    const/16 v7, 0x21

    if-lt v6, v7, :cond_37

    add-int/lit8 v7, v6, 0x4

    iget v9, p0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    if-le v7, v9, :cond_53

    .line 458
    :cond_37
    new-instance v7, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid payload size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 498
    .end local v6           #size:I
    :catchall_50
    move-exception v7

    monitor-exit v8
    :try_end_52
    .catchall {:try_start_16 .. :try_end_52} :catchall_50

    throw v7

    .line 460
    .restart local v6       #size:I
    :cond_53
    :try_start_53
    sget-object v7, Ljcifs/smb/SmbTransport;->BUF:[B

    const/16 v9, 0x9

    invoke-static {v7, v9}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v7

    and-int/lit8 v1, v7, -0x1

    .line 461
    .local v1, errorCode:I
    iget-byte v7, v5, Ljcifs/smb/ServerMessageBlock;->command:B

    const/16 v9, 0x2e

    if-ne v7, v9, :cond_d3

    if-eqz v1, :cond_6a

    const v7, -0x7ffffffb

    if-ne v1, v7, :cond_d3

    .line 464
    :cond_6a
    move-object v0, v5

    check-cast v0, Ljcifs/smb/SmbComReadAndXResponse;

    move-object v4, v0

    .line 465
    .local v4, r:Ljcifs/smb/SmbComReadAndXResponse;
    const/16 v2, 0x20

    .line 467
    .local v2, off:I
    iget-object v7, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    sget-object v9, Ljcifs/smb/SmbTransport;->BUF:[B

    const/16 v10, 0x24

    const/16 v11, 0x1b

    invoke-static {v7, v9, v10, v11}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    add-int/lit8 v2, v2, 0x1b

    .line 468
    sget-object v7, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v9, 0x4

    invoke-virtual {v5, v7, v9}, Ljcifs/smb/ServerMessageBlock;->decode([BI)I

    .line 470
    iget v7, v4, Ljcifs/smb/SmbComReadAndXResponse;->dataOffset:I

    add-int/lit8 v3, v7, -0x3b

    .line 471
    .local v3, pad:I
    iget v7, v4, Ljcifs/smb/SmbComReadAndXResponse;->byteCount:I

    if-lez v7, :cond_98

    if-lez v3, :cond_98

    if-ge v3, v13, :cond_98

    .line 472
    iget-object v7, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    sget-object v9, Ljcifs/smb/SmbTransport;->BUF:[B

    const/16 v10, 0x3f

    invoke-static {v7, v9, v10, v3}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    .line 474
    :cond_98
    iget v7, v4, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    if-lez v7, :cond_a7

    .line 475
    iget-object v7, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v9, v4, Ljcifs/smb/SmbComReadAndXResponse;->b:[B

    iget v10, v4, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    iget v11, v4, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    invoke-static {v7, v9, v10, v11}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    .line 488
    .end local v2           #off:I
    .end local v3           #pad:I
    .end local v4           #r:Ljcifs/smb/SmbComReadAndXResponse;
    :cond_a7
    :goto_a7
    iget-object v7, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    if-eqz v7, :cond_b7

    iget v7, v5, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    if-nez v7, :cond_b7

    .line 489
    iget-object v7, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    sget-object v9, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v10, 0x4

    invoke-virtual {v7, v9, v10, v5}, Ljcifs/smb/SigningDigest;->verify([BILjcifs/smb/ServerMessageBlock;)Z

    .line 492
    :cond_b7
    sget-object v7, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v7, Ljcifs/util/LogStream;->level:I

    if-lt v7, v13, :cond_d1

    .line 493
    sget-object v7, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v7, p1}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 494
    sget-object v7, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v7, Ljcifs/util/LogStream;->level:I

    const/4 v9, 0x6

    if-lt v7, v9, :cond_d1

    .line 495
    sget-object v7, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget-object v9, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v10, 0x4

    invoke-static {v7, v9, v10, v6}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 498
    :cond_d1
    monitor-exit v8

    .line 499
    return-void

    .line 477
    :cond_d3
    iget-object v7, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    sget-object v9, Ljcifs/smb/SmbTransport;->BUF:[B

    const/16 v10, 0x24

    add-int/lit8 v11, v6, -0x20

    invoke-static {v7, v9, v10, v11}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    .line 478
    sget-object v7, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v9, 0x4

    invoke-virtual {v5, v7, v9}, Ljcifs/smb/ServerMessageBlock;->decode([BI)I

    .line 479
    instance-of v7, v5, Ljcifs/smb/SmbComTransactionResponse;

    if-eqz v7, :cond_a7

    .line 480
    move-object v0, v5

    check-cast v0, Ljcifs/smb/SmbComTransactionResponse;

    move-object v7, v0

    invoke-virtual {v7}, Ljcifs/smb/SmbComTransactionResponse;->nextElement()Ljava/lang/Object;
    :try_end_ef
    .catchall {:try_start_53 .. :try_end_ef} :catchall_50

    goto :goto_a7
.end method

.method protected doSend(Ljcifs/util/transport/Request;)V
    .registers 10
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    .line 415
    sget-object v4, Ljcifs/smb/SmbTransport;->BUF:[B

    monitor-enter v4

    .line 416
    :try_start_4
    move-object v0, p1

    check-cast v0, Ljcifs/smb/ServerMessageBlock;

    move-object v2, v0

    .line 417
    .local v2, smb:Ljcifs/smb/ServerMessageBlock;
    sget-object v3, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v5}, Ljcifs/smb/ServerMessageBlock;->encode([BI)I

    move-result v1

    .line 418
    .local v1, n:I
    const v3, 0xffff

    and-int/2addr v3, v1

    sget-object v5, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    .line 419
    sget-object v3, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v7, :cond_3d

    .line 421
    :cond_1f
    sget-object v3, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 423
    instance-of v3, v2, Ljcifs/smb/AndXServerMessageBlock;

    if-eqz v3, :cond_2e

    check-cast v2, Ljcifs/smb/AndXServerMessageBlock;

    .end local v2           #smb:Ljcifs/smb/ServerMessageBlock;
    iget-object v2, v2, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    .restart local v2       #smb:Ljcifs/smb/ServerMessageBlock;
    if-nez v2, :cond_1f

    .line 424
    :cond_2e
    sget-object v3, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x6

    if-lt v3, v5, :cond_3d

    .line 425
    sget-object v3, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget-object v5, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v6, 0x4

    invoke-static {v3, v5, v6, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 431
    :cond_3d
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    sget-object v5, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v6, 0x0

    add-int/lit8 v7, v1, 0x4

    invoke-virtual {v3, v5, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 432
    monitor-exit v4

    .line 433
    return-void

    .line 432
    .end local v1           #n:I
    .end local v2           #smb:Ljcifs/smb/ServerMessageBlock;
    :catchall_49
    move-exception v3

    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_4 .. :try_end_4b} :catchall_49

    throw v3
.end method

.method protected doSend0(Ljcifs/util/transport/Request;)V
    .registers 6
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    :try_start_0
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbTransport;->doSend(Ljcifs/util/transport/Request;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 447
    return-void

    .line 437
    :catch_4
    move-exception v0

    .line 438
    .local v0, ioe:Ljava/io/IOException;
    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_11

    .line 439
    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 441
    :cond_11
    const/4 v2, 0x1

    :try_start_12
    invoke-virtual {p0, v2}, Ljcifs/smb/SmbTransport;->disconnect(Z)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    .line 445
    :goto_15
    throw v0

    .line 442
    :catch_16
    move-exception v1

    .line 443
    .local v1, ioe2:Ljava/io/IOException;
    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_15
.end method

.method protected doSkip()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v1

    const v2, 0xffff

    and-int v0, v1, v2

    .line 502
    .local v0, size:I
    const/16 v1, 0x21

    if-lt v0, v1, :cond_16

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    if-le v1, v2, :cond_23

    .line 504
    :cond_16
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 508
    :goto_22
    return-void

    .line 506
    :cond_23
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    add-int/lit8 v2, v0, -0x20

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    goto :goto_22
.end method

.method getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;
    .registers 18
    .parameter "auth"
    .parameter "path"
    .parameter "rn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 679
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v8

    const-string v9, "IPC$"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v6

    .line 680
    .local v6, ipc:Ljcifs/smb/SmbTree;
    new-instance v7, Ljcifs/smb/Trans2GetDfsReferralResponse;

    invoke-direct {v7}, Ljcifs/smb/Trans2GetDfsReferralResponse;-><init>()V

    .line 681
    .local v7, resp:Ljcifs/smb/Trans2GetDfsReferralResponse;
    new-instance v8, Ljcifs/smb/Trans2GetDfsReferral;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljcifs/smb/Trans2GetDfsReferral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8, v7}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 683
    iget v8, v7, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    if-nez v8, :cond_20

    .line 684
    const/4 v8, 0x0

    .line 719
    :goto_1f
    return-object v8

    .line 685
    :cond_20
    if-eqz p3, :cond_28

    iget v8, v7, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    move/from16 v0, p3

    if-ge v8, v0, :cond_2c

    .line 686
    :cond_28
    iget v0, v7, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    move/from16 p3, v0

    .line 689
    :cond_2c
    new-instance v3, Ljcifs/smb/DfsReferral;

    invoke-direct {v3}, Ljcifs/smb/DfsReferral;-><init>()V

    .line 691
    .local v3, dr:Ljcifs/smb/DfsReferral;
    const/4 v8, 0x4

    new-array v1, v8, [Ljava/lang/String;

    .line 692
    .local v1, arr:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Ljcifs/smb/Dfs;->TTL:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    add-long v4, v8, v10

    .line 694
    .local v4, expiration:J
    const/4 v2, 0x0

    .line 698
    .local v2, di:I
    :goto_40
    iget-boolean v8, p1, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    iput-boolean v8, v3, Ljcifs/smb/DfsReferral;->resolveHashes:Z

    .line 699
    iget-object v8, v7, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v8, v8, v2

    iget v8, v8, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    int-to-long v8, v8

    iput-wide v8, v3, Ljcifs/smb/DfsReferral;->ttl:J

    .line 700
    iput-wide v4, v3, Ljcifs/smb/DfsReferral;->expiration:J

    .line 701
    const-string v8, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_77

    .line 702
    iget-object v8, v7, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v8, v8, v2

    iget-object v8, v8, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 709
    :goto_6a
    iget v8, v7, Ljcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    iput v8, v3, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 711
    add-int/lit8 v2, v2, 0x1

    .line 712
    move/from16 v0, p3

    if-ne v2, v0, :cond_90

    .line 719
    iget-object v8, v3, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    goto :goto_1f

    .line 704
    :cond_77
    iget-object v8, v7, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v8, v8, v2

    iget-object v8, v8, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    invoke-virtual {p0, v8, v1}, Ljcifs/smb/SmbTransport;->dfsPathSplit(Ljava/lang/String;[Ljava/lang/String;)V

    .line 705
    const/4 v8, 0x1

    aget-object v8, v1, v8

    iput-object v8, v3, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 706
    const/4 v8, 0x2

    aget-object v8, v1, v8

    iput-object v8, v3, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    .line 707
    const/4 v8, 0x3

    aget-object v8, v1, v8

    iput-object v8, v3, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    goto :goto_6a

    .line 715
    :cond_90
    new-instance v8, Ljcifs/smb/DfsReferral;

    invoke-direct {v8}, Ljcifs/smb/DfsReferral;-><init>()V

    invoke-virtual {v3, v8}, Ljcifs/smb/DfsReferral;->append(Ljcifs/smb/DfsReferral;)V

    .line 716
    iget-object v3, v3, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    goto :goto_40
.end method

.method declared-synchronized getSmbSession()Ljcifs/smb/SmbSession;
    .registers 5

    .prologue
    .line 120
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;
    .registers 12
    .parameter "auth"

    .prologue
    .line 126
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    .line 127
    .local v6, iter:Ljava/util/ListIterator;
    :cond_7
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 128
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/smb/SmbSession;

    .line 129
    .local v0, ssn:Ljcifs/smb/SmbSession;
    invoke-virtual {v0, p1}, Ljcifs/smb/SmbSession;->matches(Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 130
    iput-object p1, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_4f

    move-object v9, v0

    .line 151
    .end local v0           #ssn:Ljcifs/smb/SmbSession;
    .local v9, ssn:Ljava/lang/Object;
    :goto_1c
    monitor-exit p0

    return-object v9

    .line 136
    .end local v9           #ssn:Ljava/lang/Object;
    :cond_1e
    :try_start_1e
    sget v1, Ljcifs/smb/SmbTransport;->SO_TIMEOUT:I

    if-lez v1, :cond_52

    iget-wide v1, p0, Ljcifs/smb/SmbTransport;->sessionExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .local v7, now:J
    cmp-long v1, v1, v7

    if-gez v1, :cond_52

    .line 137
    sget v1, Ljcifs/smb/SmbTransport;->SO_TIMEOUT:I

    int-to-long v1, v1

    add-long/2addr v1, v7

    iput-wide v1, p0, Ljcifs/smb/SmbTransport;->sessionExpiration:J

    .line 138
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    .line 139
    :cond_38
    :goto_38
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 140
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/smb/SmbSession;

    .line 141
    .restart local v0       #ssn:Ljcifs/smb/SmbSession;
    iget-wide v1, v0, Ljcifs/smb/SmbSession;->expiration:J

    cmp-long v1, v1, v7

    if-gez v1, :cond_38

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbSession;->logoff(Z)V
    :try_end_4e
    .catchall {:try_start_1e .. :try_end_4e} :catchall_4f

    goto :goto_38

    .line 126
    .end local v0           #ssn:Ljcifs/smb/SmbSession;
    .end local v6           #iter:Ljava/util/ListIterator;
    .end local v7           #now:J
    :catchall_4f
    move-exception v1

    monitor-exit p0

    throw v1

    .line 147
    .restart local v6       #iter:Ljava/util/ListIterator;
    :cond_52
    :try_start_52
    new-instance v0, Ljcifs/smb/SmbSession;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    iget v2, p0, Ljcifs/smb/SmbTransport;->port:I

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    iget v4, p0, Ljcifs/smb/SmbTransport;->localPort:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljcifs/smb/SmbSession;-><init>(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjcifs/smb/NtlmPasswordAuthentication;)V

    .line 148
    .restart local v0       #ssn:Ljcifs/smb/SmbSession;
    iput-object p0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 149
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_67
    .catchall {:try_start_52 .. :try_end_67} :catchall_4f

    move-object v9, v0

    .line 151
    .restart local v9       #ssn:Ljava/lang/Object;
    goto :goto_1c
.end method

.method hasCapability(I)Z
    .registers 5
    .parameter "cap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 168
    :try_start_0
    sget v1, Ljcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Ljcifs/smb/SmbTransport;->connect(J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_d

    .line 172
    iget v1, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_18

    const/4 v1, 0x1

    :goto_c
    return v1

    .line 169
    :catch_d
    move-exception v0

    .line 170
    .local v0, ioe:Ljava/io/IOException;
    new-instance v1, Ljcifs/smb/SmbException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 172
    .end local v0           #ioe:Ljava/io/IOException;
    :cond_18
    const/4 v1, 0x0

    goto :goto_c
.end method

.method isSignatureSetupRequired(Ljcifs/smb/NtlmPasswordAuthentication;)Z
    .registers 3
    .parameter "auth"

    .prologue
    .line 175
    iget v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_18

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    if-nez v0, :cond_18

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    if-eq p1, v0, :cond_18

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method protected makeKey(Ljcifs/util/transport/Request;)V
    .registers 4
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    iget v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    const/16 v1, 0x7d00

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    iput v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    .line 361
    :cond_d
    check-cast p1, Ljcifs/smb/ServerMessageBlock;

    .end local p1
    iget v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    iput v0, p1, Ljcifs/smb/ServerMessageBlock;->mid:I

    .line 362
    return-void
.end method

.method matches(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Z
    .registers 8
    .parameter "address"
    .parameter "port"
    .parameter "localAddr"
    .parameter "localPort"
    .parameter "hostName"

    .prologue
    .line 154
    if-nez p5, :cond_6

    .line 155
    invoke-virtual {p1}, Ljcifs/UniAddress;->getHostName()Ljava/lang/String;

    move-result-object p5

    .line 156
    :cond_6
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_12
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {p1, v0}, Ljcifs/UniAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    if-eqz p2, :cond_2a

    iget v0, p0, Ljcifs/smb/SmbTransport;->port:I

    if-eq p2, v0, :cond_2a

    const/16 v0, 0x1bd

    if-ne p2, v0, :cond_3e

    iget v0, p0, Ljcifs/smb/SmbTransport;->port:I

    const/16 v1, 0x8b

    if-ne v0, v1, :cond_3e

    :cond_2a
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    if-eq p3, v0, :cond_38

    if-eqz p3, :cond_3e

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    invoke-virtual {p3, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_38
    iget v0, p0, Ljcifs/smb/SmbTransport;->localPort:I

    if-ne p4, v0, :cond_3e

    const/4 v0, 0x1

    :goto_3d
    return v0

    :cond_3e
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method protected peekKey()Ljcifs/util/transport/Request;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v3, 0x0

    const/16 v9, 0x20

    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 366
    :cond_6
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    invoke-static {v4, v5, v8, v7}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    move-result v2

    .local v2, n:I
    if-ge v2, v7, :cond_11

    .line 411
    :cond_10
    :goto_10
    return-object v3

    .line 368
    :cond_11
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    aget-byte v4, v4, v8

    const/16 v5, -0x7b

    if-eq v4, v5, :cond_6

    .line 370
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    invoke-static {v4, v5, v7, v9}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    move-result v2

    if-lt v2, v9, :cond_10

    .line 372
    sget-object v4, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v4, Ljcifs/util/LogStream;->level:I

    if-lt v4, v7, :cond_48

    .line 373
    sget-object v4, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New data read: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 374
    sget-object v4, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    invoke-static {v4, v5, v7, v9}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 385
    :cond_48
    :goto_48
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    aget-byte v4, v4, v8

    if-nez v4, :cond_89

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    if-nez v4, :cond_89

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    aget-byte v4, v4, v7

    if-ne v4, v10, :cond_89

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    const/16 v5, 0x53

    if-ne v4, v5, :cond_89

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x6

    aget-byte v4, v4, v5

    const/16 v5, 0x4d

    if-ne v4, v5, :cond_89

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x7

    aget-byte v4, v4, v5

    const/16 v5, 0x42

    if-ne v4, v5, :cond_89

    .line 403
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->key:Ljcifs/smb/SmbComBlankResponse;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/16 v5, 0x22

    invoke-static {v4, v5}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    iput v4, v3, Ljcifs/smb/SmbComBlankResponse;->mid:I

    .line 411
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->key:Ljcifs/smb/SmbComBlankResponse;

    goto :goto_10

    .line 395
    :cond_89
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8a
    const/16 v4, 0x23

    if-ge v1, v4, :cond_9b

    .line 396
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v5, v5, v6

    aput-byte v5, v4, v1

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    .line 399
    :cond_9b
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, b:I
    if-eq v0, v10, :cond_10

    .line 400
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/16 v5, 0x23

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    goto :goto_48
.end method

.method send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .registers 16
    .parameter "request"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 549
    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->connect()V

    .line 551
    iget v9, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    iget v10, p0, Ljcifs/smb/SmbTransport;->flags2:I

    or-int/2addr v9, v10

    iput v9, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 552
    iget-boolean v9, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    iput-boolean v9, p1, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 553
    iput-object p2, p1, Ljcifs/smb/ServerMessageBlock;->response:Ljcifs/smb/ServerMessageBlock;

    .line 554
    iget-object v9, p1, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    if-nez v9, :cond_18

    .line 555
    iget-object v9, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    iput-object v9, p1, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    .line 558
    :cond_18
    if-nez p2, :cond_1e

    .line 559
    :try_start_1a
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbTransport;->doSend0(Ljcifs/util/transport/Request;)V

    .line 642
    :goto_1d
    return-void

    .line 561
    :cond_1e
    instance-of v9, p1, Ljcifs/smb/SmbComTransaction;

    if-eqz v9, :cond_ee

    .line 562
    iget-byte v9, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    iput-byte v9, p2, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 563
    move-object v0, p1

    check-cast v0, Ljcifs/smb/SmbComTransaction;

    move-object v4, v0

    .line 564
    .local v4, req:Ljcifs/smb/SmbComTransaction;
    move-object v0, p2

    check-cast v0, Ljcifs/smb/SmbComTransactionResponse;

    move-object v5, v0

    .line 566
    .local v5, resp:Ljcifs/smb/SmbComTransactionResponse;
    iget v9, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    iput v9, v4, Ljcifs/smb/SmbComTransaction;->maxBufferSize:I

    .line 567
    invoke-virtual {v5}, Ljcifs/smb/SmbComTransactionResponse;->reset()V
    :try_end_35
    .catch Ljcifs/smb/SmbException; {:try_start_1a .. :try_end_35} :catch_cc
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_35} :catch_f9

    .line 570
    :try_start_35
    invoke-static {v4, v5}, Ljcifs/smb/BufferCache;->getBuffers(Ljcifs/smb/SmbComTransaction;Ljcifs/smb/SmbComTransactionResponse;)V

    .line 576
    invoke-virtual {v4}, Ljcifs/smb/SmbComTransaction;->nextElement()Ljava/lang/Object;

    .line 577
    invoke-virtual {v4}, Ljcifs/smb/SmbComTransaction;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_ce

    .line 578
    new-instance v2, Ljcifs/smb/SmbComBlankResponse;

    invoke-direct {v2}, Ljcifs/smb/SmbComBlankResponse;-><init>()V

    .line 579
    .local v2, interim:Ljcifs/smb/SmbComBlankResponse;
    sget v9, Ljcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v9, v9

    invoke-super {p0, v4, v2, v9, v10}, Ljcifs/util/transport/Transport;->sendrecv(Ljcifs/util/transport/Request;Ljcifs/util/transport/Response;J)V

    .line 580
    iget v9, v2, Ljcifs/smb/SmbComBlankResponse;->errorCode:I

    if-eqz v9, :cond_53

    .line 581
    invoke-virtual {p0, v4, v2}, Ljcifs/smb/SmbTransport;->checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 583
    :cond_53
    invoke-virtual {v4}, Ljcifs/smb/SmbComTransaction;->nextElement()Ljava/lang/Object;

    .line 588
    .end local v2           #interim:Ljcifs/smb/SmbComBlankResponse;
    :goto_56
    monitor-enter p0
    :try_end_57
    .catchall {:try_start_35 .. :try_end_57} :catchall_c0

    .line 589
    const/4 v9, 0x0

    :try_start_58
    iput-boolean v9, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    .line 590
    const/4 v9, 0x0

    iput-boolean v9, v5, Ljcifs/smb/SmbComTransactionResponse;->isReceived:Z
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_bd

    .line 592
    :try_start_5d
    iget-object v9, p0, Ljcifs/smb/SmbTransport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :cond_62
    invoke-virtual {p0, v4}, Ljcifs/smb/SmbTransport;->doSend0(Ljcifs/util/transport/Request;)V

    .line 600
    invoke-virtual {v4}, Ljcifs/smb/SmbComTransaction;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_71

    invoke-virtual {v4}, Ljcifs/smb/SmbComTransaction;->nextElement()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_62

    .line 606
    :cond_71
    sget v9, Ljcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v7, v9

    .line 607
    .local v7, timeout:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    add-long/2addr v9, v7

    iput-wide v9, v5, Ljcifs/smb/SmbComTransactionResponse;->expiration:J

    .line 608
    :cond_7b
    invoke-virtual {v5}, Ljcifs/smb/SmbComTransactionResponse;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_d2

    .line 609
    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 610
    iget-wide v9, v5, Ljcifs/smb/SmbComTransactionResponse;->expiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v7, v9, v11

    .line 611
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gtz v9, :cond_7b

    .line 612
    new-instance v9, Ljcifs/util/transport/TransportException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " timedout waiting for response to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_af
    .catchall {:try_start_5d .. :try_end_af} :catchall_b6
    .catch Ljava/lang/InterruptedException; {:try_start_5d .. :try_end_af} :catch_af

    .line 620
    .end local v7           #timeout:J
    :catch_af
    move-exception v1

    .line 621
    .local v1, ie:Ljava/lang/InterruptedException;
    :try_start_b0
    new-instance v9, Ljcifs/util/transport/TransportException;

    invoke-direct {v9, v1}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_b6
    .catchall {:try_start_b0 .. :try_end_b6} :catchall_b6

    .line 623
    .end local v1           #ie:Ljava/lang/InterruptedException;
    :catchall_b6
    move-exception v9

    :try_start_b7
    iget-object v10, p0, Ljcifs/smb/SmbTransport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v9

    .line 625
    :catchall_bd
    move-exception v9

    monitor-exit p0
    :try_end_bf
    .catchall {:try_start_b7 .. :try_end_bf} :catchall_bd

    :try_start_bf
    throw v9
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_c0

    .line 627
    :catchall_c0
    move-exception v9

    :try_start_c1
    iget-object v10, v4, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    invoke-static {v10}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    .line 628
    iget-object v10, v5, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    invoke-static {v10}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    throw v9
    :try_end_cc
    .catch Ljcifs/smb/SmbException; {:try_start_c1 .. :try_end_cc} :catch_cc
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_cc} :catch_f9

    .line 635
    .end local v4           #req:Ljcifs/smb/SmbComTransaction;
    .end local v5           #resp:Ljcifs/smb/SmbComTransactionResponse;
    :catch_cc
    move-exception v6

    .line 636
    .local v6, se:Ljcifs/smb/SmbException;
    throw v6

    .line 585
    .end local v6           #se:Ljcifs/smb/SmbException;
    .restart local v4       #req:Ljcifs/smb/SmbComTransaction;
    .restart local v5       #resp:Ljcifs/smb/SmbComTransactionResponse;
    :cond_ce
    :try_start_ce
    invoke-virtual {p0, v4}, Ljcifs/smb/SmbTransport;->makeKey(Ljcifs/util/transport/Request;)V
    :try_end_d1
    .catchall {:try_start_ce .. :try_end_d1} :catchall_c0

    goto :goto_56

    .line 617
    .restart local v7       #timeout:J
    :cond_d2
    :try_start_d2
    iget v9, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    if-eqz v9, :cond_d9

    .line 618
    invoke-virtual {p0, v4, v5}, Ljcifs/smb/SmbTransport;->checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_d9
    .catchall {:try_start_d2 .. :try_end_d9} :catchall_b6
    .catch Ljava/lang/InterruptedException; {:try_start_d2 .. :try_end_d9} :catch_af

    .line 623
    :cond_d9
    :try_start_d9
    iget-object v9, p0, Ljcifs/smb/SmbTransport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    monitor-exit p0
    :try_end_df
    .catchall {:try_start_d9 .. :try_end_df} :catchall_bd

    .line 627
    :try_start_df
    iget-object v9, v4, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    invoke-static {v9}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    .line 628
    iget-object v9, v5, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    invoke-static {v9}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V
    :try_end_e9
    .catch Ljcifs/smb/SmbException; {:try_start_df .. :try_end_e9} :catch_cc
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e9} :catch_f9

    .line 641
    .end local v4           #req:Ljcifs/smb/SmbComTransaction;
    .end local v5           #resp:Ljcifs/smb/SmbComTransactionResponse;
    .end local v7           #timeout:J
    :goto_e9
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/SmbTransport;->checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto/16 :goto_1d

    .line 632
    :cond_ee
    :try_start_ee
    iget-byte v9, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    iput-byte v9, p2, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 633
    sget v9, Ljcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v9, v9

    invoke-super {p0, p1, p2, v9, v10}, Ljcifs/util/transport/Transport;->sendrecv(Ljcifs/util/transport/Request;Ljcifs/util/transport/Response;J)V
    :try_end_f8
    .catch Ljcifs/smb/SmbException; {:try_start_ee .. :try_end_f8} :catch_cc
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f8} :catch_f9

    goto :goto_e9

    .line 637
    :catch_f9
    move-exception v3

    .line 638
    .local v3, ioe:Ljava/io/IOException;
    new-instance v9, Ljcifs/smb/SmbException;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method ssn139()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x8b

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 182
    new-instance v0, Ljcifs/netbios/Name;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v3}, Ljcifs/UniAddress;->firstCalledName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 184
    .local v0, calledName:Ljcifs/netbios/Name;
    :cond_14
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    if-nez v3, :cond_69

    .line 185
    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v4}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v11}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 189
    :goto_25
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    sget v4, Ljcifs/smb/SmbTransport;->SO_TIMEOUT:I

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 190
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    .line 191
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    .line 193
    new-instance v2, Ljcifs/netbios/SessionRequestPacket;

    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalName()Ljcifs/netbios/Name;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljcifs/netbios/SessionRequestPacket;-><init>(Ljcifs/netbios/Name;Ljcifs/netbios/Name;)V

    .line 195
    .local v2, ssp:Ljcifs/netbios/SessionServicePacket;
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    invoke-virtual {v2, v5, v7}, Ljcifs/netbios/SessionServicePacket;->writeWireFormat([BI)I

    move-result v5

    invoke-virtual {v3, v4, v7, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 196
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    invoke-static {v3, v4, v7, v10}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    move-result v3

    if-ge v3, v10, :cond_7b

    .line 198
    :try_start_5c
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_61} :catch_f6

    .line 201
    :goto_61
    new-instance v3, Ljcifs/smb/SmbException;

    const-string v4, "EOF during NetBIOS session request"

    invoke-direct {v3, v4}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 187
    .end local v2           #ssp:Ljcifs/netbios/SessionServicePacket;
    :cond_69
    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v4}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    iget v6, p0, Ljcifs/smb/SmbTransport;->localPort:I

    invoke-direct {v3, v4, v11, v5, v6}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    iput-object v3, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    goto :goto_25

    .line 203
    .restart local v2       #ssp:Ljcifs/netbios/SessionServicePacket;
    :cond_7b
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    sparse-switch v3, :sswitch_data_fa

    .line 225
    invoke-virtual {p0, v8}, Ljcifs/smb/SmbTransport;->disconnect(Z)V

    .line 226
    new-instance v3, Ljcifs/netbios/NbtException;

    invoke-direct {v3, v9, v7}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v3

    .line 205
    :sswitch_8d
    sget-object v3, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v10, :cond_ad

    .line 206
    sget-object v3, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "session established ok with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 207
    :cond_ad
    return-void

    .line 209
    :sswitch_ae
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    and-int/lit16 v1, v3, 0xff

    .line 210
    .local v1, errorCode:I
    packed-switch v1, :pswitch_data_108

    .line 216
    :pswitch_b9
    invoke-virtual {p0, v8}, Ljcifs/smb/SmbTransport;->disconnect(Z)V

    .line 217
    new-instance v3, Ljcifs/netbios/NbtException;

    invoke-direct {v3, v9, v1}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v3

    .line 213
    :pswitch_c2
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 228
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v3}, Ljcifs/UniAddress;->nextCalledName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    if-nez v3, :cond_14

    .line 230
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to establish session with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 221
    .end local v1           #errorCode:I
    :sswitch_ec
    invoke-virtual {p0, v8}, Ljcifs/smb/SmbTransport;->disconnect(Z)V

    .line 222
    new-instance v3, Ljcifs/netbios/NbtException;

    const/4 v4, -0x1

    invoke-direct {v3, v9, v4}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v3

    .line 199
    :catch_f6
    move-exception v3

    goto/16 :goto_61

    .line 203
    nop

    :sswitch_data_fa
    .sparse-switch
        -0x1 -> :sswitch_ec
        0x82 -> :sswitch_8d
        0x83 -> :sswitch_ae
    .end sparse-switch

    .line 210
    :pswitch_data_108
    .packed-switch 0x80
        :pswitch_c2
        :pswitch_b9
        :pswitch_c2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljcifs/util/transport/Transport;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/SmbTransport;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
