.class public Lorg/jivesoftware/smack/PacketCollector;
.super Ljava/lang/Object;
.source "PacketCollector.java"


# instance fields
.field private cancelled:Z

.field public packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field protected packetReader:Lorg/jivesoftware/smack/PacketReader;

.field resultQueue:Ljava/util/LinkedList;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/PacketReader;)V
    .registers 3
    .parameter "packetReader"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/PacketCollector;->cancelled:Z

    .line 59
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketCollector;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    .line 60
    invoke-virtual {p0}, Lorg/jivesoftware/smack/PacketCollector;->addToCollectorList()V

    .line 61
    return-void
.end method

.method protected constructor <init>(Lorg/jivesoftware/smack/PacketReader;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .registers 3
    .parameter "packetReader"
    .parameter "packetFilter"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketCollector;-><init>(Lorg/jivesoftware/smack/PacketReader;)V

    .line 72
    invoke-virtual {p0, p2}, Lorg/jivesoftware/smack/PacketCollector;->setPacketFilter(Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 73
    return-void
.end method


# virtual methods
.method protected addToCollectorList()V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    iget-object v1, v0, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    monitor-enter v1

    .line 78
    :try_start_5
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    iget-object v0, v0, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    monitor-exit v1

    .line 80
    return-void

    .line 79
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public cancel()V
    .registers 2

    .prologue
    .line 103
    iget-boolean v0, p0, Lorg/jivesoftware/smack/PacketCollector;->cancelled:Z

    if-nez v0, :cond_a

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/PacketCollector;->cancelled:Z

    .line 105
    invoke-virtual {p0}, Lorg/jivesoftware/smack/PacketCollector;->removeFromCollectorList()V

    .line 107
    :cond_a
    return-void
.end method

.method public getPacketFilter()Lorg/jivesoftware/smack/filter/PacketFilter;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    return-object v0
.end method

.method public declared-synchronized nextResult(J)Lorg/jivesoftware/smack/packet/Packet;
    .registers 4
    .parameter "timeout"

    .prologue
    .line 165
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_22

    move-result v0

    if-eqz v0, :cond_c

    .line 167
    :try_start_9
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_22
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_20

    .line 174
    :cond_c
    :goto_c
    :try_start_c
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_22

    move-result v0

    if-eqz v0, :cond_17

    .line 175
    const/4 v0, 0x0

    .line 178
    :goto_15
    monitor-exit p0

    return-object v0

    :cond_17
    :try_start_17
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Packet;
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_22

    goto :goto_15

    .line 169
    :catch_20
    move-exception v0

    goto :goto_c

    .line 165
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pollResult()Lorg/jivesoftware/smack/packet/Packet;
    .registers 2

    .prologue
    .line 128
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_15

    move-result v0

    if-eqz v0, :cond_c

    .line 129
    const/4 v0, 0x0

    .line 132
    :goto_a
    monitor-exit p0

    return-object v0

    :cond_c
    :try_start_c
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Packet;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_a

    .line 128
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .registers 6
    .parameter "packet"

    .prologue
    const/16 v2, 0x400

    .line 189
    monitor-enter p0

    if-nez p1, :cond_7

    .line 205
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 192
    :cond_7
    :try_start_7
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketCollector;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lorg/jivesoftware/smack/PacketCollector;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-interface {v1, p1}, Lorg/jivesoftware/smack/filter/PacketFilter;->accept(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 194
    :cond_13
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ne v1, v2, :cond_52

    .line 195
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Packet;

    .line 196
    .local v0, remove:Lorg/jivesoftware/smack/packet/Packet;
    const-string v1, "Smack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PacketCollector] processPacket: drop packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", queue size exceeded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/16 v1, 0xc

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 201
    .end local v0           #remove:Lorg/jivesoftware/smack/packet/Packet;
    :cond_52
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_5a
    .catchall {:try_start_7 .. :try_end_5a} :catchall_5b

    goto :goto_5

    .line 189
    :catchall_5b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected removeFromCollectorList()V
    .registers 5

    .prologue
    .line 86
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketCollector;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    iget-object v2, v1, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    monitor-enter v2

    .line 87
    :try_start_5
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketCollector;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    iget-object v1, v1, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 88
    .local v0, index:I
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketCollector;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    iget-object v1, v1, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 89
    monitor-exit v2

    .line 90
    return-void

    .line 89
    .end local v0           #index:I
    :catchall_17
    move-exception v1

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public setPacketFilter(Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .registers 2
    .parameter "packetFilter"

    .prologue
    .line 93
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketCollector;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 94
    return-void
.end method
