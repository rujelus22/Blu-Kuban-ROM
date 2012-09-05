.class Lorg/jivesoftware/smack/PacketWriter;
.super Ljava/lang/Object;
.source "PacketWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;,
        Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;
    }
.end annotation


# static fields
.field static hasTrafficStats:Z


# instance fields
.field private final closeBytes:[B

.field private connection:Lorg/jivesoftware/smack/XMPPConnection;

.field private done:Z

.field private final heartbeatAckBytes:[B

.field private final heartbeatPingBytes:[B

.field private interceptorDeleted:Z

.field private final interceptors:Ljava/util/List;

.field private lastActive:J

.field private final listeners:Ljava/util/List;

.field private listenersDeleted:Z

.field private final queue:Ljava/util/LinkedList;

.field private final serializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

.field private writer:Ljava/io/OutputStream;

.field private writerThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 396
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jivesoftware/smack/PacketWriter;->hasTrafficStats:Z

    return-void
.end method

.method protected constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .registers 8
    .parameter "connection"

    .prologue
    const/4 v5, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v5, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    .line 72
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->listeners:Ljava/util/List;

    .line 73
    iput-boolean v5, p0, Lorg/jivesoftware/smack/PacketWriter;->listenersDeleted:Z

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/jivesoftware/smack/PacketWriter;->lastActive:J

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->interceptors:Ljava/util/List;

    .line 92
    iput-boolean v5, p0, Lorg/jivesoftware/smack/PacketWriter;->interceptorDeleted:Z

    .line 100
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 101
    iget-object v3, p1, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/OutputStream;

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    .line 102
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/LinkedList;

    .line 104
    iget-boolean v3, p1, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    if-eqz v3, :cond_dd

    .line 105
    new-instance v3, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializerImpl;

    new-instance v4, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;

    invoke-direct {v4}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;-><init>()V

    invoke-direct {v3, v4}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializerImpl;-><init>(Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;)V

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->serializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

    .line 107
    :try_start_3b
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->serializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

    new-instance v4, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_PING:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    invoke-interface {v3, v4}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;->serialize(Lcom/google/common/io/protocol/ProtoBuf;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->heartbeatPingBytes:[B
    :try_end_4a
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_3b .. :try_end_4a} :catch_7d
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_4a} :catch_8d

    .line 117
    :try_start_4a
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->serializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

    new-instance v4, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_ACK:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    invoke-interface {v3, v4}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;->serialize(Lcom/google/common/io/protocol/ProtoBuf;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->heartbeatAckBytes:[B
    :try_end_59
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_4a .. :try_end_59} :catch_9d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_59} :catch_ad

    .line 127
    :try_start_59
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->serializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

    new-instance v4, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->CLOSE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    invoke-interface {v3, v4}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;->serialize(Lcom/google/common/io/protocol/ProtoBuf;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->closeBytes:[B
    :try_end_68
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_59 .. :try_end_68} :catch_bd
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_68} :catch_cd

    .line 159
    :goto_68
    new-instance v3, Lorg/jivesoftware/smack/PacketWriter$1;

    invoke-direct {v3, p0}, Lorg/jivesoftware/smack/PacketWriter$1;-><init>(Lorg/jivesoftware/smack/PacketWriter;)V

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->writerThread:Ljava/lang/Thread;

    .line 165
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->writerThread:Ljava/lang/Thread;

    const-string v4, "Smack Packet Writer"

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->writerThread:Ljava/lang/Thread;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 167
    return-void

    .line 109
    :catch_7d
    move-exception v1

    .line 110
    .local v1, pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    const-string v3, "Smack/Packet"

    const-string v4, "Cannot serialize heartbeat ping -- should not happen!"

    invoke-static {v3, v4, v1}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot serialize heartbeat ping."

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 112
    .end local v1           #pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    :catch_8d
    move-exception v0

    .line 113
    .local v0, ioe:Ljava/io/IOException;
    const-string v3, "Smack/Packet"

    const-string v4, "Cannot serialize heartbeat -- should not happen!"

    invoke-static {v3, v4, v0}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot serialize heartbeat ping."

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 119
    .end local v0           #ioe:Ljava/io/IOException;
    :catch_9d
    move-exception v1

    .line 120
    .restart local v1       #pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    const-string v3, "Smack/Packet"

    const-string v4, "Cannot serialize heartbeat ack -- should not happen!"

    invoke-static {v3, v4, v1}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot serialize heartbeat ack."

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 122
    .end local v1           #pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    :catch_ad
    move-exception v0

    .line 123
    .restart local v0       #ioe:Ljava/io/IOException;
    const-string v3, "Smack/Packet"

    const-string v4, "Cannot serialize heartbeat -- should not happen!"

    invoke-static {v3, v4, v0}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot serialize heartbeat ack."

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 129
    .end local v0           #ioe:Ljava/io/IOException;
    :catch_bd
    move-exception v1

    .line 130
    .restart local v1       #pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    const-string v3, "Smack/Packet"

    const-string v4, "Cannot serialize close -- should not happen!"

    invoke-static {v3, v4, v1}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot serialize close."

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 132
    .end local v1           #pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    :catch_cd
    move-exception v0

    .line 133
    .restart local v0       #ioe:Ljava/io/IOException;
    const-string v3, "Smack/Packet"

    const-string v4, "Cannot serialize close -- should not happen!"

    invoke-static {v3, v4, v0}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot serialize close."

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 138
    .end local v0           #ioe:Ljava/io/IOException;
    :cond_dd
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->serializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

    .line 144
    :try_start_e0
    const-string v3, "<iq type=\'set\' id=\'ping\'><ping/></iq>"

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->heartbeatPingBytes:[B

    .line 145
    const-string v3, "<iq type=\'set\' id=\'ack\'><ack/></iq>"

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->heartbeatAckBytes:[B
    :try_end_f4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e0 .. :try_end_f4} :catch_110

    .line 152
    :try_start_f4
    const-string v3, "</stream:stream>"

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->closeBytes:[B
    :try_end_fe
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f4 .. :try_end_fe} :catch_100

    goto/16 :goto_68

    .line 153
    :catch_100
    move-exception v2

    .line 154
    .local v2, uee:Ljava/io/UnsupportedEncodingException;
    const-string v3, "Smack/Packet"

    const-string v4, "Cannot serialize close -- should not happen!"

    invoke-static {v3, v4, v2}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot serialize close."

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 147
    .end local v2           #uee:Ljava/io/UnsupportedEncodingException;
    :catch_110
    move-exception v2

    .line 148
    .restart local v2       #uee:Ljava/io/UnsupportedEncodingException;
    const-string v3, "Smack/Packet"

    const-string v4, "Cannot serialize heartbeat -- should not happen!"

    invoke-static {v3, v4, v2}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot serialize heartbeat."

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method static synthetic access$000(Lorg/jivesoftware/smack/PacketWriter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketWriter;->writePackets()V

    return-void
.end method

.method static synthetic access$102(Lorg/jivesoftware/smack/PacketWriter;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-wide p1, p0, Lorg/jivesoftware/smack/PacketWriter;->lastActive:J

    return-wide p1
.end method

.method static synthetic access$200(Lorg/jivesoftware/smack/PacketWriter;)Lorg/jivesoftware/smack/XMPPConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smack/PacketWriter;)Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->serializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jivesoftware/smack/PacketWriter;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->heartbeatPingBytes:[B

    return-object v0
.end method

.method static synthetic access$500(Lorg/jivesoftware/smack/PacketWriter;)Ljava/io/OutputStream;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    return-object v0
.end method

.method static clearTrafficStats()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    .line 399
    :try_start_1
    const-string v3, "android.net.TrafficStats"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 400
    .local v0, c:Ljava/lang/Class;
    const-string v3, "clearThreadStatsTag"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 401
    .local v1, m:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_16} :catch_17

    .line 406
    .end local v1           #m:Ljava/lang/reflect/Method;
    :goto_16
    return-void

    .line 402
    :catch_17
    move-exception v2

    .line 404
    .local v2, t:Ljava/lang/Throwable;
    sput-boolean v5, Lorg/jivesoftware/smack/PacketWriter;->hasTrafficStats:Z

    goto :goto_16
.end method

.method private nextPacket()Lorg/jivesoftware/smack/packet/Packet;
    .registers 5

    .prologue
    .line 378
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 379
    :goto_3
    :try_start_3
    iget-boolean v0, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2e

    move-result v0

    if-nez v0, :cond_19

    .line 381
    :try_start_f
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/LinkedList;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_2e
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_16} :catch_17

    goto :goto_3

    .line 383
    :catch_17
    move-exception v0

    goto :goto_3

    .line 387
    :cond_19
    :try_start_19
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 388
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Packet;

    monitor-exit v1

    .line 391
    :goto_2a
    return-object v0

    :cond_2b
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_2a

    .line 393
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private processInterceptors(Lorg/jivesoftware/smack/packet/Packet;)V
    .registers 7
    .parameter "packet"

    .prologue
    .line 528
    if-eqz p1, :cond_43

    .line 532
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter;->interceptors:Ljava/util/List;

    monitor-enter v4

    .line 533
    :try_start_5
    iget-boolean v3, p0, Lorg/jivesoftware/smack/PacketWriter;->interceptorDeleted:Z

    if-eqz v3, :cond_26

    .line 534
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->interceptors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_11
    if-ltz v0, :cond_23

    .line 535
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->interceptors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_20

    .line 536
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->interceptors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 534
    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 539
    :cond_23
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/jivesoftware/smack/PacketWriter;->interceptorDeleted:Z

    .line 541
    .end local v0           #i:I
    :cond_26
    monitor-exit v4
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_40

    .line 543
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->interceptors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 544
    .local v2, size:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2e
    if-ge v0, v2, :cond_43

    .line 545
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->interceptors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;

    .line 546
    .local v1, interceptorWrapper:Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;
    if-eqz v1, :cond_3d

    .line 547
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;->notifyListener(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 544
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 541
    .end local v0           #i:I
    .end local v1           #interceptorWrapper:Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;
    .end local v2           #size:I
    :catchall_40
    move-exception v3

    :try_start_41
    monitor-exit v4
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v3

    .line 551
    :cond_43
    return-void
.end method

.method private processListeners(Lorg/jivesoftware/smack/packet/Packet;)V
    .registers 7
    .parameter "packet"

    .prologue
    .line 499
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter;->listeners:Ljava/util/List;

    monitor-enter v4

    .line 500
    :try_start_3
    iget-boolean v3, p0, Lorg/jivesoftware/smack/PacketWriter;->listenersDeleted:Z

    if-eqz v3, :cond_24

    .line 501
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_f
    if-ltz v0, :cond_21

    .line 502
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->listeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1e

    .line 503
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->listeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 501
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 506
    :cond_21
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/jivesoftware/smack/PacketWriter;->listenersDeleted:Z

    .line 508
    .end local v0           #i:I
    :cond_24
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_3e

    .line 510
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 511
    .local v2, size:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2c
    if-ge v0, v2, :cond_41

    .line 512
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->listeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;

    .line 513
    .local v1, listenerWrapper:Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;
    if-eqz v1, :cond_3b

    .line 514
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;->notifyListener(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 511
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 508
    .end local v0           #i:I
    .end local v1           #listenerWrapper:Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;
    .end local v2           #size:I
    :catchall_3e
    move-exception v3

    :try_start_3f
    monitor-exit v4
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v3

    .line 517
    .restart local v0       #i:I
    .restart local v2       #size:I
    :cond_41
    return-void
.end method

.method static setTrafficStats()V
    .registers 8

    .prologue
    const/4 v7, 0x0

    .line 409
    sget-boolean v3, Lorg/jivesoftware/smack/PacketWriter;->hasTrafficStats:Z

    if-nez v3, :cond_6

    .line 420
    .local v0, c:Ljava/lang/Class;
    :goto_5
    return-void

    .line 413
    .end local v0           #c:Ljava/lang/Class;
    :cond_6
    :try_start_6
    const-string v3, "android.net.TrafficStats"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 414
    .restart local v0       #c:Ljava/lang/Class;
    const-string v3, "setThreadStatsTag"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 415
    .local v1, m:Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_28} :catch_29

    goto :goto_5

    .line 416
    .end local v1           #m:Ljava/lang/reflect/Method;
    :catch_29
    move-exception v2

    .line 418
    .local v2, t:Ljava/lang/Throwable;
    sput-boolean v7, Lorg/jivesoftware/smack/PacketWriter;->hasTrafficStats:Z

    goto :goto_5
.end method

.method private writePackets()V
    .registers 10

    .prologue
    .line 425
    :try_start_0
    invoke-static {}, Lorg/jivesoftware/smack/PacketWriter;->setTrafficStats()V

    .line 427
    invoke-virtual {p0}, Lorg/jivesoftware/smack/PacketWriter;->openStream()V

    .line 429
    :cond_6
    :goto_6
    iget-boolean v5, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    if-nez v5, :cond_b8

    .line 430
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketWriter;->nextPacket()Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .line 431
    .local v2, packet:Lorg/jivesoftware/smack/packet/Packet;
    if-eqz v2, :cond_6

    .line 432
    const/4 v0, 0x0

    .line 434
    .local v0, bytes:[B
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-boolean v5, v5, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    if-eqz v5, :cond_91

    .line 435
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v4

    .line 436
    .local v4, rmq2Mgr:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    if-eqz v4, :cond_25

    .line 437
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->serializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->serializePacketAsProtoBuf(Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;Lorg/jivesoftware/smack/packet/Packet;)[B

    move-result-object v0

    .line 444
    :cond_25
    if-nez v0, :cond_2d

    .line 445
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->serializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

    invoke-virtual {v2, v5}, Lorg/jivesoftware/smack/packet/Packet;->serializeAsProtoBuf(Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;)[B

    move-result-object v0

    .line 453
    .end local v4           #rmq2Mgr:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    :cond_2d
    :goto_2d
    const-string v5, "Smack/Packet"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 454
    const-string v5, "Smack/Packet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[WRITE] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Packet;->toLogString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_52
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    monitor-enter v6
    :try_end_55
    .catchall {:try_start_0 .. :try_end_55} :catchall_cb
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_0 .. :try_end_55} :catch_72
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_55} :catch_99

    .line 458
    :try_start_55
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 459
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 460
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/jivesoftware/smack/PacketWriter;->lastActive:J

    .line 461
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->markPacketTransmission()V

    .line 462
    monitor-exit v6
    :try_end_6b
    .catchall {:try_start_55 .. :try_end_6b} :catchall_96

    .line 464
    :try_start_6b
    array-length v5, v0

    int-to-long v5, v5

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v7}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->update(Lorg/jivesoftware/smack/packet/Packet;JZ)V
    :try_end_71
    .catchall {:try_start_6b .. :try_end_71} :catchall_cb
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_6b .. :try_end_71} :catch_72
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_71} :catch_99

    goto :goto_6

    .line 468
    .end local v0           #bytes:[B
    .end local v2           #packet:Lorg/jivesoftware/smack/packet/Packet;
    :catch_72
    move-exception v3

    .line 470
    .local v3, pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    :try_start_73
    iget-boolean v5, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    if-nez v5, :cond_81

    .line 471
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    .line 473
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v5, v5, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v5, v3}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V
    :try_end_81
    .catchall {:try_start_73 .. :try_end_81} :catchall_cb

    .line 482
    :cond_81
    :try_start_81
    const-string v5, "Smack/Packet"

    const-string v6, "[writePackets] close writer"

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->closeWriter()V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_8d} :catch_e0

    .line 487
    :goto_8d
    invoke-static {}, Lorg/jivesoftware/smack/PacketWriter;->clearTrafficStats()V

    .line 489
    .end local v3           #pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    :goto_90
    return-void

    .line 448
    .restart local v0       #bytes:[B
    .restart local v2       #packet:Lorg/jivesoftware/smack/packet/Packet;
    :cond_91
    :try_start_91
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Packet;->serializeAsXml()[B
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_cb
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_91 .. :try_end_94} :catch_72
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_99

    move-result-object v0

    goto :goto_2d

    .line 462
    :catchall_96
    move-exception v5

    :try_start_97
    monitor-exit v6
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    :try_start_98
    throw v5
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_cb
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_98 .. :try_end_99} :catch_72
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_99} :catch_99

    .line 475
    .end local v0           #bytes:[B
    .end local v2           #packet:Lorg/jivesoftware/smack/packet/Packet;
    :catch_99
    move-exception v1

    .line 476
    .local v1, ioe:Ljava/io/IOException;
    :try_start_9a
    iget-boolean v5, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    if-nez v5, :cond_a8

    .line 477
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    .line 478
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v5, v5, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v5, v1}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V
    :try_end_a8
    .catchall {:try_start_9a .. :try_end_a8} :catchall_cb

    .line 482
    :cond_a8
    :try_start_a8
    const-string v5, "Smack/Packet"

    const-string v6, "[writePackets] close writer"

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->closeWriter()V
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_b4} :catch_de

    .line 487
    :goto_b4
    invoke-static {}, Lorg/jivesoftware/smack/PacketWriter;->clearTrafficStats()V

    goto :goto_90

    .line 467
    .end local v1           #ioe:Ljava/io/IOException;
    :cond_b8
    :try_start_b8
    invoke-virtual {p0}, Lorg/jivesoftware/smack/PacketWriter;->closeStream()V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_cb
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_b8 .. :try_end_bb} :catch_72
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_99

    .line 482
    :try_start_bb
    const-string v5, "Smack/Packet"

    const-string v6, "[writePackets] close writer"

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->closeWriter()V
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_c7} :catch_e2

    .line 487
    :goto_c7
    invoke-static {}, Lorg/jivesoftware/smack/PacketWriter;->clearTrafficStats()V

    goto :goto_90

    .line 481
    :catchall_cb
    move-exception v5

    .line 482
    :try_start_cc
    const-string v6, "Smack/Packet"

    const-string v7, "[writePackets] close writer"

    invoke-static {v6, v7}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/XMPPConnection;->closeWriter()V
    :try_end_d8
    .catch Ljava/lang/Throwable; {:try_start_cc .. :try_end_d8} :catch_dc

    .line 487
    :goto_d8
    invoke-static {}, Lorg/jivesoftware/smack/PacketWriter;->clearTrafficStats()V

    throw v5

    .line 484
    :catch_dc
    move-exception v6

    goto :goto_d8

    .restart local v1       #ioe:Ljava/io/IOException;
    :catch_de
    move-exception v5

    goto :goto_b4

    .end local v1           #ioe:Ljava/io/IOException;
    .restart local v3       #pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    :catch_e0
    move-exception v5

    goto :goto_8d

    .end local v3           #pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    :catch_e2
    move-exception v5

    goto :goto_c7
