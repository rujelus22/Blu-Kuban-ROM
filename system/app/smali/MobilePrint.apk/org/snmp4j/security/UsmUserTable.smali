.class public Lorg/snmp4j/security/UsmUserTable;
.super Ljava/lang/Object;
.source "UsmUserTable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/snmp4j/security/UsmUserTable$UsmUserKey;
    }
.end annotation


# static fields
.field static class$org$snmp4j$security$UsmUserTable:Ljava/lang/Class; = null

.field private static final logger:Lorg/snmp4j/log/LogAdapter; = null

.field private static final serialVersionUID:J = 0x60439173c8733c36L


# instance fields
.field private table:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lorg/snmp4j/security/UsmUserTable;->class$org$snmp4j$security$UsmUserTable:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.snmp4j.security.UsmUserTable"

    invoke-static {v0}, Lorg/snmp4j/security/UsmUserTable;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/security/UsmUserTable;->class$org$snmp4j$security$UsmUserTable:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/security/UsmUserTable;->logger:Lorg/snmp4j/log/LogAdapter;

    return-void

    :cond_13
    sget-object v0, Lorg/snmp4j/security/UsmUserTable;->class$org$snmp4j$security$UsmUserTable:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/security/UsmUserTable;->table:Ljava/util/Map;

    .line 50
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 45
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
.method public declared-synchronized addUser(Lorg/snmp4j/security/UsmUserEntry;)Lorg/snmp4j/security/UsmUserEntry;
    .registers 5
    .parameter "user"

    .prologue
    .line 53
    monitor-enter p0

    :try_start_1
    sget-object v0, Lorg/snmp4j/security/UsmUserTable;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 54
    sget-object v0, Lorg/snmp4j/security/UsmUserTable;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Adding user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/snmp4j/security/UsmUserEntry;->getUserName()Lorg/snmp4j/smi/OctetString;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/snmp4j/security/UsmUserEntry;->getUsmUser()Lorg/snmp4j/security/UsmUser;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 56
    :cond_33
    iget-object v0, p0, Lorg/snmp4j/security/UsmUserTable;->table:Ljava/util/Map;

    new-instance v1, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;

    invoke-direct {v1, p1}, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;-><init>(Lorg/snmp4j/security/UsmUserEntry;)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/security/UsmUserEntry;
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_42

    monitor-exit p0

    return-object v0

    .line 53
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .registers 3

    .prologue
    .line 121
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/security/UsmUserTable;->table:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 122
    sget-object v0, Lorg/snmp4j/security/UsmUserTable;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 123
    sget-object v0, Lorg/snmp4j/security/UsmUserTable;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v1, "Cleared UsmUserTable"

    invoke-interface {v0, v1}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 125
    :cond_15
    monitor-exit p0

    return-void

    .line 121
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUser(Lorg/snmp4j/smi/OctetString;)Lorg/snmp4j/security/UsmUserEntry;
    .registers 5
    .parameter "securityName"

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/security/UsmUserTable;->table:Ljava/util/Map;

    new-instance v1, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;

    new-instance v2, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v2}, Lorg/snmp4j/smi/OctetString;-><init>()V

    invoke-direct {v1, v2, p1}, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;-><init>(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/security/UsmUserEntry;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUser(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;)Lorg/snmp4j/security/UsmUserEntry;
    .registers 5
    .parameter "engineID"
    .parameter "securityName"

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/security/UsmUserTable;->table:Ljava/util/Map;

    new-instance v1, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;

    invoke-direct {v1, p1, p2}, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;-><init>(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/security/UsmUserEntry;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserEntries()Ljava/util/List;
    .registers 4

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 94
    .local v1, l:Ljava/util/LinkedList;
    iget-object v2, p0, Lorg/snmp4j/security/UsmUserTable;->table:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1e

    goto :goto_10

    .line 93
    .end local v0           #it:Ljava/util/Iterator;
    .end local v1           #l:Ljava/util/LinkedList;
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2

    .line 97
    .restart local v0       #it:Ljava/util/Iterator;
    .restart local v1       #l:Ljava/util/LinkedList;
    :cond_21
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized getUserEntries(Lorg/snmp4j/smi/OctetString;)Ljava/util/List;
    .registers 8
    .parameter "userName"

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 80
    .local v1, users:Ljava/util/LinkedList;
    iget-object v3, p0, Lorg/snmp4j/security/UsmUserTable;->table:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/snmp4j/security/UsmUserEntry;

    .line 82
    .local v2, value:Lorg/snmp4j/security/UsmUserEntry;
    invoke-virtual {v2}, Lorg/snmp4j/security/UsmUserEntry;->getUserName()Lorg/snmp4j/smi/OctetString;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/snmp4j/smi/OctetString;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 83
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2a

    goto :goto_10

    .line 79
    .end local v0           #it:Ljava/util/Iterator;
    .end local v1           #users:Ljava/util/LinkedList;
    .end local v2           #value:Lorg/snmp4j/security/UsmUserEntry;
    :catchall_2a
    move-exception v3

    monitor-exit p0

    throw v3

    .line 86
    .restart local v0       #it:Ljava/util/Iterator;
    .restart local v1       #users:Ljava/util/LinkedList;
    :cond_2d
    :try_start_2d
    sget-object v3, Lorg/snmp4j/security/UsmUserTable;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v3}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 87
    sget-object v3, Lorg/snmp4j/security/UsmUserTable;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Returning user entries for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V
    :try_end_57
    .catchall {:try_start_2d .. :try_end_57} :catchall_2a

    .line 89
    :cond_57
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized removeUser(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;)Lorg/snmp4j/security/UsmUserEntry;
    .registers 7
    .parameter "engineID"
    .parameter "securityName"

    .prologue
    .line 102
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/snmp4j/security/UsmUserTable;->table:Ljava/util/Map;

    new-instance v2, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;

    invoke-direct {v2, p1, p2}, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;-><init>(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/security/UsmUserEntry;

    .line 104
    .local v0, entry:Lorg/snmp4j/security/UsmUserEntry;
    sget-object v1, Lorg/snmp4j/security/UsmUserTable;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v1}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 105
    sget-object v1, Lorg/snmp4j/security/UsmUserTable;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Removed user with secName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " and engineID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    .line 108
    :cond_38
    monitor-exit p0

    return-object v0

    .line 102
    .end local v0           #entry:Lorg/snmp4j/security/UsmUserEntry;
    :catchall_3a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setUsers(Ljava/util/Collection;)V
    .registers 7
    .parameter "c"

    .prologue
    .line 60
    monitor-enter p0

    :try_start_1
    sget-object v2, Lorg/snmp4j/security/UsmUserTable;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v2}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 61
    sget-object v2, Lorg/snmp4j/security/UsmUserTable;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Setting users to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 63
    :cond_21
    iget-object v2, p0, Lorg/snmp4j/security/UsmUserTable;->table:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 64
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/snmp4j/security/UsmUserEntry;

    .line 66
    .local v1, user:Lorg/snmp4j/security/UsmUserEntry;
    iget-object v2, p0, Lorg/snmp4j/security/UsmUserTable;->table:Ljava/util/Map;

    new-instance v3, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;

    invoke-direct {v3, v1}, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;-><init>(Lorg/snmp4j/security/UsmUserEntry;)V

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_41

    goto :goto_2a

    .line 60
    .end local v0           #it:Ljava/util/Iterator;
    .end local v1           #user:Lorg/snmp4j/security/UsmUserEntry;
    :catchall_41
    move-exception v2

    monitor-exit p0

    throw v2

    .line 68
    .restart local v0       #it:Ljava/util/Iterator;
    :cond_44
    monitor-exit p0

    return-void
.end method
