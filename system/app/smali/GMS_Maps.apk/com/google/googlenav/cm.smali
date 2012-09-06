.class public final Lcom/google/googlenav/cm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final c:J

.field private final d:J

.field private final e:Lcom/google/googlenav/ab;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ce;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/16 v1, 0x8

    const-wide/16 v2, 0x0

    .line 1469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1470
    iput-object p1, p0, Lcom/google/googlenav/cm;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1471
    if-eqz p1, :cond_46

    .line 1472
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/cm;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1473
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    :goto_21
    iput-wide v0, p0, Lcom/google/googlenav/cm;->c:J

    .line 1475
    invoke-virtual {p1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v2

    :cond_2d
    iput-wide v2, p0, Lcom/google/googlenav/cm;->d:J

    .line 1483
    :goto_2f
    if-eqz p1, :cond_4d

    invoke-virtual {p1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    if-eqz p2, :cond_4d

    .line 1485
    invoke-virtual {p1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 1486
    invoke-interface {p2, v0}, Lcom/google/googlenav/ce;->b(I)Lcom/google/googlenav/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/cm;->e:Lcom/google/googlenav/ab;

    .line 1490
    :goto_43
    return-void

    :cond_44
    move-wide v0, v2

    .line 1473
    goto :goto_21

    .line 1478
    :cond_46
    iput-object v6, p0, Lcom/google/googlenav/cm;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1479
    iput-wide v2, p0, Lcom/google/googlenav/cm;->c:J

    .line 1480
    iput-wide v2, p0, Lcom/google/googlenav/cm;->d:J

    goto :goto_2f

    .line 1488
    :cond_4d
    iput-object v6, p0, Lcom/google/googlenav/cm;->e:Lcom/google/googlenav/ab;

    goto :goto_43
.end method

.method private a(I)I
    .registers 9
    .parameter

    .prologue
    .line 1534
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 1535
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 1536
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 1537
    int-to-double v3, v0

    const-wide v5, 0x3fcb367a0f9096bcL

    mul-double/2addr v3, v5

    int-to-double v0, v1

    const-wide v5, 0x3fe6e2eb1c432ca5L

    mul-double/2addr v0, v5

    add-double/2addr v0, v3

    int-to-double v2, v2

    const-wide v4, 0x3fb27bb2fec56d5dL

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 1538
    const-wide v2, 0x4066500000000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2e

    const/4 v0, -0x1

    :goto_2d
    return v0

    :cond_2e
    const/high16 v0, -0x100

    goto :goto_2d
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/google/googlenav/cm;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    .line 1495
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/google/googlenav/cm;->b()Ljava/lang/String;

    move-result-object v0

    :cond_11
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/google/googlenav/cm;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .registers 3

    .prologue
    .line 1503
    iget-wide v0, p0, Lcom/google/googlenav/cm;->c:J

    return-wide v0
.end method

.method public d()J
    .registers 3

    .prologue
    .line 1507
    iget-wide v0, p0, Lcom/google/googlenav/cm;->d:J

    return-wide v0
.end method

.method public e()I
    .registers 4

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/google/googlenav/cm;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/cm;->f()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/googlenav/cm;->a(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    const/high16 v1, -0x100

    or-int/2addr v0, v1

    return v0
.end method

.method public f()I
    .registers 4

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/google/googlenav/cm;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    const/high16 v1, -0x100

    or-int/2addr v0, v1

    return v0
.end method

.method public g()Z
    .registers 3

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/google/googlenav/cm;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/google/googlenav/cm;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/google/googlenav/cm;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/google/googlenav/cm;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
