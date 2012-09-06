.class public final Lcom/google/common/base/Randoms;
.super Ljava/lang/Object;
.source "Randoms.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Randoms$1;,
        Lcom/google/common/base/Randoms$ReadOnlyRandom;
    }
.end annotation


# static fields
.field private static final RANDOM:Ljava/util/Random;

.field private static final SECURE_RANDOM:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37
    new-instance v0, Lcom/google/common/base/Randoms$ReadOnlyRandom;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/Randoms$ReadOnlyRandom;-><init>(Lcom/google/common/base/Randoms$1;)V

    sput-object v0, Lcom/google/common/base/Randoms;->RANDOM:Ljava/util/Random;

    .line 38
    invoke-static {}, Lcom/google/common/base/Randoms;->newDefaultSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/Randoms;->SECURE_RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static insecureRandom()Ljava/util/Random;
    .registers 1

    .prologue
    .line 87
    sget-object v0, Lcom/google/common/base/Randoms;->RANDOM:Ljava/util/Random;

    return-object v0
.end method

.method public static insecureRandom(J)Ljava/util/Random;
    .registers 3
    .parameter "seed"

    .prologue
    .line 105
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p0, p1}, Ljava/util/Random;-><init>(J)V

    return-object v0
.end method

.method private static newDefaultSecureRandom()Ljava/security/SecureRandom;
    .registers 1

    .prologue
    .line 132
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 133
    .local v0, retval:Ljava/security/SecureRandom;
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    .line 134
    return-object v0
.end method

.method public static secureRandom()Ljava/security/SecureRandom;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/common/base/Randoms;->SECURE_RANDOM:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public static secureRandom([B)Ljava/security/SecureRandom;
    .registers 2
    .parameter "seed"

    .prologue
    .line 69
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0, p0}, Ljava/security/SecureRandom;-><init>([B)V

    .line 70
    .local v0, retval:Ljava/security/SecureRandom;
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    .line 71
    return-object v0
.end method
