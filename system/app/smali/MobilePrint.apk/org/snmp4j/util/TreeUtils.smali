.class public Lorg/snmp4j/util/TreeUtils;
.super Lorg/snmp4j/util/AbstractSnmpUtility;
.source "TreeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/snmp4j/util/TreeUtils$InternalTreeListener;,
        Lorg/snmp4j/util/TreeUtils$TreeRequest;
    }
.end annotation


# static fields
.field static class$org$snmp4j$util$TreeUtils:Ljava/lang/Class;

.field private static final logger:Lorg/snmp4j/log/LogAdapter;


# instance fields
.field private ignoreLexicographicOrder:Z

.field private maxRepetitions:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lorg/snmp4j/util/TreeUtils;->class$org$snmp4j$util$TreeUtils:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.snmp4j.util.TreeUtils"

    invoke-static {v0}, Lorg/snmp4j/util/TreeUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/util/TreeUtils;->class$org$snmp4j$util$TreeUtils:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/util/TreeUtils;->logger:Lorg/snmp4j/log/LogAdapter;

    return-void

    :cond_13
    sget-object v0, Lorg/snmp4j/util/TreeUtils;->class$org$snmp4j$util$TreeUtils:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Lorg/snmp4j/Session;Lorg/snmp4j/util/PDUFactory;)V
    .registers 4
    .parameter "snmpSession"
    .parameter "pduFactory"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/snmp4j/util/AbstractSnmpUtility;-><init>(Lorg/snmp4j/Session;Lorg/snmp4j/util/PDUFactory;)V

    .line 37
    const/16 v0, 0xa

    iput v0, p0, Lorg/snmp4j/util/TreeUtils;->maxRepetitions:I

    .line 54
    return-void
.end method

.method static access$000(Lorg/snmp4j/util/TreeUtils;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lorg/snmp4j/util/TreeUtils;->ignoreLexicographicOrder:Z

    return v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 35
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

.method private walk(Lorg/snmp4j/Target;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;Ljava/lang/Object;Lorg/snmp4j/util/TreeListener;)V
    .registers 13
    .parameter "target"
    .parameter "rootOID"
    .parameter "startOID"
    .parameter "userObject"
    .parameter "listener"

    .prologue
    const/16 v2, -0x5f

    .line 112
    iget-object v1, p0, Lorg/snmp4j/util/AbstractSnmpUtility;->pduFactory:Lorg/snmp4j/util/PDUFactory;

    invoke-interface {v1, p1}, Lorg/snmp4j/util/PDUFactory;->createPDU(Lorg/snmp4j/Target;)Lorg/snmp4j/PDU;

    move-result-object v6

    .line 113
    .local v6, request:Lorg/snmp4j/PDU;
    new-instance v1, Lorg/snmp4j/smi/VariableBinding;

    invoke-direct {v1, p3}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    invoke-virtual {v6, v1}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 114
    invoke-interface {p1}, Lorg/snmp4j/Target;->getVersion()I

    move-result v1

    if-nez v1, :cond_27

    .line 115
    invoke-virtual {v6, v2}, Lorg/snmp4j/PDU;->setType(I)V

    .line 121
    :cond_19
    :goto_19
    new-instance v0, Lorg/snmp4j/util/TreeUtils$TreeRequest;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/snmp4j/util/TreeUtils$TreeRequest;-><init>(Lorg/snmp4j/util/TreeUtils;Lorg/snmp4j/util/TreeListener;Lorg/snmp4j/smi/OID;Lorg/snmp4j/Target;Ljava/lang/Object;Lorg/snmp4j/PDU;)V

    .line 123
    .local v0, treeRequest:Lorg/snmp4j/util/TreeUtils$TreeRequest;
    invoke-virtual {v0}, Lorg/snmp4j/util/TreeUtils$TreeRequest;->send()V

    .line 124
    return-void

    .line 117
    .end local v0           #treeRequest:Lorg/snmp4j/util/TreeUtils$TreeRequest;
    :cond_27
    invoke-virtual {v6}, Lorg/snmp4j/PDU;->getType()I

    move-result v1

    if-eq v1, v2, :cond_19

    .line 118
    const/16 v1, -0x5b

    invoke-virtual {v6, v1}, Lorg/snmp4j/PDU;->setType(I)V

    .line 119
    iget v1, p0, Lorg/snmp4j/util/TreeUtils;->maxRepetitions:I

    invoke-virtual {v6, v1}, Lorg/snmp4j/PDU;->setMaxRepetitions(I)V

    goto :goto_19
.end method


# virtual methods
.method public getMaxRepetitions()I
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Lorg/snmp4j/util/TreeUtils;->maxRepetitions:I

    return v0
.end method

.method public getSubtree(Lorg/snmp4j/Target;Lorg/snmp4j/smi/OID;)Ljava/util/List;
    .registers 11
    .parameter "target"
    .parameter "rootOID"

    .prologue
    .line 72
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 73
    .local v7, l:Ljava/util/List;
    new-instance v5, Lorg/snmp4j/util/TreeUtils$InternalTreeListener;

    invoke-direct {v5, p0, v7}, Lorg/snmp4j/util/TreeUtils$InternalTreeListener;-><init>(Lorg/snmp4j/util/TreeUtils;Ljava/util/List;)V

    .line 74
    .local v5, listener:Lorg/snmp4j/util/TreeListener;
    monitor-enter v5

    .line 75
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    :try_start_10
    invoke-direct/range {v0 .. v5}, Lorg/snmp4j/util/TreeUtils;->walk(Lorg/snmp4j/Target;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;Ljava/lang/Object;Lorg/snmp4j/util/TreeListener;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_36

    .line 77
    :try_start_13
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_36
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_18

    .line 82
    :goto_16
    :try_start_16
    monitor-exit v5

    .line 83
    return-object v7

    .line 79
    :catch_18
    move-exception v6

    .line 80
    .local v6, ex:Ljava/lang/InterruptedException;
    sget-object v0, Lorg/snmp4j/util/TreeUtils;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Tree retrieval interrupted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    goto :goto_16

    .line 82
    .end local v6           #ex:Ljava/lang/InterruptedException;
    :catchall_36
    move-exception v0

    monitor-exit v5
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public getSubtree(Lorg/snmp4j/Target;Lorg/snmp4j/smi/OID;Ljava/lang/Object;Lorg/snmp4j/util/TreeListener;)V
    .registers 11
    .parameter "target"
    .parameter "rootOID"
    .parameter "userObject"
    .parameter "listener"

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/snmp4j/util/TreeUtils;->walk(Lorg/snmp4j/Target;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;Ljava/lang/Object;Lorg/snmp4j/util/TreeListener;)V

    .line 107
    return-void
.end method

.method public isIgnoreLexicographicOrder()Z
    .registers 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lorg/snmp4j/util/TreeUtils;->ignoreLexicographicOrder:Z

    return v0
.end method

.method public setIgnoreLexicographicOrder(Z)V
    .registers 2
    .parameter "ignoreLexicographicOrder"

    .prologue
    .line 145
    iput-boolean p1, p0, Lorg/snmp4j/util/TreeUtils;->ignoreLexicographicOrder:Z

    .line 146
    return-void
.end method

.method public setMaxRepetitions(I)V
    .registers 2
    .parameter "maxRepetitions"

    .prologue
    .line 134
    iput p1, p0, Lorg/snmp4j/util/TreeUtils;->maxRepetitions:I

    .line 135
    return-void
.end method
