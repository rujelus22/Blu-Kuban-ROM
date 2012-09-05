.class public Lorg/snmp4j/tools/console/SnmpRequest;
.super Ljava/lang/Object;
.source "SnmpRequest.java"

# interfaces
.implements Lorg/snmp4j/CommandResponder;
.implements Lorg/snmp4j/util/PDUFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/snmp4j/tools/console/SnmpRequest$WalkCounts;,
        Lorg/snmp4j/tools/console/SnmpRequest$TextTableListener;,
        Lorg/snmp4j/tools/console/SnmpRequest$CVSTableListener;
    }
.end annotation


# static fields
.field public static final CVS_TABLE:I = 0x4

.field public static final DEFAULT:I = 0x0

.field public static final LISTEN:I = 0x2

.field public static final SNAPSHOT_CREATION:I = 0x6

.field public static final SNAPSHOT_DUMP:I = 0x7

.field public static final TABLE:I = 0x3

.field public static final TIME_BASED_CVS_TABLE:I = 0x5

.field public static final WALK:I = 0x1

.field static class$org$snmp4j$tools$console$SnmpRequest:Ljava/lang/Class;


# instance fields
.field address:Lorg/snmp4j/smi/Address;

.field authPassphrase:Lorg/snmp4j/smi/OctetString;

.field authProtocol:Lorg/snmp4j/smi/OID;

.field authoritativeEngineID:Lorg/snmp4j/smi/OctetString;

.field community:Lorg/snmp4j/smi/OctetString;

.field contextEngineID:Lorg/snmp4j/smi/OctetString;

.field contextName:Lorg/snmp4j/smi/OctetString;

.field engineBootCount:I

.field localEngineID:Lorg/snmp4j/smi/OctetString;

.field lowerBoundIndex:Lorg/snmp4j/smi/OID;

.field maxRepetitions:I

.field maxSizeResponsePDU:I

.field nonRepeaters:I

.field numDispatcherThreads:I

.field protected operation:I

.field pduType:I

.field privPassphrase:Lorg/snmp4j/smi/OctetString;

.field privProtocol:Lorg/snmp4j/smi/OID;

.field retries:I

.field securityName:Lorg/snmp4j/smi/OctetString;

.field snapshotFile:Ljava/io/File;

.field sysUpTime:Lorg/snmp4j/smi/TimeTicks;

.field target:Lorg/snmp4j/Target;

.field timeout:I

.field trapOID:Lorg/snmp4j/smi/OID;

.field upperBoundIndex:Lorg/snmp4j/smi/OID;

.field useDenseTableOperation:Z

.field v1TrapPDU:Lorg/snmp4j/PDUv1;

.field vbs:Ljava/util/Vector;

.field version:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, Lorg/snmp4j/log/JavaLogFactory;

    invoke-direct {v0}, Lorg/snmp4j/log/JavaLogFactory;-><init>()V

    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->setLogFactory(Lorg/snmp4j/log/LogFactory;)V

    .line 50
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/snmp4j/asn1/BER;->setCheckSequenceLength(Z)V

    .line 51
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 10
    .parameter "args"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v3, Lorg/snmp4j/smi/OctetString;

    const-string v4, "public"

    invoke-direct {v3, v4}, Lorg/snmp4j/smi/OctetString;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/snmp4j/tools/console/SnmpRequest;->community:Lorg/snmp4j/smi/OctetString;

    .line 71
    new-instance v3, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v3}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v3, p0, Lorg/snmp4j/tools/console/SnmpRequest;->contextName:Lorg/snmp4j/smi/OctetString;

    .line 72
    new-instance v3, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v3}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v3, p0, Lorg/snmp4j/tools/console/SnmpRequest;->securityName:Lorg/snmp4j/smi/OctetString;

    .line 73
    new-instance v3, Lorg/snmp4j/smi/OctetString;

    invoke-static {}, Lorg/snmp4j/mp/MPv3;->createLocalEngineID()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    iput-object v3, p0, Lorg/snmp4j/tools/console/SnmpRequest;->localEngineID:Lorg/snmp4j/smi/OctetString;

    .line 75
    new-instance v3, Lorg/snmp4j/smi/TimeTicks;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Lorg/snmp4j/smi/TimeTicks;-><init>(J)V

    iput-object v3, p0, Lorg/snmp4j/tools/console/SnmpRequest;->sysUpTime:Lorg/snmp4j/smi/TimeTicks;

    .line 76
    sget-object v3, Lorg/snmp4j/mp/SnmpConstants;->coldStart:Lorg/snmp4j/smi/OID;

    iput-object v3, p0, Lorg/snmp4j/tools/console/SnmpRequest;->trapOID:Lorg/snmp4j/smi/OID;

    .line 78
    new-instance v3, Lorg/snmp4j/PDUv1;

    invoke-direct {v3}, Lorg/snmp4j/PDUv1;-><init>()V

    iput-object v3, p0, Lorg/snmp4j/tools/console/SnmpRequest;->v1TrapPDU:Lorg/snmp4j/PDUv1;

    .line 80
    const/4 v3, 0x3

    iput v3, p0, Lorg/snmp4j/tools/console/SnmpRequest;->version:I

    .line 81
    iput v6, p0, Lorg/snmp4j/tools/console/SnmpRequest;->engineBootCount:I

    .line 82
    iput v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->retries:I

    .line 83
    const/16 v3, 0x3e8

    iput v3, p0, Lorg/snmp4j/tools/console/SnmpRequest;->timeout:I

    .line 84
    const/16 v3, -0x5f

    iput v3, p0, Lorg/snmp4j/tools/console/SnmpRequest;->pduType:I

    .line 85
    const/16 v3, 0xa

    iput v3, p0, Lorg/snmp4j/tools/console/SnmpRequest;->maxRepetitions:I

    .line 86
    iput v6, p0, Lorg/snmp4j/tools/console/SnmpRequest;->nonRepeaters:I

    .line 87
    const v3, 0xffff

    iput v3, p0, Lorg/snmp4j/tools/console/SnmpRequest;->maxSizeResponsePDU:I

    .line 88
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lorg/snmp4j/tools/console/SnmpRequest;->vbs:Ljava/util/Vector;

    .line 91
    iput v6, p0, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    .line 93
    const/4 v3, 0x2

    iput v3, p0, Lorg/snmp4j/tools/console/SnmpRequest;->numDispatcherThreads:I

    .line 95
    iput-boolean v6, p0, Lorg/snmp4j/tools/console/SnmpRequest;->useDenseTableOperation:Z

    .line 104
    invoke-static {}, Lorg/snmp4j/mp/CounterSupport;->getInstance()Lorg/snmp4j/mp/CounterSupport;

    move-result-object v3

    new-instance v4, Lorg/snmp4j/mp/DefaultCounterListener;

    invoke-direct {v4}, Lorg/snmp4j/mp/DefaultCounterListener;-><init>()V

    invoke-virtual {v3, v4}, Lorg/snmp4j/mp/CounterSupport;->addCounterListener(Lorg/snmp4j/event/CounterListener;)V

    .line 106
    iget-object v3, p0, Lorg/snmp4j/tools/console/SnmpRequest;->vbs:Ljava/util/Vector;

    new-instance v4, Lorg/snmp4j/smi/VariableBinding;

    new-instance v5, Lorg/snmp4j/smi/OID;

    const-string v6, "1.3.6"

    invoke-direct {v5, v6}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-direct {p0, p1}, Lorg/snmp4j/tools/console/SnmpRequest;->parseArgs([Ljava/lang/String;)I

    move-result v0

    .line 108
    .local v0, paramStart:I
    array-length v3, p1

    if-lt v0, v3, :cond_8e

    .line 109
    invoke-static {}, Lorg/snmp4j/tools/console/SnmpRequest;->printUsage()V

    .line 110
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 121
    :cond_8d
    :goto_8d
    return-void

    .line 112
    :cond_8e
    iget v3, p0, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_8d

    .line 113
    invoke-direct {p0}, Lorg/snmp4j/tools/console/SnmpRequest;->checkOptions()V

    .line 114
    add-int/lit8 v1, v0, 0x1

    .end local v0           #paramStart:I
    .local v1, paramStart:I
    aget-object v3, p1, v0

    invoke-static {v3}, Lorg/snmp4j/tools/console/SnmpRequest;->getAddress(Ljava/lang/String;)Lorg/snmp4j/smi/Address;

    move-result-object v3

    iput-object v3, p0, Lorg/snmp4j/tools/console/SnmpRequest;->address:Lorg/snmp4j/smi/Address;

    .line 115
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->getVariableBindings([Ljava/lang/String;I)Ljava/util/Vector;

    move-result-object v2

    .line 116
    .local v2, vbs:Ljava/util/Vector;
    invoke-direct {p0, v2}, Lorg/snmp4j/tools/console/SnmpRequest;->checkTrapVariables(Ljava/util/Vector;)V

    .line 117
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_af

    .line 118
    iput-object v2, p0, Lorg/snmp4j/tools/console/SnmpRequest;->vbs:Ljava/util/Vector;

    :cond_af
    move v0, v1

    .end local v1           #paramStart:I
    .restart local v0       #paramStart:I
    goto :goto_8d
.end method

.method private addUsmUser(Lorg/snmp4j/Snmp;)V
    .registers 10
    .parameter "snmp"

    .prologue
    .line 310
    invoke-virtual {p1}, Lorg/snmp4j/Snmp;->getUSM()Lorg/snmp4j/security/USM;

    move-result-object v6

    iget-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->securityName:Lorg/snmp4j/smi/OctetString;

    new-instance v0, Lorg/snmp4j/security/UsmUser;

    iget-object v1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->securityName:Lorg/snmp4j/smi/OctetString;

    iget-object v2, p0, Lorg/snmp4j/tools/console/SnmpRequest;->authProtocol:Lorg/snmp4j/smi/OID;

    iget-object v3, p0, Lorg/snmp4j/tools/console/SnmpRequest;->authPassphrase:Lorg/snmp4j/smi/OctetString;

    iget-object v4, p0, Lorg/snmp4j/tools/console/SnmpRequest;->privProtocol:Lorg/snmp4j/smi/OID;

    iget-object v5, p0, Lorg/snmp4j/tools/console/SnmpRequest;->privPassphrase:Lorg/snmp4j/smi/OctetString;

    invoke-direct/range {v0 .. v5}, Lorg/snmp4j/security/UsmUser;-><init>(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;)V

    invoke-virtual {v6, v7, v0}, Lorg/snmp4j/security/USM;->addUser(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/security/UsmUser;)V

    .line 315
    return-void
.end method

.method private checkOptions()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 224
    iget v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    if-ne v0, v2, :cond_30

    iget v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->pduType:I

    const/16 v1, -0x5b

    if-eq v0, v1, :cond_30

    iget v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->pduType:I

    const/16 v1, -0x5f

    if-eq v0, v1, :cond_30

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Walk operation is not supported for PDU type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/snmp4j/tools/console/SnmpRequest;->pduType:I

    invoke-static {v2}, Lorg/snmp4j/PDU;->getTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_30
    iget v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    if-ne v0, v2, :cond_44

    iget-object v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->vbs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eq v0, v2, :cond_44

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There must be exactly one OID supplied for walk operations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_44
    iget v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->pduType:I

    const/16 v1, -0x5c

    if-ne v0, v1, :cond_56

    iget v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->version:I

    if-eqz v0, :cond_56

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "V1TRAP PDU type is only available for SNMP version 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_56
    return-void
.end method

.method private checkTrapVariables(Ljava/util/Vector;)V
    .registers 7
    .parameter "vbs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 241
    iget v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->pduType:I

    const/16 v1, -0x5a

    if-eq v0, v1, :cond_e

    iget v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->pduType:I

    const/16 v1, -0x59

    if-ne v0, v1, :cond_63

    .line 243
    :cond_e
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v3, :cond_38

    invoke-virtual {p1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/VariableBinding;

    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v0

    sget-object v1, Lorg/snmp4j/mp/SnmpConstants;->sysUpTime:Lorg/snmp4j/smi/OID;

    invoke-virtual {v0, v1}, Lorg/snmp4j/smi/OID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 247
    :cond_2c
    new-instance v0, Lorg/snmp4j/smi/VariableBinding;

    sget-object v1, Lorg/snmp4j/mp/SnmpConstants;->sysUpTime:Lorg/snmp4j/smi/OID;

    iget-object v2, p0, Lorg/snmp4j/tools/console/SnmpRequest;->sysUpTime:Lorg/snmp4j/smi/TimeTicks;

    invoke-direct {v0, v1, v2}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;)V

    invoke-virtual {p1, v4, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 249
    :cond_38
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-eq v0, v3, :cond_57

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_63

    invoke-virtual {p1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/VariableBinding;

    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v0

    sget-object v1, Lorg/snmp4j/mp/SnmpConstants;->snmpTrapOID:Lorg/snmp4j/smi/OID;

    invoke-virtual {v0, v1}, Lorg/snmp4j/smi/OID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 253
    :cond_57
    new-instance v0, Lorg/snmp4j/smi/VariableBinding;

    sget-object v1, Lorg/snmp4j/mp/SnmpConstants;->snmpTrapOID:Lorg/snmp4j/smi/OID;

    iget-object v2, p0, Lorg/snmp4j/tools/console/SnmpRequest;->trapOID:Lorg/snmp4j/smi/OID;

    invoke-direct {v0, v1, v2}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;)V

    invoke-virtual {p1, v3, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 256
    :cond_63
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1035
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

.method private static createOctetString(Ljava/lang/String;)Lorg/snmp4j/smi/OctetString;
    .registers 4
    .parameter "s"

    .prologue
    .line 584
    const-string v1, "0x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 585
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-static {v1, v2}, Lorg/snmp4j/smi/OctetString;->fromHexString(Ljava/lang/String;C)Lorg/snmp4j/smi/OctetString;

    move-result-object v0

    .line 590
    .local v0, octetString:Lorg/snmp4j/smi/OctetString;
    :goto_13
    return-object v0

    .line 588
    .end local v0           #octetString:Lorg/snmp4j/smi/OctetString;
    :cond_14
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0, p0}, Lorg/snmp4j/smi/OctetString;-><init>(Ljava/lang/String;)V

    .restart local v0       #octetString:Lorg/snmp4j/smi/OctetString;
    goto :goto_13
.end method

.method private createSnapshot(Ljava/util/List;)V
    .registers 8
    .parameter "snapshot"

    .prologue
    .line 1279
    const/4 v1, 0x0

    .line 1281
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lorg/snmp4j/tools/console/SnmpRequest;->snapshotFile:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_1d

    .line 1282
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_8
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1283
    .local v3, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1284
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_35

    .line 1290
    if-eqz v2, :cond_38

    .line 1292
    :try_start_15
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_1a

    move-object v1, v2

    .line 1298
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_19
    :goto_19
    return-void

    .line 1294
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    :catch_1a
    move-exception v4

    move-object v1, v2

    .line 1295
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_19

    .line 1286
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    :catch_1d
    move-exception v0

    .line 1287
    .local v0, ex:Ljava/lang/Exception;
    :goto_1e
    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_29

    .line 1290
    if-eqz v1, :cond_19

    .line 1292
    :try_start_23
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_19

    .line 1294
    :catch_27
    move-exception v4

    goto :goto_19

    .line 1290
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_29
    move-exception v4

    :goto_2a
    if-eqz v1, :cond_2f

    .line 1292
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    .line 1295
    :cond_2f
    :goto_2f
    throw v4

    .line 1294
    :catch_30
    move-exception v5

    goto :goto_2f

    .line 1290
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_32
    move-exception v4

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2a

    .line 1286
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_35
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1e

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    :cond_38
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_19
.end method

.method private createSnmpSession()Lorg/snmp4j/Snmp;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 319
    iget-object v3, p0, Lorg/snmp4j/tools/console/SnmpRequest;->address:Lorg/snmp4j/smi/Address;

    instance-of v3, v3, Lorg/snmp4j/smi/TcpAddress;

    if-eqz v3, :cond_3c

    .line 320
    new-instance v1, Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-direct {v1}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;-><init>()V

    .line 327
    .local v1, transport:Lorg/snmp4j/transport/AbstractTransportMapping;
    :goto_c
    new-instance v0, Lorg/snmp4j/Snmp;

    invoke-direct {v0, v1}, Lorg/snmp4j/Snmp;-><init>(Lorg/snmp4j/TransportMapping;)V

    .line 328
    .local v0, snmp:Lorg/snmp4j/Snmp;
    invoke-virtual {v0, v5}, Lorg/snmp4j/Snmp;->getMessageProcessingModel(I)Lorg/snmp4j/mp/MessageProcessingModel;

    move-result-object v3

    check-cast v3, Lorg/snmp4j/mp/MPv3;

    iget-object v4, p0, Lorg/snmp4j/tools/console/SnmpRequest;->localEngineID:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/snmp4j/mp/MPv3;->setLocalEngineID([B)V

    .line 331
    iget v3, p0, Lorg/snmp4j/tools/console/SnmpRequest;->version:I

    if-ne v3, v5, :cond_3b

    .line 332
    new-instance v2, Lorg/snmp4j/security/USM;

    invoke-static {}, Lorg/snmp4j/security/SecurityProtocols;->getInstance()Lorg/snmp4j/security/SecurityProtocols;

    move-result-object v3

    iget-object v4, p0, Lorg/snmp4j/tools/console/SnmpRequest;->localEngineID:Lorg/snmp4j/smi/OctetString;

    iget v5, p0, Lorg/snmp4j/tools/console/SnmpRequest;->engineBootCount:I

    invoke-direct {v2, v3, v4, v5}, Lorg/snmp4j/security/USM;-><init>(Lorg/snmp4j/security/SecurityProtocols;Lorg/snmp4j/smi/OctetString;I)V

    .line 335
    .local v2, usm:Lorg/snmp4j/security/USM;
    invoke-static {}, Lorg/snmp4j/security/SecurityModels;->getInstance()Lorg/snmp4j/security/SecurityModels;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/snmp4j/security/SecurityModels;->addSecurityModel(Lorg/snmp4j/security/SecurityModel;)V

    .line 336
    invoke-direct {p0, v0}, Lorg/snmp4j/tools/console/SnmpRequest;->addUsmUser(Lorg/snmp4j/Snmp;)V

    .line 338
    .end local v2           #usm:Lorg/snmp4j/security/USM;
    :cond_3b
    return-object v0

    .line 323
    .end local v0           #snmp:Lorg/snmp4j/Snmp;
    .end local v1           #transport:Lorg/snmp4j/transport/AbstractTransportMapping;
    :cond_3c
    new-instance v1, Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    invoke-direct {v1}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;-><init>()V

    .restart local v1       #transport:Lorg/snmp4j/transport/AbstractTransportMapping;
    goto :goto_c
.end method

.method private createTarget()Lorg/snmp4j/Target;
    .registers 4

    .prologue
    const/4 v2, 0x3

    .line 342
    iget v1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->version:I

    if-ne v1, v2, :cond_25

    .line 343
    new-instance v0, Lorg/snmp4j/UserTarget;

    invoke-direct {v0}, Lorg/snmp4j/UserTarget;-><init>()V

    .line 344
    .local v0, target:Lorg/snmp4j/UserTarget;
    iget-object v1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->authPassphrase:Lorg/snmp4j/smi/OctetString;

    if-eqz v1, :cond_20

    .line 345
    iget-object v1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->privPassphrase:Lorg/snmp4j/smi/OctetString;

    if-eqz v1, :cond_1b

    .line 346
    invoke-virtual {v0, v2}, Lorg/snmp4j/UserTarget;->setSecurityLevel(I)V

    .line 355
    :goto_15
    iget-object v1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->securityName:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0, v1}, Lorg/snmp4j/UserTarget;->setSecurityName(Lorg/snmp4j/smi/OctetString;)V

    .line 361
    .end local v0           #target:Lorg/snmp4j/UserTarget;
    :goto_1a
    return-object v0

    .line 349
    .restart local v0       #target:Lorg/snmp4j/UserTarget;
    :cond_1b
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/snmp4j/UserTarget;->setSecurityLevel(I)V

    goto :goto_15

    .line 353
    :cond_20
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/snmp4j/UserTarget;->setSecurityLevel(I)V

    goto :goto_15

    .line 359
    .end local v0           #target:Lorg/snmp4j/UserTarget;
    :cond_25
    new-instance v0, Lorg/snmp4j/CommunityTarget;

    invoke-direct {v0}, Lorg/snmp4j/CommunityTarget;-><init>()V

    .line 360
    .local v0, target:Lorg/snmp4j/CommunityTarget;
    iget-object v1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->community:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0, v1}, Lorg/snmp4j/CommunityTarget;->setCommunity(Lorg/snmp4j/smi/OctetString;)V

    goto :goto_1a
.end method

.method private dumpSnapshot()V
    .registers 11

    .prologue
    .line 1301
    const/4 v1, 0x0

    .line 1303
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->snapshotFile:Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_98

    .line 1304
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_8
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1305
    .local v6, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1306
    .local v5, l:Ljava/util/List;
    const/4 v3, 0x1

    .line 1307
    .local v3, i:I
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Dumping snapshot file \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lorg/snmp4j/tools/console/SnmpRequest;->snapshotFile:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\':"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1308
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, it:Ljava/util/Iterator;
    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_67

    .line 1309
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1308
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 1311
    :cond_67
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7}, Ljava/io/PrintStream;->println()V

    .line 1312
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Dumped "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " variable bindings."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_8 .. :try_end_8e} :catchall_ad
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8e} :catch_b0

    .line 1318
    if-eqz v2, :cond_b3

    .line 1320
    :try_start_90
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_95

    move-object v1, v2

    .line 1326
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #i:I
    .end local v4           #it:Ljava/util/Iterator;
    .end local v5           #l:Ljava/util/List;
    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :cond_94
    :goto_94
    return-void

    .line 1322
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v3       #i:I
    .restart local v4       #it:Ljava/util/Iterator;
    .restart local v5       #l:Ljava/util/List;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    :catch_95
    move-exception v7

    move-object v1, v2

    .line 1323
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_94

    .line 1314
    .end local v3           #i:I
    .end local v4           #it:Ljava/util/Iterator;
    .end local v5           #l:Ljava/util/List;
    .end local v6           #ois:Ljava/io/ObjectInputStream;
    :catch_98
    move-exception v0

    .line 1315
    .local v0, ex:Ljava/lang/Exception;
    :goto_99
    :try_start_99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_a4

    .line 1318
    if-eqz v1, :cond_94

    .line 1320
    :try_start_9e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a2

    goto :goto_94

    .line 1322
    :catch_a2
    move-exception v7

    goto :goto_94

    .line 1318
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_a4
    move-exception v7

    :goto_a5
    if-eqz v1, :cond_aa

    .line 1320
    :try_start_a7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_ab

    .line 1323
    :cond_aa
    :goto_aa
    throw v7

    .line 1322
    :catch_ab
    move-exception v8

    goto :goto_aa

    .line 1318
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catchall_ad
    move-exception v7

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_a5

    .line 1314
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_b0
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_99

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v3       #i:I
    .restart local v4       #it:Ljava/util/Iterator;
    .restart local v5       #l:Ljava/util/List;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    :cond_b3
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_94
.end method

