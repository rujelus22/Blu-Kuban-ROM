.class Lorg/jivesoftware/smack/PacketReader;
.super Ljava/lang/Object;
.source "PacketReader.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/proto/ProtoBufEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/PacketReader$6;,
        Lorg/jivesoftware/smack/PacketReader$DataMessageListenerWrapper;,
        Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
    }
.end annotation


# instance fields
.field protected collectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/PacketCollector;",
            ">;"
        }
    .end annotation
.end field

.field private connection:Lorg/jivesoftware/smack/XMPPConnection;

.field private connectionID:Ljava/lang/String;

.field private connectionIDLock:Ljava/lang/Object;

.field protected connectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/ConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field protected dataMessageCollectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/DataMessageCollector;",
            ">;"
        }
    .end annotation
.end field

.field private dataMessageListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private done:Z

.field private lastActive:J

.field private listenerThread:Ljava/lang/Thread;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private notifiedConnectionError:Ljava/util/concurrent/atomic/AtomicBoolean;

.field packetProcessor:Lorg/jivesoftware/smack/PacketProcessor;

.field private parser:Lorg/xmlpull/v1/XmlPullParser;

.field private protoParser:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParser;

.field private readerThread:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .registers 5
    .parameter "connection"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-boolean v1, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->notifiedConnectionError:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->listeners:Ljava/util/List;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageCollectors:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageListeners:Ljava/util/List;

    .line 116
    new-instance v0, Lorg/jivesoftware/smack/PacketProcessor;

    invoke-direct {v0}, Lorg/jivesoftware/smack/PacketProcessor;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->packetProcessor:Lorg/jivesoftware/smack/PacketProcessor;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connectionIDLock:Ljava/lang/Object;

    .line 127
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 129
    iget-boolean v0, p1, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    if-eqz v0, :cond_72

    .line 130
    new-instance v0, Lorg/jivesoftware/smack/PacketReader$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PacketReader$1;-><init>(Lorg/jivesoftware/smack/PacketReader;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->readerThread:Ljava/lang/Thread;

    .line 152
    :goto_4f
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->readerThread:Ljava/lang/Thread;

    const-string v1, "Smack Packet Reader"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->readerThread:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 155
    new-instance v0, Lorg/jivesoftware/smack/PacketReader$3;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PacketReader$3;-><init>(Lorg/jivesoftware/smack/PacketReader;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    .line 169
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    const-string v1, "Smack Packet Handler"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 172
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->resetParser()V

    .line 173
    return-void

    .line 141
    :cond_72
    new-instance v0, Lorg/jivesoftware/smack/PacketReader$2;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PacketReader$2;-><init>(Lorg/jivesoftware/smack/PacketReader;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->readerThread:Ljava/lang/Thread;

    goto :goto_4f
.end method

.method static synthetic access$000(Lorg/jivesoftware/smack/PacketReader;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->parsePacketsFromProtoBufs()V

    return-void
.end method

.method static synthetic access$100(Lorg/jivesoftware/smack/PacketReader;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->parsePackets()V

    return-void
.end method

.method static synthetic access$200(Lorg/jivesoftware/smack/PacketReader;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->processListeners()V

    return-void
.end method

.method private dumpListener(Ljava/util/List;Ljava/io/PrintWriter;)V
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;",
            ">;",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2022
    monitor-enter p1

    .line 2023
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 2024
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_7c

    .line 2025
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;

    .line 2026
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2028
    iget-object v3, v0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetCollector:Lorg/jivesoftware/smack/PacketCollector;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/PacketCollector;->getPacketFilter()Lorg/jivesoftware/smack/filter/PacketFilter;

    move-result-object v3

    .line 2029
    if-eqz v3, :cond_55

    .line 2030
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2033
    :cond_55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queue_size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetCollector:Lorg/jivesoftware/smack/PacketCollector;

    iget-object v0, v0, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2034
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2024
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 2036
    :cond_7c
    monitor-exit p1

    .line 2037
    return-void

    .line 2036
    :catchall_7e
    move-exception v0

    monitor-exit p1
    :try_end_80
    .catchall {:try_start_1 .. :try_end_80} :catchall_7e

    throw v0
.end method

.method private handleUnsupportedIqPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;J)Lorg/jivesoftware/smack/packet/IQ;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1328
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v0, p4, :cond_8

    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v0, p4, :cond_3f

    .line 1332
    :cond_8
    new-instance v0, Lorg/jivesoftware/smack/PacketReader$4;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PacketReader$4;-><init>(Lorg/jivesoftware/smack/PacketReader;)V

    .line 1337
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 1338
    invoke-virtual {v0, p5, p6}, Lorg/jivesoftware/smack/packet/IQ;->setRmqId(J)V

    .line 1339
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 1340
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 1341
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1342
    new-instance v1, Lorg/jivesoftware/smack/packet/XMPPError;

    const/16 v2, 0x1f5

    const-string v3, "feature-not-implemented"

    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 1344
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1346
    const-string v0, "Smack/Packet"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1347
    const-string v0, "handleUnsupportedIqPacket: respond with feature-not-implemented"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->log(Ljava/lang/String;)V

    .line 1350
    :cond_3d
    const/4 v0, 0x0

    .line 1361
    :goto_3e
    return-object v0

    .line 1354
    :cond_3f
    new-instance v0, Lorg/jivesoftware/smack/PacketReader$5;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PacketReader$5;-><init>(Lorg/jivesoftware/smack/PacketReader;)V

    goto :goto_3e
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 2040
    const-string v0, "Smack/Packet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PacketReader] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    return-void
.end method

.method private logPacket(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 2044
    const-string v0, "Smack/Packet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[READ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    return-void
.end method

.method private parseAuthentication(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Authentication;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1365
    new-instance v1, Lorg/jivesoftware/smack/packet/Authentication;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/Authentication;-><init>()V

    .line 1366
    const/4 v0, 0x0

    .line 1367
    :cond_6
    :goto_6
    if-nez v0, :cond_70

    .line 1368
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1369
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5f

    .line 1370
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "username"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1371
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Authentication;->setUsername(Ljava/lang/String;)V

    goto :goto_6

    .line 1373
    :cond_23
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "password"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1374
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Authentication;->setPassword(Ljava/lang/String;)V

    goto :goto_6

    .line 1376
    :cond_37
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "digest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1377
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Authentication;->setDigest(Ljava/lang/String;)V

    goto :goto_6

    .line 1379
    :cond_4b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "resource"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1380
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Authentication;->setResource(Ljava/lang/String;)V

    goto :goto_6

    .line 1383
    :cond_5f
    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 1384
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "query"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1385
    const/4 v0, 0x1

    goto :goto_6

    .line 1389
    :cond_70
    return-object v1
.end method

.method private parseBindAccountResponse(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/Packet;
    .registers 11
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 632
    new-instance v2, Lorg/jivesoftware/smack/packet/BindAccountResponse;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/BindAccountResponse;-><init>()V

    .line 633
    .local v2, response:Lorg/jivesoftware/smack/packet/BindAccountResponse;
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, id:Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 637
    .local v3, settings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/packet/BindAccountResponse;->setPacketID(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 639
    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/BindAccountResponse;->setJid(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p1, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 645
    invoke-virtual {p1, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/BindAccountResponse;->setLastStreamId(I)V

    .line 651
    :cond_30
    invoke-virtual {p1, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 653
    invoke-virtual {p1, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/BindAccountResponse;->setStreamId(I)V

    .line 661
    :cond_3d
    :goto_3d
    return-object v2

    .line 656
    :cond_3e
    invoke-virtual {p1, v6}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 657
    invoke-virtual {p1, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 659
    .local v0, errorProtobuf:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-static {v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/BindAccountResponse;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    goto :goto_3d
.end method

.method private parseCompressionMethods(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Collection;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 1208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1209
    const/4 v0, 0x0

    .line 1210
    :cond_7
    :goto_7
    if-nez v0, :cond_52

    .line 1211
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1213
    const/4 v3, 0x2

    if-ne v2, v3, :cond_42

    .line 1214
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1215
    const-string v3, "method"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1216
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 1218
    const-string v3, "Smack/Packet"

    invoke-static {v3, v5}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse compression method - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1223
    :cond_3e
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1226
    :cond_42
    if-ne v2, v5, :cond_7

    .line 1227
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "compression"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1228
    const/4 v0, 0x1

    goto :goto_7

    .line 1232
    :cond_52
    return-object v1
.end method

.method private parseFeatures(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1110
    move v2, v0

    .line 1112
    :cond_4
    :goto_4
    if-nez v0, :cond_b8

    .line 1113
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 1114
    const-string v4, "Smack/Packet"

    invoke-static {v4, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    .line 1116
    const/4 v5, 0x2

    if-ne v3, v5, :cond_a7

    .line 1117
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "starttls"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1119
    if-eqz v4, :cond_26

    .line 1120
    const-string v2, "parse feature - startTLS received"

    invoke-direct {p0, v2}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1123
    :cond_26
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->startTLSReceived()V

    move v2, v1

    goto :goto_4

    .line 1125
    :cond_2d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "mechanisms"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 1126
    if-eqz v4, :cond_40

    .line 1127
    const-string v3, "parse feature - mechanism"

    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1133
    :cond_40
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v3

    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseMechanisms(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/SASLAuthentication;->setAvailableSASLMethods(Ljava/util/Collection;)V

    goto :goto_4

    .line 1136
    :cond_4e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "bind"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 1137
    if-eqz v4, :cond_61

    .line 1138
    const-string v3, "parse feature - bind"

    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1142
    :cond_61
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smack/SASLAuthentication;->bindingRequired()V

    goto :goto_4

    .line 1144
    :cond_6b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "session"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 1145
    if-eqz v4, :cond_7e

    .line 1146
    const-string v3, "parse feature - session"

    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1150
    :cond_7e
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smack/SASLAuthentication;->sessionsSupported()V

    goto/16 :goto_4

    .line 1152
    :cond_89
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "compression"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1153
    if-eqz v4, :cond_9c

    .line 1154
    const-string v3, "parse feature - compression"

    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1158
    :cond_9c
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseCompressionMethods(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/XMPPConnection;->setAvailableCompressionMethods(Ljava/util/Collection;)V

    goto/16 :goto_4

    .line 1161
    :cond_a7
    if-ne v3, v6, :cond_4

    .line 1162
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "features"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 1163
    goto/16 :goto_4

    .line 1167
    :cond_b8
    if-nez v2, :cond_bd

    .line 1168
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->releaseConnectionIDLock()V

    .line 1170
    :cond_bd
    return-void
.end method

.method private parseHttpResponse(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/HttpResponse;
    .registers 10
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 1476
    new-instance v1, Lorg/jivesoftware/smack/packet/HttpResponse;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/HttpResponse;-><init>()V

    .line 1477
    .local v1, response:Lorg/jivesoftware/smack/packet/HttpResponse;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1478
    .local v0, id:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/HttpResponse;->setPacketID(Ljava/lang/String;)V

    .line 1480
    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1481
    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/packet/HttpResponse;->setRmqId(J)V

    .line 1485
    :cond_1f
    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1486
    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/HttpResponse;->setRmq2Id(Ljava/lang/String;)V

    .line 1490
    :cond_2c
    invoke-virtual {p1, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1492
    invoke-virtual {p1, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/HttpResponse;->setLastStreamId(I)V

    .line 1497
    :cond_39
    invoke-virtual {p1, v6}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1498
    invoke-virtual {p1, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/HttpResponse;->setStreamId(I)V

    .line 1502
    :cond_46
    invoke-virtual {p1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1503
    invoke-virtual {p1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/HttpResponse;->setData([B)V

    .line 1507
    :cond_53
    return-object v1
.end method

.method private parseIQ(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/IQ;
    .registers 23
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1786
    const/4 v15, 0x0

    .line 1788
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_118

    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1790
    :goto_11
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_11c

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v8

    .line 1794
    :goto_21
    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_120

    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    .line 1796
    :goto_34
    const/16 v3, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_124

    const/16 v3, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    move v11, v3

    .line 1798
    :goto_47
    const/16 v3, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_128

    const/16 v3, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    move v12, v3

    .line 1801
    :goto_5a
    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_12c

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1802
    :goto_6a
    const/4 v3, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_12f

    const/4 v3, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1805
    :goto_7a
    const/16 v3, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_132

    const/16 v3, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v13

    .line 1808
    :goto_8c
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    .line 1811
    packed-switch v3, :pswitch_data_282

    .line 1823
    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 1827
    :goto_98
    const/4 v3, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_23d

    .line 1828
    const/4 v3, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v16

    .line 1829
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v17

    .line 1830
    const-string v3, "ProtoBuf"

    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 1831
    const-string v3, "ProtoBuf"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Handling extension of type: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    :cond_d9
    packed-switch v17, :pswitch_data_28c

    .line 1886
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getDefault()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/provider/ProviderManager;->getIQProvider(I)Ljava/lang/Object;

    move-result-object v3

    .line 1888
    if-eqz v3, :cond_213

    .line 1891
    instance-of v15, v3, Lorg/jivesoftware/smack/provider/IQProvider;

    if-eqz v15, :cond_1e4

    .line 1892
    check-cast v3, Lorg/jivesoftware/smack/provider/IQProvider;

    .line 1901
    :goto_ee
    invoke-interface {v3}, Lorg/jivesoftware/smack/provider/IQProvider;->getProtoBufType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v15

    .line 1902
    new-instance v17, Lcom/google/common/io/protocol/ProtoBuf;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 1903
    const/4 v15, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/google/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/common/io/protocol/ProtoBuf;

    .line 1904
    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Lorg/jivesoftware/smack/provider/IQProvider;->parseIQ(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v15

    move-object v3, v15

    .line 1911
    :goto_10c
    if-nez v3, :cond_240

    move-object/from16 v3, p0

    .line 1912
    invoke-direct/range {v3 .. v9}, Lorg/jivesoftware/smack/PacketReader;->handleUnsupportedIqPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;J)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v3

    .line 1913
    if-nez v3, :cond_240

    .line 1914
    const/4 v3, 0x0

    .line 1941
    :goto_117
    return-object v3

    .line 1788
    :cond_118
    const-string v4, "ID_NOT_AVAILABLE"

    goto/16 :goto_11

    .line 1790
    :cond_11c
    const-wide/16 v8, -0x1

    goto/16 :goto_21

    .line 1794
    :cond_120
    const/4 v3, 0x0

    move-object v10, v3

    goto/16 :goto_34

    .line 1796
    :cond_124
    const/4 v3, -0x1

    move v11, v3

    goto/16 :goto_47

    .line 1798
    :cond_128
    const/4 v3, -0x1

    move v12, v3

    goto/16 :goto_5a

    .line 1801
    :cond_12c
    const/4 v6, 0x0

    goto/16 :goto_6a

    .line 1802
    :cond_12f
    const/4 v5, 0x0

    goto/16 :goto_7a

    .line 1805
    :cond_132
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPConnection;->getDefaultAccountId()J

    move-result-wide v13

    goto/16 :goto_8c

    .line 1813
    :pswitch_13c
    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    goto/16 :goto_98

    .line 1816
    :pswitch_140
    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    goto/16 :goto_98

    .line 1819
    :pswitch_144
    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    goto/16 :goto_98

    .line 1836
    :pswitch_148
    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v16

    .line 1839
    new-instance v3, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1840
    invoke-static {}, Lorg/jivesoftware/smack/util/PacketParserUtils;->newXmlParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v17

    .line 1841
    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1844
    :goto_163
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v3, v0, :cond_27e

    .line 1845
    packed-switch v3, :pswitch_data_294

    :cond_170
    move-object v3, v15

    :goto_171
    move-object v15, v3

    .line 1870
    goto :goto_163

    .line 1847
    :pswitch_173
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1848
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v19

    .line 1852
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getDefault()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v20

    .line 1853
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->getIQProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1855
    if-eqz v3, :cond_1ad

    .line 1856
    instance-of v0, v3, Lorg/jivesoftware/smack/provider/IQProvider;

    move/from16 v19, v0

    if-eqz v19, :cond_19a

    .line 1857
    check-cast v3, Lorg/jivesoftware/smack/provider/IQProvider;

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Lorg/jivesoftware/smack/provider/IQProvider;->parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v3

    goto :goto_171

    .line 1858
    :cond_19a
    instance-of v0, v3, Ljava/lang/Class;

    move/from16 v19, v0

    if-eqz v19, :cond_170

    .line 1859
    check-cast v3, Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v3, v1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseWithIntrospection(Ljava/lang/String;Ljava/lang/Class;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/IQ;

    goto :goto_171

    .line 1863
    :cond_1ad
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->getRawXmlIqProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1865
    instance-of v0, v3, Lorg/jivesoftware/smack/provider/RawXmlIQProvider;

    move/from16 v20, v0

    if-eqz v20, :cond_170

    .line 1866
    check-cast v3, Lorg/jivesoftware/smack/provider/RawXmlIQProvider;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v3, v0, v1, v2}, Lorg/jivesoftware/smack/provider/RawXmlIQProvider;->parseRawXml(Ljava/lang/String;Ljava/lang/String;[B)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v3

    goto :goto_171

    .line 1875
    :pswitch_1ca
    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v3

    .line 1876
    new-instance v15, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v16, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->ROSTER_QUERY:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct/range {v15 .. v16}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 1877
    invoke-virtual {v15, v3}, Lcom/google/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/common/io/protocol/ProtoBuf;

    .line 1878
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/jivesoftware/smack/PacketReader;->parseRoster(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/RosterPacket;

    move-result-object v15

    move-object v3, v15

    .line 1879
    goto/16 :goto_10c

    .line 1893
    :cond_1e4
    instance-of v15, v3, Ljava/lang/Class;

    if-eqz v15, :cond_1f2

    .line 1895
    check-cast v3, Ljava/lang/Class;

    .line 1896
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/provider/IQProvider;

    goto/16 :goto_ee

    .line 1898
    :cond_1f2
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected IQProvider class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1905
    :cond_213
    const-string v3, "Smack/Packet"

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-static {v3, v0}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_23d

    .line 1906
    const-string v3, "Smack/Packet"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "parseIQ: cannot find IQProvider for extId="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23d
    move-object v3, v15

    goto/16 :goto_10c

    .line 1919
    :cond_240
    const/4 v15, 0x0

    .line 1921
    sget-object v16, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    move-object/from16 v0, v16

    if-ne v7, v0, :cond_25e

    .line 1922
    const/16 v16, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v16

    if-eqz v16, :cond_25e

    .line 1923
    const/4 v15, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v15

    .line 1925
    invoke-static {v15}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v15

    .line 1930
    :cond_25e
    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 1931
    invoke-virtual {v3, v8, v9}, Lorg/jivesoftware/smack/packet/IQ;->setRmqId(J)V

    .line 1932
    invoke-virtual {v3, v10}, Lorg/jivesoftware/smack/packet/IQ;->setRmq2Id(Ljava/lang/String;)V

    .line 1933
    invoke-virtual {v3, v11}, Lorg/jivesoftware/smack/packet/IQ;->setLastStreamId(I)V

    .line 1934
    invoke-virtual {v3, v12}, Lorg/jivesoftware/smack/packet/IQ;->setStreamId(I)V

    .line 1935
    invoke-virtual {v3, v5}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 1936
    invoke-virtual {v3, v6}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 1937
    invoke-virtual {v3, v13, v14}, Lorg/jivesoftware/smack/packet/IQ;->setAccountId(J)V

    .line 1938
    invoke-virtual {v3, v7}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1939
    invoke-virtual {v3, v15}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    goto/16 :goto_117

    :cond_27e
    move-object v3, v15

    goto/16 :goto_10c

    .line 1811
    nop

    :pswitch_data_282
    .packed-switch 0x0
        :pswitch_13c
        :pswitch_140
        :pswitch_144
    .end packed-switch

    .line 1833
    :pswitch_data_28c
    .packed-switch 0x0
        :pswitch_148
        :pswitch_1ca
    .end packed-switch

    .line 1845
    :pswitch_data_294
    .packed-switch 0x2
        :pswitch_173
    .end packed-switch
.end method

.method private parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1243
    .line 1245
    const-string v0, ""

    const-string v1, "stanza-id"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseRmqIdFromString(Ljava/lang/String;)J

    move-result-wide v9

    .line 1247
    const-string v0, ""

    const-string v1, "id"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1248
    const-string v0, ""

    const-string v2, "to"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1249
    const-string v0, ""

    const-string v3, "from"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1250
    const-string v0, ""

    const-string v4, "type"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/packet/IQ$Type;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    .line 1253
    const/4 v6, 0x0

    move-object v7, v8

    move-object v5, v8

    .line 1254
    :goto_34
    if-nez v6, :cond_ea

    .line 1255
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 1257
    const/4 v11, 0x2

    if-ne v0, v11, :cond_d8

    .line 1258
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1259
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 1260
    const-string v12, "error"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_55

    .line 1261
    invoke-static {p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    :goto_51
    move-object v7, v0

    move v0, v6

    :goto_53
    move v6, v0

    .line 1303
    goto :goto_34

    .line 1263
    :cond_55
    const-string v12, "query"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6c

    const-string v12, "jabber:iq:auth"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6c

    .line 1264
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseAuthentication(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Authentication;

    move-result-object v0

    move-object v5, v0

    move-object v0, v7

    goto :goto_51

    .line 1266
    :cond_6c
    const-string v12, "query"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_83

    const-string v12, "jabber:iq:roster"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_83

    .line 1267
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseRoster(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/RosterPacket;

    move-result-object v0

    move-object v5, v0

    move-object v0, v7

    goto :goto_51

    .line 1269
    :cond_83
    const-string v12, "query"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9a

    const-string v12, "jabber:iq:register"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9a

    .line 1270
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseRegistration(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Registration;

    move-result-object v0

    move-object v5, v0

    move-object v0, v7

    goto :goto_51

    .line 1272
    :cond_9a
    const-string v12, "bind"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b1

    const-string v12, "urn:ietf:params:xml:ns:xmpp-bind"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b1

    .line 1274
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseResourceBinding(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Bind;

    move-result-object v0

    move-object v5, v0

    move-object v0, v7

    goto :goto_51

    .line 1285
    :cond_b1
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getDefault()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v12

    invoke-virtual {v12, v11, v0}, Lorg/jivesoftware/smack/provider/ProviderManager;->getIQProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1287
    if-eqz v0, :cond_10d

    .line 1288
    instance-of v12, v0, Lorg/jivesoftware/smack/provider/IQProvider;

    if-eqz v12, :cond_c8

    .line 1289
    check-cast v0, Lorg/jivesoftware/smack/provider/IQProvider;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/provider/IQProvider;->parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    move-object v5, v0

    move-object v0, v7

    goto :goto_51

    .line 1291
    :cond_c8
    instance-of v12, v0, Ljava/lang/Class;

    if-eqz v12, :cond_10d

    .line 1292
    check-cast v0, Ljava/lang/Class;

    invoke-static {v11, v0, p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseWithIntrospection(Ljava/lang/String;Ljava/lang/Class;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    move-object v5, v0

    move-object v0, v7

    goto/16 :goto_51

    .line 1298
    :cond_d8
    const/4 v11, 0x3

    if-ne v0, v11, :cond_10a

    .line 1299
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v11, "iq"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 1300
    const/4 v0, 0x1

    goto/16 :goto_53

    .line 1305
    :cond_ea
    if-nez v5, :cond_f7

    .line 1306
    const-wide/16 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/jivesoftware/smack/PacketReader;->handleUnsupportedIqPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;J)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v5

    .line 1307
    if-nez v5, :cond_f7

    move-object v5, v8

    .line 1320
    :goto_f6
    return-object v5

    .line 1313
    :cond_f7
    invoke-virtual {v5, v9, v10}, Lorg/jivesoftware/smack/packet/IQ;->setRmqId(J)V

    .line 1314
    invoke-virtual {v5, v1}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 1315
    invoke-virtual {v5, v2}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 1316
    invoke-virtual {v5, v3}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 1317
    invoke-virtual {v5, v4}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1318
    invoke-virtual {v5, v7}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    goto :goto_f6

    :cond_10a
    move v0, v6

    goto/16 :goto_53

    :cond_10d
    move-object v0, v7

    goto/16 :goto_51
.end method

.method private parseLoginResponse(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/LoginResponse;
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x3

    const/4 v9, 0x2

    .line 1393
    new-instance v5, Lorg/jivesoftware/smack/packet/LoginResponse;

    invoke-direct {v5}, Lorg/jivesoftware/smack/packet/LoginResponse;-><init>()V

    .line 1394
    invoke-virtual {p1, v11}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1395
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1397
    invoke-virtual {v5, v0}, Lorg/jivesoftware/smack/packet/LoginResponse;->setPacketID(Ljava/lang/String;)V

    .line 1398
    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 1399
    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/jivesoftware/smack/packet/LoginResponse;->setJid(Ljava/lang/String;)V

    .line 1402
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1404
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v7

    .line 1406
    const/4 v0, 0x0

    .line 1407
    invoke-virtual {v7, v11}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1408
    invoke-virtual {v7, v11}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1410
    :cond_3e
    const/4 v1, 0x0

    .line 1411
    invoke-virtual {v7, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1412
    invoke-virtual {v7, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1414
    :cond_49
    const-wide/16 v2, 0x0

    .line 1415
    invoke-virtual {v7, v10}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_55

    .line 1416
    invoke-virtual {v7, v10}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v2

    .line 1418
    :cond_55
    new-instance v7, Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    invoke-direct {v7, v0, v2, v3, v1}, Lorg/jivesoftware/smack/packet/HeartbeatConfig;-><init>(Ljava/lang/Boolean;JLjava/lang/String;)V

    invoke-virtual {v5, v7}, Lorg/jivesoftware/smack/packet/LoginResponse;->setHeartbeatConfig(Lorg/jivesoftware/smack/packet/HeartbeatConfig;)V

    .line 1423
    :cond_5d
    invoke-virtual {p1, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 1425
    if-lez v1, :cond_7b

    move v0, v4

    .line 1426
    :goto_64
    if-ge v0, v1, :cond_78

    .line 1427
    invoke-virtual {p1, v12, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 1430
    invoke-virtual {v2, v11}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1431
    invoke-virtual {v2, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1432
    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    .line 1434
    :cond_78
    invoke-virtual {v5, v6}, Lorg/jivesoftware/smack/packet/LoginResponse;->setSettings(Ljava/util/Map;)V

    .line 1438
    :cond_7b
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1440
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lorg/jivesoftware/smack/packet/LoginResponse;->setLastStreamId(I)V

    .line 1446
    :cond_8a
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 1448
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lorg/jivesoftware/smack/packet/LoginResponse;->setStreamId(I)V

    .line 1453
    :cond_99
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 1455
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    .line 1457
    const-string v2, "GTalkService"

    invoke-static {v2, v10}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 1458
    const-string v2, "Smack/Packet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseLoginResponse: serverClock="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    :cond_cd
    invoke-virtual {v5, v0, v1}, Lorg/jivesoftware/smack/packet/LoginResponse;->setServerTimestamp(J)V

    .line 1467
    :cond_d0
    :goto_d0
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getConnectionConfiguration()Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isCompressionEnabled()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 1470
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/XMPPConnection;->startStreamCompression(Z)V

    .line 1472
    :cond_e1
    return-object v5

    .line 1462
    :cond_e2
    invoke-virtual {p1, v10}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 1463
    invoke-virtual {p1, v10}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1465
    invoke-static {v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/jivesoftware/smack/packet/LoginResponse;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    goto :goto_d0
.end method

.method private parseMechanisms(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Collection;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 1180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1181
    const/4 v0, 0x0

    .line 1182
    :cond_7
    :goto_7
    if-nez v0, :cond_52

    .line 1183
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1185
    const/4 v3, 0x2

    if-ne v2, v3, :cond_42

    .line 1186
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1187
    const-string v3, "mechanism"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1188
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 1190
    const-string v3, "Smack/Packet"

    invoke-static {v3, v5}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse mechanisum - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1194
    :cond_3e
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1197
    :cond_42
    if-ne v2, v5, :cond_7

    .line 1198
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mechanisms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1199
    const/4 v0, 0x1

    goto :goto_7

    .line 1203
    :cond_52
    return-object v1
.end method

.method private parsePackets()V
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 768
    :try_start_3
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 769
    new-instance v5, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;

    const-string v2, "parsePackets"

    invoke-direct {v5, v2}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;-><init>(Ljava/lang/String;)V

    .line 772
    :cond_10
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v3, "parsePackets"

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/XMPPConnection;->acquireWakeLock(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_81

    .line 775
    :try_start_17
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->wakeLockAcquired()V

    .line 778
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/jivesoftware/smack/PacketReader;->lastActive:J

    .line 779
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->markPacketReception()V

    .line 782
    const-string v2, "Smack/Packet"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    .line 784
    const/4 v2, 0x2

    if-ne v0, v2, :cond_255

    .line 785
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 786
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseMessage(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    .line 787
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_46
    .catchall {:try_start_17 .. :try_end_46} :catchall_75

    .line 955
    :cond_46
    :goto_46
    :try_start_46
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 956
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v2, "parsePackets"

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 961
    iget-boolean v2, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_58} :catch_81

    if-nez v2, :cond_5c

    if-ne v0, v1, :cond_10

    .line 970
    :cond_5c
    :goto_5c
    return-void

    .line 789
    :cond_5d
    :try_start_5d
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "iq"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 790
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 791
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_74
    .catchall {:try_start_5d .. :try_end_74} :catchall_75

    goto :goto_46

    .line 955
    :catchall_75
    move-exception v0

    :try_start_76
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 956
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v2, "parsePackets"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V

    .line 955
    throw v0
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_81} :catch_81

    .line 963
    :catch_81
    move-exception v0

    .line 964
    iget-boolean v1, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v1, :cond_5c

    .line 966
    const-string v1, "Smack/Packet"

    const-string v2, "PacketReader.parsePackets: caught "

    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 967
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    goto :goto_5c

    .line 793
    :cond_91
    :try_start_91
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "presence"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 794
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePresence(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v0

    .line 795
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_46

    .line 799
    :cond_a9
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "stream"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 801
    if-eqz v6, :cond_be

    .line 802
    const-string v0, "got stream open"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 806
    :cond_be
    const-string v0, "jabber:client"

    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 808
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    move v3, v4

    move v0, v4

    move v2, v4

    .line 813
    :goto_d6
    if-ge v3, v7, :cond_46

    if-eqz v2, :cond_dc

    if-nez v0, :cond_46

    .line 815
    :cond_dc
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    .line 817
    const-string v9, "id"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10b

    .line 819
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    .line 820
    const-string v2, "1.0"

    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v9, ""

    const-string v10, "version"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_107

    .line 825
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->releaseConnectionIDLock()V

    :cond_107
    move v2, v1

    .line 814
    :cond_108
    :goto_108
    add-int/lit8 v3, v3, 0x1

    goto :goto_d6

    .line 829
    :cond_10b
    const-string v9, "from"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_108

    .line 831
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lorg/jivesoftware/smack/XMPPConnection;->serviceName:Ljava/lang/String;

    .line 833
    if-eqz v6, :cond_139

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set servicename received from server: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v8, v8, Lorg/jivesoftware/smack/XMPPConnection;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    :cond_139
    move v0, v1

    .line 838
    goto :goto_108

    .line 843
    :cond_13b
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 844
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->parseStreamError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/StreamError;

    move-result-object v0

    .line 846
    if-eqz v6, :cond_158

    .line 847
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/StreamError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 851
    :cond_158
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/StreamError;)V

    throw v1

    .line 853
    :cond_15e
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "features"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 854
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->parseFeatures(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_46

    .line 856
    :cond_173
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "proceed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_192

    .line 857
    if-eqz v6, :cond_188

    .line 858
    const-string v0, "got proceed TLS, reset parser"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 862
    :cond_188
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->proceedTLSReceived()V

    .line 865
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->resetParser()V

    goto/16 :goto_46

    .line 867
    :cond_192
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "failure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e6

    .line 868
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 869
    const-string v2, "urn:ietf:params:xml:ns:xmpp-tls"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1be

    .line 870
    if-eqz v6, :cond_1b6

    .line 871
    const-string v0, "TLS negotiation has failed"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 874
    :cond_1b6
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "TLS negotiation has failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_1be
    const-string v2, "http://jabber.org/protocol/compress"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d4

    .line 877
    if-eqz v6, :cond_1cd

    .line 878
    const-string v0, "compression denied"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 884
    :cond_1cd
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->streamCompressionDenied()V

    goto/16 :goto_46

    .line 887
    :cond_1d4
    if-eqz v6, :cond_1db

    .line 888
    const-string v0, "SASL auth failed"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 893
    :cond_1db
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticationFailed()V

    goto/16 :goto_46

    .line 896
    :cond_1e6
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "challenge"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20c

    .line 897
    if-eqz v6, :cond_1fb

    .line 898
    const-string v0, "SASL auth challenge received"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 902
    :cond_1fb
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v0

    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/SASLAuthentication;->challengeReceived(Ljava/lang/String;)V

    goto/16 :goto_46

    .line 904
    :cond_20c
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "success"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_236

    .line 905
    if-eqz v6, :cond_221

    .line 906
    const-string v0, "SASL authenticated, open stream, reset parser"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 911
    :cond_221
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketWriter;->openStream()V

    .line 915
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->resetParser()V

    .line 919
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticated()V

    goto/16 :goto_46

    .line 921
    :cond_236
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "compressed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 922
    if-eqz v6, :cond_24b

    .line 923
    const-string v0, "start stream compression, reset parser"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 928
    :cond_24b
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->startStreamCompression()V

    .line 931
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->resetParser()V

    goto/16 :goto_46

    .line 933
    :cond_255
    if-ne v0, v11, :cond_273

    .line 934
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "stream"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 935
    if-eqz v6, :cond_26c

    .line 936
    const-string v0, "got stream end tag, closing connection"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 939
    :cond_26c
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->close()V

    goto/16 :goto_46

    .line 941
    :cond_273
    const/4 v2, 0x4

    if-ne v0, v2, :cond_46

    .line 942
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 943
    if-eqz v0, :cond_46

    .line 947
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v1, :cond_46

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_288
    .catchall {:try_start_91 .. :try_end_288} :catchall_75

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_46

    goto/16 :goto_46
.end method

.method private parsePacketsFromProtoBufs()V
    .registers 12

    .prologue
    .line 669
    const/16 v8, 0x2000

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 670
    .local v0, buf:Ljava/nio/ByteBuffer;
    const/4 v3, -0x1

    .line 671
    .local v3, numBytesRead:I
    const/4 v5, 0x0

    .line 672
    .local v5, readVersion:Z
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, v8, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/InputStream;

    .line 674
    .local v1, in:Ljava/io/InputStream;
    new-instance v7, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;

    const-string v8, "ParseProtoBuf"

    invoke-direct {v7, v8}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;-><init>(Ljava/lang/String;)V

    .line 678
    .local v7, wakeLockDiag:Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    :try_start_13
    invoke-static {}, Lorg/jivesoftware/smack/PacketWriter;->setTrafficStats()V

    .line 680
    :goto_16
    iget-boolean v8, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v8, :cond_2e

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    invoke-virtual {v1, v8, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_2e

    .line 683
    iget-boolean v8, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_12c
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_13 .. :try_end_2c} :catch_6f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_2c} :catch_d3

    if-eqz v8, :cond_3e

    .line 755
    :cond_2e
    invoke-static {}, Lorg/jivesoftware/smack/PacketWriter;->clearTrafficStats()V

    .line 758
    const-string v8, "Smack/Packet"

    const-string v9, "[parsePacketsFromProtoBufs] close connection\'s reader"

    invoke-static {v8, v9}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    :goto_3a
    invoke-virtual {v8}, Lorg/jivesoftware/smack/XMPPConnection;->closeReader()V

    .line 761
    return-void

    .line 687
    :cond_3e
    :try_start_3e
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v9, "parsePacketsFromProtoBufs"

    invoke-virtual {v8, v9}, Lorg/jivesoftware/smack/XMPPConnection;->acquireWakeLock(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_12c
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_3e .. :try_end_45} :catch_6f
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_45} :catch_d3

    .line 690
    :try_start_45
    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->wakeLockAcquired()V

    .line 692
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/jivesoftware/smack/PacketReader;->lastActive:J

    .line 693
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v8}, Lorg/jivesoftware/smack/XMPPConnection;->markPacketReception()V

    .line 694
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 695
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 696
    if-nez v5, :cond_13d

    .line 697
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-gtz v8, :cond_8b

    .line 698
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_64
    .catchall {:try_start_45 .. :try_end_64} :catchall_120

    .line 737
    :try_start_64
    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 738
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v9, "parsePacketsFromProtoBufs"

    invoke-virtual {v8, v9}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_64 .. :try_end_6e} :catchall_12c
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_64 .. :try_end_6e} :catch_6f
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_6e} :catch_d3

    goto :goto_16

    .line 741
    :catch_6f
    move-exception v4

    .line 742
    .local v4, pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    :try_start_70
    iget-boolean v8, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v8, :cond_7e

    .line 743
    const-string v8, "Smack/Packet"

    const-string v9, "PacketReader.parsePacketsFromProtoBufs: caught "

    invoke-static {v8, v9, v4}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 744
    invoke-virtual {p0, v4}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V
    :try_end_7e
    .catchall {:try_start_70 .. :try_end_7e} :catchall_12c

    .line 755
    :cond_7e
    invoke-static {}, Lorg/jivesoftware/smack/PacketWriter;->clearTrafficStats()V

    .line 758
    const-string v8, "Smack/Packet"

    const-string v9, "[parsePacketsFromProtoBufs] close connection\'s reader"

    invoke-static {v8, v9}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    goto :goto_3a

    .line 701
    .end local v4           #pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    :cond_8b
    :try_start_8b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 705
    .local v6, version:B
    sget-byte v8, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    if-ne v6, v8, :cond_10a

    .line 706
    const/4 v5, 0x1

    .line 707
    const-string v8, "Smack/Packet"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_b5

    .line 708
    const-string v8, "Smack/Packet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Server is using version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :cond_b5
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    .line 711
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->releaseConnectionIDLock()V

    .line 722
    :cond_be
    :goto_be
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-gtz v8, :cond_13d

    .line 723
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_c7
    .catchall {:try_start_8b .. :try_end_c7} :catchall_120

    .line 737
    :try_start_c7
    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 738
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v9, "parsePacketsFromProtoBufs"

    invoke-virtual {v8, v9}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_12c
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_c7 .. :try_end_d1} :catch_6f
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_d1} :catch_d3

    goto/16 :goto_16

    .line 746
    .end local v6           #version:B
    :catch_d3
    move-exception v2

    .line 747
    .local v2, ioe:Ljava/io/IOException;
    :try_start_d4
    iget-boolean v8, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v8, :cond_fc

    .line 749
    const-string v8, "Smack/Packet"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_f9

    .line 750
    const-string v8, "Smack/Packet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PacketReader.parsePacketsFromProtoBufs: caught "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    :cond_f9
    invoke-virtual {p0, v2}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V
    :try_end_fc
    .catchall {:try_start_d4 .. :try_end_fc} :catchall_12c

    .line 755
    :cond_fc
    invoke-static {}, Lorg/jivesoftware/smack/PacketWriter;->clearTrafficStats()V

    .line 758
    const-string v8, "Smack/Packet"

    const-string v9, "[parsePacketsFromProtoBufs] close connection\'s reader"

    invoke-static {v8, v9}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    goto/16 :goto_3a

    .line 713
    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v6       #version:B
    :cond_10a
    :try_start_10a
    const-string v8, "Smack/Packet"

    const-string v9, "Required version not supported by server."

    invoke-static {v8, v9}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-boolean v8, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v8, :cond_be

    .line 717
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Required version not supported by server."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V
    :try_end_11f
    .catchall {:try_start_10a .. :try_end_11f} :catchall_120

    goto :goto_be

    .line 737
    .end local v6           #version:B
    :catchall_120
    move-exception v8

    :try_start_121
    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 738
    iget-object v9, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v10, "parsePacketsFromProtoBufs"

    invoke-virtual {v9, v10}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V

    .line 737
    throw v8
    :try_end_12c
    .catchall {:try_start_121 .. :try_end_12c} :catchall_12c
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_121 .. :try_end_12c} :catch_6f
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_12c} :catch_d3

    .line 755
    :catchall_12c
    move-exception v8

    invoke-static {}, Lorg/jivesoftware/smack/PacketWriter;->clearTrafficStats()V

    .line 758
    const-string v9, "Smack/Packet"

    const-string v10, "[parsePacketsFromProtoBufs] close connection\'s reader"

    invoke-static {v9, v10}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v9, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v9}, Lorg/jivesoftware/smack/XMPPConnection;->closeReader()V

    .line 755
    throw v8

    .line 727
    :cond_13d
    :try_start_13d
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->protoParser:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParser;

    invoke-interface {v8, v0}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParser;->parse(Ljava/nio/ByteBuffer;)V

    .line 728
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 732
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v8, v8, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/InputStream;

    if-eq v1, v8, :cond_15b

    const-string v8, "Smack/Packet"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_15b

    .line 733
    const-string v8, "Smack/Packet"

    const-string v9, "Switching input stream"

    invoke-static {v8, v9}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :cond_15b
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, v8, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/InputStream;
    :try_end_15f
    .catchall {:try_start_13d .. :try_end_15f} :catchall_120

    .line 737
    :try_start_15f
    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 738
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v9, "parsePacketsFromProtoBufs"

    invoke-virtual {v8, v9}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V
    :try_end_169
    .catchall {:try_start_15f .. :try_end_169} :catchall_12c
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_15f .. :try_end_169} :catch_6f
    .catch Ljava/io/IOException; {:try_start_15f .. :try_end_169} :catch_d3

    goto/16 :goto_16
.end method

.method private parseRegistration(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Registration;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1717
    new-instance v3, Lorg/jivesoftware/smack/packet/Registration;

    invoke-direct {v3}, Lorg/jivesoftware/smack/packet/Registration;-><init>()V

    .line 1718
    const/4 v0, 0x0

    .line 1719
    const/4 v2, 0x0

    .line 1720
    :goto_7
    if-nez v2, :cond_6e

    .line 1721
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 1722
    const/4 v4, 0x2

    if-ne v1, v4, :cond_5a

    .line 1725
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    const-string v4, "jabber:iq:register"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1726
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1727
    const-string v1, ""

    .line 1728
    if-nez v0, :cond_29

    .line 1729
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1732
    :cond_29
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_34

    .line 1733
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1736
    :cond_34
    const-string v5, "instructions"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 1737
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3f
    move-object v1, v0

    move v0, v2

    :goto_41
    move v2, v0

    move-object v0, v1

    .line 1757
    goto :goto_7

    .line 1740
    :cond_44
    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/packet/Registration;->setInstructions(Ljava/lang/String;)V

    goto :goto_3f

    .line 1745
    :cond_48
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/packet/Registration;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    move-object v1, v0

    move v0, v2

    goto :goto_41

    .line 1752
    :cond_5a
    const/4 v4, 0x3

    if-ne v1, v4, :cond_72

    .line 1753
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "query"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 1754
    const/4 v1, 0x1

    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_41

    .line 1758
    :cond_6e
    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/Registration;->setAttributes(Ljava/util/Map;)V

    .line 1759
    return-object v3

    :cond_72
    move-object v1, v0

    move v0, v2

    goto :goto_41
.end method

.method private parseResourceBinding(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Bind;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1764
    new-instance v1, Lorg/jivesoftware/smack/packet/Bind;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/Bind;-><init>()V

    .line 1765
    const/4 v0, 0x0

    .line 1766
    :cond_6
    :goto_6
    if-nez v0, :cond_48

    .line 1767
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1768
    const/4 v3, 0x2

    if-ne v2, v3, :cond_37

    .line 1769
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "resource"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1770
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Bind;->setResource(Ljava/lang/String;)V

    goto :goto_6

    .line 1772
    :cond_23
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "jid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1773
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Bind;->setJid(Ljava/lang/String;)V

    goto :goto_6

    .line 1775
    :cond_37
    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 1776
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bind"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1777
    const/4 v0, 0x1

    goto :goto_6

    .line 1782
    :cond_48
    return-object v1
.end method

.method private parseRoster(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/RosterPacket;
    .registers 12
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1620
    new-instance v7, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v7}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    .line 1621
    .local v7, roster:Lorg/jivesoftware/smack/packet/RosterPacket;
    const/4 v2, 0x0

    .line 1623
    .local v2, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_89

    .line 1624
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/jivesoftware/smack/packet/RosterPacket;->setEtag(Ljava/lang/String;)V

    .line 1634
    :cond_15
    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v6

    .line 1636
    .local v6, numItems:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    if-ge v1, v6, :cond_9f

    .line 1637
    const/4 v9, 0x3

    invoke-virtual {p1, v9, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 1638
    .local v3, itemPB:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1639
    .local v4, jid:Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1642
    .local v5, name:Ljava/lang/String;
    new-instance v2, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .end local v2           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-direct {v2, v4, v5}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    .restart local v2       #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    const/4 v9, 0x3

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_40

    .line 1645
    const/4 v9, 0x3

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v8

    .line 1647
    .local v8, subscriptionType:I
    packed-switch v8, :pswitch_data_dc

    .line 1669
    .end local v8           #subscriptionType:I
    :cond_40
    :goto_40
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 1670
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 1672
    .local v0, askType:I
    packed-switch v0, :pswitch_data_ea

    .line 1681
    .end local v0           #askType:I
    :cond_4f
    :goto_4f
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_60

    .line 1682
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v9

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetRejected(Z)V

    .line 1685
    :cond_60
    const/4 v9, 0x7

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_d6

    .line 1686
    const/4 v9, 0x7

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v9

    packed-switch v9, :pswitch_data_f0

    .line 1697
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->DEFAULT:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetStatus(Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    .line 1704
    :goto_74
    const/4 v9, 0x6

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_83

    .line 1705
    const/4 v9, 0x6

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v9

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setQuickContact(Z)V

    .line 1710
    :cond_83
    invoke-virtual {v7, v2}, Lorg/jivesoftware/smack/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V

    .line 1636
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1625
    .end local v1           #i:I
    .end local v3           #itemPB:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v4           #jid:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #numItems:I
    :cond_89
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 1627
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 1628
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/jivesoftware/smack/packet/RosterPacket;->setNotModified(Ljava/lang/Boolean;)V

    .line 1713
    :cond_9f
    return-object v7

    .line 1649
    .restart local v1       #i:I
    .restart local v3       #itemPB:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v4       #jid:Ljava/lang/String;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #numItems:I
    .restart local v8       #subscriptionType:I
    :pswitch_a0
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->BOTH:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    goto :goto_40

    .line 1652
    :pswitch_a6
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->FROM:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    goto :goto_40

    .line 1655
    :pswitch_ac
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->TO:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    goto :goto_40

    .line 1658
    :pswitch_b2
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->NONE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    goto :goto_40

    .line 1661
    :pswitch_b8
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->REMOVE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    goto :goto_40

    .line 1674
    .end local v8           #subscriptionType:I
    .restart local v0       #askType:I
    :pswitch_be
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->SUBSCRIPTION_PENDING:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemStatus(Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;)V

    goto :goto_4f

    .line 1688
    .end local v0           #askType:I
    :pswitch_c4
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->BLOCKED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetStatus(Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    goto :goto_74

    .line 1691
    :pswitch_ca
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->HIDDEN:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetStatus(Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    goto :goto_74

    .line 1694
    :pswitch_d0
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->PINNED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetStatus(Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    goto :goto_74

    .line 1701
    :cond_d6
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->DEFAULT:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetStatus(Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    goto :goto_74

    .line 1647
    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_b2
        :pswitch_ac
        :pswitch_a6
        :pswitch_a0
        :pswitch_b8
    .end packed-switch

    .line 1672
    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_be
    .end packed-switch

    .line 1686
    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_c4
        :pswitch_ca
        :pswitch_d0
    .end packed-switch
.end method

.method private parseRoster(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/RosterPacket;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1511
    new-instance v5, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v5}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    .line 1513
    const/4 v0, 0x0

    move v4, v1

    .line 1515
    :goto_9
    if-nez v4, :cond_e0

    .line 1516
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 1517
    const/4 v6, 0x2

    if-ne v3, v6, :cond_c0

    .line 1518
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "item"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 1519
    const-string v0, ""

    const-string v3, "jid"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1520
    const-string v3, ""

    const-string v6, "name"

    invoke-interface {p1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1522
    new-instance v3, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    invoke-direct {v3, v0, v6}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    const-string v0, ""

    const-string v6, "ask"

    invoke-interface {p1, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1541
    invoke-static {v0}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-result-object v0

    .line 1543
    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemStatus(Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;)V

    .line 1545
    const-string v0, ""

    const-string v6, "subscription"

    invoke-interface {p1, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1547
    invoke-static {v0}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v0

    .line 1549
    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    .line 1551
    invoke-static {}, Lorg/jivesoftware/smack/GoogleExtensions;->getSupportExtendedContactAttribute()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 1556
    const-string v0, "google:roster"

    const-string v6, "mc"

    invoke-interface {p1, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1558
    if-eqz v0, :cond_e3

    .line 1561
    :try_start_61
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_b4

    move-result v0

    .line 1567
    :goto_65
    const-string v6, "google:roster"

    const-string v7, "t"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1569
    if-eqz v6, :cond_72

    .line 1571
    invoke-virtual {v3, v6}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetStatusString(Ljava/lang/String;)V

    .line 1574
    :cond_72
    const-string v6, "google:roster"

    const-string v7, "rejected"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1576
    if-eqz v6, :cond_87

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_87

    .line 1578
    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetRejected(Z)V

    .line 1586
    :cond_87
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionGetStatus()Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    move-result-object v6

    .line 1587
    sget-object v7, Lorg/jivesoftware/smack/PacketReader$6;->$SwitchMap$org$jivesoftware$smack$packet$RosterPacket$Item$G_STATUS:[I

    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_e6

    move v0, v1

    .line 1600
    :goto_97
    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setQuickContact(Z)V

    :cond_9a
    move-object v0, v3

    .line 1603
    :cond_9b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "group"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e1

    if-eqz v0, :cond_e1

    .line 1604
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->addGroupName(Ljava/lang/String;)V

    move v3, v4

    :goto_b1
    move v4, v3

    .line 1615
    goto/16 :goto_9

    .line 1563
    :catch_b4
    move-exception v0

    move v0, v1

    goto :goto_65

    :pswitch_b7
    move v0, v2

    .line 1590
    goto :goto_97

    .line 1594
    :pswitch_b9
    const/4 v6, 0x5

    if-lt v0, v6, :cond_be

    move v0, v2

    goto :goto_97

    :cond_be
    move v0, v1

    goto :goto_97

    .line 1607
    :cond_c0
    const/4 v6, 0x3

    if-ne v3, v6, :cond_e1

    .line 1608
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "item"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 1609
    invoke-virtual {v5, v0}, Lorg/jivesoftware/smack/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V

    .line 1611
    :cond_d2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "query"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e1

    move v3, v2

    .line 1612
    goto :goto_b1

    .line 1616
    :cond_e0
    return-object v5

    :cond_e1
    move v3, v4

    goto :goto_b1

    :cond_e3
    move v0, v1

    goto :goto_65

    .line 1587
    nop

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_b7
        :pswitch_b9
    .end packed-switch
.end method

.method private parseStreamError(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/StreamError;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1091
    const/4 v0, 0x0

    .line 1092
    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1093
    new-instance v0, Lorg/jivesoftware/smack/packet/StreamError;

    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/StreamError;-><init>(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1096
    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/StreamError;->setText(Ljava/lang/String;)V

    .line 1100
    :cond_1f
    if-eqz v0, :cond_3d

    .line 1101
    const-string v1, "Smack/Packet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PacketReader] got stream error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/StreamError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    :cond_3d
    return-object v0
.end method

.method private parseStreamError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/StreamError;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1050
    const/4 v1, 0x0

    .line 1051
    const/4 v0, 0x0

    .line 1053
    :cond_2
    :goto_2
    if-nez v0, :cond_8e

    .line 1054
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1055
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1057
    packed-switch v2, :pswitch_data_ae

    goto :goto_2

    .line 1059
    :pswitch_10
    const-string v2, "Smack/Packet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    const-string v2, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1061
    new-instance v1, Lorg/jivesoftware/smack/packet/StreamError;

    invoke-direct {v1, v3}, Lorg/jivesoftware/smack/packet/StreamError;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 1066
    :pswitch_3c
    const-string v2, "error"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1067
    const-string v0, "Smack/Packet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "</"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    const/4 v0, 0x1

    goto :goto_2

    .line 1070
    :cond_64
    const-string v2, "Smack/Packet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    </"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1075
    :pswitch_83
    if-eqz v1, :cond_2

    .line 1076
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/StreamError;->setText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1082
    :cond_8e
    if-eqz v1, :cond_ac

    .line 1083
    const-string v0, "Smack/Packet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PacketReader] got stream error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/StreamError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    :cond_ac
    return-object v1

    .line 1057
    nop

    :pswitch_data_ae
    .packed-switch 0x2
        :pswitch_10
        :pswitch_3c
        :pswitch_83
    .end packed-switch
.end method

.method private processListeners()V
    .registers 10

    .prologue
    .line 476
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v7, "PacketReader.processListeners.1"

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/XMPPConnection;->acquireWakeLock(Ljava/lang/String;)V

    .line 479
    :try_start_7
    new-instance v5, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;

    const-string v6, "PacketReader.processListeners"

    invoke-direct {v5, v6}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;-><init>(Ljava/lang/String;)V

    .line 481
    .local v5, wakeLockDiag:Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    const/4 v3, 0x0

    .line 482
    .local v3, loop:I
    const/4 v2, 0x0

    .line 484
    .local v2, lastLoop:I
    :cond_10
    :goto_10
    iget-boolean v6, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v6, :cond_79

    .line 485
    const/4 v4, 0x0

    .line 487
    .local v4, processedPacket:Z
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageListeners:Ljava/util/List;

    invoke-direct {p0, v6}, Lorg/jivesoftware/smack/PacketReader;->processListeners(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 489
    const/4 v4, 0x1

    .line 492
    :cond_1e
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->listeners:Ljava/util/List;

    invoke-direct {p0, v6}, Lorg/jivesoftware/smack/PacketReader;->processListeners(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 494
    const/4 v4, 0x1

    .line 497
    :cond_27
    add-int/lit8 v3, v3, 0x1

    .line 499
    if-nez v4, :cond_10

    .line 500
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    move-result-wide v0

    .line 501
    .local v0, diff:J
    const-wide/16 v6, 0x1f4

    cmp-long v6, v0, v6

    if-lez v6, :cond_4f

    .line 502
    const-string v6, "Smack"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PacketReader] processListeners: Num of loop processed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-int v8, v3, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_4f
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v7, "PacketReader.processListeners"

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_7 .. :try_end_56} :catchall_70

    .line 511
    :try_start_56
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    monitor-enter v7
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_70
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_59} :catch_6e

    .line 512
    :try_start_59
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V

    .line 513
    monitor-exit v7
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_6b

    .line 519
    :goto_5f
    :try_start_5f
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v7, "PacketReader.processListeners"

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/XMPPConnection;->acquireWakeLock(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->wakeLockAcquired()V
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_70

    .line 521
    move v2, v3

    goto :goto_10

    .line 513
    :catchall_6b
    move-exception v6

    :try_start_6c
    monitor-exit v7
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw v6
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_70
    .catch Ljava/lang/InterruptedException; {:try_start_6d .. :try_end_6e} :catch_6e

    .line 514
    :catch_6e
    move-exception v6

    goto :goto_5f

    .line 525
    .end local v0           #diff:J
    .end local v2           #lastLoop:I
    .end local v3           #loop:I
    .end local v4           #processedPacket:Z
    .end local v5           #wakeLockDiag:Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    :catchall_70
    move-exception v6

    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v8, "PacketReader.processListeners.1"

    invoke-virtual {v7, v8}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V

    throw v6

    .restart local v2       #lastLoop:I
    .restart local v3       #loop:I
    .restart local v5       #wakeLockDiag:Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    :cond_79
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v7, "PacketReader.processListeners.1"

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method private processListeners(Ljava/util/List;)Z
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, listeners:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;>;"
    const/4 v1, 0x0

    .line 452
    .local v1, retVal:Z
    monitor-enter p1

    .line 453
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 454
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v2, :cond_1b

    .line 455
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;

    .line 456
    .local v3, wrapper:Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
    if-eqz v3, :cond_18

    .line 462
    invoke-virtual {v3}, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->notifyListener()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 463
    const/4 v1, 0x1

    .line 454
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 467
    .end local v3           #wrapper:Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
    :cond_1b
    monitor-exit p1

    .line 469
    return v1

    .line 467
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_1d
    move-exception v4

    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_1d

    throw v4
.end method

.method private processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x0

    .line 995
    if-nez p1, :cond_5

    .line 1046
    :goto_4
    return-void

    .line 1001
    :cond_5
    const-string v1, "Smack/Packet"

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1002
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->toLogString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1010
    :cond_14
    :goto_14
    instance-of v1, p1, Lorg/jivesoftware/smack/packet/DataMessage;

    if-eqz v1, :cond_46

    .line 1012
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageCollectors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    .line 1014
    :goto_1f
    if-ge v1, v2, :cond_81

    .line 1015
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageCollectors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/DataMessageCollector;

    .line 1016
    if-eqz v0, :cond_2e

    .line 1018
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/DataMessageCollector;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1014
    :cond_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f

    .line 1003
    :cond_32
    const-string v1, "Sync"

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1005
    instance-of v1, p1, Lorg/jivesoftware/smack/packet/DataMessage;

    if-eqz v1, :cond_14

    .line 1006
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->toLogString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    goto :goto_14

    .line 1023
    :cond_46
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    monitor-enter v2

    .line 1024
    :try_start_49
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_51
    if-ltz v1, :cond_63

    .line 1025
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_60

    .line 1026
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1024
    :cond_60
    add-int/lit8 v1, v1, -0x1

    goto :goto_51

    .line 1029
    :cond_63
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_49 .. :try_end_64} :catchall_7e

    .line 1032
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    .line 1033
    :goto_6b
    if-ge v1, v2, :cond_81

    .line 1034
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/PacketCollector;

    .line 1035
    if-eqz v0, :cond_7a

    .line 1037
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketCollector;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1033
    :cond_7a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6b

    .line 1029
    :catchall_7e
    move-exception v0

    :try_start_7f
    monitor-exit v2
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v0

    .line 1043
    :cond_81
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 1044
    :try_start_84
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1045
    monitor-exit v1

    goto/16 :goto_4

    :catchall_8c
    move-exception v0

    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_84 .. :try_end_8e} :catchall_8c

    throw v0
.end method

.method private releaseConnectionIDLock()V
    .registers 3

    .prologue
    .line 982
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->connectionIDLock:Ljava/lang/Object;

    monitor-enter v1

    .line 983
    :try_start_3
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connectionIDLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 984
    monitor-exit v1

    .line 985
    return-void

    .line 984
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private resetParser()V
    .registers 5

    .prologue
    .line 436
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-boolean v1, v1, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    if-eqz v1, :cond_13

    .line 437
    new-instance v1, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;-><init>()V

    invoke-direct {v1, v2, p0}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;-><init>(Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;Lcom/google/android/gsf/gtalkservice/proto/ProtoBufEventHandler;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->protoParser:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParser;

    .line 447
    :goto_12
    return-void

    .line 441
    :cond_13
    :try_start_13
    invoke-static {}, Lorg/jivesoftware/smack/util/PacketParserUtils;->newXmlParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 442
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v2, v2, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/InputStream;

    const-string v3, "UTF-8"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_24} :catch_25

    goto :goto_12

    .line 443
    :catch_25
    move-exception v0

    .line 444
    .local v0, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_12
.end method


# virtual methods
.method addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V
    .registers 4
    .parameter "connectionListener"

    .prologue
    .line 323
    if-nez p1, :cond_3

    .line 332
    :goto_2
    return-void

    .line 327
    :cond_3
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    monitor-enter v1

    .line 328
    :try_start_6
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 329
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_13
    monitor-exit v1

    goto :goto_2

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public addDataMessageListener(Lorg/jivesoftware/smack/PacketListener;)Z
    .registers 8
    .parameter "packetListener"

    .prologue
    .line 191
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageListeners:Ljava/util/List;

    monitor-enter v3

    .line 192
    :try_start_3
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;

    .line 193
    .local v1, wrapper:Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
    iget-object v2, v1, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 194
    const-string v2, "Smack/Packet"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addDataMessageListener: duplicate listener "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jivesoftware/smack/PacketReader;->log(Ljava/lang/String;)V

    .line 197
    :cond_3c
    const/4 v2, 0x0

    monitor-exit v3

    .line 205
    .end local v1           #wrapper:Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
    :goto_3e
    return v2

    .line 203
    :cond_3f
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageListeners:Ljava/util/List;

    new-instance v4, Lorg/jivesoftware/smack/PacketReader$DataMessageListenerWrapper;

    new-instance v5, Lorg/jivesoftware/smack/DataMessageCollector;

    invoke-direct {v5, p0}, Lorg/jivesoftware/smack/DataMessageCollector;-><init>(Lorg/jivesoftware/smack/PacketReader;)V

    invoke-direct {v4, p0, p1, v5}, Lorg/jivesoftware/smack/PacketReader$DataMessageListenerWrapper;-><init>(Lorg/jivesoftware/smack/PacketReader;Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/PacketCollector;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_3e

    .line 206
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_51
    move-exception v2

    monitor-exit v3
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v2
.end method

.method public addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)Z
    .registers 9
    .parameter "packetListener"
    .parameter "packetFilter"

    .prologue
    .line 233
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->listeners:Ljava/util/List;

    monitor-enter v3

    .line 234
    :try_start_3
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;

    .line 235
    .local v1, wrapper:Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
    iget-object v2, v1, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetCollector:Lorg/jivesoftware/smack/PacketCollector;

    iget-object v2, v2, Lorg/jivesoftware/smack/PacketCollector;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 237
    const-string v2, "Smack/Packet"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPacketListener: duplicate listener "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " and filter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jivesoftware/smack/PacketReader;->log(Ljava/lang/String;)V

    .line 241
    :cond_50
    const/4 v2, 0x0

    monitor-exit v3

    .line 247
    .end local v1           #wrapper:Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
    :goto_52
    return v2

    .line 245
    :cond_53
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->listeners:Ljava/util/List;

    new-instance v4, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;

    new-instance v5, Lorg/jivesoftware/smack/PacketCollector;

    invoke-direct {v5, p0, p2}, Lorg/jivesoftware/smack/PacketCollector;-><init>(Lorg/jivesoftware/smack/PacketReader;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    invoke-direct {v4, p0, p1, v5}, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;-><init>(Lorg/jivesoftware/smack/PacketReader;Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/PacketCollector;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_52

    .line 248
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_65
    move-exception v2

    monitor-exit v3
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_65

    throw v2
.end method

.method public createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;
    .registers 3
    .parameter "packetFilter"

    .prologue
    .line 183
    new-instance v0, Lorg/jivesoftware/smack/PacketCollector;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smack/PacketCollector;-><init>(Lorg/jivesoftware/smack/PacketReader;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 3
    .parameter

    .prologue
    .line 2014
    const-string v0, "Packet dataMessage listeners:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2015
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageListeners:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smack/PacketReader;->dumpListener(Ljava/util/List;Ljava/io/PrintWriter;)V

    .line 2017
    const-string v0, "Packet listeners:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2018
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->listeners:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smack/PacketReader;->dumpListener(Ljava/util/List;Ljava/io/PrintWriter;)V

    .line 2019
    return-void
.end method

.method public getLastActive()J
    .registers 3

    .prologue
    .line 1948
    iget-wide v0, p0, Lorg/jivesoftware/smack/PacketReader;->lastActive:J

    return-wide v0
.end method

.method public handleProtoBuf(Lcom/google/common/io/protocol/ProtoBuf;J)V
    .registers 16
    .parameter "protobuf"
    .parameter "size"

    .prologue
    .line 535
    iget-boolean v7, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-eqz v7, :cond_5

    .line 629
    :cond_4
    :goto_4
    return-void

    .line 538
    :cond_5
    const/4 v2, 0x0

    .line 539
    .local v2, packet:Lorg/jivesoftware/smack/packet/Packet;
    invoke-virtual {p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v6

    .line 542
    .local v6, type:Lcom/google/common/io/protocol/ProtoBufType;
    :try_start_a
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_PING:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_65

    .line 543
    const-string v7, "Smack/Packet"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 544
    const-string v7, "Received HeartbeatPing from server."

    invoke-direct {p0, v7}, Lorg/jivesoftware/smack/PacketReader;->log(Ljava/lang/String;)V

    .line 549
    :cond_1c
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/XMPPConnection;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v7

    if-eqz v7, :cond_2a

    .line 550
    new-instance v3, Lorg/jivesoftware/smack/packet/HeartbeatPing;

    invoke-direct {v3}, Lorg/jivesoftware/smack/packet/HeartbeatPing;-><init>()V

    .end local v2           #packet:Lorg/jivesoftware/smack/packet/Packet;
    .local v3, packet:Lorg/jivesoftware/smack/packet/Packet;
    move-object v2, v3

    .line 553
    .end local v3           #packet:Lorg/jivesoftware/smack/packet/Packet;
    .restart local v2       #packet:Lorg/jivesoftware/smack/packet/Packet;
    :cond_2a
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v7, v7, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/PacketWriter;->sendHeartbeatAck()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_31} :catch_fb

    .line 598
    :cond_31
    :goto_31
    if-eqz v2, :cond_119

    .line 607
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/XMPPConnection;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v4

    .line 608
    .local v4, rmq2Mgr:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    if-eqz v4, :cond_52

    .line 609
    invoke-virtual {v4, v2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processS2dMessage(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 611
    invoke-virtual {p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v7

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Packet;->getRmq2Id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getLastStreamIdReceived()I

    move-result v9

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Packet;->getLastStreamId()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Lcom/google/android/gsf/gtalkservice/LogTag;->logRmq2(Lcom/google/common/io/protocol/ProtoBufType;Ljava/lang/String;IIZ)V

    .line 616
    :cond_52
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/XMPPConnection;->getRmqManager()Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

    move-result-object v5

    .line 617
    .local v5, rmqMgr:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;
    if-eqz v5, :cond_5d

    .line 618
    invoke-virtual {v5, v2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->processS2dMessage(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 621
    :cond_5d
    invoke-direct {p0, v2}, Lorg/jivesoftware/smack/PacketReader;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 622
    const/4 v7, 0x1

    invoke-static {v2, p2, p3, v7}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->update(Lorg/jivesoftware/smack/packet/Packet;JZ)V

    goto :goto_4

    .line 554
    .end local v4           #rmq2Mgr:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    .end local v5           #rmqMgr:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;
    :cond_65
    :try_start_65
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_ACK:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_86

    .line 555
    const-string v7, "Smack/Packet"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 556
    const-string v7, "Received HeartbeatAck from server."

    invoke-direct {p0, v7}, Lorg/jivesoftware/smack/PacketReader;->log(Ljava/lang/String;)V

    .line 560
    :cond_77
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/XMPPConnection;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v7

    if-eqz v7, :cond_31

    .line 561
    new-instance v3, Lorg/jivesoftware/smack/packet/HeartbeatAck;

    invoke-direct {v3}, Lorg/jivesoftware/smack/packet/HeartbeatAck;-><init>()V

    .end local v2           #packet:Lorg/jivesoftware/smack/packet/Packet;
    .restart local v3       #packet:Lorg/jivesoftware/smack/packet/Packet;
    move-object v2, v3

    .end local v3           #packet:Lorg/jivesoftware/smack/packet/Packet;
    .restart local v2       #packet:Lorg/jivesoftware/smack/packet/Packet;
    goto :goto_31

    .line 563
    :cond_86
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->LOGIN_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_8f

    .line 564
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseLoginResponse(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/LoginResponse;

    move-result-object v2

    goto :goto_31

    .line 565
    :cond_8f
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->BIND_ACCOUNT_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_98

    .line 567
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseBindAccountResponse(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    goto :goto_31

    .line 568
    :cond_98
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HTTP_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_a1

    .line 569
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseHttpResponse(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/HttpResponse;

    move-result-object v2

    goto :goto_31

    .line 570
    :cond_a1
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->MESSAGE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_b0

    .line 571
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/XMPPConnection;->getDefaultAccountId()J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseMessage(Lcom/google/common/io/protocol/ProtoBuf;J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    goto :goto_31

    .line 573
    :cond_b0
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->PRESENCE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_c0

    .line 574
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/XMPPConnection;->getDefaultAccountId()J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePresence(Lcom/google/common/io/protocol/ProtoBuf;J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    goto/16 :goto_31

    .line 576
    :cond_c0
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->BATCH_PRESENCE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_d0

    .line 577
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/XMPPConnection;->getDefaultAccountId()J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseBatchPresence(Lcom/google/common/io/protocol/ProtoBuf;J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    goto/16 :goto_31

    .line 579
    :cond_d0
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->IQ_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_da

    .line 580
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseIQ(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v2

    goto/16 :goto_31

    .line 581
    :cond_da
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->DATA_MESSAGE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_e4

    .line 582
    invoke-static {p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseDataMessage(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/DataMessage;

    move-result-object v2

    goto/16 :goto_31

    .line 583
    :cond_e4
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->CLOSE:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_108

    .line 584
    const-string v7, "Smack/Packet"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_f6

    .line 585
    const-string v7, "Received Close from server."

    invoke-direct {p0, v7}, Lorg/jivesoftware/smack/PacketReader;->log(Ljava/lang/String;)V

    .line 587
    :cond_f6
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_f9} :catch_fb

    goto/16 :goto_31

    .line 593
    :catch_fb
    move-exception v0

    .line 594
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "Smack/Packet"

    const-string v8, "handleProtoBuf: caught "

    invoke-static {v7, v8, v0}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 595
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    goto/16 :goto_31

    .line 588
    .end local v0           #e:Ljava/lang/Exception;
    :cond_108
    :try_start_108
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->STREAM_ERROR_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_31

    .line 589
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    .line 590
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseStreamError(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/StreamError;

    move-result-object v1

    .line 591
    .local v1, error:Lorg/jivesoftware/smack/packet/StreamError;
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    invoke-direct {v7, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/StreamError;)V

    throw v7
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_119} :catch_fb

    .line 624
    .end local v1           #error:Lorg/jivesoftware/smack/packet/StreamError;
    :cond_119
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_PING:Lcom/google/common/io/protocol/ProtoBufType;

    if-eq v6, v7, :cond_121

    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_ACK:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_4

    .line 626
    :cond_121
    const/4 v7, 0x1

    invoke-static {p2, p3, v7}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->updateHeartbeat(JZ)V

    goto/16 :goto_4
.end method

.method notifyConnectionError(Ljava/lang/Exception;)V
    .registers 8
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    .line 372
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->notifiedConnectionError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 428
    :goto_9
    return-void

    .line 377
    :cond_a
    new-instance v2, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;

    const-string v3, "notifyConnectionError"

    invoke-direct {v2, v3}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;-><init>(Ljava/lang/String;)V

    .line 384
    .local v2, wakeLockDiag:Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v4, "notifyConnectionError"

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/XMPPConnection;->acquireWakeLock(Ljava/lang/String;)V

    .line 387
    :try_start_18
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->wakeLockAcquired()V

    .line 389
    instance-of v3, p1, Ljava/io/IOException;

    if-eqz v3, :cond_60

    .line 393
    const-string v3, "Smack/Packet"

    const-string v4, "notify conn break (IOEx), close connection"

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :goto_26
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    .line 400
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/XMPPConnection;->close(Z)V

    .line 401
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->releaseConnectionIDLock()V

    .line 404
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    monitor-enter v4
    :try_end_35
    .catchall {:try_start_18 .. :try_end_35} :catchall_54

    .line 414
    :try_start_35
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/ConnectionListener;

    .line 415
    .local v1, listener:Lorg/jivesoftware/smack/ConnectionListener;
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPConnection;->getLocalConnectionId()I

    move-result v3

    invoke-interface {v1, v3, p1}, Lorg/jivesoftware/smack/ConnectionListener;->connectionClosedOnError(ILjava/lang/Exception;)V

    goto :goto_3b

    .line 418
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lorg/jivesoftware/smack/ConnectionListener;
    :catchall_51
    move-exception v3

    monitor-exit v4
    :try_end_53
    .catchall {:try_start_35 .. :try_end_53} :catchall_51

    :try_start_53
    throw v3
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    .line 425
    :catchall_54
    move-exception v3

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 426
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v5, "notifyConnectionError"

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V

    .line 425
    throw v3

    .line 396
    :cond_60
    :try_start_60
    const-string v3, "Smack/Packet"

    const-string v4, "notify conn error. close connection!"

    invoke-static {v3, v4, p1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_54

    goto :goto_26

    .line 418
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_68
    :try_start_68
    monitor-exit v4
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_51

    .line 421
    :try_start_69
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    monitor-enter v4
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_54

    .line 422
    :try_start_6c
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 423
    monitor-exit v4
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_7d

    .line 425
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 426
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v4, "notifyConnectionError"

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V

    goto :goto_9

    .line 423
    :catchall_7d
    move-exception v3

    :try_start_7e
    monitor-exit v4
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    :try_start_7f
    throw v3
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_54
.end method

.method public shutdown(Z)V
    .registers 6
    .parameter "notifyConnectionClosed"

    .prologue
    .line 346
    iget-boolean v2, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v2, :cond_29

    if-eqz p1, :cond_29

    .line 347
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    monitor-enter v3

    .line 348
    :try_start_9
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/ConnectionListener;

    .line 349
    .local v1, listener:Lorg/jivesoftware/smack/ConnectionListener;
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getLocalConnectionId()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/jivesoftware/smack/ConnectionListener;->connectionClosed(I)V

    goto :goto_f

    .line 351
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lorg/jivesoftware/smack/ConnectionListener;
    :catchall_25
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_25

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_28
    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_25

    .line 354
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_29
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    .line 357
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    monitor-enter v3

    .line 358
    :try_start_2f
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 359
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_3b

    .line 362
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->packetProcessor:Lorg/jivesoftware/smack/PacketProcessor;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketProcessor;->shutdown()V

    .line 363
    return-void

    .line 359
    :catchall_3b
    move-exception v2

    :try_start_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v2
.end method

.method public startup()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->readerThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 278
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 279
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->packetProcessor:Lorg/jivesoftware/smack/PacketProcessor;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/PacketProcessor;->start()V

    .line 285
    :try_start_f
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connectionIDLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_55

    .line 286
    :try_start_12
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    if-nez v6, :cond_2d

    .line 291
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v6

    int-to-long v4, v6

    .line 293
    .local v4, waitTime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 294
    .local v2, start:J
    :goto_1f
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    if-nez v6, :cond_2d

    iget-boolean v6, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v6, :cond_2d

    .line 295
    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-gtz v6, :cond_41

    .line 306
    .end local v2           #start:J
    .end local v4           #waitTime:J
    :cond_2d
    monitor-exit v7
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_52

    .line 311
    :goto_2e
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    if-nez v6, :cond_57

    .line 312
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "Connection failed. No response from server."

    new-instance v8, Lorg/jivesoftware/smack/packet/XMPPError;

    const/16 v9, 0x1f6

    invoke-direct {v8, v9}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(I)V

    invoke-direct {v6, v7, v8}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v6

    .line 299
    .restart local v2       #start:J
    .restart local v4       #waitTime:J
    :cond_41
    :try_start_41
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connectionIDLock:Ljava/lang/Object;

    const-wide/16 v8, 0x3

    mul-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 301
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 302
    .local v0, now:J
    sub-long v8, v0, v2

    sub-long/2addr v4, v8

    .line 303
    move-wide v2, v0

    .line 304
    goto :goto_1f

    .line 306
    .end local v0           #now:J
    .end local v2           #start:J
    .end local v4           #waitTime:J
    :catchall_52
    move-exception v6

    monitor-exit v7
    :try_end_54
    .catchall {:try_start_41 .. :try_end_54} :catchall_52

    :try_start_54
    throw v6
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_55} :catch_55

    .line 308
    :catch_55
    move-exception v6

    goto :goto_2e

    .line 316
    :cond_57
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    iput-object v7, v6, Lorg/jivesoftware/smack/XMPPConnection;->connectionID:Ljava/lang/String;

    .line 318
    return-void
.end method
