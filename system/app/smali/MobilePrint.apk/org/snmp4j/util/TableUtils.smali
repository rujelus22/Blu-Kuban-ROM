.class public Lorg/snmp4j/util/TableUtils;
.super Lorg/snmp4j/util/AbstractSnmpUtility;
.source "TableUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/snmp4j/util/TableUtils$InternalTableListener;,
        Lorg/snmp4j/util/TableUtils$Row;,
        Lorg/snmp4j/util/TableUtils$DenseTableRequest;,
        Lorg/snmp4j/util/TableUtils$TableRequest;
    }
.end annotation


# static fields
.field public static final ROWSTATUS_ACTIVE:I = 0x1

.field public static final ROWSTATUS_CREATEANDGO:I = 0x4

.field public static final ROWSTATUS_CREATEANDWAIT:I = 0x5

.field public static final ROWSTATUS_DESTROY:I = 0x6

.field public static final ROWSTATUS_NOTINSERVICE:I = 0x2

.field public static final ROWSTATUS_NOTREADY:I = 0x3

.field static class$org$snmp4j$util$TableUtils:Ljava/lang/Class;

.field private static final logger:Lorg/snmp4j/log/LogAdapter;


# instance fields
.field private maxNumColumnsPerPDU:I

.field private maxNumOfRowsPerPDU:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lorg/snmp4j/util/TableUtils;->class$org$snmp4j$util$TableUtils:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.snmp4j.util.TableUtils"

    invoke-static {v0}, Lorg/snmp4j/util/TableUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/util/TableUtils;->class$org$snmp4j$util$TableUtils:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/util/TableUtils;->logger:Lorg/snmp4j/log/LogAdapter;

    return-void

    :cond_13
    sget-object v0, Lorg/snmp4j/util/TableUtils;->class$org$snmp4j$util$TableUtils:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Lorg/snmp4j/Session;Lorg/snmp4j/util/PDUFactory;)V
    .registers 4
    .parameter "snmpSession"
    .parameter "pduFactory"

    .prologue
    const/16 v0, 0xa

    .line 69
    invoke-direct {p0, p1, p2}, Lorg/snmp4j/util/AbstractSnmpUtility;-><init>(Lorg/snmp4j/Session;Lorg/snmp4j/util/PDUFactory;)V

    .line 53
    iput v0, p0, Lorg/snmp4j/util/TableUtils;->maxNumOfRowsPerPDU:I

    .line 54
    iput v0, p0, Lorg/snmp4j/util/TableUtils;->maxNumColumnsPerPDU:I

    .line 70
    return-void
.end method

