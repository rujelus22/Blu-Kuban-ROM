.class Ljcifs/netbios/NameServiceClient;
.super Ljava/lang/Object;
.source "NameServiceClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final DEFAULT_RCV_BUF_SIZE:I = 0x240

.field static final DEFAULT_RETRY_COUNT:I = 0x2

.field static final DEFAULT_RETRY_TIMEOUT:I = 0xbb8

.field static final DEFAULT_SND_BUF_SIZE:I = 0x240

.field static final DEFAULT_SO_TIMEOUT:I = 0x1388

.field private static final LADDR:Ljava/net/InetAddress; = null

#the value of this static final field might be set in the static constructor
.field private static final LPORT:I = 0x0

.field static final NAME_SERVICE_UDP_PORT:I = 0x89

#the value of this static final field might be set in the static constructor
.field private static final RCV_BUF_SIZE:I = 0x0

.field static final RESOLVER_BCAST:I = 0x2

.field static final RESOLVER_LMHOSTS:I = 0x1

.field static final RESOLVER_WINS:I = 0x3

.field private static final RETRY_COUNT:I

.field private static final RETRY_TIMEOUT:I

.field private static final RO:Ljava/lang/String;

.field private static final SND_BUF_SIZE:I

.field private static final SO_TIMEOUT:I

.field private static log:Ljcifs/util/LogStream;


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field baddr:Ljava/net/InetAddress;

.field private closeTimeout:I

.field private in:Ljava/net/DatagramPacket;

.field laddr:Ljava/net/InetAddress;

.field private lport:I

.field private nextNameTrnId:I

.field private out:Ljava/net/DatagramPacket;