.method private static getAddress(Ljava/lang/String;)Lorg/snmp4j/smi/Address;
    .registers 6
    .parameter "transportAddress"

    .prologue
    .line 555
    const-string v1, "udp"

    .line 556
    .local v1, transport:Ljava/lang/String;
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 557
    .local v0, colon:I
    if-lez v0, :cond_15

    .line 558
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 559
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 562
    :cond_15
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_30

    .line 563
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/161"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 565
    :cond_30
    const-string v2, "udp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 566
    new-instance v2, Lorg/snmp4j/smi/UdpAddress;

    invoke-direct {v2, p0}, Lorg/snmp4j/smi/UdpAddress;-><init>(Ljava/lang/String;)V

    .line 569
    :goto_3d
    return-object v2

    .line 568
    :cond_3e
    const-string v2, "tcp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 569
    new-instance v2, Lorg/snmp4j/smi/TcpAddress;

    invoke-direct {v2, p0}, Lorg/snmp4j/smi/TcpAddress;-><init>(Ljava/lang/String;)V

    goto :goto_3d

    .line 571
    :cond_4c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unknown transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getVariableBindings([Ljava/lang/String;I)Ljava/util/Vector;
    .registers 26
    .parameter "args"
    .parameter "position"

    .prologue
    .line 478
    new-instance v16, Ljava/util/Vector;

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    sub-int v21, v21, p1

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 479
    .local v16, v:Ljava/util/Vector;
    move/from16 v6, p1

    .local v6, i:I
    :goto_14
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v6, v0, :cond_1ad

    .line 480
    aget-object v13, p0, v6

    .line 481
    .local v13, oid:Ljava/lang/String;
    const/16 v15, 0x69

    .line 482
    .local v15, type:C
    const/16 v17, 0x0

    .line 483
    .local v17, value:Ljava/lang/String;
    const-string v21, "={"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 484
    .local v3, equal:I
    if-lez v3, :cond_87

    .line 485
    aget-object v21, p0, v6

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 486
    aget-object v21, p0, v6

    add-int/lit8 v22, v3, 0x2

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 487
    aget-object v21, p0, v6

    aget-object v22, p0, v6

    const/16 v23, 0x7d

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 509
    :cond_51
    new-instance v19, Lorg/snmp4j/smi/VariableBinding;

    new-instance v21, Lorg/snmp4j/smi/OID;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    .line 510
    .local v19, vb:Lorg/snmp4j/smi/VariableBinding;
    if-eqz v17, :cond_135

    .line 512
    packed-switch v15, :pswitch_data_1ae

    .line 544
    :pswitch_66
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string v23, "Variable type "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, " not supported"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 489
    .end local v19           #vb:Lorg/snmp4j/smi/VariableBinding;
    :cond_87
    const/16 v21, 0x2d

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    if-lez v21, :cond_51

    .line 490
    new-instance v14, Ljava/util/StringTokenizer;

    const-string v21, "-"

    move-object/from16 v0, v21

    invoke-direct {v14, v13, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .local v14, st:Ljava/util/StringTokenizer;
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c1

    .line 492
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string v23, "Illegal OID range specified: \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 495
    :cond_c1
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 496
    new-instance v20, Lorg/snmp4j/smi/VariableBinding;

    new-instance v21, Lorg/snmp4j/smi/OID;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v20 .. v21}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    .line 497
    .local v20, vbLower:Lorg/snmp4j/smi/VariableBinding;
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 498
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 499
    .local v9, last:J
    invoke-virtual/range {v20 .. v20}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/snmp4j/smi/OID;->lastUnsigned()J

    move-result-wide v4

    .line 500
    .local v4, first:J
    const-wide/16 v21, 0x1

    add-long v7, v4, v21

    .local v7, k:J
    :goto_ec
    cmp-long v21, v7, v9

    if-gtz v21, :cond_13c

    .line 501
    new-instance v12, Lorg/snmp4j/smi/OID;

    invoke-virtual/range {v20 .. v20}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/snmp4j/smi/OID;->getValue()[I

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v20}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/snmp4j/smi/OID;->size()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v12, v0, v1, v2}, Lorg/snmp4j/smi/OID;-><init>([III)V

    .line 503
    .local v12, nextOID:Lorg/snmp4j/smi/OID;
    invoke-virtual {v12, v7, v8}, Lorg/snmp4j/smi/OID;->appendUnsigned(J)Lorg/snmp4j/smi/OID;

    .line 504
    new-instance v11, Lorg/snmp4j/smi/VariableBinding;

    invoke-direct {v11, v12}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    .line 505
    .local v11, next:Lorg/snmp4j/smi/VariableBinding;
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 500
    const-wide/16 v21, 0x1

    add-long v7, v7, v21

    goto :goto_ec

    .line 514
    .end local v4           #first:J
    .end local v7           #k:J
    .end local v9           #last:J
    .end local v11           #next:Lorg/snmp4j/smi/VariableBinding;
    .end local v12           #nextOID:Lorg/snmp4j/smi/OID;
    .end local v14           #st:Ljava/util/StringTokenizer;
    .end local v20           #vbLower:Lorg/snmp4j/smi/VariableBinding;
    .restart local v19       #vb:Lorg/snmp4j/smi/VariableBinding;
    :pswitch_121
    new-instance v18, Lorg/snmp4j/smi/Integer32;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    .line 547
    .local v18, variable:Lorg/snmp4j/smi/Variable;
    :goto_12e
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/snmp4j/smi/VariableBinding;->setVariable(Lorg/snmp4j/smi/Variable;)V

    .line 549
    .end local v18           #variable:Lorg/snmp4j/smi/Variable;
    :cond_135
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 479
    .end local v19           #vb:Lorg/snmp4j/smi/VariableBinding;
    :cond_13c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_14

    .line 517
    .restart local v19       #vb:Lorg/snmp4j/smi/VariableBinding;
    :pswitch_140
    new-instance v18, Lorg/snmp4j/smi/UnsignedInteger32;

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    move-object/from16 v0, v18

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lorg/snmp4j/smi/UnsignedInteger32;-><init>(J)V

    .line 518
    .restart local v18       #variable:Lorg/snmp4j/smi/Variable;
    goto :goto_12e

    .line 520
    .end local v18           #variable:Lorg/snmp4j/smi/Variable;
    :pswitch_14e
    new-instance v18, Lorg/snmp4j/smi/OctetString;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OctetString;-><init>(Ljava/lang/String;)V

    .line 521
    .restart local v18       #variable:Lorg/snmp4j/smi/Variable;
    goto :goto_12e

    .line 523
    .end local v18           #variable:Lorg/snmp4j/smi/Variable;
    :pswitch_158
    const/16 v21, 0x3a

    const/16 v22, 0x10

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/snmp4j/smi/OctetString;->fromString(Ljava/lang/String;CI)Lorg/snmp4j/smi/OctetString;

    move-result-object v18

    .line 524
    .restart local v18       #variable:Lorg/snmp4j/smi/Variable;
    goto :goto_12e

    .line 526
    .end local v18           #variable:Lorg/snmp4j/smi/Variable;
    :pswitch_167
    const/16 v21, 0x2e

    const/16 v22, 0xa

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/snmp4j/smi/OctetString;->fromString(Ljava/lang/String;CI)Lorg/snmp4j/smi/OctetString;

    move-result-object v18

    .line 527
    .restart local v18       #variable:Lorg/snmp4j/smi/Variable;
    goto :goto_12e

    .line 529
    .end local v18           #variable:Lorg/snmp4j/smi/Variable;
    :pswitch_176
    const/16 v21, 0x20

    const/16 v22, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/snmp4j/smi/OctetString;->fromString(Ljava/lang/String;CI)Lorg/snmp4j/smi/OctetString;

    move-result-object v18

    .line 530
    .restart local v18       #variable:Lorg/snmp4j/smi/Variable;
    goto :goto_12e

    .line 532
    .end local v18           #variable:Lorg/snmp4j/smi/Variable;
    :pswitch_185
    new-instance v18, Lorg/snmp4j/smi/Null;

    invoke-direct/range {v18 .. v18}, Lorg/snmp4j/smi/Null;-><init>()V

    .line 533
    .restart local v18       #variable:Lorg/snmp4j/smi/Variable;
    goto :goto_12e

    .line 535
    .end local v18           #variable:Lorg/snmp4j/smi/Variable;
    :pswitch_18b
    new-instance v18, Lorg/snmp4j/smi/OID;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    .line 536
    .restart local v18       #variable:Lorg/snmp4j/smi/Variable;
    goto :goto_12e

    .line 538
    .end local v18           #variable:Lorg/snmp4j/smi/Variable;
    :pswitch_195
    new-instance v18, Lorg/snmp4j/smi/TimeTicks;

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    move-object/from16 v0, v18

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lorg/snmp4j/smi/TimeTicks;-><init>(J)V

    .line 539
    .restart local v18       #variable:Lorg/snmp4j/smi/Variable;
    goto :goto_12e

    .line 541
    .end local v18           #variable:Lorg/snmp4j/smi/Variable;
    :pswitch_1a3
    new-instance v18, Lorg/snmp4j/smi/IpAddress;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/IpAddress;-><init>(Ljava/lang/String;)V

    .line 542
    .restart local v18       #variable:Lorg/snmp4j/smi/Variable;
    goto :goto_12e

    .line 551
    .end local v3           #equal:I
    .end local v13           #oid:Ljava/lang/String;
    .end local v15           #type:C
    .end local v17           #value:Ljava/lang/String;
    .end local v18           #variable:Lorg/snmp4j/smi/Variable;
    .end local v19           #vb:Lorg/snmp4j/smi/VariableBinding;
    :cond_1ad
    return-object v16

    .line 512
    :pswitch_data_1ae
    .packed-switch 0x61
        :pswitch_1a3
        :pswitch_176
        :pswitch_66
        :pswitch_167
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_121
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_185
        :pswitch_18b
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_14e
        :pswitch_195
        :pswitch_140
        :pswitch_66
        :pswitch_66
        :pswitch_158
    .end packed-switch
.end method

.method public static main([Ljava/lang/String;)V
    .registers 8
    .parameter "args"

    .prologue
    const/16 v6, -0x58

    .line 1214
    :try_start_2
    new-instance v3, Lorg/snmp4j/tools/console/SnmpRequest;

    invoke-direct {v3, p0}, Lorg/snmp4j/tools/console/SnmpRequest;-><init>([Ljava/lang/String;)V

    .line 1215
    .local v3, snmpRequest:Lorg/snmp4j/tools/console/SnmpRequest;
    iget v4, v3, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_10

    .line 1216
    invoke-direct {v3}, Lorg/snmp4j/tools/console/SnmpRequest;->dumpSnapshot()V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_f} :catch_3a

    .line 1276
    .end local v3           #snmpRequest:Lorg/snmp4j/tools/console/SnmpRequest;
    :cond_f
    :goto_f
    return-void

    .line 1220
    .restart local v3       #snmpRequest:Lorg/snmp4j/tools/console/SnmpRequest;
    :cond_10
    :try_start_10
    iget v4, v3, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5b

    .line 1221
    invoke-virtual {v3}, Lorg/snmp4j/tools/console/SnmpRequest;->listen()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_18} :catch_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_18} :catch_3a

    goto :goto_f

    .line 1265
    :catch_19
    move-exception v0

    .line 1266
    .local v0, ex:Ljava/io/IOException;
    :try_start_1a
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Error while trying to send request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_39} :catch_3a

    goto :goto_f

    .line 1272
    .end local v0           #ex:Ljava/io/IOException;
    .end local v3           #snmpRequest:Lorg/snmp4j/tools/console/SnmpRequest;
    :catch_3a
    move-exception v1

    .line 1273
    .local v1, iaex:Ljava/lang/IllegalArgumentException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_f

    .line 1223
    .end local v1           #iaex:Ljava/lang/IllegalArgumentException;
    .restart local v3       #snmpRequest:Lorg/snmp4j/tools/console/SnmpRequest;
    :cond_5b
    :try_start_5b
    iget v4, v3, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6a

    iget v4, v3, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_6a

    iget v4, v3, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6e

    .line 1226
    :cond_6a
    invoke-virtual {v3}, Lorg/snmp4j/tools/console/SnmpRequest;->table()V

    goto :goto_f

    .line 1229
    :cond_6e
    invoke-virtual {v3}, Lorg/snmp4j/tools/console/SnmpRequest;->send()Lorg/snmp4j/PDU;

    move-result-object v2

    .line 1230
    .local v2, response:Lorg/snmp4j/PDU;
    invoke-virtual {v3}, Lorg/snmp4j/tools/console/SnmpRequest;->getPduType()I

    move-result v4

    const/16 v5, -0x59

    if-eq v4, v5, :cond_90

    invoke-virtual {v3}, Lorg/snmp4j/tools/console/SnmpRequest;->getPduType()I

    move-result v4

    if-eq v4, v6, :cond_90

    invoke-virtual {v3}, Lorg/snmp4j/tools/console/SnmpRequest;->getPduType()I

    move-result v4

    const/16 v5, -0x5c

    if-eq v4, v5, :cond_90

    invoke-virtual {v3}, Lorg/snmp4j/tools/console/SnmpRequest;->getPduType()I

    move-result v4

    const/16 v5, -0x5e

    if-ne v4, v5, :cond_b2

    .line 1234
    :cond_90
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3}, Lorg/snmp4j/tools/console/SnmpRequest;->getPduType()I

    move-result v6

    invoke-static {v6}, Lorg/snmp4j/PDU;->getTypeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " sent successfully"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1237
    :cond_b2
    if-nez v2, :cond_c2

    .line 1238
    iget v4, v3, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_f

    .line 1239
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Request timed out."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1242
    :cond_c2
    invoke-virtual {v2}, Lorg/snmp4j/PDU;->getType()I

    move-result v4

    if-ne v4, v6, :cond_cd

    .line 1243
    invoke-static {v2}, Lorg/snmp4j/tools/console/SnmpRequest;->printReport(Lorg/snmp4j/PDU;)V

    goto/16 :goto_f

    .line 1245
    :cond_cd
    iget v4, v3, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    if-nez v4, :cond_128

    .line 1246
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Response received with requestID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lorg/snmp4j/PDU;->getRequestID()Lorg/snmp4j/smi/Integer32;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", errorIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lorg/snmp4j/PDU;->getErrorIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "errorStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lorg/snmp4j/PDU;->getErrorStatusText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lorg/snmp4j/PDU;->getErrorStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1252
    invoke-static {v2}, Lorg/snmp4j/tools/console/SnmpRequest;->printVariableBindings(Lorg/snmp4j/PDU;)V

    goto/16 :goto_f

    .line 1255
    :cond_128
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Received something strange: requestID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lorg/snmp4j/PDU;->getRequestID()Lorg/snmp4j/smi/Integer32;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", errorIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lorg/snmp4j/PDU;->getErrorIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "errorStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lorg/snmp4j/PDU;->getErrorStatusText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lorg/snmp4j/PDU;->getErrorStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1261
    invoke-static {v2}, Lorg/snmp4j/tools/console/SnmpRequest;->printVariableBindings(Lorg/snmp4j/PDU;)V
    :try_end_17d
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_17d} :catch_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5b .. :try_end_17d} :catch_3a

    goto/16 :goto_f
