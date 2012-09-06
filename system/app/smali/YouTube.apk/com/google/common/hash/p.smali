.class final Lcom/google/common/hash/p;
.super Lcom/google/common/hash/c;
.source "SourceFile"


# instance fields
.field a:J

.field b:J

.field c:J

.field d:J

.field e:I


# direct methods
.method constructor <init>(I)V
    .registers 4
    .parameter

    .prologue
    .line 54
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/common/hash/c;-><init>(I)V

    .line 49
    const-wide v0, -0x783c846eeebdac2bL

    iput-wide v0, p0, Lcom/google/common/hash/p;->c:J

    .line 50
    const-wide v0, 0x4cf5ad432745937fL

    iput-wide v0, p0, Lcom/google/common/hash/p;->d:J

    .line 55
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/common/hash/p;->a:J

    .line 56
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/common/hash/p;->b:J

    .line 57
    return-void
.end method

.method private static b(J)J
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x21

    .line 155
    ushr-long v0, p0, v4

    xor-long/2addr v0, p0

    .line 156
    const-wide v2, -0xae502812aa7333L

    mul-long/2addr v0, v2

    .line 157
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    .line 158
    const-wide v2, -0x3b314601e57a13adL

    mul-long/2addr v0, v2

    .line 159
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    .line 160
    return-wide v0
.end method


