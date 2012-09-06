.class public final Lcom/google/common/base/ByteArrays;
.super Ljava/lang/Object;
.source "ByteArrays.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/common/base/ByteArrays;->hexDigits:[C

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 9
    .parameter "bytes"

    .prologue
    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 40
    .local v4, sb:Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_b
    if-ge v2, v3, :cond_27

    aget-byte v1, v0, v2

    .line 41
    .local v1, b:B
    sget-object v5, Lcom/google/common/base/ByteArrays;->hexDigits:[C

    shr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/google/common/base/ByteArrays;->hexDigits:[C

    and-int/lit8 v7, v1, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 43
    .end local v1           #b:B
    :cond_27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
