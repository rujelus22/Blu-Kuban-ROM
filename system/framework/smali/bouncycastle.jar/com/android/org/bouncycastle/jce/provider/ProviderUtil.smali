.class public Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;
.super Ljava/lang/Object;
.source "ProviderUtil.java"


# static fields
.field private static BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

.field private static BC_EC_PERMISSION:Ljava/security/Permission;

.field private static final MAX_MEMORY:J

.field private static volatile ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

.field private static threadSpec:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 15
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    sput-wide v0, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->MAX_MEMORY:J

    .line 17
    new-instance v0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;

    const-string v1, "BC"

    const-string v2, "threadLocalEcImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    .line 19
    new-instance v0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;

    const-string v1, "BC"

    const-string v2, "ecImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->BC_EC_PERMISSION:Ljava/security/Permission;

    .line 22
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->threadSpec:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .registers 2

    .prologue
    .line 76
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->threadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 78
    .local v0, spec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    if-eqz v0, :cond_b

    .line 83
    .end local v0           #spec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :goto_a
    return-object v0

    .restart local v0       #spec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_b
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    goto :goto_a
.end method

.method static getReadLimit(Ljava/io/InputStream;)I
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_9

    .line 91
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 99
    :goto_8
    return v0

    .line 94
    :cond_9
    sget-wide v0, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->MAX_MEMORY:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    .line 96
    const v0, 0x7fffffff

    goto :goto_8

    .line 99
    :cond_16
    sget-wide v0, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->MAX_MEMORY:J

    long-to-int v0, v0

    goto :goto_8
.end method

.method static setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .parameter "parameterName"
    .parameter "parameter"

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 29
    .local v1, securityManager:Ljava/lang/SecurityManager;
    const-string v2, "threadLocalEcImplicitlyCa"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 33
    if-eqz v1, :cond_14

    .line 35
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 38
    :cond_14
    instance-of v2, p1, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    if-nez v2, :cond_1a

    if-nez p1, :cond_25

    :cond_1a
    move-object v0, p1

    .line 40
    check-cast v0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 47
    .end local p1
    .local v0, curveSpec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :goto_1d
    if-nez v0, :cond_2c

    .line 49
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->threadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 72
    .end local v0           #curveSpec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_24
    :goto_24
    return-void

    .line 44
    .restart local p1
    :cond_25
    check-cast p1, Ljava/security/spec/ECParameterSpec;

    .end local p1
    invoke-static {p1, v3}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    .restart local v0       #curveSpec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    goto :goto_1d

    .line 53
    :cond_2c
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->threadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_24

    .line 56
    .end local v0           #curveSpec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .restart local p1
    :cond_32
    const-string v2, "ecImplicitlyCa"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 58
    if-eqz v1, :cond_41

    .line 60
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->BC_EC_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 63
    :cond_41
    instance-of v2, p1, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    if-nez v2, :cond_47

    if-nez p1, :cond_4c

    .line 65
    :cond_47
    check-cast p1, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .end local p1
    sput-object p1, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    goto :goto_24

    .line 69
    .restart local p1
    :cond_4c
    check-cast p1, Ljava/security/spec/ECParameterSpec;

    .end local p1
    invoke-static {p1, v3}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    sput-object v2, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    goto :goto_24
.end method
