.class public Lcom/google/googlenav/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 25
    .parameter

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v4

    .line 86
    if-eqz v4, :cond_88

    .line 87
    array-length v2, v4

    div-int/lit8 v5, v2, 0x8

    .line 88
    if-lez v5, :cond_88

    .line 89
    new-array v2, v5, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/googlenav/k;->a:[J

    .line 90
    const/4 v3, 0x0

    .line 91
    const/4 v2, 0x0

    :goto_19
    if-ge v2, v5, :cond_88

    .line 93
    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v7, v3

    .line 94
    add-int/lit8 v3, v6, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v9, v6

    .line 95
    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v11, v3

    .line 96
    add-int/lit8 v3, v6, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v13, v6

    .line 97
    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v15, v3

    .line 98
    add-int/lit8 v3, v6, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v0, v6

    move-wide/from16 v17, v0

    .line 99
    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v0, v3

    move-wide/from16 v19, v0

    .line 100
    add-int/lit8 v3, v6, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v0, v6

    move-wide/from16 v21, v0

    .line 101
    const/16 v6, 0x38

    shl-long v21, v21, v6

    const/16 v6, 0x30

    shl-long v19, v19, v6

    or-long v19, v19, v21

    const/16 v6, 0x28

    shl-long v17, v17, v6

    or-long v17, v17, v19

    const/16 v6, 0x20

    shl-long/2addr v15, v6

    or-long v15, v15, v17

    const/16 v6, 0x18

    shl-long/2addr v13, v6

    or-long/2addr v13, v15

    const/16 v6, 0x10

    shl-long/2addr v11, v6

    or-long/2addr v11, v13

    const/16 v6, 0x8

    shl-long/2addr v9, v6

    or-long/2addr v9, v11

    or-long v6, v9, v7

    .line 104
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/googlenav/k;->a:[J

    const-wide/high16 v9, -0x8000

    add-long/2addr v6, v9

    aput-wide v6, v8, v2

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 108
    :cond_88
    return-void
.end method

.method private a(JI[B)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    .line 111
    .line 112
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v4, :cond_13

    .line 113
    add-int/lit8 v1, p3, 0x1

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p4, p3

    .line 114
    shr-long/2addr p1, v4

    .line 112
    add-int/lit8 v0, v0, 0x1

    move p3, v1

    goto :goto_3

    .line 116
    :cond_13
    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 123
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/aS;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 124
    iget-object v1, p0, Lcom/google/googlenav/k;->a:[J

    if-eqz v1, :cond_2d

    .line 125
    iget-object v1, p0, Lcom/google/googlenav/k;->a:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    new-array v3, v1, [B

    move v1, v0

    .line 127
    :goto_14
    iget-object v4, p0, Lcom/google/googlenav/k;->a:[J

    array-length v4, v4

    if-ge v0, v4, :cond_29

    .line 128
    iget-object v4, p0, Lcom/google/googlenav/k;->a:[J

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Lat/O;->b(J)J

    move-result-wide v4

    .line 129
    invoke-direct {p0, v4, v5, v1, v3}, Lcom/google/googlenav/k;->a(JI[B)V

    .line 130
    add-int/lit8 v1, v1, 0x8

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 132
    :cond_29
    const/4 v0, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBytes(I[B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 134
    :cond_2d
    return-object v2
.end method

.method public b()[J
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/googlenav/k;->a:[J

    return-object v0
.end method
