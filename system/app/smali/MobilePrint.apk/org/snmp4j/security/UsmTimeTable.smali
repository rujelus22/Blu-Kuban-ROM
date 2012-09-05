.class public Lorg/snmp4j/security/UsmTimeTable;
.super Ljava/lang/Object;
.source "UsmTimeTable.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static class$org$snmp4j$security$UsmTimeTable:Ljava/lang/Class; = null

.field private static final logger:Lorg/snmp4j/log/LogAdapter; = null

.field private static final serialVersionUID:J = -0x1559374c184b1065L


# instance fields
.field private lastLocalTimeChange:J

.field private localTime:Lorg/snmp4j/security/UsmTimeEntry;

.field private table:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lorg/snmp4j/security/UsmTimeTable;->class$org$snmp4j$security$UsmTimeTable:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.snmp4j.security.UsmTimeTable"

    invoke-static {v0}, Lorg/snmp4j/security/UsmTimeTable;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/security/UsmTimeTable;->class$org$snmp4j$security$UsmTimeTable:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/security/UsmTimeTable;->logger:Lorg/snmp4j/log/LogAdapter;

    return-void

    :cond_13
    sget-object v0, Lorg/snmp4j/security/UsmTimeTable;->class$org$snmp4j$security$UsmTimeTable:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Lorg/snmp4j/smi/OctetString;I)V
    .registers 5
    .parameter "localEngineID"
    .parameter "engineBoots"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/security/UsmTimeTable;->table:Ljava/util/Hashtable;

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/snmp4j/security/UsmTimeTable;->lastLocalTimeChange:J

    .line 48
    new-instance v0, Lorg/snmp4j/security/UsmTimeEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/snmp4j/security/UsmTimeEntry;-><init>(Lorg/snmp4j/smi/OctetString;II)V

    invoke-virtual {p0, v0}, Lorg/snmp4j/security/UsmTimeTable;->setLocalTime(Lorg/snmp4j/security/UsmTimeEntry;)V

    .line 49
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 41
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public addEntry(Lorg/snmp4j/security/UsmTimeEntry;)V
    .registers 4
    .parameter "entry"

    .prologue
    .line 52
    iget-object v0, p0, Lorg/snmp4j/security/UsmTimeTable;->table:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineID()Lorg/snmp4j/smi/OctetString;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public declared-synchronized checkEngineID(Lorg/snmp4j/smi/OctetString;Z)I
    .registers 7
    .parameter "engineID"
    .parameter "discoveryAllowed"

    .prologue
    const/4 v0, 0x0

    .line 133
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lorg/snmp4j/security/UsmTimeTable;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_19

    move-result-object v1

    if-eqz v1, :cond_c

    .line 140
    :goto_a
    monitor-exit p0

    return v0

    .line 136
    :cond_c
    if-eqz p2, :cond_1c

    .line 137
    :try_start_e
    new-instance v1, Lorg/snmp4j/security/UsmTimeEntry;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lorg/snmp4j/security/UsmTimeEntry;-><init>(Lorg/snmp4j/smi/OctetString;II)V

    invoke-virtual {p0, v1}, Lorg/snmp4j/security/UsmTimeTable;->addEntry(Lorg/snmp4j/security/UsmTimeEntry;)V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_19

    goto :goto_a

    .line 133
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0

    .line 140
    :cond_1c
    const/16 v0, 0x582

    goto :goto_a
.end method

