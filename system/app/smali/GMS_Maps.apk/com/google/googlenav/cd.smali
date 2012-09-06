.class public Lcom/google/googlenav/cd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final b:I

.field private final c:Z

.field private final d:I

.field private final e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x3

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    iput-object p1, p0, Lcom/google/googlenav/cd;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 703
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/cd;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 704
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/cd;->d:I

    .line 707
    invoke-static {p1, v2}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/cd;->b:I

    .line 709
    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/cd;->c:Z

    .line 710
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/cd;)Z
    .registers 2
    .parameter

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/google/googlenav/cd;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/cd;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2
    .parameter

    .prologue
    .line 692
    iget-object v0, p0, Lcom/google/googlenav/cd;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 725
    invoke-virtual {p0}, Lcom/google/googlenav/cd;->c()J

    move-result-wide v3

    .line 726
    const-wide/16 v5, 0x1518

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1e

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1e

    move v0, v1

    .line 728
    :goto_13
    iget-boolean v3, p0, Lcom/google/googlenav/cd;->c:Z

    if-eqz v3, :cond_1d

    .line 729
    iget v3, p0, Lcom/google/googlenav/cd;->d:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_20

    :goto_1c
    and-int/2addr v0, v1

    .line 732
    :cond_1d
    return v0

    :cond_1e
    move v0, v2

    .line 726
    goto :goto_13

    :cond_20
    move v1, v2

    .line 729
    goto :goto_1c
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 736
    iget-boolean v0, p0, Lcom/google/googlenav/cd;->c:Z

    return v0
.end method

.method public c()J
    .registers 7

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/google/googlenav/cd;->f()J

    move-result-wide v0

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 756
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/o;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 758
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/cd;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 760
    iget-object v1, p0, Lcom/google/googlenav/cd;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 762
    return-object v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 775
    iget v0, p0, Lcom/google/googlenav/cd;->d:I

    return v0
.end method

.method public f()J
    .registers 5

    .prologue
    .line 782
    iget-object v0, p0, Lcom/google/googlenav/cd;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    iget v2, p0, Lcom/google/googlenav/cd;->b:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