.field private rcv_buf:[B

.field private resolveOrder:[I

.field private responseTable:Ljava/util/HashMap;

.field private snd_buf:[B

.field private socket:Ljava/net/DatagramSocket;

.field private thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x240

    .line 42
    const-string v0, "jcifs.netbios.snd_buf_size"

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->SND_BUF_SIZE:I

    .line 43
    const-string v0, "jcifs.netbios.rcv_buf_size"

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->RCV_BUF_SIZE:I

    .line 44
    const-string v0, "jcifs.netbios.soTimeout"

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->SO_TIMEOUT:I

    .line 45
    const-string v0, "jcifs.netbios.retryCount"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    .line 46
    const-string v0, "jcifs.netbios.retryTimeout"

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    .line 47
    const-string v0, "jcifs.netbios.lport"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->LPORT:I

    .line 48
    const-string v0, "jcifs.netbios.laddr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljcifs/Config;->getInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/NameServiceClient;->LADDR:Ljava/net/InetAddress;

    .line 49
    const-string v0, "jcifs.resolveOrder"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/NameServiceClient;->RO:Ljava/lang/String;

    .line 51
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    .line 67
    sget v0, Ljcifs/netbios/NameServiceClient;->LPORT:I

    sget-object v1, Ljcifs/netbios/NameServiceClient;->LADDR:Ljava/net/InetAddress;

    invoke-direct {p0, v0, v1}, Ljcifs/netbios/NameServiceClient;-><init>(ILjava/net/InetAddress;)V

    .line 68
    return-void
.end method

.method constructor <init>(ILjava/net/InetAddress;)V
    .registers 13
    .parameter "lport"
    .parameter "laddr"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Ljcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    .line 59
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    .line 61
    const/4 v5, 0x0

    iput v5, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    .line 70
    iput p1, p0, Ljcifs/netbios/NameServiceClient;->lport:I

    .line 71
    iput-object p2, p0, Ljcifs/netbios/NameServiceClient;->laddr:Ljava/net/InetAddress;

    .line 74
    :try_start_18
    const-string v5, "jcifs.netbios.baddr"

    const-string v6, "255.255.255.255"

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-static {v5, v6}, Ljcifs/Config;->getInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v5

    iput-object v5, p0, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;
    :try_end_26
    .catch Ljava/net/UnknownHostException; {:try_start_18 .. :try_end_26} :catch_11a

    .line 79
    :goto_26
    sget v5, Ljcifs/netbios/NameServiceClient;->SND_BUF_SIZE:I

    new-array v5, v5, [B

    iput-object v5, p0, Ljcifs/netbios/NameServiceClient;->snd_buf:[B

    .line 80
    sget v5, Ljcifs/netbios/NameServiceClient;->RCV_BUF_SIZE:I

    new-array v5, v5, [B

    iput-object v5, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    .line 81
    new-instance v5, Ljava/net/DatagramPacket;

    iget-object v6, p0, Ljcifs/netbios/NameServiceClient;->snd_buf:[B

    sget v7, Ljcifs/netbios/NameServiceClient;->SND_BUF_SIZE:I

    iget-object v8, p0, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    const/16 v9, 0x89

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iput-object v5, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    .line 82
    new-instance v5, Ljava/net/DatagramPacket;

    iget-object v6, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    sget v7, Ljcifs/netbios/NameServiceClient;->RCV_BUF_SIZE:I

    invoke-direct {v5, v6, v7}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v5, p0, Ljcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

    .line 84
    sget-object v5, Ljcifs/netbios/NameServiceClient;->RO:Ljava/lang/String;

    if-eqz v5, :cond_58

    sget-object v5, Ljcifs/netbios/NameServiceClient;->RO:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_88

    .line 92
    :cond_58
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v5

    if-nez v5, :cond_70

    .line 93
    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    .line 94
    iget-object v5, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput v7, v5, v6

    .line 95
    iget-object v5, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    const/4 v6, 0x1

    const/4 v7, 0x2

    aput v7, v5, v6

    .line 130
    :goto_6f
    return-void

    .line 97
    :cond_70
    const/4 v5, 0x3

    new-array v5, v5, [I

    iput-object v5, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    .line 98
    iget-object v5, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput v7, v5, v6

    .line 99
    iget-object v5, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    const/4 v6, 0x1

    const/4 v7, 0x3

    aput v7, v5, v6

    .line 100
    iget-object v5, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    const/4 v6, 0x2

    const/4 v7, 0x2

    aput v7, v5, v6

    goto :goto_6f

    .line 103
    :cond_88
    const/4 v5, 0x3

    new-array v4, v5, [I

    .line 104
    .local v4, tmp:[I
    new-instance v3, Ljava/util/StringTokenizer;

    sget-object v5, Ljcifs/netbios/NameServiceClient;->RO:Ljava/lang/String;

    const-string v6, ","

    invoke-direct {v3, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v3, st:Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .line 106
    .local v0, i:I
    :cond_95
    :goto_95
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_10d

    .line 107
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, s:Ljava/lang/String;
    const-string v5, "LMHOSTS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 109
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    const/4 v5, 0x1

    aput v5, v4, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_95

    .line 110
    :cond_b2
    const-string v5, "WINS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d6

    .line 111
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v5

    if-nez v5, :cond_cf

    .line 112
    sget-object v5, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v5, Ljcifs/util/LogStream;->level:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_95

    .line 113
    sget-object v5, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    const-string v6, "NetBIOS resolveOrder specifies WINS however the jcifs.netbios.wins property has not been set"

    invoke-virtual {v5, v6}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    goto :goto_95

    .line 118
    :cond_cf
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/4 v5, 0x3

    aput v5, v4, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_95

    .line 119
    :cond_d6
    const-string v5, "BCAST"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e5

    .line 120
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/4 v5, 0x2

    aput v5, v4, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_95

    .line 121
    :cond_e5
    const-string v5, "DNS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_95

    .line 123
    sget-object v5, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v5, Ljcifs/util/LogStream;->level:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_95

    .line 124
    sget-object v5, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown resolver method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    goto :goto_95

    .line 127
    .end local v2           #s:Ljava/lang/String;
    :cond_10d
    new-array v5, v0, [I

    iput-object v5, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    .line 128
    const/4 v5, 0x0

    iget-object v6, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_6f

    .line 76
    .end local v0           #i:I
    .end local v3           #st:Ljava/util/StringTokenizer;
    .end local v4           #tmp:[I
    :catch_11a
    move-exception v5

    goto/16 :goto_26
.end method


# virtual methods
.method ensureOpen(I)V
    .registers 5
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/netbios/NameServiceClient;->closeTimeout:I

    .line 140
    sget v0, Ljcifs/netbios/NameServiceClient;->SO_TIMEOUT:I

    if-eqz v0, :cond_f

    .line 141
    sget v0, Ljcifs/netbios/NameServiceClient;->SO_TIMEOUT:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/NameServiceClient;->closeTimeout:I

    .line 145
    :cond_f
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_32

    .line 146
    new-instance v0, Ljava/net/DatagramSocket;

    iget v1, p0, Ljcifs/netbios/NameServiceClient;->lport:I

    iget-object v2, p0, Ljcifs/netbios/NameServiceClient;->laddr:Ljava/net/InetAddress;

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    iput-object v0, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    .line 147
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "JCIFS-NameServiceClient"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Ljcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    .line 148
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 149
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 151
    :cond_32
    return-void
.end method

.method getAllByName(Ljcifs/netbios/Name;Ljava/net/InetAddress;)[Ljcifs/netbios/NbtAddress;
    .registers 10
    .parameter "name"
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 279
    new-instance v2, Ljcifs/netbios/NameQueryRequest;

    invoke-direct {v2, p1}, Ljcifs/netbios/NameQueryRequest;-><init>(Ljcifs/netbios/Name;)V

    .line 280
    .local v2, request:Ljcifs/netbios/NameQueryRequest;
    new-instance v3, Ljcifs/netbios/NameQueryResponse;

    invoke-direct {v3}, Ljcifs/netbios/NameQueryResponse;-><init>()V

    .line 282
    .local v3, response:Ljcifs/netbios/NameQueryResponse;
    if-eqz p2, :cond_31

    .end local p2
    :goto_e
    iput-object p2, v2, Ljcifs/netbios/NameQueryRequest;->addr:Ljava/net/InetAddress;

    .line 283
    iget-object v4, v2, Ljcifs/netbios/NameQueryRequest;->addr:Ljava/net/InetAddress;

    if-nez v4, :cond_36

    move v4, v5

    :goto_15
    iput-boolean v4, v2, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    .line 285
    iget-boolean v4, v2, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    if-eqz v4, :cond_38

    .line 286
    iget-object v4, p0, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    iput-object v4, v2, Ljcifs/netbios/NameQueryRequest;->addr:Ljava/net/InetAddress;

    .line 287
    sget v1, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    .line 295
    .local v1, n:I
    :cond_21
    :goto_21
    :try_start_21
    sget v4, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    invoke-virtual {p0, v2, v3, v4}, Ljcifs/netbios/NameServiceClient;->send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_3c

    .line 302
    iget-boolean v4, v3, Ljcifs/netbios/NameQueryResponse;->received:Z

    if-eqz v4, :cond_50

    iget v4, v3, Ljcifs/netbios/NameQueryResponse;->resultCode:I

    if-nez v4, :cond_50

    .line 303
    iget-object v4, v3, Ljcifs/netbios/NameQueryResponse;->addrEntry:[Ljcifs/netbios/NbtAddress;

    return-object v4

    .line 282
    .end local v1           #n:I
    .restart local p2
    :cond_31
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object p2

    goto :goto_e

    .end local p2
    :cond_36
    move v4, v6

    .line 283
    goto :goto_15

    .line 289
    :cond_38
    iput-boolean v6, v2, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    .line 290
    const/4 v1, 0x1

    .restart local v1       #n:I
    goto :goto_21

    .line 296
    :catch_3c
    move-exception v0

    .line 297
    .local v0, ioe:Ljava/io/IOException;
    sget-object v4, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v4, Ljcifs/util/LogStream;->level:I

    if-le v4, v5, :cond_48

    .line 298
    sget-object v4, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 299
    :cond_48
    new-instance v4, Ljava/net/UnknownHostException;

    iget-object v5, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 305
    .end local v0           #ioe:Ljava/io/IOException;
    :cond_50
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_58

    iget-boolean v4, v2, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    if-nez v4, :cond_21

    .line 307
    :cond_58
    new-instance v4, Ljava/net/UnknownHostException;

    iget-object v5, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method getByName(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;
    .registers 15
    .parameter "name"
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 312
    new-instance v6, Ljcifs/netbios/NameQueryRequest;

    invoke-direct {v6, p1}, Ljcifs/netbios/NameQueryRequest;-><init>(Ljcifs/netbios/Name;)V

    .line 313
    .local v6, request:Ljcifs/netbios/NameQueryRequest;
    new-instance v7, Ljcifs/netbios/NameQueryResponse;

    invoke-direct {v7}, Ljcifs/netbios/NameQueryResponse;-><init>()V

    .line 315
    .local v7, response:Ljcifs/netbios/NameQueryResponse;
    if-eqz p2, :cond_66

    .line 318
    iput-object p2, v6, Ljcifs/netbios/NameQueryRequest;->addr:Ljava/net/InetAddress;

    .line 319
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v10

    aget-byte v10, v10, v11

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1b

    move v8, v9

    :cond_1b
    iput-boolean v8, v6, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    .line 321
    sget v4, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    .line 324
    .local v4, n:I
    :cond_1f
    :try_start_1f
    sget v8, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    invoke-virtual {p0, v6, v7, v8}, Ljcifs/netbios/NameServiceClient;->send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_42

    .line 331
    iget-boolean v8, v7, Ljcifs/netbios/NameQueryResponse;->received:Z

    if-eqz v8, :cond_56

    iget v8, v7, Ljcifs/netbios/NameQueryResponse;->resultCode:I

    if-nez v8, :cond_56

    .line 332
    iget-object v8, v7, Ljcifs/netbios/NameQueryResponse;->addrEntry:[Ljcifs/netbios/NbtAddress;

    array-length v8, v8

    add-int/lit8 v3, v8, -0x1

    .line 333
    .local v3, last:I
    iget-object v8, v7, Ljcifs/netbios/NameQueryResponse;->addrEntry:[Ljcifs/netbios/NbtAddress;

    aget-object v8, v8, v3

    iget-object v8, v8, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    invoke-virtual {p2}, Ljava/net/InetAddress;->hashCode()I

    move-result v9

    iput v9, v8, Ljcifs/netbios/Name;->srcHashCode:I

    .line 334
    iget-object v8, v7, Ljcifs/netbios/NameQueryResponse;->addrEntry:[Ljcifs/netbios/NbtAddress;

    aget-object v0, v8, v3

    .line 386
    .end local v3           #last:I
    .end local v4           #n:I
    :goto_41
    return-object v0

    .line 325
    .restart local v4       #n:I
    :catch_42
    move-exception v2

    .line 326
    .local v2, ioe:Ljava/io/IOException;
    sget-object v8, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v8, Ljcifs/util/LogStream;->level:I

    if-le v8, v9, :cond_4e

    .line 327
    sget-object v8, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v8}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 328
    :cond_4e
    new-instance v8, Ljava/net/UnknownHostException;

    iget-object v9, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 336
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_56
    add-int/lit8 v4, v4, -0x1

    if-lez v4, :cond_5e

    iget-boolean v8, v6, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    if-nez v8, :cond_1f

    .line 338
    :cond_5e
    new-instance v8, Ljava/net/UnknownHostException;

    iget-object v9, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 345
    .end local v4           #n:I
    :cond_66
    const/4 v1, 0x0

    .local v1, i:I
    :goto_67
    iget-object v8, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    array-length v8, v8

    if-ge v1, v8, :cond_ed

    .line 347
    :try_start_6c
    iget-object v8, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aget v8, v8, v1

    packed-switch v8, :pswitch_data_f6

    .line 345
    :cond_73
    :goto_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 349
    :pswitch_76
    invoke-static {p1}, Ljcifs/netbios/Lmhosts;->getByName(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;

    move-result-object v0

    .line 350
    .local v0, ans:Ljcifs/netbios/NbtAddress;
    if-eqz v0, :cond_73

    .line 351
    iget-object v8, v0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    const/4 v10, 0x0

    iput v10, v8, Ljcifs/netbios/Name;->srcHashCode:I

    goto :goto_41

    .line 395
    .end local v0           #ans:Ljcifs/netbios/NbtAddress;
    :catch_82
    move-exception v8

    goto :goto_73

    .line 358
    :pswitch_84
    iget-object v8, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aget v8, v8, v1

    if-ne v8, v11, :cond_c9

    iget-object v8, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    const-string v10, "\u0001\u0002__MSBROWSE__\u0002"

    if-eq v8, v10, :cond_c9

    iget v8, p1, Ljcifs/netbios/Name;->hexCode:I

    const/16 v10, 0x1d

    if-eq v8, v10, :cond_c9

    .line 361
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v8

    iput-object v8, v6, Ljcifs/netbios/NameQueryRequest;->addr:Ljava/net/InetAddress;

    .line 362
    const/4 v8, 0x0

    iput-boolean v8, v6, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    .line 368
    :goto_9f
    sget v4, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_a1} :catch_82

    .restart local v4       #n:I
    move v5, v4

    .line 369
    .end local v4           #n:I
    .local v5, n:I
    :goto_a2
    add-int/lit8 v4, v5, -0x1

    .end local v5           #n:I
    .restart local v4       #n:I
    if-lez v5, :cond_73

    .line 371
    :try_start_a6
    sget v8, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    invoke-virtual {p0, v6, v7, v8}, Ljcifs/netbios/NameServiceClient;->send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_ab} :catch_d1

    .line 377
    :try_start_ab
    iget-boolean v8, v7, Ljcifs/netbios/NameQueryResponse;->received:Z

    if-eqz v8, :cond_e5

    iget v8, v7, Ljcifs/netbios/NameQueryResponse;->resultCode:I

    if-nez v8, :cond_e5

    .line 384
    iget-object v8, v7, Ljcifs/netbios/NameQueryResponse;->addrEntry:[Ljcifs/netbios/NbtAddress;

    const/4 v10, 0x0

    aget-object v8, v8, v10

    iget-object v8, v8, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v10, v6, Ljcifs/netbios/NameQueryRequest;->addr:Ljava/net/InetAddress;

    invoke-virtual {v10}, Ljava/net/InetAddress;->hashCode()I

    move-result v10

    iput v10, v8, Ljcifs/netbios/Name;->srcHashCode:I

    .line 386
    iget-object v8, v7, Ljcifs/netbios/NameQueryResponse;->addrEntry:[Ljcifs/netbios/NbtAddress;

    const/4 v10, 0x0

    aget-object v0, v8, v10

    goto/16 :goto_41

    .line 364
    .end local v4           #n:I
    :cond_c9
    iget-object v8, p0, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    iput-object v8, v6, Ljcifs/netbios/NameQueryRequest;->addr:Ljava/net/InetAddress;

    .line 365
    const/4 v8, 0x1

    iput-boolean v8, v6, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    goto :goto_9f

    .line 372
    .restart local v4       #n:I
    :catch_d1
    move-exception v2

    .line 373
    .restart local v2       #ioe:Ljava/io/IOException;
    sget-object v8, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v8, Ljcifs/util/LogStream;->level:I

    if-le v8, v9, :cond_dd

    .line 374
    sget-object v8, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v8}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 375
    :cond_dd
    new-instance v8, Ljava/net/UnknownHostException;

    iget-object v10, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 387
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_e5
    iget-object v8, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aget v8, v8, v1
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_e9} :catch_82

    if-eq v8, v11, :cond_73

    move v5, v4

    .end local v4           #n:I
    .restart local v5       #n:I
    goto :goto_a2

    .line 398
    .end local v5           #n:I
    :cond_ed
    new-instance v8, Ljava/net/UnknownHostException;

    iget-object v9, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 347
    nop

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_76
        :pswitch_84
        :pswitch_84
    .end packed-switch
.end method

.method getNextNameTrnId()I
    .registers 3

    .prologue
    .line 133
    iget v0, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    const v1, 0xffff

    and-int/2addr v0, v1

    if-nez v0, :cond_f

    .line 134
    const/4 v0, 0x1

    iput v0, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    .line 136
    :cond_f
    iget v0, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    return v0
.end method

.method getNodeStatus(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;
    .registers 13
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 405
    new-instance v5, Ljcifs/netbios/NodeStatusResponse;

    invoke-direct {v5, p1}, Ljcifs/netbios/NodeStatusResponse;-><init>(Ljcifs/netbios/NbtAddress;)V

    .line 406
    .local v5, response:Ljcifs/netbios/NodeStatusResponse;
    new-instance v4, Ljcifs/netbios/NodeStatusRequest;

    new-instance v7, Ljcifs/netbios/Name;

    const-string v8, "*\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v4, v7}, Ljcifs/netbios/NodeStatusRequest;-><init>(Ljcifs/netbios/Name;)V

    .line 408
    .local v4, request:Ljcifs/netbios/NodeStatusRequest;
    invoke-virtual {p1}, Ljcifs/netbios/NbtAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v7

    iput-object v7, v4, Ljcifs/netbios/NodeStatusRequest;->addr:Ljava/net/InetAddress;

    .line 410
    sget v2, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    .local v2, n:I
    move v3, v2

    .line 411
    .end local v2           #n:I
    .local v3, n:I
    :goto_1c
    add-int/lit8 v2, v3, -0x1

    .end local v3           #n:I
    .restart local v2       #n:I
    if-lez v3, :cond_5e

    .line 413
    :try_start_20
    sget v7, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    invoke-virtual {p0, v4, v5, v7}, Ljcifs/netbios/NameServiceClient;->send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_44

    .line 419
    iget-boolean v7, v5, Ljcifs/netbios/NodeStatusResponse;->received:Z

    if-eqz v7, :cond_68

    iget v7, v5, Ljcifs/netbios/NodeStatusResponse;->resultCode:I

    if-nez v7, :cond_68

    .line 434
    iget-object v7, v4, Ljcifs/netbios/NodeStatusRequest;->addr:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->hashCode()I

    move-result v6

    .line 435
    .local v6, srcHashCode:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_34
    iget-object v7, v5, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    array-length v7, v7

    if-ge v0, v7, :cond_5b

    .line 436
    iget-object v7, v5, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    aget-object v7, v7, v0

    iget-object v7, v7, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iput v6, v7, Ljcifs/netbios/Name;->srcHashCode:I

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 414
    .end local v0           #i:I
    .end local v6           #srcHashCode:I
    :catch_44
    move-exception v1

    .line 415
    .local v1, ioe:Ljava/io/IOException;
    sget-object v7, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v7, Ljcifs/util/LogStream;->level:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_51

    .line 416
    sget-object v7, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v7}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 417
    :cond_51
    new-instance v7, Ljava/net/UnknownHostException;

    invoke-virtual {p1}, Ljcifs/netbios/NbtAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 438
    .end local v1           #ioe:Ljava/io/IOException;
    .restart local v0       #i:I
    .restart local v6       #srcHashCode:I
    :cond_5b
    iget-object v7, v5, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    return-object v7

    .line 441
    .end local v0           #i:I
    .end local v6           #srcHashCode:I
    :cond_5e
    new-instance v7, Ljava/net/UnknownHostException;

    iget-object v8, p1, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v8, v8, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_68
    move v3, v2

    .end local v2           #n:I
    .restart local v3       #n:I
    goto :goto_1c
.end method

.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x3

    .line 176
    :cond_1
    :goto_1
    :try_start_1
    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_75

    .line 177
    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

    sget v4, Ljcifs/netbios/NameServiceClient;->RCV_BUF_SIZE:I

    invoke-virtual {v3, v4}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 179
    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    iget v4, p0, Ljcifs/netbios/NameServiceClient;->closeTimeout:I

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 180
    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    iget-object v4, p0, Ljcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 182
    sget-object v3, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-le v3, v7, :cond_2b

    .line 183
    sget-object v3, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    const-string v4, "NetBIOS: new data read from socket"

    invoke-virtual {v3, v4}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 185
    :cond_2b
    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljcifs/netbios/NameServicePacket;->readNameTrnId([BI)I

    move-result v1

    .line 186
    .local v1, nameTrnId:I
    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljcifs/netbios/NameServicePacket;

    .line 187
    .local v2, response:Ljcifs/netbios/NameServicePacket;
    if-eqz v2, :cond_1

    iget-boolean v3, v2, Ljcifs/netbios/NameServicePacket;->received:Z

    if-nez v3, :cond_1

    .line 190
    monitor-enter v2
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_8a
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_46} :catch_70
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_46} :catch_79

    .line 191
    :try_start_46
    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljcifs/netbios/NameServicePacket;->readWireFormat([BI)I

    .line 192
    const/4 v3, 0x1

    iput-boolean v3, v2, Ljcifs/netbios/NameServicePacket;->received:Z

    .line 194
    sget-object v3, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-le v3, v7, :cond_68

    .line 195
    sget-object v3, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 196
    sget-object v3, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    iget-object v4, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    const/4 v5, 0x0

    iget-object v6, p0, Ljcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 199
    :cond_68
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 200
    monitor-exit v2

    goto :goto_1

    :catchall_6d
    move-exception v3

    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_46 .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw v3
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_8a
    .catch Ljava/net/SocketTimeoutException; {:try_start_6f .. :try_end_70} :catch_70
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_70} :catch_79

    .line 202
    .end local v1           #nameTrnId:I
    .end local v2           #response:Ljcifs/netbios/NameServicePacket;
    :catch_70
    move-exception v3

    .line 207
    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->tryClose()V

    .line 209
    :goto_74
    return-void

    .line 207
    :cond_75
    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->tryClose()V

    goto :goto_74

    .line 203
    :catch_79
    move-exception v0

    .line 204
    .local v0, ex:Ljava/lang/Exception;
    :try_start_7a
    sget-object v3, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_86

    .line 205
    sget-object v3, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_86
    .catchall {:try_start_7a .. :try_end_86} :catchall_8a

    .line 207
    :cond_86
    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->tryClose()V

    goto :goto_74

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_8a
    move-exception v3

    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->tryClose()V

    throw v3
.end method

.method send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    .registers 16
    .parameter "request"
    .parameter "response"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v3, 0x0

    .line 213
    .local v3, nid:Ljava/lang/Integer;
    sget-object v7, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    array-length v1, v7

    .line 215
    .local v1, max:I
    if-nez v1, :cond_7

    .line 216
    const/4 v1, 0x1

    .line 218
    :cond_7
    monitor-enter p2

    move v2, v1

    .end local v1           #max:I
    .local v2, max:I
    move-object v4, v3

    .line 219
    .end local v3           #nid:Ljava/lang/Integer;
    .local v4, nid:Ljava/lang/Integer;
    :goto_a
    add-int/lit8 v1, v2, -0x1

    .end local v2           #max:I
    .restart local v1       #max:I
    if-lez v2, :cond_d4

    .line 221
    :try_start_e
    iget-object v8, p0, Ljcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    monitor-enter v8
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_cc
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_cf

    .line 222
    :try_start_11
    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->getNextNameTrnId()I

    move-result v7

    iput v7, p1, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    .line 223
    new-instance v3, Ljava/lang/Integer;

    iget v7, p1, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    invoke-direct {v3, v7}, Ljava/lang/Integer;-><init>(I)V
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_7b

    .line 225
    .end local v4           #nid:Ljava/lang/Integer;
    .restart local v3       #nid:Ljava/lang/Integer;
    :try_start_1e
    iget-object v7, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    iget-object v9, p1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-virtual {v7, v9}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 226
    iget-object v7, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    iget-object v9, p0, Ljcifs/netbios/NameServiceClient;->snd_buf:[B

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Ljcifs/netbios/NameServicePacket;->writeWireFormat([BI)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 227
    const/4 v7, 0x0

    iput-boolean v7, p2, Ljcifs/netbios/NameServicePacket;->received:Z

    .line 229
    iget-object v7, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v7, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    add-int/lit16 v7, p3, 0x3e8

    invoke-virtual {p0, v7}, Ljcifs/netbios/NameServiceClient;->ensureOpen(I)V

    .line 231
    iget-object v7, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    iget-object v9, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    invoke-virtual {v7, v9}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 233
    sget-object v7, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v7, Ljcifs/util/LogStream;->level:I

    const/4 v9, 0x3

    if-le v7, v9, :cond_5f

    .line 234
    sget-object v7, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v7, p1}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 235
    sget-object v7, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    iget-object v9, p0, Ljcifs/netbios/NameServiceClient;->snd_buf:[B

    const/4 v10, 0x0

    iget-object v11, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    invoke-virtual {v11}, Ljava/net/DatagramPacket;->getLength()I

    move-result v11

    invoke-static {v7, v9, v10, v11}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 237
    :cond_5f
    monitor-exit v8
    :try_end_60
    .catchall {:try_start_1e .. :try_end_60} :catchall_d2

    .line 239
    :try_start_60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 240
    .local v5, start:J
    :goto_64
    if-lez p3, :cond_a0

    .line 241
    int-to-long v7, p3

    invoke-virtual {p2, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 248
    iget-boolean v7, p2, Ljcifs/netbios/NameServicePacket;->received:Z

    if-eqz v7, :cond_94

    iget v7, p1, Ljcifs/netbios/NameServicePacket;->questionType:I

    iget v8, p2, Ljcifs/netbios/NameServicePacket;->recordType:I
    :try_end_72
    .catchall {:try_start_60 .. :try_end_72} :catchall_8a
    .catch Ljava/lang/InterruptedException; {:try_start_60 .. :try_end_72} :catch_7f

    if-ne v7, v8, :cond_94

    .line 258
    :try_start_74
    iget-object v7, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2
    :try_end_7a
    .catchall {:try_start_74 .. :try_end_7a} :catchall_91

    .line 274
    .end local v5           #start:J
    :goto_7a
    return-void

    .line 237
    .end local v3           #nid:Ljava/lang/Integer;
    .restart local v4       #nid:Ljava/lang/Integer;
    :catchall_7b
    move-exception v7

    move-object v3, v4

    .end local v4           #nid:Ljava/lang/Integer;
    .restart local v3       #nid:Ljava/lang/Integer;
    :goto_7d
    :try_start_7d
    monitor-exit v8
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_d2

    :try_start_7e
    throw v7
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_8a
    .catch Ljava/lang/InterruptedException; {:try_start_7e .. :try_end_7f} :catch_7f

    .line 255
    :catch_7f
    move-exception v0

    .line 256
    .local v0, ie:Ljava/lang/InterruptedException;
    :goto_80
    :try_start_80
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_8a
    .catchall {:try_start_80 .. :try_end_8a} :catchall_8a

    .line 258
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_8a
    move-exception v7

    :goto_8b
    :try_start_8b
    iget-object v8, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v7

    .line 273
    :catchall_91
    move-exception v7

    monitor-exit p2
    :try_end_93
    .catchall {:try_start_8b .. :try_end_93} :catchall_91

    throw v7

    .line 251
    .restart local v5       #start:J
    :cond_94
    const/4 v7, 0x0

    :try_start_95
    iput-boolean v7, p2, Ljcifs/netbios/NameServicePacket;->received:Z

    .line 252
    int-to-long v7, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_9b
    .catchall {:try_start_95 .. :try_end_9b} :catchall_8a
    .catch Ljava/lang/InterruptedException; {:try_start_95 .. :try_end_9b} :catch_7f

    move-result-wide v9

    sub-long/2addr v9, v5

    sub-long/2addr v7, v9

    long-to-int p3, v7

    goto :goto_64

    .line 258
    :cond_a0
    :try_start_a0
    iget-object v7, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v8, p0, Ljcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    monitor-enter v8
    :try_end_a8
    .catchall {:try_start_a0 .. :try_end_a8} :catchall_91

    .line 262
    :try_start_a8
    iget-object v7, p1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-static {v7}, Ljcifs/netbios/NbtAddress;->isWINS(Ljava/net/InetAddress;)Z

    move-result v7

    if-nez v7, :cond_b3

    .line 263
    monitor-exit v8
    :try_end_b1
    .catchall {:try_start_a8 .. :try_end_b1} :catchall_c9

    .line 273
    .end local v5           #start:J
    :goto_b1
    :try_start_b1
    monitor-exit p2
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_91

    goto :goto_7a

    .line 268
    .restart local v5       #start:J
    :cond_b3
    :try_start_b3
    iget-object v7, p1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v9

    if-ne v7, v9, :cond_be

    .line 269
    invoke-static {}, Ljcifs/netbios/NbtAddress;->switchWINS()Ljava/net/InetAddress;

    .line 270
    :cond_be
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v7

    iput-object v7, p1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 271
    monitor-exit v8

    move v2, v1

    .end local v1           #max:I
    .restart local v2       #max:I
    move-object v4, v3

    .end local v3           #nid:Ljava/lang/Integer;
    .restart local v4       #nid:Ljava/lang/Integer;
    goto/16 :goto_a

    .end local v2           #max:I
    .end local v4           #nid:Ljava/lang/Integer;
    .restart local v1       #max:I
    .restart local v3       #nid:Ljava/lang/Integer;
    :catchall_c9
    move-exception v7

    monitor-exit v8
    :try_end_cb
    .catchall {:try_start_b3 .. :try_end_cb} :catchall_c9

    :try_start_cb
    throw v7
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_91

    .line 258
    .end local v3           #nid:Ljava/lang/Integer;
    .end local v5           #start:J
    .restart local v4       #nid:Ljava/lang/Integer;
    :catchall_cc
    move-exception v7

    move-object v3, v4

    .end local v4           #nid:Ljava/lang/Integer;
    .restart local v3       #nid:Ljava/lang/Integer;
    goto :goto_8b

    .line 255
    .end local v3           #nid:Ljava/lang/Integer;
    .restart local v4       #nid:Ljava/lang/Integer;
    :catch_cf
    move-exception v0

    move-object v3, v4

    .end local v4           #nid:Ljava/lang/Integer;
    .restart local v3       #nid:Ljava/lang/Integer;
    goto :goto_80

    .line 237
    :catchall_d2
    move-exception v7

    goto :goto_7d

    .end local v3           #nid:Ljava/lang/Integer;
    .restart local v4       #nid:Ljava/lang/Integer;
    :cond_d4
    move-object v3, v4

    .end local v4           #nid:Ljava/lang/Integer;
    .restart local v3       #nid:Ljava/lang/Integer;
    goto :goto_b1
.end method

.method tryClose()V
    .registers 3

    .prologue
    .line 153
    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 163
    :try_start_3
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_f

    .line 164
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    .line 167
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    .line 168
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 169
    monitor-exit v1

    .line 170
    return-void

    .line 169
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method