.method public declared-synchronized checkTime(Lorg/snmp4j/security/UsmTimeEntry;)I
    .registers 11
    .parameter "entry"

    .prologue
    const v8, 0x7fffffff

    const/16 v3, 0x583

    const/4 v2, 0x0

    .line 144
    monitor-enter p0

    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v0, v4

    .line 145
    .local v0, now:I
    iget-object v4, p0, Lorg/snmp4j/security/UsmTimeTable;->localTime:Lorg/snmp4j/security/UsmTimeEntry;

    invoke-virtual {v4}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineID()Lorg/snmp4j/smi/OctetString;

    move-result-object v4

    invoke-virtual {p1}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineID()Lorg/snmp4j/smi/OctetString;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/snmp4j/smi/OctetString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 147
    iget-object v4, p0, Lorg/snmp4j/security/UsmTimeTable;->localTime:Lorg/snmp4j/security/UsmTimeEntry;

    invoke-virtual {v4}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineBoots()I

    move-result v4

    if-eq v4, v8, :cond_47

    iget-object v4, p0, Lorg/snmp4j/security/UsmTimeTable;->localTime:Lorg/snmp4j/security/UsmTimeEntry;

    invoke-virtual {v4}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineBoots()I

    move-result v4

    invoke-virtual {p1}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineBoots()I

    move-result v5

    if-ne v4, v5, :cond_47

    iget-object v4, p0, Lorg/snmp4j/security/UsmTimeTable;->localTime:Lorg/snmp4j/security/UsmTimeEntry;

    invoke-virtual {v4}, Lorg/snmp4j/security/UsmTimeEntry;->getTimeDiff()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1}, Lorg/snmp4j/security/UsmTimeEntry;->getLatestReceivedTime()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x96

    if-le v4, v5, :cond_a2

    .line 151
    :cond_47
    sget-object v2, Lorg/snmp4j/security/UsmTimeTable;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v2}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 152
    sget-object v4, Lorg/snmp4j/security/UsmTimeTable;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "CheckTime: received message outside time window (authorative):"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v2, p0, Lorg/snmp4j/security/UsmTimeTable;->localTime:Lorg/snmp4j/security/UsmTimeEntry;

    invoke-virtual {v2}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineBoots()I

    move-result v2

    invoke-virtual {p1}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineBoots()I

    move-result v6

    if-eq v2, v6, :cond_78

    const-string v2, "engineBoots differ"

    :goto_6a
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V
    :try_end_75
    .catchall {:try_start_7 .. :try_end_75} :catchall_b2

    :cond_75
    move v2, v3

    .line 196
    :cond_76
    :goto_76
    monitor-exit p0

    return v2

    .line 152
    :cond_78
    :try_start_78
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v6, p0, Lorg/snmp4j/security/UsmTimeTable;->localTime:Lorg/snmp4j/security/UsmTimeEntry;

    invoke-virtual {v6}, Lorg/snmp4j/security/UsmTimeEntry;->getTimeDiff()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p1}, Lorg/snmp4j/security/UsmTimeEntry;->getLatestReceivedTime()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, " > 150"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6a

    .line 162
    :cond_a2
    sget-object v3, Lorg/snmp4j/security/UsmTimeTable;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v3}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_76

    .line 163
    sget-object v3, Lorg/snmp4j/security/UsmTimeTable;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v4, "CheckTime: time ok (authorative)"

    invoke-interface {v3, v4}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V
    :try_end_b1
    .catchall {:try_start_78 .. :try_end_b1} :catchall_b2

    goto :goto_76

    .line 144
    .end local v0           #now:I
    :catchall_b2
    move-exception v2

    monitor-exit p0

    throw v2

    .line 169
    .restart local v0       #now:I
    :cond_b5
    :try_start_b5
    iget-object v4, p0, Lorg/snmp4j/security/UsmTimeTable;->table:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineID()Lorg/snmp4j/smi/OctetString;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/snmp4j/security/UsmTimeEntry;

    .line 170
    .local v1, time:Lorg/snmp4j/security/UsmTimeEntry;
    if-nez v1, :cond_c6

    .line 171
    const/16 v2, 0x582

    goto :goto_76

    .line 173
    :cond_c6
    invoke-virtual {p1}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineBoots()I

    move-result v4

    invoke-virtual {v1}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineBoots()I

    move-result v5

    if-lt v4, v5, :cond_ed

    invoke-virtual {p1}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineBoots()I

    move-result v4

    invoke-virtual {v1}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineBoots()I

    move-result v5

    if-ne v4, v5, :cond_e7

    invoke-virtual {v1}, Lorg/snmp4j/security/UsmTimeEntry;->getTimeDiff()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1}, Lorg/snmp4j/security/UsmTimeEntry;->getLatestReceivedTime()I

    move-result v5

    add-int/lit16 v5, v5, 0x96

    if-gt v4, v5, :cond_ed

    :cond_e7
    invoke-virtual {v1}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineBoots()I

    move-result v4

    if-ne v4, v8, :cond_ff

    .line 178
    :cond_ed
    sget-object v2, Lorg/snmp4j/security/UsmTimeTable;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v2}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 179
    sget-object v2, Lorg/snmp4j/security/UsmTimeTable;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v4, "CheckTime: received message outside time window (non authorative)"

    invoke-interface {v2, v4}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    :cond_fc
    move v2, v3

    .line 182
    goto/16 :goto_76

    .line 185
    :cond_ff
    invoke-virtual {p1}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineBoots()I

    move-result v3

    invoke-virtual {v1}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineBoots()I

    move-result v4

    if-gt v3, v4, :cond_11d

    invoke-virtual {p1}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineBoots()I

    move-result v3

    invoke-virtual {v1}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineBoots()I

    move-result v4

    if-ne v3, v4, :cond_133

    invoke-virtual {p1}, Lorg/snmp4j/security/UsmTimeEntry;->getLatestReceivedTime()I

    move-result v3

    invoke-virtual {v1}, Lorg/snmp4j/security/UsmTimeEntry;->getLatestReceivedTime()I

    move-result v4

    if-le v3, v4, :cond_133

    .line 189
    :cond_11d
    invoke-virtual {p1}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineBoots()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/snmp4j/security/UsmTimeEntry;->setEngineBoots(I)V

    .line 190
    invoke-virtual {p1}, Lorg/snmp4j/security/UsmTimeEntry;->getLatestReceivedTime()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/snmp4j/security/UsmTimeEntry;->setLatestReceivedTime(I)V

    .line 191
    invoke-virtual {p1}, Lorg/snmp4j/security/UsmTimeEntry;->getLatestReceivedTime()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lorg/snmp4j/security/UsmTimeEntry;->setTimeDiff(I)V

    .line 193
    :cond_133
    sget-object v3, Lorg/snmp4j/security/UsmTimeTable;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v3}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_76

    .line 194
    sget-object v3, Lorg/snmp4j/security/UsmTimeTable;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v4, "CheckTime: time ok (non authorative)"

    invoke-interface {v3, v4}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V
    :try_end_142
    .catchall {:try_start_b5 .. :try_end_142} :catchall_b2

    goto/16 :goto_76
