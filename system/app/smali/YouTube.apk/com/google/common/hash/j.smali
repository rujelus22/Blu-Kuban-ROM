.class final Lcom/google/common/hash/j;
.super Lcom/google/common/hash/g;
.source "SourceFile"


# instance fields
.field final a:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/common/hash/g;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/common/hash/j;->a:I

    .line 38
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lcom/google/common/hash/j;->a:I

    return v0
.end method

.method public final b()J
    .registers 3

    .prologue
    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this HashCode only has 32 bits; cannot create a long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()[B
    .registers 4

    .prologue
    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/common/hash/j;->a:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/hash/j;->a:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/hash/j;->a:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/hash/j;->a:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method