.end method


# virtual methods
.method closeStream()V
    .registers 4

    .prologue
    .line 600
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_19

    .line 601
    :try_start_3
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->closeBytes:[B

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 602
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 603
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_16

    .line 609
    :try_start_10
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_2b

    .line 615
    :goto_15
    return-void

    .line 603
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_22
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_19} :catch_19

    .line 605
    :catch_19
    move-exception v0

    .line 609
    :try_start_1a
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_20

    goto :goto_15

    .line 611
    :catch_20
    move-exception v0

    goto :goto_15

    .line 608
    :catchall_22
    move-exception v0

    .line 609
    :try_start_23
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_28} :catch_29

    .line 613
    :goto_28
    throw v0

    .line 611
    :catch_29
    move-exception v1

    goto :goto_28

    :catch_2b
    move-exception v0

    goto :goto_15
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 5
    .parameter "out"

    .prologue
    .line 733
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 734
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queue size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 735
    monitor-exit v1

    .line 736
    return-void

    .line 735
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public getLastActive()J
    .registers 3

    .prologue
    .line 659
    iget-wide v0, p0, Lorg/jivesoftware/smack/PacketWriter;->lastActive:J

    return-wide v0
.end method

.method openStream()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 561
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-boolean v2, v2, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    if-eqz v2, :cond_1a

    .line 566
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    monitor-enter v3

    .line 567
    :try_start_9
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    sget-byte v4, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 568
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 569
    monitor-exit v3

    .line 595
    :goto_16
    return-void

    .line 569
    :catchall_17
    move-exception v2

    monitor-exit v3
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_17

    throw v2

    .line 572
    :cond_1a
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 573
    .local v1, stream:Ljava/lang/StringBuffer;
    const-string v2, "<stream:stream"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 574
    const-string v2, " to=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v3, v3, Lorg/jivesoftware/smack/XMPPConnection;->serviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    const-string v2, " xmlns=\"jabber:client\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 576
    const-string v2, " xmlns:stream=\"http://etherx.jabber.org/streams\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 577
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    instance-of v2, v2, Lorg/jivesoftware/smack/SSLXMPPConnection;

    if-eqz v2, :cond_81

    .line 579
    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 585
    :goto_4c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, openStreamStr:Ljava/lang/String;
    const-string v2, "Smack/Packet"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 588
    const-string v2, "Smack/Packet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WRITE] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_71
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/PacketWriter;->write(Ljava/lang/String;)V

    .line 592
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    monitor-enter v3

    .line 593
    :try_start_77
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 594
    monitor-exit v3

    goto :goto_16

    :catchall_7e
    move-exception v2

    monitor-exit v3
    :try_end_80
    .catchall {:try_start_77 .. :try_end_80} :catchall_7e

    throw v2

    .line 582
    .end local v0           #openStreamStr:Ljava/lang/String;
    :cond_81
    const-string v2, " version=\"1.0\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4c
