.class Lorg/snmp4j/security/Salt;
.super Ljava/lang/Object;
.source "Salt.java"


# static fields
.field static class$org$snmp4j$security$Salt:Ljava/lang/Class;

.field private static instance:Lorg/snmp4j/security/Salt;

.field private static final logger:Lorg/snmp4j/log/LogAdapter;


# instance fields
.field private salt:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lorg/snmp4j/security/Salt;->instance:Lorg/snmp4j/security/Salt;

    .line 45
    sget-object v0, Lorg/snmp4j/security/Salt;->class$org$snmp4j$security$Salt:Ljava/lang/Class;

    if-nez v0, :cond_16

    const-string v0, "org.snmp4j.security.Salt"

    invoke-static {v0}, Lorg/snmp4j/security/Salt;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/security/Salt;->class$org$snmp4j$security$Salt:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/security/Salt;->logger:Lorg/snmp4j/log/LogAdapter;

    return-void

    :cond_16
    sget-object v0, Lorg/snmp4j/security/Salt;->class$org$snmp4j$security$Salt:Ljava/lang/Class;

    goto :goto_f
.end method

.method protected constructor <init>()V
    .registers 10

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v5, 0x8

    new-array v3, v5, [B

    .line 54
    .local v3, rnd:[B
    :try_start_7
    const-string v5, "SHA1PRNG"

    invoke-static {v5}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v4

    .line 55
    .local v4, sr:Ljava/security/SecureRandom;
    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_10} :catch_2b

    .line 63
    .end local v4           #sr:Ljava/security/SecureRandom;
    :goto_10
    const/4 v5, 0x0

    aget-byte v5, v3, v5

    int-to-long v5, v5

    iput-wide v5, p0, Lorg/snmp4j/security/Salt;->salt:J

    .line 65
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    const/4 v5, 0x7

    if-ge v0, v5, :cond_3c

    .line 66
    iget-wide v5, p0, Lorg/snmp4j/security/Salt;->salt:J

    const-wide/16 v7, 0x100

    mul-long/2addr v5, v7

    aget-byte v7, v3, v0

    int-to-long v7, v7

    add-long/2addr v5, v7

    const-wide/16 v7, 0x80

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/snmp4j/security/Salt;->salt:J

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 57
    .end local v0           #i:I
    :catch_2b
    move-exception v1

    .line 58
    .local v1, nsae:Ljava/security/NoSuchAlgorithmException;
    sget-object v5, Lorg/snmp4j/security/Salt;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v6, "Could not use SecureRandom. Using Random instead."

    invoke-interface {v5, v6}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 59
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 60
    .local v2, r:Ljava/util/Random;
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextBytes([B)V

    goto :goto_10

    .line 68
    .end local v1           #nsae:Ljava/security/NoSuchAlgorithmException;
    .end local v2           #r:Ljava/util/Random;
    .restart local v0       #i:I
    :cond_3c
    sget-object v5, Lorg/snmp4j/security/Salt;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v5}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_69

    .line 69
    sget-object v5, Lorg/snmp4j/security/Salt;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Initialized Salt to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-wide v7, p0, Lorg/snmp4j/security/Salt;->salt:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 71
    :cond_69
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

.method public static getInstance()Lorg/snmp4j/security/Salt;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lorg/snmp4j/security/Salt;->instance:Lorg/snmp4j/security/Salt;

    if-nez v0, :cond_b

    .line 80
    new-instance v0, Lorg/snmp4j/security/Salt;

    invoke-direct {v0}, Lorg/snmp4j/security/Salt;-><init>()V

    sput-object v0, Lorg/snmp4j/security/Salt;->instance:Lorg/snmp4j/security/Salt;

    .line 82
    :cond_b
    sget-object v0, Lorg/snmp4j/security/Salt;->instance:Lorg/snmp4j/security/Salt;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getNext()J
    .registers 5

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lorg/snmp4j/security/Salt;->salt:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/snmp4j/security/Salt;->salt:J
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-wide v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
