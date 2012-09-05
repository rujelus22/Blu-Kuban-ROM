.class final La/a/d;
.super La/a/b;


# static fields
.field static final synthetic g:Z

.field private static final h:[B

.field private static final i:[B


# instance fields
.field c:I

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field private final j:[B

.field private k:I

.field private final l:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x40

    const-class v0, La/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_b
    sput-boolean v0, La/a/d;->g:Z

    new-array v0, v1, [B

    fill-array-data v0, :array_1e

    sput-object v0, La/a/d;->h:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_42

    sput-object v0, La/a/d;->i:[B

    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_b

    :array_1e
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_42
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, La/a/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/d;->a:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/d;->d:Z

    iput-boolean v1, p0, La/a/d;->e:Z

    iput-boolean v1, p0, La/a/d;->f:Z

    sget-object v0, La/a/d;->h:[B

    iput-object v0, p0, La/a/d;->l:[B

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, La/a/d;->j:[B

    iput v1, p0, La/a/d;->c:I

    iget-boolean v0, p0, La/a/d;->e:Z

    if-eqz v0, :cond_22

    const/16 v0, 0x13

    :goto_1f
    iput v0, p0, La/a/d;->k:I

    return-void

    :cond_22
    const/4 v0, -0x1

    goto :goto_1f
.end method


# virtual methods
.method public final a([BI)Z
    .registers 16

    const/4 v6, 0x2

    const/16 v12, 0xd

    const/16 v11, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v7, p0, La/a/d;->l:[B

    iget-object v8, p0, La/a/d;->a:[B

    iget v2, p0, La/a/d;->k:I

    add-int/lit8 v9, p2, 0x0

    const/4 v0, -0x1

    iget v1, p0, La/a/d;->c:I

    packed-switch v1, :pswitch_data_1f6

    :cond_15
    move v5, v0

    move v1, v4

    :goto_17
    const/4 v0, -0x1

    if-eq v5, v0, :cond_1f1

    shr-int/lit8 v0, v5, 0x12

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v7, v0

    aput-byte v0, v8, v4

    shr-int/lit8 v0, v5, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v7, v0

    aput-byte v0, v8, v3

    shr-int/lit8 v0, v5, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v7, v0

    aput-byte v0, v8, v6

    const/4 v6, 0x3

    const/4 v0, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v7, v5

    aput-byte v5, v8, v6

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_1ed

    iget-boolean v2, p0, La/a/d;->f:Z

    if-eqz v2, :cond_46

    const/4 v2, 0x4

    const/4 v0, 0x5

    aput-byte v12, v8, v2

    :cond_46
    add-int/lit8 v5, v0, 0x1

    aput-byte v11, v8, v0

    const/16 v0, 0x13

    move v6, v0

    :goto_4d
    add-int/lit8 v0, v1, 0x3

    if-le v0, v9, :cond_ea

    iget v0, p0, La/a/d;->c:I

    sub-int v0, v1, v0

    add-int/lit8 v2, v9, -0x1

    if-ne v0, v2, :cond_146

    iget v0, p0, La/a/d;->c:I

    if-lez v0, :cond_13e

    iget-object v0, p0, La/a/d;->j:[B

    aget-byte v0, v0, v4

    move v2, v3

    :goto_62
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v4, v0, 0x4

    iget v0, p0, La/a/d;->c:I

    sub-int/2addr v0, v2

    iput v0, p0, La/a/d;->c:I

    add-int/lit8 v2, v5, 0x1

    shr-int/lit8 v0, v4, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v7, v0

    aput-byte v0, v8, v5

    add-int/lit8 v0, v2, 0x1

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v7, v4

    aput-byte v4, v8, v2

    iget-boolean v2, p0, La/a/d;->d:Z

    if-eqz v2, :cond_8d

    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x3d

    aput-byte v4, v8, v0

    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0x3d

    aput-byte v4, v8, v2

    :cond_8d
    iget-boolean v2, p0, La/a/d;->e:Z

    if-eqz v2, :cond_1e0

    iget-boolean v2, p0, La/a/d;->f:Z

    if-eqz v2, :cond_9a

    add-int/lit8 v2, v0, 0x1

    aput-byte v12, v8, v0

    move v0, v2

    :cond_9a
    add-int/lit8 v5, v0, 0x1

    aput-byte v11, v8, v0

    :cond_9e
    :goto_9e
    sget-boolean v0, La/a/d;->g:Z

    if-nez v0, :cond_1cd

    iget v0, p0, La/a/d;->c:I

    if-eqz v0, :cond_1cd

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_ac
    move v5, v0

    move v1, v4

    goto/16 :goto_17

    :pswitch_b0
    if-gt v6, v9, :cond_15

    iget-object v0, p0, La/a/d;->j:[B

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    aget-byte v1, p1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v4, p0, La/a/d;->c:I

    move v5, v0

    move v1, v6

    goto/16 :goto_17

    :pswitch_cc
    if-lez v9, :cond_15

    iget-object v0, p0, La/a/d;->j:[B

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, La/a/d;->j:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, p1, v4

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v4, p0, La/a/d;->c:I

    move v5, v0

    move v1, v3

    goto/16 :goto_17

    :cond_ea
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v7, v2

    aput-byte v2, v8, v5

    add-int/lit8 v2, v5, 0x1

    shr-int/lit8 v10, v0, 0xc

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v7, v10

    aput-byte v10, v8, v2

    add-int/lit8 v2, v5, 0x2

    shr-int/lit8 v10, v0, 0x6

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v7, v10

    aput-byte v10, v8, v2

    add-int/lit8 v2, v5, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v7, v0

    aput-byte v0, v8, v2

    add-int/lit8 v2, v1, 0x3

    add-int/lit8 v1, v5, 0x4

    add-int/lit8 v0, v6, -0x1

    if-nez v0, :cond_1e8

    iget-boolean v0, p0, La/a/d;->f:Z

    if-eqz v0, :cond_1e5

    add-int/lit8 v0, v1, 0x1

    aput-byte v12, v8, v1

    :goto_134
    add-int/lit8 v5, v0, 0x1

    aput-byte v11, v8, v0

    const/16 v0, 0x13

    move v1, v2

    move v6, v0

    goto/16 :goto_4d

    :cond_13e
    add-int/lit8 v2, v1, 0x1

    aget-byte v0, p1, v1

    move v1, v2

    move v2, v4

    goto/16 :goto_62

    :cond_146
    iget v0, p0, La/a/d;->c:I

    sub-int v0, v1, v0

    add-int/lit8 v2, v9, -0x2

    if-ne v0, v2, :cond_1b5

    iget v0, p0, La/a/d;->c:I

    if-le v0, v3, :cond_1a9

    iget-object v0, p0, La/a/d;->j:[B

    aget-byte v0, v0, v4

    move v4, v3

    :goto_157
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v10, v0, 0xa

    iget v0, p0, La/a/d;->c:I

    if-lez v0, :cond_1af

    iget-object v0, p0, La/a/d;->j:[B

    add-int/lit8 v2, v4, 0x1

    aget-byte v0, v0, v4

    move v4, v2

    :goto_166
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v10

    iget v2, p0, La/a/d;->c:I

    sub-int/2addr v2, v4

    iput v2, p0, La/a/d;->c:I

    add-int/lit8 v2, v5, 0x1

    shr-int/lit8 v4, v0, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v7, v4

    aput-byte v4, v8, v5

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v7, v5

    aput-byte v5, v8, v2

    add-int/lit8 v2, v4, 0x1

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v7, v0

    aput-byte v0, v8, v4

    iget-boolean v0, p0, La/a/d;->d:Z

    if-eqz v0, :cond_1e3

    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0x3d

    aput-byte v4, v8, v2

    :goto_196
    iget-boolean v2, p0, La/a/d;->e:Z

    if-eqz v2, :cond_1e0

    iget-boolean v2, p0, La/a/d;->f:Z

    if-eqz v2, :cond_1a3

    add-int/lit8 v2, v0, 0x1

    aput-byte v12, v8, v0

    move v0, v2

    :cond_1a3
    add-int/lit8 v5, v0, 0x1

    aput-byte v11, v8, v0

    goto/16 :goto_9e

    :cond_1a9
    add-int/lit8 v2, v1, 0x1

    aget-byte v0, p1, v1

    move v1, v2

    goto :goto_157

    :cond_1af
    add-int/lit8 v2, v1, 0x1

    aget-byte v0, p1, v1

    move v1, v2

    goto :goto_166

    :cond_1b5
    iget-boolean v0, p0, La/a/d;->e:Z

    if-eqz v0, :cond_9e

    if-lez v5, :cond_9e

    const/16 v0, 0x13

    if-eq v6, v0, :cond_9e

    iget-boolean v0, p0, La/a/d;->f:Z

    if-eqz v0, :cond_1de

    add-int/lit8 v0, v5, 0x1

    aput-byte v12, v8, v5

    :goto_1c7
    add-int/lit8 v5, v0, 0x1

    aput-byte v11, v8, v0

    goto/16 :goto_9e

    :cond_1cd
    sget-boolean v0, La/a/d;->g:Z

    if-nez v0, :cond_1d9

    if-eq v1, v9, :cond_1d9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1d9
    iput v5, p0, La/a/d;->b:I

    iput v6, p0, La/a/d;->k:I

    return v3

    :cond_1de
    move v0, v5

    goto :goto_1c7

    :cond_1e0
    move v5, v0

    goto/16 :goto_9e

    :cond_1e3
    move v0, v2

    goto :goto_196

    :cond_1e5
    move v0, v1

    goto/16 :goto_134

    :cond_1e8
    move v6, v0

    move v5, v1

    move v1, v2

    goto/16 :goto_4d

    :cond_1ed
    move v6, v2

    move v5, v0

    goto/16 :goto_4d

    :cond_1f1
    move v6, v2

    move v5, v4

    goto/16 :goto_4d

    nop

    :pswitch_data_1f6
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_b0
        :pswitch_cc
    .end packed-switch
.end method
