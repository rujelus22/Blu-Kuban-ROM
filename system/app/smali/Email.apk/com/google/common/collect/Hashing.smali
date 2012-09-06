.class final Lcom/google/common/collect/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static chooseTableSize(I)I
    .registers 4
    .parameter "setSize"

    .prologue
    const/high16 v1, 0x4000

    .line 50
    const/high16 v0, 0x2000

    if-ge p0, v0, :cond_d

    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    .line 56
    :goto_c
    return v0

    .line 55
    :cond_d
    if-ge p0, v1, :cond_17

    const/4 v0, 0x1

    :goto_10
    const-string v2, "collection too large"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move v0, v1

    .line 56
    goto :goto_c

    .line 55
    :cond_17
    const/4 v0, 0x0

    goto :goto_10
.end method

.method static smear(I)I
    .registers 3
    .parameter "hashCode"

    .prologue
    .line 38
    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    .line 39
    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 v1, p0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method