.end method

.method public getEngineBoots()I
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/snmp4j/security/UsmTimeTable;->localTime:Lorg/snmp4j/security/UsmTimeEntry;

    invoke-virtual {v0}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineBoots()I

    move-result v0

    return v0
.end method

.method public getEngineTime()I
    .registers 5

    .prologue
    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/snmp4j/security/UsmTimeTable;->lastLocalTimeChange:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide v2, 0x80000000L

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getEntry(Lorg/snmp4j/smi/OctetString;)Lorg/snmp4j/security/UsmTimeEntry;
    .registers 3
    .parameter "engineID"

    .prologue
    .line 56
    iget-object v0, p0, Lorg/snmp4j/security/UsmTimeTable;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/security/UsmTimeEntry;

    return-object v0
.end method

.method public getLocalTime()Lorg/snmp4j/security/UsmTimeEntry;
    .registers 5

    .prologue
    .line 60
    new-instance v0, Lorg/snmp4j/security/UsmTimeEntry;

    iget-object v1, p0, Lorg/snmp4j/security/UsmTimeTable;->localTime:Lorg/snmp4j/security/UsmTimeEntry;

    invoke-virtual {v1}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineID()Lorg/snmp4j/smi/OctetString;

    move-result-object v1

    iget-object v2, p0, Lorg/snmp4j/security/UsmTimeTable;->localTime:Lorg/snmp4j/security/UsmTimeEntry;

    invoke-virtual {v2}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineBoots()I

    move-result v2

    invoke-virtual {p0}, Lorg/snmp4j/security/UsmTimeTable;->getEngineTime()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/snmp4j/security/UsmTimeEntry;-><init>(Lorg/snmp4j/smi/OctetString;II)V

    .line 63
    .local v0, entry:Lorg/snmp4j/security/UsmTimeEntry;
    invoke-virtual {v0}, Lorg/snmp4j/security/UsmTimeEntry;->getTimeDiff()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/snmp4j/security/UsmTimeTable;->localTime:Lorg/snmp4j/security/UsmTimeEntry;

    invoke-virtual {v2}, Lorg/snmp4j/security/UsmTimeEntry;->getTimeDiff()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/snmp4j/security/UsmTimeEntry;->setTimeDiff(I)V

    .line 64
    return-object v0