.method static access$000(Lorg/snmp4j/util/TableUtils;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lorg/snmp4j/util/TableUtils;->maxNumColumnsPerPDU:I

    return v0
.end method

.method static access$100(Lorg/snmp4j/util/TableUtils;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lorg/snmp4j/util/TableUtils;->maxNumOfRowsPerPDU:I

    return v0
.end method

.method static access$200()Lorg/snmp4j/log/LogAdapter;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lorg/snmp4j/util/TableUtils;->logger:Lorg/snmp4j/log/LogAdapter;

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 43
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
.method public createRow(Lorg/snmp4j/Target;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;[Lorg/snmp4j/smi/VariableBinding;)Lorg/snmp4j/event/ResponseEvent;
    .registers 14
    .parameter "target"
    .parameter "rowStatusColumnOID"
    .parameter "rowIndex"
    .parameter "values"

    .prologue
    .line 712
    iget-object v7, p0, Lorg/snmp4j/util/AbstractSnmpUtility;->pduFactory:Lorg/snmp4j/util/PDUFactory;

    invoke-interface {v7, p1}, Lorg/snmp4j/util/PDUFactory;->createPDU(Lorg/snmp4j/Target;)Lorg/snmp4j/PDU;

    move-result-object v3

    .line 713
    .local v3, pdu:Lorg/snmp4j/PDU;
    new-instance v6, Lorg/snmp4j/smi/OID;

    invoke-direct {v6, p2}, Lorg/snmp4j/smi/OID;-><init>(Lorg/snmp4j/smi/OID;)V

    .line 714
    .local v6, rowStatusID:Lorg/snmp4j/smi/OID;
    invoke-virtual {v6, p3}, Lorg/snmp4j/smi/OID;->append(Lorg/snmp4j/smi/OID;)Lorg/snmp4j/smi/OID;

    .line 715
    new-instance v5, Lorg/snmp4j/smi/VariableBinding;

    invoke-direct {v5, v6}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    .line 716
    .local v5, rowStatus:Lorg/snmp4j/smi/VariableBinding;
    if-eqz p4, :cond_3d

    .line 718
    new-instance v7, Lorg/snmp4j/smi/Integer32;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    invoke-virtual {v5, v7}, Lorg/snmp4j/smi/VariableBinding;->setVariable(Lorg/snmp4j/smi/Variable;)V

    .line 723
    :goto_1e
    invoke-virtual {v3, v5}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 724
    if-eqz p4, :cond_4a

    .line 726
    const/4 v2, 0x0

    .local v2, i:I
    :goto_24
    array-length v7, p4

    if-ge v2, v7, :cond_47

    .line 727
    new-instance v0, Lorg/snmp4j/smi/OID;

    aget-object v7, p4, v2

    invoke-virtual {v7}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/snmp4j/smi/OID;-><init>(Lorg/snmp4j/smi/OID;)V

    .line 728
    .local v0, columnOID:Lorg/snmp4j/smi/OID;
    invoke-virtual {v0, p3}, Lorg/snmp4j/smi/OID;->append(Lorg/snmp4j/smi/OID;)Lorg/snmp4j/smi/OID;

    .line 729
    aget-object v7, p4, v2

    invoke-virtual {v7, v0}, Lorg/snmp4j/smi/VariableBinding;->setOid(Lorg/snmp4j/smi/OID;)V

    .line 726
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 721
    .end local v0           #columnOID:Lorg/snmp4j/smi/OID;
    .end local v2           #i:I
    :cond_3d
    new-instance v7, Lorg/snmp4j/smi/Integer32;

    const/4 v8, 0x5

    invoke-direct {v7, v8}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    invoke-virtual {v5, v7}, Lorg/snmp4j/smi/VariableBinding;->setVariable(Lorg/snmp4j/smi/Variable;)V

    goto :goto_1e

    .line 731
    .restart local v2       #i:I
    :cond_47
    invoke-virtual {v3, p4}, Lorg/snmp4j/PDU;->addAll([Lorg/snmp4j/smi/VariableBinding;)V

    .line 733
    .end local v2           #i:I
    :cond_4a
    const/16 v7, -0x5d

    invoke-virtual {v3, v7}, Lorg/snmp4j/PDU;->setType(I)V

    .line 735
    :try_start_4f
    iget-object v7, p0, Lorg/snmp4j/util/AbstractSnmpUtility;->session:Lorg/snmp4j/Session;

    invoke-interface {v7, v3, p1}, Lorg/snmp4j/Session;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_54} :catch_56

    move-result-object v4

    .line 741
    :goto_55
    return-object v4

    .line 738
    :catch_56
    move-exception v1

    .line 739
    .local v1, ex:Ljava/io/IOException;
    sget-object v7, Lorg/snmp4j/util/TableUtils;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v7, v1}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 741
    const/4 v4, 0x0

    goto :goto_55
.end method

.method protected createTableRequest(Lorg/snmp4j/Target;[Lorg/snmp4j/smi/OID;Lorg/snmp4j/util/TableListener;Ljava/lang/Object;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;)Lorg/snmp4j/util/TableUtils$TableRequest;
    .registers 15
    .parameter "target"
    .parameter "columnOIDs"
    .parameter "listener"
    .parameter "userObject"
    .parameter "lowerBoundIndex"
    .parameter "upperBoundIndex"

    .prologue
    .line 136
    new-instance v0, Lorg/snmp4j/util/TableUtils$TableRequest;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/snmp4j/util/TableUtils$TableRequest;-><init>(Lorg/snmp4j/util/TableUtils;Lorg/snmp4j/Target;[Lorg/snmp4j/smi/OID;Lorg/snmp4j/util/TableListener;Ljava/lang/Object;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;)V

    return-object v0
.end method

.method public destroyRow(Lorg/snmp4j/Target;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;)Lorg/snmp4j/event/ResponseEvent;
    .registers 11
    .parameter "target"
    .parameter "rowStatusColumnOID"
    .parameter "rowIndex"

    .prologue
    .line 764
    iget-object v5, p0, Lorg/snmp4j/util/AbstractSnmpUtility;->pduFactory:Lorg/snmp4j/util/PDUFactory;

    invoke-interface {v5, p1}, Lorg/snmp4j/util/PDUFactory;->createPDU(Lorg/snmp4j/Target;)Lorg/snmp4j/PDU;

    move-result-object v1

    .line 765
    .local v1, pdu:Lorg/snmp4j/PDU;
    new-instance v4, Lorg/snmp4j/smi/OID;

    invoke-direct {v4, p2}, Lorg/snmp4j/smi/OID;-><init>(Lorg/snmp4j/smi/OID;)V

    .line 766
    .local v4, rowStatusID:Lorg/snmp4j/smi/OID;
    invoke-virtual {v4, p3}, Lorg/snmp4j/smi/OID;->append(Lorg/snmp4j/smi/OID;)Lorg/snmp4j/smi/OID;

    .line 767
    new-instance v3, Lorg/snmp4j/smi/VariableBinding;

    invoke-direct {v3, v4}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    .line 768
    .local v3, rowStatus:Lorg/snmp4j/smi/VariableBinding;
    new-instance v5, Lorg/snmp4j/smi/Integer32;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    invoke-virtual {v3, v5}, Lorg/snmp4j/smi/VariableBinding;->setVariable(Lorg/snmp4j/smi/Variable;)V

    .line 769
    invoke-virtual {v1, v3}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 770
    const/16 v5, -0x5d

    invoke-virtual {v1, v5}, Lorg/snmp4j/PDU;->setType(I)V

    .line 772
    :try_start_24
    iget-object v5, p0, Lorg/snmp4j/util/AbstractSnmpUtility;->session:Lorg/snmp4j/Session;

    invoke-interface {v5, v1, p1}, Lorg/snmp4j/Session;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_29} :catch_2b

    move-result-object v2

    .line 778
    :goto_2a
    return-object v2

    .line 775
    :catch_2b
    move-exception v0

    .line 776
    .local v0, ex:Ljava/io/IOException;
    sget-object v5, Lorg/snmp4j/util/TableUtils;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v5, v0}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 778
    const/4 v2, 0x0

    goto :goto_2a
.end method

.method public getDenseTable(Lorg/snmp4j/Target;[Lorg/snmp4j/smi/OID;Lorg/snmp4j/util/TableListener;Ljava/lang/Object;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;)V
    .registers 15
    .parameter "target"
    .parameter "columnOIDs"
    .parameter "listener"
    .parameter "userObject"
    .parameter "lowerBoundIndex"
    .parameter "upperBoundIndex"

    .prologue
    .line 257
    if-eqz p2, :cond_5

    array-length v1, p2

    if-nez v1, :cond_d

    .line 258
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No column OIDs specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_d
    new-instance v0, Lorg/snmp4j/util/TableUtils$TableRequest;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/snmp4j/util/TableUtils$TableRequest;-><init>(Lorg/snmp4j/util/TableUtils;Lorg/snmp4j/Target;[Lorg/snmp4j/smi/OID;Lorg/snmp4j/util/TableListener;Ljava/lang/Object;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;)V

    .line 264
    .local v0, req:Lorg/snmp4j/util/TableUtils$TableRequest;
    invoke-virtual {v0}, Lorg/snmp4j/util/TableUtils$TableRequest;->sendNextChunk()Z

    .line 265
    return-void
.end method

.method public getMaxNumColumnsPerPDU()I
    .registers 2

    .prologue
    .line 304
    iget v0, p0, Lorg/snmp4j/util/TableUtils;->maxNumColumnsPerPDU:I

    return v0
.end method

.method public getMaxNumRowsPerPDU()I
    .registers 2

    .prologue
    .line 276
    iget v0, p0, Lorg/snmp4j/util/TableUtils;->maxNumOfRowsPerPDU:I

    return v0
.end method

.method public getTable(Lorg/snmp4j/Target;[Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;)Ljava/util/List;
    .registers 14
    .parameter "target"
    .parameter "columnOIDs"
    .parameter "lowerBoundIndex"
    .parameter "upperBoundIndex"

    .prologue
    .line 108
    if-eqz p2, :cond_5

    array-length v0, p2

    if-nez v0, :cond_d

    .line 109
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No column OIDs specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_d
    new-instance v3, Lorg/snmp4j/util/TableUtils$InternalTableListener;

    invoke-direct {v3, p0}, Lorg/snmp4j/util/TableUtils$InternalTableListener;-><init>(Lorg/snmp4j/util/TableUtils;)V

    .line 112
    .local v3, listener:Lorg/snmp4j/util/TableUtils$InternalTableListener;
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/snmp4j/util/TableUtils;->createTableRequest(Lorg/snmp4j/Target;[Lorg/snmp4j/smi/OID;Lorg/snmp4j/util/TableListener;Ljava/lang/Object;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;)Lorg/snmp4j/util/TableUtils$TableRequest;

    move-result-object v8

    .line 116
    .local v8, req:Lorg/snmp4j/util/TableUtils$TableRequest;
    monitor-enter v3

    .line 117
    :try_start_1d
    invoke-virtual {v8}, Lorg/snmp4j/util/TableUtils$TableRequest;->sendNextChunk()Z
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_3b

    move-result v0

    if-eqz v0, :cond_35

    .line 119
    :goto_23
    :try_start_23
    invoke-virtual {v3}, Lorg/snmp4j/util/TableUtils$InternalTableListener;->isFinished()Z

    move-result v0

    if-nez v0, :cond_35

    .line 120
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_3b
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_2c} :catch_2d

    goto :goto_23

    .line 123
    :catch_2d
    move-exception v7

    .line 124
    .local v7, ex:Ljava/lang/InterruptedException;
    :try_start_2e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 127
    .end local v7           #ex:Ljava/lang/InterruptedException;
    :cond_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_3b

    .line 128
    invoke-virtual {v3}, Lorg/snmp4j/util/TableUtils$InternalTableListener;->getRows()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 127
    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public getTable(Lorg/snmp4j/Target;[Lorg/snmp4j/smi/OID;Lorg/snmp4j/util/TableListener;Ljava/lang/Object;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;)V
    .registers 15
    .parameter "target"
    .parameter "columnOIDs"
    .parameter "listener"
    .parameter "userObject"
    .parameter "lowerBoundIndex"
    .parameter "upperBoundIndex"

    .prologue
    .line 204
    if-eqz p2, :cond_5

    array-length v1, p2

    if-nez v1, :cond_d

    .line 205
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No column OIDs specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_d
    new-instance v0, Lorg/snmp4j/util/TableUtils$TableRequest;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/snmp4j/util/TableUtils$TableRequest;-><init>(Lorg/snmp4j/util/TableUtils;Lorg/snmp4j/Target;[Lorg/snmp4j/smi/OID;Lorg/snmp4j/util/TableListener;Ljava/lang/Object;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;)V

    .line 211
    .local v0, req:Lorg/snmp4j/util/TableUtils$TableRequest;
    invoke-virtual {v0}, Lorg/snmp4j/util/TableUtils$TableRequest;->sendNextChunk()Z

    .line 212
    return-void
.end method

.method public setMaxNumColumnsPerPDU(I)V
    .registers 4
    .parameter "numberOfColumnsPerChunk"

    .prologue
    .line 316
    const/4 v0, 0x1

    if-ge p1, v0, :cond_b

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of columns per PDU must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_b
    iput p1, p0, Lorg/snmp4j/util/TableUtils;->maxNumColumnsPerPDU:I

    .line 321
    return-void
.end method

.method public setMaxNumRowsPerPDU(I)V
    .registers 4
    .parameter "numberOfRowsPerChunk"

    .prologue
    .line 288
    const/4 v0, 0x1

    if-ge p1, v0, :cond_b

    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of rows per PDU must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_b
    iput p1, p0, Lorg/snmp4j/util/TableUtils;->maxNumOfRowsPerPDU:I

    .line 293
    return-void
.end method
