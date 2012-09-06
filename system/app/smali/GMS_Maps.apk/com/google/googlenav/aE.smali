.class public Lcom/google/googlenav/ae;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ai;

.field private final b:Lcom/google/googlenav/af;

.field private c:Z

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ai;Lcom/google/googlenav/af;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/googlenav/ae;->a:Lcom/google/googlenav/ai;

    .line 60
    iput-object p2, p0, Lcom/google/googlenav/ae;->b:Lcom/google/googlenav/af;

    .line 61
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 65
    const/16 v0, 0x75

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 70
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/iC;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 71
    iget-object v0, p0, Lcom/google/googlenav/ae;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v2

    invoke-virtual {v1, v5, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 72
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/googlenav/ae;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 73
    iget-object v0, p0, Lcom/google/googlenav/ae;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 74
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/googlenav/ae;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v2

    invoke-virtual {v2}, Lat/B;->g()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 78
    :cond_31
    iget-object v0, p0, Lcom/google/googlenav/ae;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->aq()Lcom/google/googlenav/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ax;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3f
    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ay;

    .line 81
    invoke-virtual {v0}, Lcom/google/googlenav/ay;->d()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 82
    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/google/googlenav/ay;->e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 83
    invoke-virtual {v0, v5}, Lcom/google/googlenav/ay;->a(Z)V

    goto :goto_3f

    .line 86
    :cond_5d
    const/4 v0, 0x5

    invoke-virtual {v1, v0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 87
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 88
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 92
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/iC;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-nez v3, :cond_14

    .line 95
    iput-boolean v2, p0, Lcom/google/googlenav/ae;->c:Z

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ae;->e:I

    .line 102
    :goto_13
    return v1

    .line 98
    :cond_14
    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ae;->e:I

    .line 99
    iget v0, p0, Lcom/google/googlenav/ae;->e:I

    if-nez v0, :cond_2a

    move v0, v1

    :goto_1f
    iput-boolean v0, p0, Lcom/google/googlenav/ae;->c:Z

    .line 100
    iget v0, p0, Lcom/google/googlenav/ae;->e:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_27

    move v2, v1

    :cond_27
    iput-boolean v2, p0, Lcom/google/googlenav/ae;->d:Z

    goto :goto_13

    :cond_2a
    move v0, v2

    .line 99
    goto :goto_1f
.end method

.method public j_()Z
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public l_()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 108
    iget-boolean v0, p0, Lcom/google/googlenav/ae;->c:Z

    if-eqz v0, :cond_38

    .line 109
    const-string v0, "s"

    .line 113
    :goto_7
    const/16 v1, 0x65

    const-string v2, "p"

    new-array v3, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/google/googlenav/ae;->b:Lcom/google/googlenav/af;

    if-eqz v0, :cond_37

    .line 119
    iget-boolean v0, p0, Lcom/google/googlenav/ae;->d:Z

    if-eqz v0, :cond_3b

    .line 120
    iget-object v0, p0, Lcom/google/googlenav/ae;->b:Lcom/google/googlenav/af;

    invoke-interface {v0, v7}, Lcom/google/googlenav/af;->b(Z)V

    .line 125
    :cond_37
    :goto_37
    return-void

    .line 111
    :cond_38
    const-string v0, "e"

    goto :goto_7

    .line 122
    :cond_3b
    iget-object v0, p0, Lcom/google/googlenav/ae;->b:Lcom/google/googlenav/af;

    iget-boolean v1, p0, Lcom/google/googlenav/ae;->c:Z

    invoke-interface {v0, v1}, Lcom/google/googlenav/af;->a(Z)V

    goto :goto_37
.end method

.method public m_()V
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/googlenav/ae;->b:Lcom/google/googlenav/af;

    if-eqz v0, :cond_a

    .line 135
    iget-object v0, p0, Lcom/google/googlenav/ae;->b:Lcom/google/googlenav/af;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/af;->b(Z)V

    .line 137
    :cond_a
    return-void
.end method
