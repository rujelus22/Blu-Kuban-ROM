.class public Lcom/google/googlenav/C;
.super Lac/a;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Ljava/util/List;

.field private final c:J

.field private final d:Ljava/util/List;

.field private final e:Lcom/google/googlenav/D;

.field private f:I


# direct methods
.method public constructor <init>(JLjava/util/List;Lcom/google/googlenav/D;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/C;->b:Ljava/util/List;

    .line 51
    iput-wide p1, p0, Lcom/google/googlenav/C;->c:J

    .line 52
    iput-object p3, p0, Lcom/google/googlenav/C;->d:Ljava/util/List;

    .line 53
    iput-object p4, p0, Lcom/google/googlenav/C;->e:Lcom/google/googlenav/D;

    .line 54
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 58
    const/16 v0, 0x78

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 8
    .parameter

    .prologue
    .line 63
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/iC;->g:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 64
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/googlenav/C;->c:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 65
    iget-object v0, p0, Lcom/google/googlenav/C;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 66
    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addLong(IJ)V

    goto :goto_13

    .line 68
    :cond_28
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 69
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 73
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/iC;->h:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v2, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 75
    invoke-virtual {v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-nez v3, :cond_14

    .line 76
    iput-boolean v0, p0, Lcom/google/googlenav/C;->a:Z

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/C;->f:I

    .line 83
    :goto_13
    return v1

    .line 79
    :cond_14
    invoke-virtual {v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/google/googlenav/C;->f:I

    .line 80
    iget v2, p0, Lcom/google/googlenav/C;->f:I

    if-nez v2, :cond_1f

    move v0, v1

    :cond_1f
    iput-boolean v0, p0, Lcom/google/googlenav/C;->a:Z

    goto :goto_13
.end method

.method public j_()Z
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public l_()V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/googlenav/C;->e:Lcom/google/googlenav/D;

    if-eqz v0, :cond_b

    .line 90
    iget-object v0, p0, Lcom/google/googlenav/C;->e:Lcom/google/googlenav/D;

    iget-boolean v1, p0, Lcom/google/googlenav/C;->a:Z

    invoke-interface {v0, v1}, Lcom/google/googlenav/D;->a(Z)V

    .line 92
    :cond_b
    return-void
.end method

.method public m_()V
    .registers 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/googlenav/C;->e:Lcom/google/googlenav/D;

    if-eqz v0, :cond_a

    .line 97
    iget-object v0, p0, Lcom/google/googlenav/C;->e:Lcom/google/googlenav/D;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/D;->a(Z)V

    .line 99
    :cond_a
    return-void
.end method
