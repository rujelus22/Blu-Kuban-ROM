.class public Lorg/jivesoftware/smack/packet/LoginResponse;
.super Lorg/jivesoftware/smack/packet/Packet;
.source "LoginResponse.java"


# instance fields
.field private heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

.field private jid:Ljava/lang/String;

.field private serverTimestamp:J

.field private settings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public getHeartbeatConfig()Lorg/jivesoftware/smack/packet/HeartbeatConfig;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    return-object v0
.end method

.method public getJid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->jid:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTimestamp()J
    .registers 3

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->serverTimestamp:J

    return-wide v0
.end method

.method public getSettings()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->settings:Ljava/util/Map;

    return-object v0
.end method

.method public setHeartbeatConfig(Lorg/jivesoftware/smack/packet/HeartbeatConfig;)V
    .registers 2
    .parameter "config"

    .prologue
    .line 51
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    .line 52
    return-void
.end method

.method public setJid(Ljava/lang/String;)V
    .registers 2
    .parameter "jid"

    .prologue
    .line 67
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->jid:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setServerTimestamp(J)V
    .registers 3
    .parameter "ts"

    .prologue
    .line 55
    iput-wide p1, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->serverTimestamp:J

    .line 56
    return-void
.end method

.method public setSettings(Ljava/util/Map;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, settings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->settings:Ljava/util/Map;

    .line 44
    return-void
.end method

.method public toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .registers 3

    .prologue
    .line 141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LoginResponse.toProtoBuf() should not be called!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toXML()Ljava/lang/String;
    .registers 12

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, -0x1

    .line 73
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v4, sb:Ljava/lang/StringBuffer;
    const-string v6, "<login-response id=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/LoginResponse;->getPacketID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->jid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11b

    .line 77
    const-string v6, "\" jid=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->jid:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v6, "\" "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/LoginResponse;->getLastStreamId()I

    move-result v3

    .line 82
    .local v3, lastStreamId:I
    if-eq v3, v8, :cond_40

    .line 83
    const-string v6, "last_stream_id=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\" "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :cond_40
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/LoginResponse;->getStreamId()I

    move-result v5

    .line 88
    .local v5, streamId:I
    if-eq v5, v8, :cond_55

    .line 89
    const-string v6, "stream_id=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\" "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    :cond_55
    const-string v6, ">"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    if-eqz v6, :cond_b7

    .line 95
    const-string v6, "<config"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    iget-object v6, v6, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->uploadStat:Ljava/lang/Boolean;

    if-eqz v6, :cond_82

    .line 97
    const-string v6, " upload-stat=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    iget-object v6, v6, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->uploadStat:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_f7

    const-string v6, "enabled"

    :goto_7a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    :cond_82
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    iget-wide v6, v6, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->interval:J

    cmp-long v6, v6, v9

    if-lez v6, :cond_9b

    .line 102
    const-string v6, " interval-ms=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    iget-wide v6, v6, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->interval:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 104
    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    :cond_9b
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    iget-object v6, v6, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->ip:Ljava/lang/String;

    if-eqz v6, :cond_b2

    .line 107
    const-string v6, " ip=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    iget-object v6, v6, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->ip:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    :cond_b2
    const-string v6, " />"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    :cond_b7
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->settings:Ljava/util/Map;

    if-eqz v6, :cond_fa

    .line 116
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->settings:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_c5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_fa

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 117
    .local v2, kv:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "<setting name=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\" value=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\" />"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c5

    .line 98
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #kv:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_f7
    const-string v6, "disabled"

    goto :goto_7a

    .line 123
    :cond_fa
    iget-wide v6, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->serverTimestamp:J

    cmp-long v6, v6, v9

    if-eqz v6, :cond_111

    .line 124
    const-string v6, "<server_timestamp>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-wide v7, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->serverTimestamp:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "</server_timestamp>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    .end local v3           #lastStreamId:I
    .end local v5           #streamId:I
    :cond_111
    :goto_111
    const-string v6, "</login-response>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 129
    :cond_11b
    const-string v6, "\">"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/LoginResponse;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    .line 131
    .local v0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    if-eqz v0, :cond_111

    .line 132
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/XMPPError;->toXML()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_111
.end method