.end method

.method requestStreamCompression()V
    .registers 4

    .prologue
    .line 623
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-boolean v1, v1, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    if-eqz v1, :cond_7

    .line 637
    :goto_6
    return-void

    .line 628
    :cond_7
    :try_start_7
    const-string v1, "<compress xmlns=\'http://jabber.org/protocol/compress\'>"

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/PacketWriter;->write(Ljava/lang/String;)V

    .line 629
    const-string v1, "<method>zlib</method></compress>"

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/PacketWriter;->write(Ljava/lang/String;)V

    .line 630
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    monitor-enter v2
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_14} :catch_1e

    .line 631
    :try_start_14
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 632
    monitor-exit v2

    goto :goto_6

    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v1
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1e} :catch_1e

    .line 634
    :catch_1e
    move-exception v0

    .line 635
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, v1, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    goto :goto_6
.end method

.method public sendHeartbeat()V
    .registers 3

    .prologue
    .line 208
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/jivesoftware/smack/PacketWriter$2;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/PacketWriter$2;-><init>(Lorg/jivesoftware/smack/PacketWriter;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 240
    return-void
.end method

.method public sendHeartbeatAck()V
    .registers 8

    .prologue
    .line 249
    :try_start_0
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v3

    .line 250
    .local v3, rmq2Mgr:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    if-eqz v3, :cond_28

    .line 251
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter;->serializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

    new-instance v5, Lorg/jivesoftware/smack/packet/HeartbeatAck;

    invoke-direct {v5}, Lorg/jivesoftware/smack/packet/HeartbeatAck;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->serializePacketAsProtoBuf(Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;Lorg/jivesoftware/smack/packet/Packet;)[B

    move-result-object v0

    .line 255
    .local v0, ackBytes:[B
    :goto_13
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    monitor-enter v5
    :try_end_16
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_0 .. :try_end_16} :catch_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_4f

    .line 256
    :try_start_16
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 257
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 258
    monitor-exit v5
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_2b

    .line 259
    :try_start_21
    array-length v4, v0

    int-to-long v4, v4

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->updateHeartbeat(JZ)V

    .line 267
    .end local v0           #ackBytes:[B
    .end local v3           #rmq2Mgr:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    :goto_27
    return-void

    .line 253
    .restart local v3       #rmq2Mgr:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    :cond_28
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->heartbeatAckBytes:[B
    :try_end_2a
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_21 .. :try_end_2a} :catch_2e
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2a} :catch_4f

    .restart local v0       #ackBytes:[B
    goto :goto_13

    .line 258
    :catchall_2b
    move-exception v4

    :try_start_2c
    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v4
    :try_end_2e
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_2d .. :try_end_2e} :catch_2e
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2e} :catch_4f

    .line 260
    .end local v0           #ackBytes:[B
    .end local v3           #rmq2Mgr:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    :catch_2e
    move-exception v2

    .line 261
    .local v2, pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    const-string v4, "Smack/Packet"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to write heartbeat ack:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v4, v4, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    goto :goto_27

    .line 263
    .end local v2           #pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    :catch_4f
    move-exception v1

    .line 264
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Smack/Packet"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to write heartbeat ack:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v4, v4, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    goto :goto_27
.end method

