.class public Lcom/google/android/music/utils/BobJenkinsLookup3;
.super Ljava/lang/Object;
.source "BobJenkinsLookup3.java"


# instance fields
.field private a:J

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private finalMix()V
    .registers 9

    .prologue
    const/16 v7, 0xe

    const-wide v5, 0xffffffffL

    .line 52
    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    xor-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    invoke-static {v2, v3, v7}, Lcom/google/android/music/utils/BobJenkinsLookup3;->rot(JI)J

    move-result-wide v2

    sub-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    .line 53
    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    xor-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    const/16 v4, 0xb

    invoke-static {v2, v3, v4}, Lcom/google/android/music/utils/BobJenkinsLookup3;->rot(JI)J

    move-result-wide v2

    sub-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    .line 54
    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    xor-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    const/16 v4, 0x19

    invoke-static {v2, v3, v4}, Lcom/google/android/music/utils/BobJenkinsLookup3;->rot(JI)J

    move-result-wide v2

    sub-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    .line 55
    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    xor-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Lcom/google/android/music/utils/BobJenkinsLookup3;->rot(JI)J

    move-result-wide v2

    sub-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    .line 56
    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    xor-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Lcom/google/android/music/utils/BobJenkinsLookup3;->rot(JI)J

    move-result-wide v2

    sub-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    .line 57
    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    xor-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    invoke-static {v2, v3, v7}, Lcom/google/android/music/utils/BobJenkinsLookup3;->rot(JI)J

    move-result-wide v2

    sub-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    .line 58
    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    xor-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    const/16 v4, 0x18

    invoke-static {v2, v3, v4}, Lcom/google/android/music/utils/BobJenkinsLookup3;->rot(JI)J

    move-result-wide v2

    sub-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    .line 59
    return-void
.end method

.method private mix()V
    .registers 9

    .prologue
    const/4 v7, 0x4

    const-wide v5, 0xffffffffL

    .line 43
    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    sub-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    invoke-static {v2, v3, v7}, Lcom/google/android/music/utils/BobJenkinsLookup3;->rot(JI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    add-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    .line 44
    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    sub-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Lcom/google/android/music/utils/BobJenkinsLookup3;->rot(JI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    add-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    .line 45
    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    sub-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    const/16 v4, 0x8

    invoke-static {v2, v3, v4}, Lcom/google/android/music/utils/BobJenkinsLookup3;->rot(JI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    add-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    .line 46
    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    sub-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Lcom/google/android/music/utils/BobJenkinsLookup3;->rot(JI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    add-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    .line 47
    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    sub-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    const/16 v4, 0x13

    invoke-static {v2, v3, v4}, Lcom/google/android/music/utils/BobJenkinsLookup3;->rot(JI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    add-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    .line 48
    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    sub-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    invoke-static {v2, v3, v7}, Lcom/google/android/music/utils/BobJenkinsLookup3;->rot(JI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    iget-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    add-long/2addr v0, v2

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    .line 49
    return-void
.end method

.method private static rot(JI)J
    .registers 7
    .parameter "x"
    .parameter "k"

    .prologue
    .line 39
    shl-long v0, p0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    rsub-int/lit8 v2, p2, 0x20

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public hashbig([B)J
    .registers 4
    .parameter "key"

    .prologue
    .line 133
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/music/utils/BobJenkinsLookup3;->hashbig([BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashbig([BJ)J
    .registers 15
    .parameter "key"
    .parameter "initval"

    .prologue
    const-wide/16 v9, 0xff

    const/16 v8, 0x18

    const-wide v6, 0xffffffffL

    .line 70
    const-wide v2, 0xdeadbeefL

    array-length v4, p1

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-long/2addr v2, p2

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    .line 72
    array-length v1, p1

    .line 73
    .local v1, length:I
    const/4 v0, 0x0

    .line 79
    .local v0, k:I
    :goto_1b
    const/16 v2, 0xc

    if-le v1, v2, :cond_ce

    .line 80
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    aget-byte v4, p1, v0

    int-to-long v4, v4

    and-long/2addr v4, v9

    shl-long/2addr v4, v8

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    .line 81
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    int-to-long v4, v4

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    .line 82
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    .line 83
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    .line 84
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v9

    shl-long/2addr v4, v8

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    .line 85
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    int-to-long v4, v4

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    .line 86
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    .line 87
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    add-int/lit8 v4, v0, 0x7

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    .line 88
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    add-int/lit8 v4, v0, 0x8

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v9

    shl-long/2addr v4, v8

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    .line 89
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    add-int/lit8 v4, v0, 0x9

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    int-to-long v4, v4

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    .line 90
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    add-int/lit8 v4, v0, 0xa

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    .line 91
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    add-int/lit8 v4, v0, 0xb

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    .line 92
    invoke-direct {p0}, Lcom/google/android/music/utils/BobJenkinsLookup3;->mix()V

    .line 93
    add-int/lit8 v0, v0, 0xc

    .line 79
    add-int/lit8 v1, v1, -0xc

    goto/16 :goto_1b

    .line 97
    :cond_ce
    packed-switch v1, :pswitch_data_184

    .line 127
    :goto_d1
    invoke-direct {p0}, Lcom/google/android/music/utils/BobJenkinsLookup3;->finalMix()V

    .line 129
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    :goto_d6
    return-wide v2

    .line 99
    :pswitch_d7
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    add-int/lit8 v4, v0, 0xb

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    .line 101
    :pswitch_e4
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    add-int/lit8 v4, v0, 0xa

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    .line 103
    :pswitch_f3
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    add-int/lit8 v4, v0, 0x9

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    int-to-long v4, v4

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    .line 105
    :pswitch_102
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    add-int/lit8 v4, v0, 0x8

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v9

    shl-long/2addr v4, v8

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    .line 107
    :pswitch_10f
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    add-int/lit8 v4, v0, 0x7

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    .line 109
    :pswitch_11c
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    .line 111
    :pswitch_12b
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    int-to-long v4, v4

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    .line 113
    :pswitch_13a
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v9

    shl-long/2addr v4, v8

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->b:J

    .line 115
    :pswitch_147
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    .line 117
    :pswitch_154
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    .line 119
    :pswitch_163
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    int-to-long v4, v4

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    .line 121
    :pswitch_172
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    aget-byte v4, p1, v0

    int-to-long v4, v4

    and-long/2addr v4, v9

    shl-long/2addr v4, v8

    add-long/2addr v2, v4

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->a:J

    goto/16 :goto_d1

    .line 124
    :pswitch_17f
    iget-wide v2, p0, Lcom/google/android/music/utils/BobJenkinsLookup3;->c:J

    goto/16 :goto_d6

    .line 97
    nop

    :pswitch_data_184
    .packed-switch 0x0
        :pswitch_17f
        :pswitch_172
        :pswitch_163
        :pswitch_154
        :pswitch_147
        :pswitch_13a
        :pswitch_12b
        :pswitch_11c
        :pswitch_10f
        :pswitch_102
        :pswitch_f3
        :pswitch_e4
        :pswitch_d7
    .end packed-switch
.end method
