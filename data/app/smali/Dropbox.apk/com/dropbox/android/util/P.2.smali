.class public final Lcom/dropbox/android/util/P;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private final a:[B

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>([B)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dropbox/android/util/P;->a:[B

    .line 95
    iput v1, p0, Lcom/dropbox/android/util/P;->b:I

    .line 96
    iput v1, p0, Lcom/dropbox/android/util/P;->c:I

    .line 102
    invoke-direct {p0, p1}, Lcom/dropbox/android/util/P;->a([B)V

    .line 103
    return-void
.end method

.method private a([B)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 153
    array-length v0, p1

    const/4 v2, 0x1

    if-lt v0, v2, :cond_a

    array-length v0, p1

    const/16 v2, 0x100

    if-le v0, v2, :cond_12

    .line 154
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key should be between 1 and 256 bytes in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_12
    iput v1, p0, Lcom/dropbox/android/util/P;->b:I

    .line 158
    iput v1, p0, Lcom/dropbox/android/util/P;->c:I

    move v0, v1

    .line 160
    :goto_17
    iget-object v2, p0, Lcom/dropbox/android/util/P;->a:[B

    array-length v2, v2

    if-ge v0, v2, :cond_24

    .line 161
    iget-object v2, p0, Lcom/dropbox/android/util/P;->a:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_24
    move v0, v1

    .line 165
    :goto_25
    iget-object v2, p0, Lcom/dropbox/android/util/P;->a:[B

    array-length v2, v2

    if-ge v1, v2, :cond_4c

    .line 166
    array-length v2, p1

    rem-int v2, v1, v2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/dropbox/android/util/P;->a:[B

    aget-byte v3, v3, v1

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 168
    iget-object v2, p0, Lcom/dropbox/android/util/P;->a:[B

    aget-byte v2, v2, v1

    .line 169
    iget-object v3, p0, Lcom/dropbox/android/util/P;->a:[B

    iget-object v4, p0, Lcom/dropbox/android/util/P;->a:[B

    aget-byte v4, v4, v0

    aput-byte v4, v3, v1

    .line 170
    iget-object v3, p0, Lcom/dropbox/android/util/P;->a:[B

    aput-byte v2, v3, v0

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 172
    :cond_4c
    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 9
    .parameter

    .prologue
    .line 110
    const/4 v0, 0x0

    :goto_1
    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-gez v1, :cond_36

    .line 111
    iget v1, p0, Lcom/dropbox/android/util/P;->b:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/dropbox/android/util/P;->b:I

    .line 112
    iget-object v1, p0, Lcom/dropbox/android/util/P;->a:[B

    iget v2, p0, Lcom/dropbox/android/util/P;->b:I

    aget-byte v1, v1, v2

    iget v2, p0, Lcom/dropbox/android/util/P;->c:I

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/dropbox/android/util/P;->c:I

    .line 114
    iget-object v1, p0, Lcom/dropbox/android/util/P;->a:[B

    iget v2, p0, Lcom/dropbox/android/util/P;->b:I

    aget-byte v1, v1, v2

    .line 115
    iget-object v2, p0, Lcom/dropbox/android/util/P;->a:[B

    iget v3, p0, Lcom/dropbox/android/util/P;->b:I

    iget-object v4, p0, Lcom/dropbox/android/util/P;->a:[B

    iget v5, p0, Lcom/dropbox/android/util/P;->c:I

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    .line 116
    iget-object v2, p0, Lcom/dropbox/android/util/P;->a:[B

    iget v3, p0, Lcom/dropbox/android/util/P;->c:I

    aput-byte v1, v2, v3

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    :cond_36
    return-void
.end method

.method public final a([BI[BII)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    add-int v0, p2, p5

    array-length v1, p1

    if-le v0, v1, :cond_d

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_d
    add-int v0, p4, p5

    array-length v1, p3

    if-le v0, v1, :cond_1a

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-ge v0, p5, :cond_6a

    .line 137
    iget v1, p0, Lcom/dropbox/android/util/P;->b:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/dropbox/android/util/P;->b:I

    .line 138
    iget-object v1, p0, Lcom/dropbox/android/util/P;->a:[B

    iget v2, p0, Lcom/dropbox/android/util/P;->b:I

    aget-byte v1, v1, v2

    iget v2, p0, Lcom/dropbox/android/util/P;->c:I

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/dropbox/android/util/P;->c:I

    .line 140
    iget-object v1, p0, Lcom/dropbox/android/util/P;->a:[B

    iget v2, p0, Lcom/dropbox/android/util/P;->b:I

    aget-byte v1, v1, v2

    .line 141
    iget-object v2, p0, Lcom/dropbox/android/util/P;->a:[B

    iget v3, p0, Lcom/dropbox/android/util/P;->b:I

    iget-object v4, p0, Lcom/dropbox/android/util/P;->a:[B

    iget v5, p0, Lcom/dropbox/android/util/P;->c:I

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    .line 142
    iget-object v2, p0, Lcom/dropbox/android/util/P;->a:[B

    iget v3, p0, Lcom/dropbox/android/util/P;->c:I

    aput-byte v1, v2, v3

    .line 144
    add-int v1, v0, p4

    add-int v2, v0, p2

    aget-byte v2, p1, v2

    iget-object v3, p0, Lcom/dropbox/android/util/P;->a:[B

    iget-object v4, p0, Lcom/dropbox/android/util/P;->a:[B

    iget v5, p0, Lcom/dropbox/android/util/P;->b:I

    aget-byte v4, v4, v5

    iget-object v5, p0, Lcom/dropbox/android/util/P;->a:[B

    iget v6, p0, Lcom/dropbox/android/util/P;->c:I

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 146
    :cond_6a
    return-void
.end method