# virtual methods
.method protected final a(Ljava/nio/ByteBuffer;)V
    .registers 11
    .parameter

    .prologue
    const-wide/16 v7, 0x5

    const/16 v6, 0x1f

    .line 60
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 61
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 62
    iget v4, p0, Lcom/google/common/hash/p;->e:I

    add-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/common/hash/p;->e:I

    .line 63
    iget-wide v4, p0, Lcom/google/common/hash/p;->c:J

    mul-long/2addr v0, v4

    invoke-static {v0, v1, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/common/hash/p;->d:J

    mul-long/2addr v0, v4

    iget-wide v4, p0, Lcom/google/common/hash/p;->a:J

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/common/hash/p;->a:J

    iget-wide v0, p0, Lcom/google/common/hash/p;->a:J

    const/16 v4, 0x1b

    invoke-static {v0, v1, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/hash/p;->a:J

    iget-wide v0, p0, Lcom/google/common/hash/p;->a:J

    iget-wide v4, p0, Lcom/google/common/hash/p;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/common/hash/p;->a:J

    iget-wide v0, p0, Lcom/google/common/hash/p;->a:J

    mul-long/2addr v0, v7

    const-wide/32 v4, 0x52dce729

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/common/hash/p;->a:J

    iget-wide v0, p0, Lcom/google/common/hash/p;->d:J

    mul-long/2addr v0, v2

    const/16 v2, 0x21

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/hash/p;->c:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/hash/p;->b:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/p;->b:J

    iget-wide v0, p0, Lcom/google/common/hash/p;->b:J

    invoke-static {v0, v1, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/hash/p;->b:J

    iget-wide v0, p0, Lcom/google/common/hash/p;->b:J

    iget-wide v2, p0, Lcom/google/common/hash/p;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/p;->b:J

    iget-wide v0, p0, Lcom/google/common/hash/p;->b:J

    mul-long/2addr v0, v7

    const-wide/32 v2, 0x38495ab5

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/p;->b:J

    .line 64
    return-void
.end method

.method public final b()Lcom/google/common/hash/g;
    .registers 5

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/google/common/hash/p;->a:J

    iget v2, p0, Lcom/google/common/hash/p;->e:I

    int-to-long v2, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/p;->a:J

    .line 137
    iget-wide v0, p0, Lcom/google/common/hash/p;->b:J

    iget v2, p0, Lcom/google/common/hash/p;->e:I

    int-to-long v2, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/p;->b:J

    .line 139
    iget-wide v0, p0, Lcom/google/common/hash/p;->a:J

    iget-wide v2, p0, Lcom/google/common/hash/p;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/p;->a:J

    .line 140
    iget-wide v0, p0, Lcom/google/common/hash/p;->b:J

    iget-wide v2, p0, Lcom/google/common/hash/p;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/p;->b:J

    .line 142
    iget-wide v0, p0, Lcom/google/common/hash/p;->a:J

    invoke-static {v0, v1}, Lcom/google/common/hash/p;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/hash/p;->a:J

    .line 143
    iget-wide v0, p0, Lcom/google/common/hash/p;->b:J

    invoke-static {v0, v1}, Lcom/google/common/hash/p;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/hash/p;->b:J

    .line 145
    iget-wide v0, p0, Lcom/google/common/hash/p;->a:J

    iget-wide v2, p0, Lcom/google/common/hash/p;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/p;->a:J

    .line 146
    iget-wide v0, p0, Lcom/google/common/hash/p;->b:J

    iget-wide v2, p0, Lcom/google/common/hash/p;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/p;->b:J

    .line 148
    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 149
    iget-wide v1, p0, Lcom/google/common/hash/p;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 150
    iget-wide v1, p0, Lcom/google/common/hash/p;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 151
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/hash/h;->a([B)Lcom/google/common/hash/g;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Ljava/nio/ByteBuffer;)V
    .registers 13
    .parameter

    .prologue
    const/16 v10, 0x18

    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    .line 89
    iget v0, p0, Lcom/google/common/hash/p;->e:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/p;->e:I

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    packed-switch v0, :pswitch_data_f8

    .line 133
    :goto_19
    return-void

    .line 92
    :pswitch_1a
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v4, 0x30

    shl-long/2addr v0, v4

    xor-long/2addr v0, v2

    .line 94
    :goto_27
    const/16 v4, 0xd

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    xor-long/2addr v0, v4

    .line 96
    :goto_34
    const/16 v4, 0xc

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    xor-long/2addr v0, v4

    .line 98
    :goto_41
    const/16 v4, 0xb

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    .line 100
    :goto_4c
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v9

    xor-long/2addr v0, v4

    .line 102
    :goto_57
    const/16 v4, 0x9

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v8

    xor-long/2addr v0, v4

    .line 104
    :goto_62
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v7

    xor-long/2addr v0, v4

    .line 105
    iget-wide v4, p0, Lcom/google/common/hash/p;->d:J

    mul-long/2addr v0, v4

    .line 106
    const/16 v4, 0x21

    invoke-static {v0, v1, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    .line 107
    iget-wide v4, p0, Lcom/google/common/hash/p;->c:J

    mul-long/2addr v0, v4

    .line 108
    iget-wide v4, p0, Lcom/google/common/hash/p;->b:J

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/common/hash/p;->b:J

    .line 111
    :pswitch_7c
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    xor-long/2addr v2, v0

    .line 113
    :pswitch_88
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v4, 0x30

    shl-long/2addr v0, v4

    xor-long/2addr v2, v0

    .line 115
    :pswitch_94
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v4, 0x28

    shl-long/2addr v0, v4

    xor-long/2addr v2, v0

    .line 117
    :pswitch_a0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    xor-long/2addr v2, v0

    .line 119
    :pswitch_ac
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    shl-long/2addr v0, v10

    xor-long/2addr v2, v0

    .line 121
    :pswitch_b6
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    shl-long/2addr v0, v9

    xor-long/2addr v2, v0

    .line 123
    :pswitch_c0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    shl-long/2addr v0, v8

    xor-long/2addr v2, v0

    .line 125
    :pswitch_ca
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    shl-long/2addr v0, v7

    xor-long/2addr v0, v2

    .line 126
    iget-wide v2, p0, Lcom/google/common/hash/p;->c:J

    mul-long/2addr v0, v2

    .line 127
    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    .line 128
    iget-wide v2, p0, Lcom/google/common/hash/p;->d:J

    mul-long/2addr v0, v2

    .line 129
    iget-wide v2, p0, Lcom/google/common/hash/p;->a:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/p;->a:J

    goto/16 :goto_19

    :pswitch_e6
    move-wide v0, v2

    goto/16 :goto_27

    :pswitch_e9
    move-wide v0, v2

    goto/16 :goto_34

    :pswitch_ec
    move-wide v0, v2

    goto/16 :goto_41

    :pswitch_ef
    move-wide v0, v2

    goto/16 :goto_4c

    :pswitch_f2
    move-wide v0, v2

    goto/16 :goto_57

    :pswitch_f5
    move-wide v0, v2

    goto/16 :goto_62

    .line 90
    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_ca
        :pswitch_c0
        :pswitch_b6
        :pswitch_ac
        :pswitch_a0
        :pswitch_94
        :pswitch_88
        :pswitch_7c
        :pswitch_f5
        :pswitch_f2
        :pswitch_ef
        :pswitch_ec
        :pswitch_e9
        :pswitch_e6
        :pswitch_1a
    .end packed-switch
.end method
