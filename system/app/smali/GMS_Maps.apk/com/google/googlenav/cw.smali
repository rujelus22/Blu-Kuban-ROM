.class public Lcom/google/googlenav/cw;
.super Lac/a;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Ljava/util/List;

.field private final c:I

.field private final d:J

.field private final e:Lcom/google/googlenav/cx;

.field private f:I


# direct methods
.method public constructor <init>(IJLcom/google/googlenav/cx;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/cw;->b:Ljava/util/List;

    .line 50
    iput p1, p0, Lcom/google/googlenav/cw;->c:I

    .line 51
    iput-wide p2, p0, Lcom/google/googlenav/cw;->d:J

    .line 52
    iput-object p4, p0, Lcom/google/googlenav/cw;->e:Lcom/google/googlenav/cx;

    .line 53
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 57
    const/16 v0, 0x73

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6
    .parameter

    .prologue
    .line 62
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/iC;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 63
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/googlenav/cw;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 64
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/googlenav/cw;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 65
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 66
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 70
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/iC;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 72
    invoke-virtual {v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 73
    iput-boolean v2, p0, Lcom/google/googlenav/cw;->a:Z

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/cw;->f:I

    .line 86
    :cond_14
    return v1

    .line 76
    :cond_15
    invoke-virtual {v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/cw;->f:I

    .line 77
    iget v0, p0, Lcom/google/googlenav/cw;->f:I

    if-nez v0, :cond_3e

    move v0, v1

    :goto_20
    iput-boolean v0, p0, Lcom/google/googlenav/cw;->a:Z

    .line 78
    iget-boolean v0, p0, Lcom/google/googlenav/cw;->a:Z

    if-eqz v0, :cond_14

    invoke-virtual {v3, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 79
    :goto_2c
    invoke-virtual {v3, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-ge v2, v0, :cond_14

    .line 81
    iget-object v0, p0, Lcom/google/googlenav/cw;->b:Ljava/util/List;

    invoke-virtual {v3, v5, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_3e
    move v0, v2

    .line 77
    goto :goto_20
.end method

.method public j_()Z
    .registers 2

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public l_()V
    .registers 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/googlenav/cw;->e:Lcom/google/googlenav/cx;

    if-eqz v0, :cond_d

    .line 93
    iget-object v0, p0, Lcom/google/googlenav/cw;->e:Lcom/google/googlenav/cx;

    iget-boolean v1, p0, Lcom/google/googlenav/cw;->a:Z

    iget-object v2, p0, Lcom/google/googlenav/cw;->b:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/cx;->a(ZLjava/util/List;)V

    .line 95
    :cond_d
    return-void
.end method

.method public m_()V
    .registers 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/googlenav/cw;->e:Lcom/google/googlenav/cx;

    if-eqz v0, :cond_f

    .line 100
    iget-object v0, p0, Lcom/google/googlenav/cw;->e:Lcom/google/googlenav/cx;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/cx;->a(ZLjava/util/List;)V

    .line 102
    :cond_f
    return-void
.end method
