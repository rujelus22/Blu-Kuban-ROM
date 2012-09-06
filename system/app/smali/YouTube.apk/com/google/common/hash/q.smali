.class final Lcom/google/common/hash/q;
.super Lcom/google/common/hash/c;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/hash/c;-><init>(I)V

    .line 46
    const v0, -0x3361d2af

    iput v0, p0, Lcom/google/common/hash/q;->b:I

    .line 47
    const v0, 0x1b873593

    iput v0, p0, Lcom/google/common/hash/q;->c:I

    .line 52
    iput p1, p0, Lcom/google/common/hash/q;->a:I

    .line 53
    return-void
.end method


# virtual methods
.method protected final a(Ljava/nio/ByteBuffer;)V
    .registers 4
    .parameter

    .prologue
    .line 56
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 57
    iget v1, p0, Lcom/google/common/hash/q;->d:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/common/hash/q;->d:I

    .line 59
    iget v1, p0, Lcom/google/common/hash/q;->b:I

    mul-int/2addr v0, v1

    .line 60
    const/16 v1, 0xf

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    .line 61
    iget v1, p0, Lcom/google/common/hash/q;->c:I

    mul-int/2addr v0, v1

    .line 63
    iget v1, p0, Lcom/google/common/hash/q;->a:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/q;->a:I

    .line 64
    iget v0, p0, Lcom/google/common/hash/q;->a:I

    const/16 v1, 0xd

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/hash/q;->a:I

    .line 65
    iget v0, p0, Lcom/google/common/hash/q;->a:I

    mul-int/lit8 v0, v0, 0x5

    const v1, -0x19ab949c

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/q;->a:I

    .line 66
    return-void
.end method

.method public final b()Lcom/google/common/hash/g;
    .registers 3

    .prologue
    .line 90
    iget v0, p0, Lcom/google/common/hash/q;->a:I

    iget v1, p0, Lcom/google/common/hash/q;->d:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/q;->a:I

    .line 92
    iget v0, p0, Lcom/google/common/hash/q;->a:I

    iget v1, p0, Lcom/google/common/hash/q;->a:I

    ushr-int/lit8 v1, v1, 0x10

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/q;->a:I

    .line 93
    iget v0, p0, Lcom/google/common/hash/q;->a:I

    const v1, -0x7a143595

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/q;->a:I

    .line 94
    iget v0, p0, Lcom/google/common/hash/q;->a:I

    iget v1, p0, Lcom/google/common/hash/q;->a:I

    ushr-int/lit8 v1, v1, 0xd

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/q;->a:I

    .line 95
    iget v0, p0, Lcom/google/common/hash/q;->a:I

    const v1, -0x3d4d51cb

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/q;->a:I

    .line 96
    iget v0, p0, Lcom/google/common/hash/q;->a:I

    iget v1, p0, Lcom/google/common/hash/q;->a:I

    ushr-int/lit8 v1, v1, 0x10

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/q;->a:I

    .line 98
    iget v0, p0, Lcom/google/common/hash/q;->a:I

    new-instance v1, Lcom/google/common/hash/j;

    invoke-direct {v1, v0}, Lcom/google/common/hash/j;-><init>(I)V

    return-object v1
.end method

.method protected final b(Ljava/nio/ByteBuffer;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 69
    iget v0, p0, Lcom/google/common/hash/q;->d:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/common/hash/q;->d:I

    .line 71
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    packed-switch v0, :pswitch_data_44

    .line 82
    :goto_11
    iget v0, p0, Lcom/google/common/hash/q;->b:I

    mul-int/2addr v0, v1

    .line 83
    const/16 v1, 0xf

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    .line 84
    iget v1, p0, Lcom/google/common/hash/q;->c:I

    mul-int/2addr v0, v1

    .line 85
    iget v1, p0, Lcom/google/common/hash/q;->a:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/q;->a:I

    .line 87
    return-void

    .line 73
    :pswitch_23
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    xor-int/lit8 v0, v0, 0x0

    .line 76
    :goto_2e
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    xor-int/2addr v0, v2

    .line 79
    :goto_38
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    xor-int/2addr v1, v0

    goto :goto_11

    :pswitch_40
    move v0, v1

    goto :goto_2e

    :pswitch_42
    move v0, v1

    goto :goto_38

    .line 71
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_42
        :pswitch_40
        :pswitch_23
    .end packed-switch
.end method