.end method

.method public declared-synchronized getTime(Lorg/snmp4j/smi/OctetString;)Lorg/snmp4j/security/UsmTimeEntry;
    .registers 10
    .parameter "engineID"

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/snmp4j/security/UsmTimeTable;->localTime:Lorg/snmp4j/security/UsmTimeEntry;

    invoke-virtual {v1}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineID()Lorg/snmp4j/smi/OctetString;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/snmp4j/smi/OctetString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 111
    invoke-virtual {p0}, Lorg/snmp4j/security/UsmTimeTable;->getLocalTime()Lorg/snmp4j/security/UsmTimeEntry;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_36

    move-result-object v1

    .line 117
    :goto_11
    monitor-exit p0

    return-object v1

    .line 113
    :cond_13
    :try_start_13
    iget-object v1, p0, Lorg/snmp4j/security/UsmTimeTable;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/security/UsmTimeEntry;

    .line 114
    .local v0, found:Lorg/snmp4j/security/UsmTimeEntry;
    if-nez v0, :cond_1f

    .line 115
    const/4 v1, 0x0

    goto :goto_11

    .line 117
    :cond_1f
    new-instance v1, Lorg/snmp4j/security/UsmTimeEntry;

    invoke-virtual {v0}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineBoots()I

    move-result v2

    invoke-virtual {v0}, Lorg/snmp4j/security/UsmTimeEntry;->getTimeDiff()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    invoke-direct {v1, p1, v2, v3}, Lorg/snmp4j/security/UsmTimeEntry;-><init>(Lorg/snmp4j/smi/OctetString;II)V
    :try_end_35
    .catchall {:try_start_13 .. :try_end_35} :catchall_36

    goto :goto_11

    .line 110
    .end local v0           #found:Lorg/snmp4j/security/UsmTimeEntry;
    :catchall_36
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeEntry(Lorg/snmp4j/smi/OctetString;)V
    .registers 3
    .parameter "engineID"

    .prologue
    .line 128
    iget-object v0, p0, Lorg/snmp4j/security/UsmTimeTable;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 202
    return-void
.end method

.method public setEngineBoots(I)V
    .registers 3
    .parameter "engineBoots"

    .prologue
    .line 79
    iget-object v0, p0, Lorg/snmp4j/security/UsmTimeTable;->localTime:Lorg/snmp4j/security/UsmTimeEntry;

    invoke-virtual {v0, p1}, Lorg/snmp4j/security/UsmTimeEntry;->setEngineBoots(I)V

    .line 80
    return-void
.end method

.method public setLocalTime(Lorg/snmp4j/security/UsmTimeEntry;)V
    .registers 4
    .parameter "localTime"

    .prologue
    .line 68
    iput-object p1, p0, Lorg/snmp4j/security/UsmTimeTable;->localTime:Lorg/snmp4j/security/UsmTimeEntry;

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/snmp4j/security/UsmTimeTable;->lastLocalTimeChange:J

    .line 70
    return-void
.end method
