.class public abstract Lcom/google/common/hash/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 119
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/g;->a:[C

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()J
.end method

.method public abstract c()[B
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 78
    instance-of v0, p1, Lcom/google/common/hash/g;

    if-eqz v0, :cond_13

    .line 79
    check-cast p1, Lcom/google/common/hash/g;

    .line 82
    invoke-virtual {p0}, Lcom/google/common/hash/g;->c()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/hash/g;->c()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    .line 84
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/common/hash/g;->a()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/common/hash/g;->c()[B

    move-result-object v1

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 113
    array-length v3, v1

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v3, :cond_2a

    aget-byte v4, v1, v0

    .line 114
    sget-object v5, Lcom/google/common/hash/g;->a:[C

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/google/common/hash/g;->a:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 116
    :cond_2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
