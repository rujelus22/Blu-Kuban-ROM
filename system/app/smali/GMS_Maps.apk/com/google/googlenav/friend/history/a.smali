.class public Lcom/google/googlenav/friend/history/a;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>(JJLcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 53
    iput-wide p1, p0, Lcom/google/googlenav/friend/history/a;->b:J

    .line 54
    iput-wide p3, p0, Lcom/google/googlenav/friend/history/a;->c:J

    .line 55
    iput-object p5, p0, Lcom/google/googlenav/friend/history/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 56
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 63
    const/16 v0, 0x88

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 76
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/bJ;->aB:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 77
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lbq/aL;->p:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 78
    iget-wide v2, p0, Lcom/google/googlenav/friend/history/a;->b:J

    invoke-virtual {v1, v5, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 79
    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/google/googlenav/friend/history/a;->c:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 80
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/googlenav/friend/history/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 81
    invoke-virtual {v0, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 82
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 83
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 90
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/bJ;->aC:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 92
    invoke-static {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    .line 95
    if-eqz v1, :cond_1e

    .line 96
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 98
    invoke-static {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    .line 100
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Las/f;->a(I)V

    .line 102
    :cond_1e
    return v2
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method
