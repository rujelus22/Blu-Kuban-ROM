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

    .line 29
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
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v5, Ljava/lang/Object;

    invoke-direct/range {v5 .. v5}, Ljava/lang/Object;-><init>()V

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

    .line 75
    const-string v6, "255.255.255.255"

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 74
    invoke-static {v5, v6}, Ljcifs/Config;->getInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v5

    iput-object v5, p0, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;
    :try_end_26
    .catch Ljava/net/UnknownHostException; {:try_start_18 .. :try_end_26} :catch_111

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

    if-nez v5, :cond_a7

    .line 127
    new-array v5, v0, [I

    iput-object v5, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    .line 128
    const/4 v5, 0x0

    iget-object v6, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6f

    .line 107
    :cond_a7
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, s:Ljava/lang/String;
    const-string v5, "LMHOSTS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_be

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
    :cond_be
    const-string v5, "WINS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e0

    .line 111
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v5

    if-nez v5, :cond_d9

    .line 112
    sget v5, Ljcifs/util/LogStream;->level:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_95

    .line 113
    sget-object v5, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    const-string v6, "NetBIOS resolveOrder specifies WINS however the jcifs.netbios.wins property has not been set"

    invoke-virtual {v5, v6}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    goto :goto_95

    .line 118
    :cond_d9
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
    :cond_e0
    const-string v5, "BCAST"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ef

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
    :cond_ef
    const-string v5, "DNS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_95

    .line 123
    sget v5, Ljcifs/util/LogStream;->level:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_95

    .line 124
    sget-object v5, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unknown resolver method: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    goto :goto_95

    .line 76
    .end local v0           #i:I
    .end local v2           #s:Ljava/lang/String;
    .end local v3           #st:Ljava/util/StringTokenizer;
    .end local v4           #tmp:[I
    :catch_111
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
    iput-object p2, v2, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 283
    iget-object v4, v2, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    if-nez v4, :cond_36

    move v4, v5

    :goto_15
    iput-boolean v4, v2, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 285
    iget-boolean v4, v2, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    if-eqz v4, :cond_38

    .line 286
    iget-object v4, p0, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    iput-object v4, v2, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

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
    iget-boolean v4, v3, Ljcifs/netbios/NameServicePacket;->received:Z

    if-eqz v4, :cond_4e

    iget v4, v3, Ljcifs/netbios/NameServicePacket;->resultCode:I

    if-nez v4, :cond_4e

    .line 303
    iget-object v4, v3, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

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
    iput-boolean v6, v2, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 290
    const/4 v1, 0x1

    .restart local v1       #n:I
    goto :goto_21

    .line 296
    :catch_3c
    move-exception v0

    .line 297
    .local v0, ioe:Ljava/io/IOException;
    sget v4, Ljcifs/util/LogStream;->level:I

    if-le v4, v5, :cond_46

    .line 298
    sget-object v4, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 299
    :cond_46
    new-instance v4, Ljava/net/UnknownHostException;

    iget-object v5, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 305
    .end local v0           #ioe:Ljava/io/IOException;
    :cond_4e
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_56

    iget-boolean v4, v2, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 293
    if-nez v4, :cond_21

    .line 307
    :cond_56
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
    if-eqz p2, :cond_64

    .line 318
    iput-object p2, v6, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 319
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v10

    aget-byte v10, v10, v11

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1b

    move v8, v9

    :cond_1b
    iput-boolean v8, v6, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

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
    iget-boolean v8, v7, Ljcifs/netbios/NameServicePacket;->received:Z

    if-eqz v8, :cond_54

    iget v8, v7, Ljcifs/netbios/NameServicePacket;->resultCode:I

    if-nez v8, :cond_54

    .line 332
    iget-object v8, v7, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    array-length v8, v8

    add-int/lit8 v3, v8, -0x1

    .line 333
    .local v3, last:I
    iget-object v8, v7, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    aget-object v8, v8, v3

    iget-object v8, v8, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    invoke-virtual {p2}, Ljava/net/InetAddress;->hashCode()I

    move-result v9

    iput v9, v8, Ljcifs/netbios/Name;->srcHashCode:I

    .line 334
    iget-object v8, v7, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

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
    sget v8, Ljcifs/util/LogStream;->level:I

    if-le v8, v9, :cond_4c

    .line 327
    sget-object v8, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v8}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 328
    :cond_4c
    new-instance v8, Ljava/net/UnknownHostException;

    iget-object v9, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 336
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_54
    add-int/lit8 v4, v4, -0x1

    if-lez v4, :cond_5c

    iget-boolean v8, v6, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 322
    if-nez v8, :cond_1f

    .line 338
    :cond_5c
    new-instance v8, Ljava/net/UnknownHostException;

    iget-object v9, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 345
    .end local v4           #n:I
    :cond_64
    const/4 v1, 0x0

    .local v1, i:I
    :goto_65
    iget-object v8, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    array-length v8, v8

    if-lt v1, v8, :cond_72

    .line 398
    new-instance v8, Ljava/net/UnknownHostException;

    iget-object v9, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 347
    :cond_72
    :try_start_72
    iget-object v8, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aget v8, v8, v1

    packed-switch v8, :pswitch_data_f2

    .line 345
    :cond_79
    :goto_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 349
    :pswitch_7c
    invoke-static {p1}, Ljcifs/netbios/Lmhosts;->getByName(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;

    move-result-object v0

    .line 350
    .local v0, ans:Ljcifs/netbios/NbtAddress;
    if-eqz v0, :cond_79

    .line 351
    iget-object v8, v0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    const/4 v10, 0x0

    iput v10, v8, Ljcifs/netbios/Name;->srcHashCode:I

    goto :goto_41

    .line 395
    .end local v0           #ans:Ljcifs/netbios/NbtAddress;
    :catch_88
    move-exception v8

    goto :goto_79

    .line 358
    :pswitch_8a
    iget-object v8, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aget v8, v8, v1

    if-ne v8, v11, :cond_cf

    .line 359
    iget-object v8, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    const-string v10, "\u0001\u0002__MSBROWSE__\u0002"

    if-eq v8, v10, :cond_cf

    .line 360
    iget v8, p1, Ljcifs/netbios/Name;->hexCode:I

    const/16 v10, 0x1d

    if-eq v8, v10, :cond_cf

    .line 361
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v8

    iput-object v8, v6, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 362
    const/4 v8, 0x0

    iput-boolean v8, v6, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 368
    :goto_a5
    sget v4, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_a7} :catch_88

    .restart local v4       #n:I
    move v5, v4

    .line 369
    .end local v4           #n:I
    .local v5, n:I
    :goto_a8
    add-int/lit8 v4, v5, -0x1

    .end local v5           #n:I
    .restart local v4       #n:I
    if-lez v5, :cond_79

    .line 371
    :try_start_ac
    sget v8, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    invoke-virtual {p0, v6, v7, v8}, Ljcifs/netbios/NameServiceClient;->send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b1} :catch_d7

    .line 377
    :try_start_b1
    iget-boolean v8, v7, Ljcifs/netbios/NameServicePacket;->received:Z

    if-eqz v8, :cond_e9

    iget v8, v7, Ljcifs/netbios/NameServicePacket;->resultCode:I

    if-nez v8, :cond_e9

    .line 384
    iget-object v8, v7, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    const/4 v10, 0x0

    aget-object v8, v8, v10

    iget-object v8, v8, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 385
    iget-object v10, v6, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-virtual {v10}, Ljava/net/InetAddress;->hashCode()I

    move-result v10

    .line 384
    iput v10, v8, Ljcifs/netbios/Name;->srcHashCode:I

    .line 386
    iget-object v8, v7, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    const/4 v10, 0x0

    aget-object v0, v8, v10

    goto/16 :goto_41

    .line 364
    .end local v4           #n:I
    :cond_cf
    iget-object v8, p0, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    iput-object v8, v6, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 365
    const/4 v8, 0x1

    iput-boolean v8, v6, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    goto :goto_a5

    .line 372
    .restart local v4       #n:I
    :catch_d7
    move-exception v2

    .line 373
    .restart local v2       #ioe:Ljava/io/IOException;
    sget v8, Ljcifs/util/LogStream;->level:I

    if-le v8, v9, :cond_e1

    .line 374
    sget-object v8, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v8}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 375
    :cond_e1
    new-instance v8, Ljava/net/UnknownHostException;

    iget-object v10, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 387
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_e9
    iget-object v8, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aget v8, v8, v1
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_ed} :catch_88

    if-eq v8, v11, :cond_79

    move v5, v4

    .end local v4           #n:I
    .restart local v5       #n:I
    goto :goto_a8

    .line 347
    nop

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_8a
        :pswitch_8a
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

    .line 407
    new-instance v7, Ljcifs/netbios/Name;

    const-string v8, "*\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 406
    invoke-direct {v4, v7}, Ljcifs/netbios/NodeStatusRequest;-><init>(Ljcifs/netbios/Name;)V

    .line 408
    .local v4, request:Ljcifs/netbios/NodeStatusRequest;
    invoke-virtual {p1}, Ljcifs/netbios/NbtAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v7

    iput-object v7, v4, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

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
    if-gtz v3, :cond_2a

    .line 441
    new-instance v7, Ljava/net/UnknownHostException;

    iget-object v8, p1, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v8, v8, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 413
    :cond_2a
    :try_start_2a
    sget v7, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    invoke-virtual {p0, v4, v5, v7}, Ljcifs/netbios/NameServiceClient;->send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2f} :catch_46

    .line 419
    iget-boolean v7, v5, Ljcifs/netbios/NameServicePacket;->received:Z

    if-eqz v7, :cond_66

    iget v7, v5, Ljcifs/netbios/NameServicePacket;->resultCode:I

    if-nez v7, :cond_66

    .line 434
    iget-object v7, v4, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->hashCode()I

    move-result v6

    .line 435
    .local v6, srcHashCode:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3e
    iget-object v7, v5, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    array-length v7, v7

    if-lt v0, v7, :cond_5b

    .line 438
    iget-object v7, v5, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    return-object v7

    .line 414
    .end local v0           #i:I
    .end local v6           #srcHashCode:I
    :catch_46
    move-exception v1

    .line 415
    .local v1, ioe:Ljava/io/IOException;
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

    .line 436
    .end local v1           #ioe:Ljava/io/IOException;
    .restart local v0       #i:I
    .restart local v6       #srcHashCode:I
    :cond_5b
    iget-object v7, v5, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    aget-object v7, v7, v0

    iget-object v7, v7, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iput v6, v7, Ljcifs/netbios/Name;->srcHashCode:I

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .end local v0           #i:I
    .end local v6           #srcHashCode:I
    :cond_66
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
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_84
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_6} :catch_70
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_75

    move-result-object v4

    if-eq v3, v4, :cond_d

    .line 207
    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->tryClose()V

    .line 209
    :goto_c
    return-void

    .line 177
    :cond_d
    :try_start_d
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
    sget v3, Ljcifs/util/LogStream;->level:I

    if-le v3, v7, :cond_2d

    .line 183
    sget-object v3, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    const-string v4, "NetBIOS: new data read from socket"

    invoke-virtual {v3, v4}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 185
    :cond_2d
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
    :try_end_48
    .catchall {:try_start_d .. :try_end_48} :catchall_84
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_48} :catch_70
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_48} :catch_75

    .line 191
    :try_start_48
    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljcifs/netbios/NameServicePacket;->readWireFormat([BI)I

    .line 192
    const/4 v3, 0x1

    iput-boolean v3, v2, Ljcifs/netbios/NameServicePacket;->received:Z

    .line 194
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

    .line 190
    monitor-exit v2

    goto :goto_1

    :catchall_6d
    move-exception v3

    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_48 .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw v3
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_84
    .catch Ljava/net/SocketTimeoutException; {:try_start_6f .. :try_end_70} :catch_70
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_70} :catch_75

    .line 202
    .end local v1           #nameTrnId:I
    .end local v2           #response:Ljcifs/netbios/NameServicePacket;
    :catch_70
    move-exception v3

    .line 207
    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->tryClose()V

    goto :goto_c

    .line 203
    :catch_75
    move-exception v0

    .line 204
    .local v0, ex:Ljava/lang/Exception;
    :try_start_76
    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_80

    .line 205
    sget-object v3, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_84

    .line 207
    :cond_80
    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->tryClose()V

    goto :goto_c

    .line 206
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_84
    move-exception v3

    .line 207
    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->tryClose()V

    .line 208
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
    if-gtz v2, :cond_11

    move-object v3, v4

    .line 218
    .end local v4           #nid:Ljava/lang/Integer;
    .restart local v3       #nid:Ljava/lang/Integer;
    :goto_f
    :try_start_f
    monitor-exit p2
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_7c

    .line 274
    :goto_10
    return-void

    .line 221
    .end local v3           #nid:Ljava/lang/Integer;
    .restart local v4       #nid:Ljava/lang/Integer;
    :cond_11
    :try_start_11
    iget-object v8, p0, Ljcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    monitor-enter v8
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_cd
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_d0

    .line 222
    :try_start_14
    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->getNextNameTrnId()I

    move-result v7

    iput v7, p1, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    .line 223
    new-instance v3, Ljava/lang/Integer;

    iget v7, p1, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    invoke-direct {v3, v7}, Ljava/lang/Integer;-><init>(I)V
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_7f

    .line 225
    .end local v4           #nid:Ljava/lang/Integer;
    .restart local v3       #nid:Ljava/lang/Integer;
    :try_start_21
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
    sget v7, Ljcifs/util/LogStream;->level:I

    const/4 v9, 0x3

    if-le v7, v9, :cond_60

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

    .line 221
    :cond_60
    monitor-exit v8
    :try_end_61
    .catchall {:try_start_21 .. :try_end_61} :catchall_d3

    .line 239
    :try_start_61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_8e
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_64} :catch_83

    move-result-wide v5

    .line 240
    .local v5, start:J
    :goto_65
    if-gtz p3, :cond_95

    .line 258
    :try_start_67
    iget-object v7, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v8, p0, Ljcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    monitor-enter v8
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_7c

    .line 262
    :try_start_6f
    iget-object v7, p1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-static {v7}, Ljcifs/netbios/NbtAddress;->isWINS(Ljava/net/InetAddress;)Z

    move-result v7

    if-nez v7, :cond_b7

    .line 263
    monitor-exit v8

    goto :goto_f

    .line 261
    :catchall_79
    move-exception v7

    monitor-exit v8
    :try_end_7b
    .catchall {:try_start_6f .. :try_end_7b} :catchall_79

    :try_start_7b
    throw v7

    .line 218
    .end local v5           #start:J
    :catchall_7c
    move-exception v7

    monitor-exit p2
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_7c

    throw v7

    .line 221
    .end local v3           #nid:Ljava/lang/Integer;
    .restart local v4       #nid:Ljava/lang/Integer;
    :catchall_7f
    move-exception v7

    move-object v3, v4

    .end local v4           #nid:Ljava/lang/Integer;
    .restart local v3       #nid:Ljava/lang/Integer;
    :goto_81
    :try_start_81
    monitor-exit v8
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_d3

    :try_start_82
    throw v7
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_8e
    .catch Ljava/lang/InterruptedException; {:try_start_82 .. :try_end_83} :catch_83

    .line 255
    :catch_83
    move-exception v0

    .line 256
    .local v0, ie:Ljava/lang/InterruptedException;
    :goto_84
    :try_start_84
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_8e
    .catchall {:try_start_84 .. :try_end_8e} :catchall_8e

    .line 257
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_8e
    move-exception v7

    .line 258
    :goto_8f
    :try_start_8f
    iget-object v8, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    throw v7
    :try_end_95
    .catchall {:try_start_8f .. :try_end_95} :catchall_7c

    .line 241
    .restart local v5       #start:J
    :cond_95
    int-to-long v7, p3

    :try_start_96
    invoke-virtual {p2, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 248
    iget-boolean v7, p2, Ljcifs/netbios/NameServicePacket;->received:Z

    if-eqz v7, :cond_ab

    iget v7, p1, Ljcifs/netbios/NameServicePacket;->questionType:I

    iget v8, p2, Ljcifs/netbios/NameServicePacket;->recordType:I
    :try_end_a1
    .catchall {:try_start_96 .. :try_end_a1} :catchall_8e
    .catch Ljava/lang/InterruptedException; {:try_start_96 .. :try_end_a1} :catch_83

    if-ne v7, v8, :cond_ab

    .line 258
    :try_start_a3
    iget-object v7, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    monitor-exit p2
    :try_end_a9
    .catchall {:try_start_a3 .. :try_end_a9} :catchall_7c

    goto/16 :goto_10

    .line 251
    :cond_ab
    const/4 v7, 0x0

    :try_start_ac
    iput-boolean v7, p2, Ljcifs/netbios/NameServicePacket;->received:Z

    .line 252
    int-to-long v7, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_b2
    .catchall {:try_start_ac .. :try_end_b2} :catchall_8e
    .catch Ljava/lang/InterruptedException; {:try_start_ac .. :try_end_b2} :catch_83

    move-result-wide v9

    sub-long/2addr v9, v5

    sub-long/2addr v7, v9

    long-to-int p3, v7

    goto :goto_65

    .line 268
    :cond_b7
    :try_start_b7
    iget-object v7, p1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v9

    if-ne v7, v9, :cond_c2

    .line 269
    invoke-static {}, Ljcifs/netbios/NbtAddress;->switchWINS()Ljava/net/InetAddress;

    .line 270
    :cond_c2
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v7

    iput-object v7, p1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 261
    monitor-exit v8
    :try_end_c9
    .catchall {:try_start_b7 .. :try_end_c9} :catchall_79

    move v2, v1

    .end local v1           #max:I
    .restart local v2       #max:I
    move-object v4, v3

    .end local v3           #nid:Ljava/lang/Integer;
    .restart local v4       #nid:Ljava/lang/Integer;
    goto/16 :goto_a

    .line 257
    .end local v2           #max:I
    .end local v5           #start:J
    .restart local v1       #max:I
    :catchall_cd
    move-exception v7

    move-object v3, v4

    .end local v4           #nid:Ljava/lang/Integer;
    .restart local v3       #nid:Ljava/lang/Integer;
    goto :goto_8f

    .line 255
    .end local v3           #nid:Ljava/lang/Integer;
    .restart local v4       #nid:Ljava/lang/Integer;
    :catch_d0
    move-exception v0

    move-object v3, v4

    .end local v4           #nid:Ljava/lang/Integer;
    .restart local v3       #nid:Ljava/lang/Integer;
    goto :goto_84

    .line 221
    :catchall_d3
    move-exception v7

    goto :goto_81
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

    .line 153
    monitor-exit v1

    .line 170
    return-void

    .line 153
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method
