.class public Lorg/snmp4j/security/SecurityModels;
.super Ljava/lang/Object;
.source "SecurityModels.java"


# static fields
.field private static instance:Lorg/snmp4j/security/SecurityModels;


# instance fields
.field private securityModels:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lorg/snmp4j/security/SecurityModels;->instance:Lorg/snmp4j/security/SecurityModels;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/security/SecurityModels;->securityModels:Ljava/util/Map;

    .line 40
    return-void
.end method

.method public static final getCollection([Lorg/snmp4j/security/SecurityModel;)Lorg/snmp4j/security/SecurityModels;
    .registers 4
    .parameter "models"

    .prologue
    .line 64
    new-instance v1, Lorg/snmp4j/security/SecurityModels;

    invoke-direct {v1}, Lorg/snmp4j/security/SecurityModels;-><init>()V

    .line 65
    .local v1, smc:Lorg/snmp4j/security/SecurityModels;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_11

    .line 66
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Lorg/snmp4j/security/SecurityModels;->addSecurityModel(Lorg/snmp4j/security/SecurityModel;)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 68
    :cond_11
    return-object v1
.end method

.method public static declared-synchronized getInstance()Lorg/snmp4j/security/SecurityModels;
    .registers 2

    .prologue
    .line 48
    const-class v1, Lorg/snmp4j/security/SecurityModels;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lorg/snmp4j/security/SecurityModels;->instance:Lorg/snmp4j/security/SecurityModels;

    if-nez v0, :cond_e

    .line 49
    new-instance v0, Lorg/snmp4j/security/SecurityModels;

    invoke-direct {v0}, Lorg/snmp4j/security/SecurityModels;-><init>()V

    sput-object v0, Lorg/snmp4j/security/SecurityModels;->instance:Lorg/snmp4j/security/SecurityModels;

    .line 51
    :cond_e
    sget-object v0, Lorg/snmp4j/security/SecurityModels;->instance:Lorg/snmp4j/security/SecurityModels;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addSecurityModel(Lorg/snmp4j/security/SecurityModel;)V
    .registers 5
    .parameter "model"

    .prologue
    .line 78
    iget-object v0, p0, Lorg/snmp4j/security/SecurityModels;->securityModels:Ljava/util/Map;

    new-instance v1, Lorg/snmp4j/smi/Integer32;

    invoke-interface {p1}, Lorg/snmp4j/security/SecurityModel;->getID()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public getSecurityModel(Lorg/snmp4j/smi/Integer32;)Lorg/snmp4j/security/SecurityModel;
    .registers 3
    .parameter "id"

    .prologue
    .line 102
    iget-object v0, p0, Lorg/snmp4j/security/SecurityModels;->securityModels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/security/SecurityModel;

    return-object v0
.end method

.method public removeSecurityModel(Lorg/snmp4j/smi/Integer32;)Lorg/snmp4j/security/SecurityModel;
    .registers 3
    .parameter "id"

    .prologue
    .line 90
    iget-object v0, p0, Lorg/snmp4j/security/SecurityModels;->securityModels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/security/SecurityModel;

    return-object v0
.end method