.end method

.method private static nextOption([Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .parameter "args"
    .parameter "position"

    .prologue
    .line 575
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-lt v0, v1, :cond_20

    .line 576
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Missing option value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    aget-object v2, p0, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_20
    add-int/lit8 v0, p1, 0x1

    aget-object v0, p0, v0

    return-object v0
.end method

.method private parseArgs([Ljava/lang/String;)I
    .registers 14
    .parameter "args"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 594
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    array-length v7, p1

    if-ge v1, v7, :cond_4fa

    .line 595
    aget-object v7, p1, v1

    const-string v8, "-a"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 596
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 597
    .local v3, s:Ljava/lang/String;
    const-string v7, "MD5"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 598
    sget-object v7, Lorg/snmp4j/security/AuthMD5;->ID:Lorg/snmp4j/smi/OID;

    iput-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->authProtocol:Lorg/snmp4j/smi/OID;

    :goto_23
    move v1, v2

    .line 594
    .end local v2           #i:I
    .end local v3           #s:Ljava/lang/String;
    .restart local v1       #i:I
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 600
    .end local v1           #i:I
    .restart local v2       #i:I
    .restart local v3       #s:Ljava/lang/String;
    :cond_27
    const-string v7, "SHA"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 601
    sget-object v7, Lorg/snmp4j/security/AuthSHA;->ID:Lorg/snmp4j/smi/OID;

    iput-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->authProtocol:Lorg/snmp4j/smi/OID;

    goto :goto_23

    .line 604
    :cond_34
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Authentication protocol unsupported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 607
    .end local v2           #i:I
    .end local v3           #s:Ljava/lang/String;
    .restart local v1       #i:I
    :cond_4d
    aget-object v7, p1, v1

    const-string v8, "-A"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 608
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/snmp4j/tools/console/SnmpRequest;->createOctetString(Ljava/lang/String;)Lorg/snmp4j/smi/OctetString;

    move-result-object v7

    iput-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->authPassphrase:Lorg/snmp4j/smi/OctetString;

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_24

    .line 610
    :cond_65
    aget-object v7, p1, v1

    const-string v8, "-X"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_79

    aget-object v7, p1, v1

    const-string v8, "-P"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 611
    :cond_79
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/snmp4j/tools/console/SnmpRequest;->createOctetString(Ljava/lang/String;)Lorg/snmp4j/smi/OctetString;

    move-result-object v7

    iput-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->privPassphrase:Lorg/snmp4j/smi/OctetString;

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_24

    .line 613
    :cond_87
    aget-object v7, p1, v1

    const-string v8, "-c"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9f

    .line 614
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/snmp4j/tools/console/SnmpRequest;->createOctetString(Ljava/lang/String;)Lorg/snmp4j/smi/OctetString;

    move-result-object v7

    iput-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->community:Lorg/snmp4j/smi/OctetString;

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_24

    .line 616
    :cond_9f
    aget-object v7, p1, v1

    const-string v8, "-b"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bc

    .line 617
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->engineBootCount:I

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24

    .line 619
    :cond_bc
    aget-object v7, p1, v1

    const-string v8, "-d"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_de

    .line 620
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, debugOption:Ljava/lang/String;
    invoke-static {}, Lorg/snmp4j/log/LogFactory;->getLogFactory()Lorg/snmp4j/log/LogFactory;

    move-result-object v7

    invoke-virtual {v7}, Lorg/snmp4j/log/LogFactory;->getRootLogger()Lorg/snmp4j/log/LogAdapter;

    move-result-object v7

    invoke-static {v0}, Lorg/snmp4j/log/LogLevel;->toLevel(Ljava/lang/String;)Lorg/snmp4j/log/LogLevel;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/snmp4j/log/LogAdapter;->setLogLevel(Lorg/snmp4j/log/LogLevel;)V

    move v1, v2

    .line 623
    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24

    .line 624
    .end local v0           #debugOption:Ljava/lang/String;
    :cond_de
    aget-object v7, p1, v1

    const-string v8, "-l"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f7

    .line 625
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/snmp4j/tools/console/SnmpRequest;->createOctetString(Ljava/lang/String;)Lorg/snmp4j/smi/OctetString;

    move-result-object v7

    iput-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->localEngineID:Lorg/snmp4j/smi/OctetString;

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24

    .line 627
    :cond_f7
    aget-object v7, p1, v1

    const-string v8, "-e"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_110

    .line 628
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/snmp4j/tools/console/SnmpRequest;->createOctetString(Ljava/lang/String;)Lorg/snmp4j/smi/OctetString;

    move-result-object v7

    iput-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->authoritativeEngineID:Lorg/snmp4j/smi/OctetString;

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24

    .line 630
    :cond_110
    aget-object v7, p1, v1

    const-string v8, "-E"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_129

    .line 631
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/snmp4j/tools/console/SnmpRequest;->createOctetString(Ljava/lang/String;)Lorg/snmp4j/smi/OctetString;

    move-result-object v7

    iput-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->contextEngineID:Lorg/snmp4j/smi/OctetString;

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24

    .line 633
    :cond_129
    aget-object v7, p1, v1

    const-string v8, "-h"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13b

    .line 634
    invoke-static {}, Lorg/snmp4j/tools/console/SnmpRequest;->printUsage()V

    .line 635
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_24

    .line 637
    :cond_13b
    aget-object v7, p1, v1

    const-string v8, "-n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_154

    .line 638
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/snmp4j/tools/console/SnmpRequest;->createOctetString(Ljava/lang/String;)Lorg/snmp4j/smi/OctetString;

    move-result-object v7

    iput-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->contextName:Lorg/snmp4j/smi/OctetString;

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24

    .line 640
    :cond_154
    aget-object v7, p1, v1

    const-string v8, "-m"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16d

    .line 641
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->maxSizeResponsePDU:I

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24

    .line 643
    :cond_16d
    aget-object v7, p1, v1

    const-string v8, "-r"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_186

    .line 644
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->retries:I

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24

    .line 646
    :cond_186
    aget-object v7, p1, v1

    const-string v8, "-t"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19f

    .line 647
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->timeout:I

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24

    .line 649
    :cond_19f
    aget-object v7, p1, v1

    const-string v8, "-u"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b8

    .line 650
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/snmp4j/tools/console/SnmpRequest;->createOctetString(Ljava/lang/String;)Lorg/snmp4j/smi/OctetString;

    move-result-object v7

    iput-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->securityName:Lorg/snmp4j/smi/OctetString;

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24

    .line 652
    :cond_1b8
    aget-object v7, p1, v1

    const-string v8, "-V"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1ca

    .line 653
    invoke-static {}, Lorg/snmp4j/tools/console/SnmpRequest;->printVersion()V

    .line 654
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_24

    .line 656
    :cond_1ca
    aget-object v7, p1, v1

    const-string v8, "-Cr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e3

    .line 657
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->maxRepetitions:I

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24

    .line 659
    :cond_1e3
    aget-object v7, p1, v1

    const-string v8, "-Cn"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1fc

    .line 660
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->nonRepeaters:I

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24

    .line 662
    :cond_1fc
    aget-object v7, p1, v1

    const-string v8, "-Ce"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_219

    .line 663
    iget-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->v1TrapPDU:Lorg/snmp4j/PDUv1;

    new-instance v8, Lorg/snmp4j/smi/OID;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lorg/snmp4j/PDUv1;->setEnterprise(Lorg/snmp4j/smi/OID;)V

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24

    .line 665
    :cond_219
    aget-object v7, p1, v1

    const-string v8, "-Ct"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_233

    .line 666
    new-instance v7, Lorg/snmp4j/smi/OID;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->trapOID:Lorg/snmp4j/smi/OID;

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24

    .line 668
    :cond_233
    aget-object v7, p1, v1

    const-string v8, "-Cg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24f

    .line 669
    iget-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->v1TrapPDU:Lorg/snmp4j/PDUv1;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/snmp4j/PDUv1;->setGenericTrap(I)V

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24

    .line 671
    :cond_24f
    aget-object v7, p1, v1

    const-string v8, "-Cs"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26b

    .line 672
    iget-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->v1TrapPDU:Lorg/snmp4j/PDUv1;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/snmp4j/PDUv1;->setSpecificTrap(I)V

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24

    .line 674
    :cond_26b
    aget-object v7, p1, v1

    const-string v8, "-Ca"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_288

    .line 675
    iget-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->v1TrapPDU:Lorg/snmp4j/PDUv1;

    new-instance v8, Lorg/snmp4j/smi/IpAddress;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/snmp4j/smi/IpAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lorg/snmp4j/PDUv1;->setAgentAddress(Lorg/snmp4j/smi/IpAddress;)V

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24

    .line 677
    :cond_288
    aget-object v7, p1, v1

    const-string v8, "-Cu"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2ad

    .line 678
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 679
    .local v4, upTime:Ljava/lang/String;
    iget-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->v1TrapPDU:Lorg/snmp4j/PDUv1;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/snmp4j/PDUv1;->setTimestamp(J)V

    .line 680
    iget-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->sysUpTime:Lorg/snmp4j/smi/TimeTicks;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/snmp4j/smi/TimeTicks;->setValue(J)V

    move v1, v2

    .line 681
    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24

    .line 682
    .end local v4           #upTime:Ljava/lang/String;
    :cond_2ad
    aget-object v7, p1, v1

    const-string v8, "-Ow"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2bb

    .line 683
    iput v10, p0, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    goto/16 :goto_24

    .line 685
    :cond_2bb
    aget-object v7, p1, v1

    const-string v8, "-Ocs"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_306

    .line 686
    const/4 v7, 0x6

    iput v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    .line 687
    new-instance v7, Ljava/io/File;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->snapshotFile:Ljava/io/File;

    .line 688
    iget-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->snapshotFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-nez v7, :cond_4fc

    iget-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->snapshotFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4fc

    .line 689
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Snapshot file \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lorg/snmp4j/tools/console/SnmpRequest;->snapshotFile:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\' cannot be written"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 693
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_306
    aget-object v7, p1, v1

    const-string v8, "-Ods"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_349

    .line 694
    const/4 v7, 0x7

    iput v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    .line 695
    new-instance v7, Ljava/io/File;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->snapshotFile:Ljava/io/File;

    .line 696
    iget-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->snapshotFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_4fc

    .line 697
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Snapshot file \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lorg/snmp4j/tools/console/SnmpRequest;->snapshotFile:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\' cannot be read"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 701
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_349
    aget-object v7, p1, v1

    const-string v8, "-Ol"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_358

    .line 702
    const/4 v7, 0x2

    iput v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    goto/16 :goto_24

    .line 704
    :cond_358
    aget-object v7, p1, v1

    const-string v8, "-OtCSV"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_367

    .line 705
    const/4 v7, 0x4

    iput v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    goto/16 :goto_24

    .line 707
    :cond_367
    aget-object v7, p1, v1

    const-string v8, "-OttCSV"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_376

    .line 708
    const/4 v7, 0x5

    iput v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    goto/16 :goto_24

    .line 710
    :cond_376
    aget-object v7, p1, v1

    const-string v8, "-Ot"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_384

    .line 711
    iput v11, p0, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    goto/16 :goto_24

    .line 713
    :cond_384
    aget-object v7, p1, v1

    const-string v8, "-Otd"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_394

    .line 714
    iput v11, p0, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    .line 715
    iput-boolean v10, p0, Lorg/snmp4j/tools/console/SnmpRequest;->useDenseTableOperation:Z

    goto/16 :goto_24

    .line 717
    :cond_394
    aget-object v7, p1, v1

    const-string v8, "-Cil"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3ae

    .line 718
    new-instance v7, Lorg/snmp4j/smi/OID;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->lowerBoundIndex:Lorg/snmp4j/smi/OID;

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24

    .line 720
    :cond_3ae
    aget-object v7, p1, v1

    const-string v8, "-Ciu"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c8

    .line 721
    new-instance v7, Lorg/snmp4j/smi/OID;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->upperBoundIndex:Lorg/snmp4j/smi/OID;

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24

    .line 723
    :cond_3c8
    aget-object v7, p1, v1

    const-string v8, "-v"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41a

    .line 724
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 725
    .local v5, v:Ljava/lang/String;
    const-string v7, "1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e5

    .line 726
    iput v6, p0, Lorg/snmp4j/tools/console/SnmpRequest;->version:I

    :goto_3e2
    move v1, v2

    .line 737
    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24

    .line 728
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_3e5
    const-string v7, "2c"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3f0

    .line 729
    iput v10, p0, Lorg/snmp4j/tools/console/SnmpRequest;->version:I

    goto :goto_3e2

    .line 731
    :cond_3f0
    const-string v7, "3"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3fb

    .line 732
    iput v11, p0, Lorg/snmp4j/tools/console/SnmpRequest;->version:I

    goto :goto_3e2

    .line 735
    :cond_3fb
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " not supported"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 738
    .end local v2           #i:I
    .end local v5           #v:Ljava/lang/String;
    .restart local v1       #i:I
    :cond_41a
    aget-object v7, p1, v1

    const-string v8, "-x"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49c

    .line 739
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 740
    .restart local v3       #s:Ljava/lang/String;
    const-string v7, "DES"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_439

    .line 741
    sget-object v7, Lorg/snmp4j/security/PrivDES;->ID:Lorg/snmp4j/smi/OID;

    iput-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->privProtocol:Lorg/snmp4j/smi/OID;

    :goto_436
    move v1, v2

    .line 759
    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24

    .line 743
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_439
    const-string v7, "AES128"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_449

    const-string v7, "AES"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44e

    .line 744
    :cond_449
    sget-object v7, Lorg/snmp4j/security/PrivAES128;->ID:Lorg/snmp4j/smi/OID;

    iput-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->privProtocol:Lorg/snmp4j/smi/OID;

    goto :goto_436

    .line 746
    :cond_44e
    const-string v7, "AES192"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45b

    .line 747
    sget-object v7, Lorg/snmp4j/security/PrivAES192;->ID:Lorg/snmp4j/smi/OID;

    iput-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->privProtocol:Lorg/snmp4j/smi/OID;

    goto :goto_436

    .line 749
    :cond_45b
    const-string v7, "AES256"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_468

    .line 750
    sget-object v7, Lorg/snmp4j/security/PrivAES256;->ID:Lorg/snmp4j/smi/OID;

    iput-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->privProtocol:Lorg/snmp4j/smi/OID;

    goto :goto_436

    .line 752
    :cond_468
    const-string v7, "3DES"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_478

    const-string v7, "DESEDE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_47d

    .line 753
    :cond_478
    sget-object v7, Lorg/snmp4j/security/Priv3DES;->ID:Lorg/snmp4j/smi/OID;

    iput-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->privProtocol:Lorg/snmp4j/smi/OID;

    goto :goto_436

    .line 756
    :cond_47d
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Privacy protocol "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " not supported"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 760
    .end local v2           #i:I
    .end local v3           #s:Ljava/lang/String;
    .restart local v1       #i:I
    :cond_49c
    aget-object v7, p1, v1

    const-string v8, "-p"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d4

    .line 761
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-static {p1, v1}, Lorg/snmp4j/tools/console/SnmpRequest;->nextOption([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 762
    .restart local v3       #s:Ljava/lang/String;
    invoke-static {v3}, Lorg/snmp4j/PDU;->getTypeFromString(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->pduType:I

    .line 763
    iget v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->pduType:I

    const/high16 v8, -0x8000

    if-ne v7, v8, :cond_4d1

    .line 764
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unknown PDU type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4d1
    move v1, v2

    .line 766
    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24

    .line 767
    .end local v3           #s:Ljava/lang/String;
    :cond_4d4
    aget-object v6, p1, v1

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4df

    .line 774
    .end local v1           #i:I
    :goto_4de
    return v1

    .line 771
    .restart local v1       #i:I
    :cond_4df
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unknown option "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    aget-object v8, p1, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4fa
    move v1, v6

    .line 774
    goto :goto_4de

    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_4fc
    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_24
.end method

.method protected static printReport(Lorg/snmp4j/PDU;)V
    .registers 6
    .parameter "response"

    .prologue
    .line 961
    invoke-virtual {p0}, Lorg/snmp4j/PDU;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_f

    .line 962
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "REPORT PDU does not contain a variable binding."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1007
    :goto_e
    return-void

    .line 966
    :cond_f
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/snmp4j/PDU;->get(I)Lorg/snmp4j/smi/VariableBinding;

    move-result-object v1

    .line 967
    .local v1, vb:Lorg/snmp4j/smi/VariableBinding;
    invoke-virtual {v1}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v0

    .line 968
    .local v0, oid:Lorg/snmp4j/smi/OID;
    sget-object v2, Lorg/snmp4j/mp/SnmpConstants;->usmStatsUnsupportedSecLevels:Lorg/snmp4j/smi/OID;

    invoke-virtual {v2, v0}, Lorg/snmp4j/smi/OID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 969
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "REPORT: Unsupported Security Level."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1005
    :goto_27
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, " Current counter value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lorg/snmp4j/smi/VariableBinding;->getVariable()Lorg/snmp4j/smi/Variable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 971
    :cond_4e
    sget-object v2, Lorg/snmp4j/mp/SnmpConstants;->usmStatsNotInTimeWindows:Lorg/snmp4j/smi/OID;

    invoke-virtual {v2, v0}, Lorg/snmp4j/smi/OID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 972
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "REPORT: Message not within time window."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_27

    .line 974
    :cond_5e
    sget-object v2, Lorg/snmp4j/mp/SnmpConstants;->usmStatsUnknownUserNames:Lorg/snmp4j/smi/OID;

    invoke-virtual {v2, v0}, Lorg/snmp4j/smi/OID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 975
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "REPORT: Unknown user name."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_27

    .line 977
    :cond_6e
    sget-object v2, Lorg/snmp4j/mp/SnmpConstants;->usmStatsUnknownEngineIDs:Lorg/snmp4j/smi/OID;

    invoke-virtual {v2, v0}, Lorg/snmp4j/smi/OID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 978
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "REPORT: Unknown engine id."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_27

    .line 980
    :cond_7e
    sget-object v2, Lorg/snmp4j/mp/SnmpConstants;->usmStatsWrongDigests:Lorg/snmp4j/smi/OID;

    invoke-virtual {v2, v0}, Lorg/snmp4j/smi/OID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 981
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "REPORT: Wrong digest."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_27

    .line 983
    :cond_8e
    sget-object v2, Lorg/snmp4j/mp/SnmpConstants;->usmStatsDecryptionErrors:Lorg/snmp4j/smi/OID;

    invoke-virtual {v2, v0}, Lorg/snmp4j/smi/OID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 984
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "REPORT: Decryption error."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_27

    .line 986
    :cond_9e
    sget-object v2, Lorg/snmp4j/mp/SnmpConstants;->snmpUnknownSecurityModels:Lorg/snmp4j/smi/OID;

    invoke-virtual {v2, v0}, Lorg/snmp4j/smi/OID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 987
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "REPORT: Unknown security model."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_27

    .line 989
    :cond_af
    sget-object v2, Lorg/snmp4j/mp/SnmpConstants;->snmpInvalidMsgs:Lorg/snmp4j/smi/OID;

    invoke-virtual {v2, v0}, Lorg/snmp4j/smi/OID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 990
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "REPORT: Invalid message."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_27

    .line 992
    :cond_c0
    sget-object v2, Lorg/snmp4j/mp/SnmpConstants;->snmpUnknownPDUHandlers:Lorg/snmp4j/smi/OID;

    invoke-virtual {v2, v0}, Lorg/snmp4j/smi/OID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 993
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "REPORT: Unknown PDU handler."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_27

    .line 995
    :cond_d1
    sget-object v2, Lorg/snmp4j/mp/SnmpConstants;->snmpUnavailableContexts:Lorg/snmp4j/smi/OID;

    invoke-virtual {v2, v0}, Lorg/snmp4j/smi/OID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e2

    .line 996
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "REPORT: Unavailable context."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_27

    .line 998
    :cond_e2
    sget-object v2, Lorg/snmp4j/mp/SnmpConstants;->snmpUnknownContexts:Lorg/snmp4j/smi/OID;

    invoke-virtual {v2, v0}, Lorg/snmp4j/smi/OID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 999
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "REPORT: Unknown context."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_27

    .line 1002
    :cond_f3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "REPORT contains unknown OID ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lorg/snmp4j/smi/OID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_27
.end method

.method protected static printUsage()V
    .registers 4

    .prologue
    .line 793
    const/16 v2, 0x96

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Usage: SNMP4J [options] [transport:]address [OID[={type}value] ...]"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "  -a  authProtocol      Sets the authentication protocol used to"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "                        authenticate SNMPv3 messages. Valid values are"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "                        MD5 and SHA."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "  -A  authPassphrase    Sets the authentication pass phrase for authenticated"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "                        SNMPv3 messages."

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "  -b  engineBootCount   Sets the engine boot count to the specified value"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "                        greater or equal to zero. Default is zero."

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "  -c  community         Sets the community for SNMPv1/v2c messages."

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "  -Ca agentAddress      Sets the agent address field of a V1TRAP PDU."

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "                        The default value is \'0.0.0.0\'."

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "  -Cg genericID         Sets the generic ID for SNMPv1 TRAPs (V1TRAP)."

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "                        The default is 0 (coldStart)."

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "  -Ce enterpriseOID     Sets the enterprise OID field of a V1TRAP PDU."

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "  -Cil lowerBoundIndex  Sets the lower bound index for TABLE operations."

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "  -Ciu upperBoundIndex  Sets the upper bound index for TABLE operations."

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "  -Cn non-repeaters     Sets  the  non-repeaters field for GETBULK PDUs."

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "                        It specifies the number of supplied variables that"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "                        should not be iterated over. The default is 0."

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "  -Cr max-repetitions   Sets the max-repetitions field for GETBULK PDUs."

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "                        This specifies the maximum number of iterations"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "                        over the repeating variables. The default is 10."

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "  -Cs specificID        Sets the specific ID for V1TRAP PDU. The default is 0."

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "  -Ct trapOID           Sets the trapOID (1.3.6.1.6.3.1.1.4.1.0) of an INFORM"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "                        or TRAP PDU. The default is 1.3.6.1.6.3.1.1.5.1."

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "  -Cu upTime            Sets the sysUpTime field of an INFORM, TRAP, or"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "                        V1TRAP PDU."

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "  -d  debugLevel        Sets the global debug level for Log4J logging output."

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "                        Valid values are OFF, ERROR, WARN, INFO, and DEBUG."

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "  -e  engineID          Sets the authoritative engine ID of the command"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "                        responder used for SNMPv3 request messages. If not"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "                        supplied, the engine ID will be discovered."

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "  -E  contextEngineID   Sets the context engine ID used for the SNMPv3 scoped"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "                        PDU. The authoritative engine ID will be used for the"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "                        context engine ID, if the latter is not specified."

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "  -h                    Displays this message and then exits the application."

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "  -l  localEngineID     Sets the local engine ID of the command generator"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "                        and the notification receiver (thus this SNMP4J-Tool)"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "                        used for SNMPv3 request messages. This option can be"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "                        used to avoid engine ID clashes through duplicate IDs"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "                        leading to usmStatsNotInTimeWindows reports."

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "  -n  contextName       Sets the target context name for SNMPv3 messages. "

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "                        Default is the empty string."

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "  -m  maxSizeRespPDU    The maximum size of the response PDU in bytes."

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "  -Ocs <file>           Same as -Ow except that the retrieved values are also"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "                        written as a serialized ArrayList of VariableBinding"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "                        instances to the specified file. The snapshot format"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "                        can be read later by other applications, for example"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "                        MIB Explorer Pro 2.2 or later. See also -Ods."

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "  -Ods <file>           Reads the snapshot file and dumps its contents on"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "                        standard out. No SNMP operation will be done."

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "                        See also -Ocs."

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "  -Ol                   Activates listen operation mode. In this mode, the"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "                        application will listen for incoming TRAPs and INFORMs"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "                        on the supplied address. Received request will be"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "                        dumped to the console until the application is stopped."

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "  -Ot                   Activates table operation mode. In this mode, the"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "                        application receives tabular data from the column"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "                        OIDs specified as parameters. The retrieved rows will"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "                        be dumped to the console ordered by their index values."

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "  -Otd                  Activates dense table operation mode. In this mode, the"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "                        application receives tabular data from the column"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "                        OIDs specified as parameters. The retrieved rows will"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "                        be dumped to the console ordered by their index values."

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "                        In contrast to -Ot this option must not be used with"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "                        sparse tables. "

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "  -OtCSV                Same as -Ot except that for each SNMP row received"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "                        exactly one row of comma separated values will printed"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "                        to the console where the first column contains the row"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "                        index."

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "  -OttCSV               Same as -OtCSV except that each row\'s first column"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "                        will report the current time (millis after 1.1.1970)"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "                        when the request has been sent."

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "  -Ow                   Activates walk operation mode for GETNEXT and GETBULK"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "                        PDUs. If activated, the GETNEXT and GETBULK operations"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "                        will be repeated until all instances within the"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "                        OID subtree of the supplied OID have been retrieved"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "                        successfully or until an error occurred."

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "  -p  pduType           Specifies the PDU type to be used for the message."

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "                        Valid types are GET, GETNEXT, GETBULK (SNMPv2c/v3),"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "                        SET, INFORM, TRAP, and V1TRAP (SNMPv1)."

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "  -P  privacyPassphrase Sets the privacy pass phrase for encrypted"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "                        SNMPv3 messages (same as -X)."

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "  -r  retries           Sets the number of retries used for requests. A zero"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "                        value will send out a request exactly once."

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, "                        Default is 1."

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "  -t  timeout           Sets the timeout in milliseconds between retries."

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, "                        Default is 1000 milliseconds."

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "  -u  securityName      Sets the security name for authenticated v3 messages."

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "  -v  1|2c|3            Sets the SNMP protocol version to be used."

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "                        Default is 3."

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "  -V                    Displays version information and then exits."

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "  -x  privacyProtocol   Sets the privacy protocol to be used to encrypt"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "                        SNMPv3 messages. Valid values are DES, AES (AES128),"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, "                        AES192, AES256, and 3DES(DESEDE)."

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "  -X  privacyPassphrase Sets the privacy pass phrase for encrypted"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string v3, "                        SNMPv3 messages (same as -P)."

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "The address of the target SNMP engine is parsed according to the"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string v3, "specified <transport> selector (default selector is udp):"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string v3, "  udp | tcp             hostname[/port]"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "                        ipv4Address[/port]"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "                        ipv6Address[/port]"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    const-string v3, "The OIDs have to be specified in numerical form where strings may beenclosed in single quotes (\'), for example:"

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    const-string v3, "  1.3.6.1.2.1.1.5.0  (which will return the sysName.0 instance with a GET)"

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string v3, "  1.3.6.1.6.3.16.1.2.1.3.2.6.\'public\'  (which will return the "

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    const-string v3, "    vacmGroupName.2.6.112.117.98.108.105.99 instance with a GET)"

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    const-string v3, "To request multiple instances, add additional OIDs with a space as"

    aput-object v3, v1, v2

    const/16 v2, 0x70

    const-string v3, "separator. For the last sub-identifier of a plain OID (without an assigned"

    aput-object v3, v1, v2

    const/16 v2, 0x71

    const-string v3, "value) a range can be specified, for example \'1.3.6.1.2.1.2.2.1-10\' will"

    aput-object v3, v1, v2

    const/16 v2, 0x72

    const-string v3, "has the same effect as enumerating all OIDs from \'1.3.6.1.2.1.2.2.1\' to"

    aput-object v3, v1, v2

    const/16 v2, 0x73

    const-string v3, "\'1.3.6.1.2.1.2.2.10\'."

    aput-object v3, v1, v2

    const/16 v2, 0x74

    const-string v3, "For SET and INFORM request, you can specify a value for each OID by"

    aput-object v3, v1, v2

    const/16 v2, 0x75

    const-string v3, "using the following form: OID={type}value where <type> is one of"

    aput-object v3, v1, v2

    const/16 v2, 0x76

    const-string v3, "the following single characters enclosed by \'{\' and \'}\':"

    aput-object v3, v1, v2

    const/16 v2, 0x77

    const-string v3, "  i                     Integer32"

    aput-object v3, v1, v2

    const/16 v2, 0x78

    const-string v3, "  u                     UnsingedInteger32, Gauge32"

    aput-object v3, v1, v2

    const/16 v2, 0x79

    const-string v3, "  s                     OCTET STRING"

    aput-object v3, v1, v2

    const/16 v2, 0x7a

    const-string v3, "  x                     OCTET STRING specified as hex string where"

    aput-object v3, v1, v2

    const/16 v2, 0x7b

    const-string v3, "                        bytes separated by colons (\':\')."

    aput-object v3, v1, v2

    const/16 v2, 0x7c

    const-string v3, "  d                     OCTET STRING specified as decimal string"

    aput-object v3, v1, v2

    const/16 v2, 0x7d

    const-string v3, "                        where bytes are separated by dots (\'.\')."

    aput-object v3, v1, v2

    const/16 v2, 0x7e

    const-string v3, "  n                     Null"

    aput-object v3, v1, v2

    const/16 v2, 0x7f

    const-string v3, "  o                     OBJECT IDENTIFIER"

    aput-object v3, v1, v2

    const/16 v2, 0x80

    const-string v3, "  t                     TimeTicks"

    aput-object v3, v1, v2

    const/16 v2, 0x81

    const-string v3, "  a                     IpAddress"

    aput-object v3, v1, v2

    const/16 v2, 0x82

    const-string v3, "  b                     OCTET STRING specified as binary string where"

    aput-object v3, v1, v2

    const/16 v2, 0x83

    const-string v3, "                        bytes are separated by spaces."

    aput-object v3, v1, v2

    const/16 v2, 0x84

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x85

    const-string v3, "An example for a complete SNMPv2c SET request to set sysName:"

    aput-object v3, v1, v2

    const/16 v2, 0x86

    const-string v3, " SNMP4J -c private -v 2c -p SET udp:localhost/161 \"1.3.6.1.2.1.1.5.0={s}SNMP4J\""

    aput-object v3, v1, v2

    const/16 v2, 0x87

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x88

    const-string v3, "To walk the whole MIB tree with GETBULK and using SNMPv3 MD5 authentication:"

    aput-object v3, v1, v2

    const/16 v2, 0x89

    const-string v3, " SNMP4J -a MD5 -A MD5UserAuthPassword -u MD5User -p GETBULK -Ow 127.0.0.1/161"

    aput-object v3, v1, v2

    const/16 v2, 0x8a

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x8b

    const-string v3, "Listen for unauthenticated SNMPv3 INFORMs and TRAPs and all v1/v2c TRAPs:"

    aput-object v3, v1, v2

    const/16 v2, 0x8c

    const-string v3, " SNMP4J -u aSecurityName -Ol 0.0.0.0/162"

    aput-object v3, v1, v2

    const/16 v2, 0x8d

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x8e

    const-string v3, "Send an unauthenticated SNMPv3 notification (trap):"

    aput-object v3, v1, v2

    const/16 v2, 0x8f

    const-string v3, " SNMP4J -p TRAP -v 3 -u aSecurityName 127.0.0.1/162 \"1.3.6.1.2.1.1.3.0={t}0\" \\"

    aput-object v3, v1, v2

    const/16 v2, 0x90

    const-string v3, "  \"1.3.6.1.6.3.1.1.4.1.0={o}1.3.6.1.6.3.1.1.5.1\" \\"

    aput-object v3, v1, v2

    const/16 v2, 0x91

    const-string v3, "  \"1.3.6.1.2.1.1.1.0={s}System XYZ, Version N.M\""

    aput-object v3, v1, v2

    const/16 v2, 0x92

    const-string v3, "Retrieve rows of the columnar objects ifDescr to ifInOctets and ifOutOctets:"

    aput-object v3, v1, v2

    const/16 v2, 0x93

    const-string v3, " SNMP4J -c public -v 2c -Ot localhost 1.3.6.1.2.1.2.2.1.2-10\\"

    aput-object v3, v1, v2

    const/16 v2, 0x94

    const-string v3, "  1.3.6.1.2.1.2.2.1.16"

    aput-object v3, v1, v2

    const/16 v2, 0x95

    const-string v3, ""

    aput-object v3, v1, v2

    .line 947
    .local v1, usage:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_381
    array-length v2, v1

    if-ge v0, v2, :cond_38e

    .line 948
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 947
    add-int/lit8 v0, v0, 0x1

    goto :goto_381

    .line 950
    :cond_38e
    return-void
.end method

.method protected static printVariableBindings(Lorg/snmp4j/PDU;)V
    .registers 5
    .parameter "response"

    .prologue
    .line 954
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lorg/snmp4j/PDU;->size()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 955
    invoke-virtual {p0, v0}, Lorg/snmp4j/PDU;->get(I)Lorg/snmp4j/smi/VariableBinding;

    move-result-object v1

    .line 956
    .local v1, vb:Lorg/snmp4j/smi/VariableBinding;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/snmp4j/smi/VariableBinding;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 954
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 958
    .end local v1           #vb:Lorg/snmp4j/smi/VariableBinding;
    :cond_17
    return-void
.end method

.method protected static printVersion()V
    .registers 3

    .prologue
    .line 778
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 779
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "SNMP4J Command Line Tool v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lorg/snmp4j/version/VersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " Copyright "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0xa9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " 2004-2008, Frank Fock and Jochen Katz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 782
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "http://www.snmp4j.org"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 783
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 784
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SNMP4J is licensed under the Apache License 2.0:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 785
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "http://www.apache.org/licenses/LICENSE-2.0.txt"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 786
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 787
    return-void
.end method

.method private walk(Lorg/snmp4j/Snmp;Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/util/List;)Lorg/snmp4j/PDU;
    .registers 16
    .parameter "snmp"
    .parameter "request"
    .parameter "target"
    .parameter "snapshot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 413
    invoke-virtual {p2, v1}, Lorg/snmp4j/PDU;->setNonRepeaters(I)V

    .line 414
    invoke-virtual {p2, v1}, Lorg/snmp4j/PDU;->get(I)Lorg/snmp4j/smi/VariableBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v8

    .line 415
    .local v8, rootOID:Lorg/snmp4j/smi/OID;
    const/4 v7, 0x0

    .line 416
    .local v7, response:Lorg/snmp4j/PDU;
    new-instance v2, Lorg/snmp4j/tools/console/SnmpRequest$WalkCounts;

    invoke-direct {v2, p0}, Lorg/snmp4j/tools/console/SnmpRequest$WalkCounts;-><init>(Lorg/snmp4j/tools/console/SnmpRequest;)V

    .line 417
    .local v2, counts:Lorg/snmp4j/tools/console/SnmpRequest$WalkCounts;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 418
    .local v4, startTime:J
    new-instance v9, Lorg/snmp4j/util/TreeUtils;

    invoke-direct {v9, p1, p0}, Lorg/snmp4j/util/TreeUtils;-><init>(Lorg/snmp4j/Session;Lorg/snmp4j/util/PDUFactory;)V

    .line 419
    .local v9, treeUtils:Lorg/snmp4j/util/TreeUtils;
    new-instance v0, Lorg/snmp4j/tools/console/SnmpRequest$1;

    move-object v1, p0

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/snmp4j/tools/console/SnmpRequest$1;-><init>(Lorg/snmp4j/tools/console/SnmpRequest;Lorg/snmp4j/tools/console/SnmpRequest$WalkCounts;Ljava/util/List;J)V

    .line 463
    .local v0, treeListener:Lorg/snmp4j/util/TreeListener;
    monitor-enter v0

    .line 464
    const/4 v1, 0x0

    :try_start_24
    invoke-virtual {v9, p3, v8, v1, v0}, Lorg/snmp4j/util/TreeUtils;->getSubtree(Lorg/snmp4j/Target;Lorg/snmp4j/smi/OID;Ljava/lang/Object;Lorg/snmp4j/util/TreeListener;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_51

    .line 466
    :try_start_27
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_51
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_2c

    .line 472
    :goto_2a
    :try_start_2a
    monitor-exit v0

    .line 473
    return-object v7

    .line 468
    :catch_2c
    move-exception v6

    .line 469
    .local v6, ex:Ljava/lang/InterruptedException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Tree retrieval interrupted: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 470
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2a

    .line 472
    .end local v6           #ex:Ljava/lang/InterruptedException;
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_2a .. :try_end_53} :catchall_51

    throw v1
.end method


# virtual methods
.method public createPDU(Lorg/snmp4j/Target;)Lorg/snmp4j/PDU;
    .registers 6
    .parameter "target"

    .prologue
    .line 1043
    invoke-interface {p1}, Lorg/snmp4j/Target;->getVersion()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_27

    .line 1044
    new-instance v0, Lorg/snmp4j/ScopedPDU;

    invoke-direct {v0}, Lorg/snmp4j/ScopedPDU;-><init>()V

    .local v0, request:Lorg/snmp4j/PDU;
    move-object v1, v0

    .line 1045
    check-cast v1, Lorg/snmp4j/ScopedPDU;

    .line 1046
    .local v1, scopedPDU:Lorg/snmp4j/ScopedPDU;
    iget-object v2, p0, Lorg/snmp4j/tools/console/SnmpRequest;->contextEngineID:Lorg/snmp4j/smi/OctetString;

    if-eqz v2, :cond_18

    .line 1047
    iget-object v2, p0, Lorg/snmp4j/tools/console/SnmpRequest;->contextEngineID:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v1, v2}, Lorg/snmp4j/ScopedPDU;->setContextEngineID(Lorg/snmp4j/smi/OctetString;)V

    .line 1049
    :cond_18
    iget-object v2, p0, Lorg/snmp4j/tools/console/SnmpRequest;->contextName:Lorg/snmp4j/smi/OctetString;

    if-eqz v2, :cond_21

    .line 1050
    iget-object v2, p0, Lorg/snmp4j/tools/console/SnmpRequest;->contextName:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v1, v2}, Lorg/snmp4j/ScopedPDU;->setContextName(Lorg/snmp4j/smi/OctetString;)V

    .line 1061
    .end local v1           #scopedPDU:Lorg/snmp4j/ScopedPDU;
    :cond_21
    :goto_21
    iget v2, p0, Lorg/snmp4j/tools/console/SnmpRequest;->pduType:I

    invoke-virtual {v0, v2}, Lorg/snmp4j/PDU;->setType(I)V

    .line 1062
    return-object v0

    .line 1054
    .end local v0           #request:Lorg/snmp4j/PDU;
    :cond_27
    iget v2, p0, Lorg/snmp4j/tools/console/SnmpRequest;->pduType:I

    const/16 v3, -0x5c

    if-ne v2, v3, :cond_30

    .line 1055
    iget-object v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->v1TrapPDU:Lorg/snmp4j/PDUv1;

    .restart local v0       #request:Lorg/snmp4j/PDU;
    goto :goto_21

    .line 1058
    .end local v0           #request:Lorg/snmp4j/PDU;
    :cond_30
    new-instance v0, Lorg/snmp4j/PDU;

    invoke-direct {v0}, Lorg/snmp4j/PDU;-><init>()V

    .restart local v0       #request:Lorg/snmp4j/PDU;
    goto :goto_21
.end method

.method public getAddress()Lorg/snmp4j/smi/Address;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->address:Lorg/snmp4j/smi/Address;

    return-object v0
.end method

.method public getAuthPassphrase()Lorg/snmp4j/smi/OctetString;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->authPassphrase:Lorg/snmp4j/smi/OctetString;

    return-object v0
.end method

.method public getAuthProtocol()Lorg/snmp4j/smi/OID;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->authProtocol:Lorg/snmp4j/smi/OID;

    return-object v0
.end method

.method public getAuthoritativeEngineID()Lorg/snmp4j/smi/OctetString;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->authoritativeEngineID:Lorg/snmp4j/smi/OctetString;

    return-object v0
.end method

.method public getCommunity()Lorg/snmp4j/smi/OctetString;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->community:Lorg/snmp4j/smi/OctetString;

    return-object v0
.end method

.method public getContextEngineID()Lorg/snmp4j/smi/OctetString;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->contextEngineID:Lorg/snmp4j/smi/OctetString;

    return-object v0
.end method

.method public getContextName()Lorg/snmp4j/smi/OctetString;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->contextName:Lorg/snmp4j/smi/OctetString;

    return-object v0
.end method

.method public getLowerBoundIndex()Lorg/snmp4j/smi/OID;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->lowerBoundIndex:Lorg/snmp4j/smi/OID;

    return-object v0
.end method

.method public getMaxRepetitions()I
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->maxRepetitions:I

    return v0
.end method

.method public getNonRepeaters()I
    .registers 2

    .prologue
    .line 184
    iget v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->nonRepeaters:I

    return v0
.end method

.method public getNumDispatcherThreads()I
    .registers 2

    .prologue
    .line 180
    iget v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->numDispatcherThreads:I

    return v0
.end method

.method public getOperation()I
    .registers 2

    .prologue
    .line 176
    iget v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    return v0
.end method

.method public getPduType()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->pduType:I

    return v0
.end method

.method public getPrivPassphrase()Lorg/snmp4j/smi/OctetString;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->privPassphrase:Lorg/snmp4j/smi/OctetString;

    return-object v0
.end method

.method public getPrivProtocol()Lorg/snmp4j/smi/OID;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->privProtocol:Lorg/snmp4j/smi/OID;

    return-object v0
.end method

.method public getRetries()I
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->retries:I

    return v0
.end method

.method public getSecurityName()Lorg/snmp4j/smi/OctetString;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->securityName:Lorg/snmp4j/smi/OctetString;

    return-object v0
.end method

.method public getSysUpTime()Lorg/snmp4j/smi/TimeTicks;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->sysUpTime:Lorg/snmp4j/smi/TimeTicks;

    return-object v0
.end method

.method public getTarget()Lorg/snmp4j/Target;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->target:Lorg/snmp4j/Target;

    return-object v0
.end method

.method public getTimeout()I
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->timeout:I

    return v0
.end method

.method public getTrapOID()Lorg/snmp4j/smi/OID;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->trapOID:Lorg/snmp4j/smi/OID;

    return-object v0
.end method

.method public getUpperBoundIndex()Lorg/snmp4j/smi/OID;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->upperBoundIndex:Lorg/snmp4j/smi/OID;

    return-object v0
.end method

.method public getVbs()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->vbs:Ljava/util/Vector;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->version:I

    return v0
.end method

.method public isUseDenseTableOperation()Z
    .registers 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lorg/snmp4j/tools/console/SnmpRequest;->useDenseTableOperation:Z

    return v0
.end method

.method public declared-synchronized listen()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    monitor-enter p0

    :try_start_1
    iget-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->address:Lorg/snmp4j/smi/Address;

    instance-of v7, v7, Lorg/snmp4j/smi/TcpAddress;

    if-eqz v7, :cond_a7

    .line 261
    new-instance v5, Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    iget-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->address:Lorg/snmp4j/smi/Address;

    check-cast v7, Lorg/snmp4j/smi/TcpAddress;

    invoke-direct {v5, v7}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;-><init>(Lorg/snmp4j/smi/TcpAddress;)V

    .line 266
    .local v5, transport:Lorg/snmp4j/transport/AbstractTransportMapping;
    :goto_10
    const-string v7, "DispatcherPool"

    iget v8, p0, Lorg/snmp4j/tools/console/SnmpRequest;->numDispatcherThreads:I

    invoke-static {v7, v8}, Lorg/snmp4j/util/ThreadPool;->create(Ljava/lang/String;I)Lorg/snmp4j/util/ThreadPool;

    move-result-object v4

    .line 268
    .local v4, threadPool:Lorg/snmp4j/util/ThreadPool;
    new-instance v1, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;

    new-instance v7, Lorg/snmp4j/MessageDispatcherImpl;

    invoke-direct {v7}, Lorg/snmp4j/MessageDispatcherImpl;-><init>()V

    invoke-direct {v1, v4, v7}, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;-><init>(Lorg/snmp4j/util/WorkerPool;Lorg/snmp4j/MessageDispatcher;)V

    .line 272
    .local v1, mtDispatcher:Lorg/snmp4j/MessageDispatcher;
    new-instance v7, Lorg/snmp4j/mp/MPv1;

    invoke-direct {v7}, Lorg/snmp4j/mp/MPv1;-><init>()V

    invoke-interface {v1, v7}, Lorg/snmp4j/MessageDispatcher;->addMessageProcessingModel(Lorg/snmp4j/mp/MessageProcessingModel;)V

    .line 273
    new-instance v7, Lorg/snmp4j/mp/MPv2c;

    invoke-direct {v7}, Lorg/snmp4j/mp/MPv2c;-><init>()V

    invoke-interface {v1, v7}, Lorg/snmp4j/MessageDispatcher;->addMessageProcessingModel(Lorg/snmp4j/mp/MessageProcessingModel;)V

    .line 274
    new-instance v7, Lorg/snmp4j/mp/MPv3;

    iget-object v8, p0, Lorg/snmp4j/tools/console/SnmpRequest;->localEngineID:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v8}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/snmp4j/mp/MPv3;-><init>([B)V

    invoke-interface {v1, v7}, Lorg/snmp4j/MessageDispatcher;->addMessageProcessingModel(Lorg/snmp4j/mp/MessageProcessingModel;)V

    .line 277
    invoke-static {}, Lorg/snmp4j/security/SecurityProtocols;->getInstance()Lorg/snmp4j/security/SecurityProtocols;

    move-result-object v7

    invoke-virtual {v7}, Lorg/snmp4j/security/SecurityProtocols;->addDefaultProtocols()V

    .line 278
    invoke-static {}, Lorg/snmp4j/security/SecurityProtocols;->getInstance()Lorg/snmp4j/security/SecurityProtocols;

    move-result-object v7

    new-instance v8, Lorg/snmp4j/security/Priv3DES;

    invoke-direct {v8}, Lorg/snmp4j/security/Priv3DES;-><init>()V

    invoke-virtual {v7, v8}, Lorg/snmp4j/security/SecurityProtocols;->addPrivacyProtocol(Lorg/snmp4j/security/PrivacyProtocol;)V

    .line 280
    new-instance v2, Lorg/snmp4j/Snmp;

    invoke-direct {v2, v1, v5}, Lorg/snmp4j/Snmp;-><init>(Lorg/snmp4j/MessageDispatcher;Lorg/snmp4j/TransportMapping;)V

    .line 281
    .local v2, snmp:Lorg/snmp4j/Snmp;
    iget v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->version:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_b2

    .line 282
    new-instance v6, Lorg/snmp4j/security/USM;

    invoke-static {}, Lorg/snmp4j/security/SecurityProtocols;->getInstance()Lorg/snmp4j/security/SecurityProtocols;

    move-result-object v7

    iget-object v8, p0, Lorg/snmp4j/tools/console/SnmpRequest;->localEngineID:Lorg/snmp4j/smi/OctetString;

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lorg/snmp4j/security/USM;-><init>(Lorg/snmp4j/security/SecurityProtocols;Lorg/snmp4j/smi/OctetString;I)V

    .line 283
    .local v6, usm:Lorg/snmp4j/security/USM;
    invoke-static {}, Lorg/snmp4j/security/SecurityModels;->getInstance()Lorg/snmp4j/security/SecurityModels;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/snmp4j/security/SecurityModels;->addSecurityModel(Lorg/snmp4j/security/SecurityModel;)V

    .line 284
    iget-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->authoritativeEngineID:Lorg/snmp4j/smi/OctetString;

    if-eqz v7, :cond_7f

    .line 285
    iget-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->authoritativeEngineID:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v7}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9}, Lorg/snmp4j/Snmp;->setLocalEngine([BII)V

    .line 288
    :cond_7f
    invoke-direct {p0, v2}, Lorg/snmp4j/tools/console/SnmpRequest;->addUsmUser(Lorg/snmp4j/Snmp;)V

    .line 296
    .end local v6           #usm:Lorg/snmp4j/security/USM;
    :goto_82
    invoke-virtual {v2, p0}, Lorg/snmp4j/Snmp;->addCommandResponder(Lorg/snmp4j/CommandResponder;)V

    .line 298
    invoke-virtual {v5}, Lorg/snmp4j/transport/AbstractTransportMapping;->listen()V

    .line 299
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Listening on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lorg/snmp4j/tools/console/SnmpRequest;->address:Lorg/snmp4j/smi/Address;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_1 .. :try_end_a2} :catchall_bf

    .line 302
    :try_start_a2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_bf
    .catch Ljava/lang/InterruptedException; {:try_start_a2 .. :try_end_a5} :catch_c2

    .line 307
    :goto_a5
    monitor-exit p0

    return-void

    .line 264
    .end local v1           #mtDispatcher:Lorg/snmp4j/MessageDispatcher;
    .end local v2           #snmp:Lorg/snmp4j/Snmp;
    .end local v4           #threadPool:Lorg/snmp4j/util/ThreadPool;
    .end local v5           #transport:Lorg/snmp4j/transport/AbstractTransportMapping;
    :cond_a7
    :try_start_a7
    new-instance v5, Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    iget-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->address:Lorg/snmp4j/smi/Address;

    check-cast v7, Lorg/snmp4j/smi/UdpAddress;

    invoke-direct {v5, v7}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;-><init>(Lorg/snmp4j/smi/UdpAddress;)V

    .restart local v5       #transport:Lorg/snmp4j/transport/AbstractTransportMapping;
    goto/16 :goto_10

    .line 291
    .restart local v1       #mtDispatcher:Lorg/snmp4j/MessageDispatcher;
    .restart local v2       #snmp:Lorg/snmp4j/Snmp;
    .restart local v4       #threadPool:Lorg/snmp4j/util/ThreadPool;
    :cond_b2
    new-instance v3, Lorg/snmp4j/CommunityTarget;

    invoke-direct {v3}, Lorg/snmp4j/CommunityTarget;-><init>()V

    .line 292
    .local v3, target:Lorg/snmp4j/CommunityTarget;
    iget-object v7, p0, Lorg/snmp4j/tools/console/SnmpRequest;->community:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v3, v7}, Lorg/snmp4j/CommunityTarget;->setCommunity(Lorg/snmp4j/smi/OctetString;)V

    .line 293
    iput-object v3, p0, Lorg/snmp4j/tools/console/SnmpRequest;->target:Lorg/snmp4j/Target;
    :try_end_be
    .catchall {:try_start_a7 .. :try_end_be} :catchall_bf

    goto :goto_82

    .line 260
    .end local v1           #mtDispatcher:Lorg/snmp4j/MessageDispatcher;
    .end local v2           #snmp:Lorg/snmp4j/Snmp;
    .end local v3           #target:Lorg/snmp4j/CommunityTarget;
    .end local v4           #threadPool:Lorg/snmp4j/util/ThreadPool;
    .end local v5           #transport:Lorg/snmp4j/transport/AbstractTransportMapping;
    :catchall_bf
    move-exception v7

    monitor-exit p0

    throw v7

    .line 304
    .restart local v1       #mtDispatcher:Lorg/snmp4j/MessageDispatcher;
    .restart local v2       #snmp:Lorg/snmp4j/Snmp;
    .restart local v4       #threadPool:Lorg/snmp4j/util/ThreadPool;
    .restart local v5       #transport:Lorg/snmp4j/transport/AbstractTransportMapping;
    :catch_c2
    move-exception v0

    .line 305
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_c3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V
    :try_end_ca
    .catchall {:try_start_c3 .. :try_end_ca} :catchall_bf

    goto :goto_a5
.end method

.method public declared-synchronized processPdu(Lorg/snmp4j/CommandResponderEvent;)V
    .registers 12
    .parameter "e"

    .prologue
    const/16 v2, -0x5e

    .line 1010
    monitor-enter p0

    :try_start_3
    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->getPDU()Lorg/snmp4j/PDU;

    move-result-object v5

    .line 1011
    .local v5, command:Lorg/snmp4j/PDU;
    if-eqz v5, :cond_61

    .line 1012
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Lorg/snmp4j/PDU;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v5}, Lorg/snmp4j/PDU;->getType()I

    move-result v0

    const/16 v1, -0x59

    if-eq v0, v1, :cond_61

    invoke-virtual {v5}, Lorg/snmp4j/PDU;->getType()I

    move-result v0

    const/16 v1, -0x5c

    if-eq v0, v1, :cond_61

    invoke-virtual {v5}, Lorg/snmp4j/PDU;->getType()I

    move-result v0

    const/16 v1, -0x58

    if-eq v0, v1, :cond_61

    invoke-virtual {v5}, Lorg/snmp4j/PDU;->getType()I

    move-result v0

    if-eq v0, v2, :cond_61

    .line 1017
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lorg/snmp4j/PDU;->setErrorIndex(I)V

    .line 1018
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lorg/snmp4j/PDU;->setErrorStatus(I)V

    .line 1019
    const/16 v0, -0x5e

    invoke-virtual {v5, v0}, Lorg/snmp4j/PDU;->setType(I)V

    .line 1020
    new-instance v8, Lorg/snmp4j/mp/StatusInformation;

    invoke-direct {v8}, Lorg/snmp4j/mp/StatusInformation;-><init>()V

    .line 1021
    .local v8, statusInformation:Lorg/snmp4j/mp/StatusInformation;
    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->getStateReference()Lorg/snmp4j/mp/StateReference;
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_94

    move-result-object v7

    .line 1023
    .local v7, ref:Lorg/snmp4j/mp/StateReference;
    :try_start_46
    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->getMessageDispatcher()Lorg/snmp4j/MessageDispatcher;

    move-result-object v0

    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->getMessageProcessingModel()I

    move-result v1

    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->getSecurityModel()I

    move-result v2

    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->getSecurityName()[B

    move-result-object v3

    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->getSecurityLevel()I

    move-result v4

    invoke-virtual {p1}, Lorg/snmp4j/CommandResponderEvent;->getMaxSizeResponsePDU()I

    move-result v6

    invoke-interface/range {v0 .. v8}, Lorg/snmp4j/MessageDispatcher;->returnResponsePdu(II[BILorg/snmp4j/PDU;ILorg/snmp4j/mp/StateReference;Lorg/snmp4j/mp/StatusInformation;)I
    :try_end_61
    .catchall {:try_start_46 .. :try_end_61} :catchall_94
    .catch Lorg/snmp4j/MessageException; {:try_start_46 .. :try_end_61} :catch_63

    .line 1039
    .end local v7           #ref:Lorg/snmp4j/mp/StateReference;
    .end local v8           #statusInformation:Lorg/snmp4j/mp/StatusInformation;
    :cond_61
    :goto_61
    monitor-exit p0

    return-void

    .line 1033
    .restart local v7       #ref:Lorg/snmp4j/mp/StateReference;
    .restart local v8       #statusInformation:Lorg/snmp4j/mp/StatusInformation;
    :catch_63
    move-exception v9

    .line 1034
    .local v9, ex:Lorg/snmp4j/MessageException;
    :try_start_64
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error while sending response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v9}, Lorg/snmp4j/MessageException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1035
    sget-object v0, Lorg/snmp4j/tools/console/SnmpRequest;->class$org$snmp4j$tools$console$SnmpRequest:Ljava/lang/Class;

    if-nez v0, :cond_97

    const-string v0, "org.snmp4j.tools.console.SnmpRequest"

    invoke-static {v0}, Lorg/snmp4j/tools/console/SnmpRequest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/tools/console/SnmpRequest;->class$org$snmp4j$tools$console$SnmpRequest:Ljava/lang/Class;

    :goto_8c
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    invoke-interface {v0, v9}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V
    :try_end_93
    .catchall {:try_start_64 .. :try_end_93} :catchall_94

    goto :goto_61

    .line 1010
    .end local v5           #command:Lorg/snmp4j/PDU;
    .end local v7           #ref:Lorg/snmp4j/mp/StateReference;
    .end local v8           #statusInformation:Lorg/snmp4j/mp/StatusInformation;
    .end local v9           #ex:Lorg/snmp4j/MessageException;
    :catchall_94
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1035
    .restart local v5       #command:Lorg/snmp4j/PDU;
    .restart local v7       #ref:Lorg/snmp4j/mp/StateReference;
    .restart local v8       #statusInformation:Lorg/snmp4j/mp/StatusInformation;
    .restart local v9       #ex:Lorg/snmp4j/MessageException;
    :cond_97
    :try_start_97
    sget-object v0, Lorg/snmp4j/tools/console/SnmpRequest;->class$org$snmp4j$tools$console$SnmpRequest:Ljava/lang/Class;
    :try_end_99
    .catchall {:try_start_97 .. :try_end_99} :catchall_94

    goto :goto_8c
.end method

.method public send()Lorg/snmp4j/PDU;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x6

    .line 366
    invoke-direct {p0}, Lorg/snmp4j/tools/console/SnmpRequest;->createSnmpSession()Lorg/snmp4j/Snmp;

    move-result-object v5

    .line 367
    .local v5, snmp:Lorg/snmp4j/Snmp;
    invoke-direct {p0}, Lorg/snmp4j/tools/console/SnmpRequest;->createTarget()Lorg/snmp4j/Target;

    move-result-object v8

    iput-object v8, p0, Lorg/snmp4j/tools/console/SnmpRequest;->target:Lorg/snmp4j/Target;

    .line 368
    iget-object v8, p0, Lorg/snmp4j/tools/console/SnmpRequest;->target:Lorg/snmp4j/Target;

    iget v9, p0, Lorg/snmp4j/tools/console/SnmpRequest;->version:I

    invoke-interface {v8, v9}, Lorg/snmp4j/Target;->setVersion(I)V

    .line 369
    iget-object v8, p0, Lorg/snmp4j/tools/console/SnmpRequest;->target:Lorg/snmp4j/Target;

    iget-object v9, p0, Lorg/snmp4j/tools/console/SnmpRequest;->address:Lorg/snmp4j/smi/Address;

    invoke-interface {v8, v9}, Lorg/snmp4j/Target;->setAddress(Lorg/snmp4j/smi/Address;)V

    .line 370
    iget-object v8, p0, Lorg/snmp4j/tools/console/SnmpRequest;->target:Lorg/snmp4j/Target;

    iget v9, p0, Lorg/snmp4j/tools/console/SnmpRequest;->retries:I

    invoke-interface {v8, v9}, Lorg/snmp4j/Target;->setRetries(I)V

    .line 371
    iget-object v8, p0, Lorg/snmp4j/tools/console/SnmpRequest;->target:Lorg/snmp4j/Target;

    iget v9, p0, Lorg/snmp4j/tools/console/SnmpRequest;->timeout:I

    int-to-long v9, v9

    invoke-interface {v8, v9, v10}, Lorg/snmp4j/Target;->setTimeout(J)V

    .line 372
    iget-object v8, p0, Lorg/snmp4j/tools/console/SnmpRequest;->target:Lorg/snmp4j/Target;

    iget v9, p0, Lorg/snmp4j/tools/console/SnmpRequest;->maxSizeResponsePDU:I

    invoke-interface {v8, v9}, Lorg/snmp4j/Target;->setMaxSizeRequestPDU(I)V

    .line 373
    invoke-virtual {v5}, Lorg/snmp4j/Snmp;->listen()V

    .line 375
    iget-object v8, p0, Lorg/snmp4j/tools/console/SnmpRequest;->target:Lorg/snmp4j/Target;

    invoke-virtual {p0, v8}, Lorg/snmp4j/tools/console/SnmpRequest;->createPDU(Lorg/snmp4j/Target;)Lorg/snmp4j/PDU;

    move-result-object v1

    .line 376
    .local v1, request:Lorg/snmp4j/PDU;
    invoke-virtual {v1}, Lorg/snmp4j/PDU;->getType()I

    move-result v8

    const/16 v9, -0x5b

    if-ne v8, v9, :cond_4a

    .line 377
    iget v8, p0, Lorg/snmp4j/tools/console/SnmpRequest;->maxRepetitions:I

    invoke-virtual {v1, v8}, Lorg/snmp4j/PDU;->setMaxRepetitions(I)V

    .line 378
    iget v8, p0, Lorg/snmp4j/tools/console/SnmpRequest;->nonRepeaters:I

    invoke-virtual {v1, v8}, Lorg/snmp4j/PDU;->setNonRepeaters(I)V

    .line 380
    :cond_4a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4b
    iget-object v8, p0, Lorg/snmp4j/tools/console/SnmpRequest;->vbs:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v0, v8, :cond_61

    .line 381
    iget-object v8, p0, Lorg/snmp4j/tools/console/SnmpRequest;->vbs:Ljava/util/Vector;

    invoke-virtual {v8, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/snmp4j/smi/VariableBinding;

    invoke-virtual {v1, v8}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 384
    :cond_61
    const/4 v2, 0x0

    .line 385
    .local v2, response:Lorg/snmp4j/PDU;
    iget v8, p0, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_6b

    iget v8, p0, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    if-ne v8, v11, :cond_81

    .line 386
    :cond_6b
    const/4 v4, 0x0

    .line 387
    .local v4, snapshot:Ljava/util/ArrayList;
    iget v8, p0, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    if-ne v8, v11, :cond_75

    .line 388
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #snapshot:Ljava/util/ArrayList;
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .restart local v4       #snapshot:Ljava/util/ArrayList;
    :cond_75
    iget-object v8, p0, Lorg/snmp4j/tools/console/SnmpRequest;->target:Lorg/snmp4j/Target;

    invoke-direct {p0, v5, v1, v8, v4}, Lorg/snmp4j/tools/console/SnmpRequest;->walk(Lorg/snmp4j/Snmp;Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/util/List;)Lorg/snmp4j/PDU;

    .line 391
    if-eqz v4, :cond_7f

    .line 392
    invoke-direct {p0, v4}, Lorg/snmp4j/tools/console/SnmpRequest;->createSnapshot(Ljava/util/List;)V

    .line 394
    :cond_7f
    const/4 v8, 0x0

    .line 407
    .end local v4           #snapshot:Ljava/util/ArrayList;
    :goto_80
    return-object v8

    .line 398
    :cond_81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 399
    .local v6, startTime:J
    iget-object v8, p0, Lorg/snmp4j/tools/console/SnmpRequest;->target:Lorg/snmp4j/Target;

    invoke-virtual {v5, v1, v8}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;

    move-result-object v3

    .line 400
    .local v3, responseEvent:Lorg/snmp4j/event/ResponseEvent;
    if-eqz v3, :cond_b4

    .line 401
    invoke-virtual {v3}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v2

    .line 402
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Received response after "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " millis"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 406
    :cond_b4
    invoke-virtual {v5}, Lorg/snmp4j/Snmp;->close()V

    move-object v8, v2

    .line 407
    goto :goto_80
.end method

.method public setAddress(Lorg/snmp4j/smi/Address;)V
    .registers 2
    .parameter "address"

    .prologue
    .line 1329
    iput-object p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->address:Lorg/snmp4j/smi/Address;

    .line 1330
    return-void
.end method

.method public setAuthPassphrase(Lorg/snmp4j/smi/OctetString;)V
    .registers 2
    .parameter "authPassphrase"

    .prologue
    .line 1425
    iput-object p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->authPassphrase:Lorg/snmp4j/smi/OctetString;

    .line 1426
    return-void
.end method

.method public setAuthProtocol(Lorg/snmp4j/smi/OID;)V
    .registers 2
    .parameter "authProtocol"

    .prologue
    .line 1421
    iput-object p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->authProtocol:Lorg/snmp4j/smi/OID;

    .line 1422
    return-void
.end method

.method public setAuthoritativeEngineID(Lorg/snmp4j/smi/OctetString;)V
    .registers 2
    .parameter "authoritativeEngineID"

    .prologue
    .line 1417
    iput-object p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->authoritativeEngineID:Lorg/snmp4j/smi/OctetString;

    .line 1418
    return-void
.end method

.method public setCommunity(Lorg/snmp4j/smi/OctetString;)V
    .registers 2
    .parameter "community"

    .prologue
    .line 1413
    iput-object p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->community:Lorg/snmp4j/smi/OctetString;

    .line 1414
    return-void
.end method

.method public setContextEngineID(Lorg/snmp4j/smi/OctetString;)V
    .registers 2
    .parameter "contextEngineID"

    .prologue
    .line 1409
    iput-object p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->contextEngineID:Lorg/snmp4j/smi/OctetString;

    .line 1410
    return-void
.end method

.method public setContextName(Lorg/snmp4j/smi/OctetString;)V
    .registers 2
    .parameter "contextName"

    .prologue
    .line 1405
    iput-object p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->contextName:Lorg/snmp4j/smi/OctetString;

    .line 1406
    return-void
.end method

.method public setLowerBoundIndex(Lorg/snmp4j/smi/OID;)V
    .registers 2
    .parameter "lowerBoundIndex"

    .prologue
    .line 1401
    iput-object p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->lowerBoundIndex:Lorg/snmp4j/smi/OID;

    .line 1402
    return-void
.end method

.method public setMaxRepetitions(I)V
    .registers 2
    .parameter "maxRepetitions"

    .prologue
    .line 1397
    iput p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->maxRepetitions:I

    .line 1398
    return-void
.end method

.method public setNonRepeaters(I)V
    .registers 2
    .parameter "nonRepeaters"

    .prologue
    .line 1393
    iput p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->nonRepeaters:I

    .line 1394
    return-void
.end method

.method public setNumDispatcherThreads(I)V
    .registers 2
    .parameter "numDispatcherThreads"

    .prologue
    .line 1389
    iput p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->numDispatcherThreads:I

    .line 1390
    return-void
.end method

.method public setOperation(I)V
    .registers 2
    .parameter "operation"

    .prologue
    .line 1385
    iput p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    .line 1386
    return-void
.end method

.method public setPduType(I)V
    .registers 2
    .parameter "pduType"

    .prologue
    .line 1381
    iput p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->pduType:I

    .line 1382
    return-void
.end method

.method public setPrivPassphrase(Lorg/snmp4j/smi/OctetString;)V
    .registers 2
    .parameter "privPassphrase"

    .prologue
    .line 1377
    iput-object p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->privPassphrase:Lorg/snmp4j/smi/OctetString;

    .line 1378
    return-void
.end method

.method public setPrivProtocol(Lorg/snmp4j/smi/OID;)V
    .registers 2
    .parameter "privProtocol"

    .prologue
    .line 1373
    iput-object p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->privProtocol:Lorg/snmp4j/smi/OID;

    .line 1374
    return-void
.end method

.method public setRetries(I)V
    .registers 2
    .parameter "retries"

    .prologue
    .line 1369
    iput p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->retries:I

    .line 1370
    return-void
.end method

.method public setSecurityName(Lorg/snmp4j/smi/OctetString;)V
    .registers 2
    .parameter "securityName"

    .prologue
    .line 1365
    iput-object p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->securityName:Lorg/snmp4j/smi/OctetString;

    .line 1366
    return-void
.end method

.method public setSysUpTime(Lorg/snmp4j/smi/TimeTicks;)V
    .registers 2
    .parameter "sysUpTime"

    .prologue
    .line 1361
    iput-object p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->sysUpTime:Lorg/snmp4j/smi/TimeTicks;

    .line 1362
    return-void
.end method

.method public setTarget(Lorg/snmp4j/Target;)V
    .registers 2
    .parameter "target"

    .prologue
    .line 1357
    iput-object p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->target:Lorg/snmp4j/Target;

    .line 1358
    return-void
.end method

.method public setTimeout(I)V
    .registers 2
    .parameter "timeout"

    .prologue
    .line 1353
    iput p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->timeout:I

    .line 1354
    return-void
.end method

.method public setTrapOID(Lorg/snmp4j/smi/OID;)V
    .registers 2
    .parameter "trapOID"

    .prologue
    .line 1349
    iput-object p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->trapOID:Lorg/snmp4j/smi/OID;

    .line 1350
    return-void
.end method

.method public setUpperBoundIndex(Lorg/snmp4j/smi/OID;)V
    .registers 2
    .parameter "upperBoundIndex"

    .prologue
    .line 1345
    iput-object p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->upperBoundIndex:Lorg/snmp4j/smi/OID;

    .line 1346
    return-void
.end method

.method public setUseDenseTableOperation(Z)V
    .registers 2
    .parameter "useDenseTableOperation"

    .prologue
    .line 1341
    iput-boolean p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->useDenseTableOperation:Z

    .line 1342
    return-void
.end method

.method public setVbs(Ljava/util/Vector;)V
    .registers 2
    .parameter "vbs"

    .prologue
    .line 1337
    iput-object p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->vbs:Ljava/util/Vector;

    .line 1338
    return-void
.end method

.method public setVersion(I)V
    .registers 2
    .parameter "version"

    .prologue
    .line 1333
    iput p1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->version:I

    .line 1334
    return-void
.end method

.method public table()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1066
    invoke-direct {p0}, Lorg/snmp4j/tools/console/SnmpRequest;->createSnmpSession()Lorg/snmp4j/Snmp;

    move-result-object v9

    .line 1067
    .local v9, snmp:Lorg/snmp4j/Snmp;
    invoke-direct {p0}, Lorg/snmp4j/tools/console/SnmpRequest;->createTarget()Lorg/snmp4j/Target;

    move-result-object v1

    iput-object v1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->target:Lorg/snmp4j/Target;

    .line 1068
    iget-object v1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->target:Lorg/snmp4j/Target;

    iget v5, p0, Lorg/snmp4j/tools/console/SnmpRequest;->version:I

    invoke-interface {v1, v5}, Lorg/snmp4j/Target;->setVersion(I)V

    .line 1069
    iget-object v1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->target:Lorg/snmp4j/Target;

    iget-object v5, p0, Lorg/snmp4j/tools/console/SnmpRequest;->address:Lorg/snmp4j/smi/Address;

    invoke-interface {v1, v5}, Lorg/snmp4j/Target;->setAddress(Lorg/snmp4j/smi/Address;)V

    .line 1070
    iget-object v1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->target:Lorg/snmp4j/Target;

    iget v5, p0, Lorg/snmp4j/tools/console/SnmpRequest;->retries:I

    invoke-interface {v1, v5}, Lorg/snmp4j/Target;->setRetries(I)V

    .line 1071
    iget-object v1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->target:Lorg/snmp4j/Target;

    iget v5, p0, Lorg/snmp4j/tools/console/SnmpRequest;->timeout:I

    int-to-long v5, v5

    invoke-interface {v1, v5, v6}, Lorg/snmp4j/Target;->setTimeout(J)V

    .line 1072
    invoke-virtual {v9}, Lorg/snmp4j/Snmp;->listen()V

    .line 1074
    new-instance v0, Lorg/snmp4j/util/TableUtils;

    invoke-direct {v0, v9, p0}, Lorg/snmp4j/util/TableUtils;-><init>(Lorg/snmp4j/Session;Lorg/snmp4j/util/PDUFactory;)V

    .line 1075
    .local v0, tableUtils:Lorg/snmp4j/util/TableUtils;
    iget v1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->maxRepetitions:I

    invoke-virtual {v0, v1}, Lorg/snmp4j/util/TableUtils;->setMaxNumRowsPerPDU(I)V

    .line 1076
    new-instance v4, Lorg/snmp4j/smi/Counter32;

    invoke-direct {v4}, Lorg/snmp4j/smi/Counter32;-><init>()V

    .line 1078
    .local v4, counter:Lorg/snmp4j/smi/Counter32;
    iget-object v1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->vbs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [Lorg/snmp4j/smi/OID;

    .line 1079
    .local v2, columns:[Lorg/snmp4j/smi/OID;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_42
    array-length v1, v2

    if-ge v8, v1, :cond_56

    .line 1080
    iget-object v1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->vbs:Ljava/util/Vector;

    invoke-virtual {v1, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/snmp4j/smi/VariableBinding;

    invoke-virtual {v1}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v1

    aput-object v1, v2, v8

    .line 1079
    add-int/lit8 v8, v8, 0x1

    goto :goto_42

    .line 1082
    :cond_56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1083
    .local v10, startTime:J
    monitor-enter v4

    .line 1086
    :try_start_5b
    iget v1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_a0

    .line 1087
    new-instance v3, Lorg/snmp4j/tools/console/SnmpRequest$TextTableListener;

    invoke-direct {v3, p0}, Lorg/snmp4j/tools/console/SnmpRequest$TextTableListener;-><init>(Lorg/snmp4j/tools/console/SnmpRequest;)V

    .line 1092
    .local v3, listener:Lorg/snmp4j/util/TableListener;
    :goto_65
    iget-boolean v1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->useDenseTableOperation:Z

    if-eqz v1, :cond_aa

    .line 1093
    iget-object v1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->target:Lorg/snmp4j/Target;

    iget-object v5, p0, Lorg/snmp4j/tools/console/SnmpRequest;->lowerBoundIndex:Lorg/snmp4j/smi/OID;

    iget-object v6, p0, Lorg/snmp4j/tools/console/SnmpRequest;->upperBoundIndex:Lorg/snmp4j/smi/OID;

    invoke-virtual/range {v0 .. v6}, Lorg/snmp4j/util/TableUtils;->getDenseTable(Lorg/snmp4j/Target;[Lorg/snmp4j/smi/OID;Lorg/snmp4j/util/TableListener;Ljava/lang/Object;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;)V
    :try_end_72
    .catchall {:try_start_5b .. :try_end_72} :catchall_b4

    .line 1101
    :goto_72
    :try_start_72
    iget v1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->timeout:I

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_78
    .catchall {:try_start_72 .. :try_end_78} :catchall_b4
    .catch Ljava/lang/InterruptedException; {:try_start_72 .. :try_end_78} :catch_b7

    .line 1106
    :goto_78
    :try_start_78
    monitor-exit v4
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_b4

    .line 1107
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Table received in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " milliseconds."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {v9}, Lorg/snmp4j/Snmp;->close()V

    .line 1110
    return-void

    .line 1090
    .end local v3           #listener:Lorg/snmp4j/util/TableListener;
    :cond_a0
    :try_start_a0
    new-instance v3, Lorg/snmp4j/tools/console/SnmpRequest$CVSTableListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, p0, v5, v6}, Lorg/snmp4j/tools/console/SnmpRequest$CVSTableListener;-><init>(Lorg/snmp4j/tools/console/SnmpRequest;J)V

    .restart local v3       #listener:Lorg/snmp4j/util/TableListener;
    goto :goto_65

    .line 1097
    :cond_aa
    iget-object v1, p0, Lorg/snmp4j/tools/console/SnmpRequest;->target:Lorg/snmp4j/Target;

    iget-object v5, p0, Lorg/snmp4j/tools/console/SnmpRequest;->lowerBoundIndex:Lorg/snmp4j/smi/OID;

    iget-object v6, p0, Lorg/snmp4j/tools/console/SnmpRequest;->upperBoundIndex:Lorg/snmp4j/smi/OID;

    invoke-virtual/range {v0 .. v6}, Lorg/snmp4j/util/TableUtils;->getTable(Lorg/snmp4j/Target;[Lorg/snmp4j/smi/OID;Lorg/snmp4j/util/TableListener;Ljava/lang/Object;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;)V

    goto :goto_72

    .line 1106
    .end local v3           #listener:Lorg/snmp4j/util/TableListener;
    :catchall_b4
    move-exception v1

    monitor-exit v4
    :try_end_b6
    .catchall {:try_start_a0 .. :try_end_b6} :catchall_b4

    throw v1

    .line 1103
    .restart local v3       #listener:Lorg/snmp4j/util/TableListener;
    :catch_b7
    move-exception v7

    .line 1104
    .local v7, ex:Ljava/lang/InterruptedException;
    :try_start_b8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_bf
    .catchall {:try_start_b8 .. :try_end_bf} :catchall_b4

    goto :goto_78
.end method