.method public sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .registers 4
    .parameter "packet"

    .prologue
    .line 175
    iget-boolean v0, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    if-nez v0, :cond_18

    .line 178
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketWriter;->processInterceptors(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 180
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 181
    :try_start_a
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 183
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_19

    .line 187
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketWriter;->processListeners(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 189
    :cond_18
    return-void

    .line 183
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method sendStartTLS()V
    .registers 4

    .prologue
    .line 640
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-boolean v1, v1, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    if-eqz v1, :cond_7

    .line 653
    :goto_6
    return-void

    .line 645
    :cond_7
    :try_start_7
    const-string v1, "<starttls xmlns=\"urn:ietf:params:xml:ns:xmpp-tls\"/>"

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/PacketWriter;->write(Ljava/lang/String;)V

    .line 646
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    monitor-enter v2
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_19

    .line 647
    :try_start_f
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 648
    monitor-exit v2

    goto :goto_6

    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    :try_start_18
    throw v1
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_19} :catch_19

    .line 650
    :catch_19
    move-exception v0

    .line 651
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, v1, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    goto :goto_6
.end method

.method setOutputStream(Ljava/io/OutputStream;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 361
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    .line 362
    return-void
.end method

.method public shutdown()V
    .registers 2

    .prologue
    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    .line 370
    return-void
.end method

.method public startup()V
    .registers 2

    .prologue
    .line 357
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 358
    return-void
.end method

.method write(Ljava/lang/String;)V
    .registers 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 194
    .local v0, utfBytes:[B
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    monitor-enter v2

    .line 195
    :try_start_9
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 196
    monitor-exit v2

    .line 197
    return-void

    .line 196
    :catchall_10
    move-exception v1

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v1
.end method
