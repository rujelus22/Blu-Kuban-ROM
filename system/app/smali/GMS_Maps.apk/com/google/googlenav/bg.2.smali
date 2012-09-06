.class public Lcom/google/googlenav/bG;
.super Lac/a;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;

.field private final b:Lcom/google/googlenav/ai;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/googlenav/bH;

.field private final e:Z

.field private f:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ai;Ljava/lang/String;ZLcom/google/googlenav/bH;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/bG;->f:I

    .line 71
    iput-object p1, p0, Lcom/google/googlenav/bG;->b:Lcom/google/googlenav/ai;

    .line 72
    iput-object p2, p0, Lcom/google/googlenav/bG;->c:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/google/googlenav/bG;->d:Lcom/google/googlenav/bH;

    .line 74
    iput-boolean p3, p0, Lcom/google/googlenav/bG;->e:Z

    .line 75
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ap()Lcom/google/googlenav/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ax;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bG;->a:Ljava/util/List;

    .line 76
    return-void
.end method

.method private k()Ljava/lang/String;
    .registers 3

    .prologue
    .line 192
    const-string v0, "lo-gmm"

    iget-object v1, p0, Lcom/google/googlenav/bG;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 193
    const-string v0, "a"

    .line 195
    :goto_c
    return-object v0

    :cond_d
    const-string v0, ""

    goto :goto_c
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 84
    const/16 v0, 0x5d

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x6

    .line 89
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/fp;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 90
    iget-object v0, p0, Lcom/google/googlenav/bG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v2

    invoke-virtual {v1, v6, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 91
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/googlenav/bG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 92
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/googlenav/bG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 93
    iget-object v0, p0, Lcom/google/googlenav/bG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 94
    iget-object v0, p0, Lcom/google/googlenav/bG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v0

    invoke-virtual {v0}, Lat/B;->g()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 99
    :cond_3b
    iget-object v0, p0, Lcom/google/googlenav/bG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bG()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 102
    iget-object v0, p0, Lcom/google/googlenav/bG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bh()Lcom/google/googlenav/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/cv;->m()Ljava/lang/String;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_52

    .line 104
    const/16 v3, 0xa

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 108
    :cond_52
    iget-object v0, p0, Lcom/google/googlenav/bG;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_84

    iget-boolean v0, p0, Lcom/google/googlenav/bG;->e:Z

    if-eqz v0, :cond_84

    .line 109
    iget-object v0, p0, Lcom/google/googlenav/bG;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_64
    :goto_64
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ay;

    .line 111
    invoke-virtual {v0}, Lcom/google/googlenav/ay;->d()Z

    move-result v4

    if-nez v4, :cond_64

    .line 112
    const v4, 0x7a120

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ay;->a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 115
    invoke-virtual {v0, v6}, Lcom/google/googlenav/ay;->a(Z)V

    goto :goto_64

    .line 125
    :cond_84
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 129
    const/4 v0, 0x7

    const-string v3, "lo-gmm"

    invoke-virtual {v1, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 132
    const/16 v0, 0x5d

    invoke-static {v0, v1, v6}, Lcom/google/googlenav/ah;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V

    .line 135
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 138
    const/4 v0, 0x0

    :goto_99
    invoke-virtual {v2, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    if-ge v0, v1, :cond_ad

    .line 139
    invoke-virtual {v2, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 140
    const/4 v3, 0x0

    invoke-virtual {v1, v6, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBytes(I[B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 141
    invoke-virtual {v2, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->remove(II)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_99

    .line 143
    :cond_ad
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 152
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/fp;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 154
    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 155
    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/bG;->f:I

    .line 156
    iget v1, p0, Lcom/google/googlenav/bG;->f:I

    if-nez v1, :cond_2c

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 158
    iget-object v1, p0, Lcom/google/googlenav/bG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->bG()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 163
    :cond_2c
    return v3
.end method

.method public j_()Z
    .registers 2

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public l_()V
    .registers 8

    .prologue
    .line 169
    iget v0, p0, Lcom/google/googlenav/bG;->f:I

    if-nez v0, :cond_3d

    .line 170
    const-string v0, "s"

    .line 175
    :goto_6
    const/16 v1, 0x55

    const-string v2, "r"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ss="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/google/googlenav/bG;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v3}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/google/googlenav/bG;->d:Lcom/google/googlenav/bH;

    if-eqz v0, :cond_3c

    .line 183
    iget-object v0, p0, Lcom/google/googlenav/bG;->d:Lcom/google/googlenav/bH;

    iget v1, p0, Lcom/google/googlenav/bG;->f:I

    invoke-interface {v0, v1}, Lcom/google/googlenav/bH;->a(I)V

    .line 185
    :cond_3c
    return-void

    .line 172
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/google/googlenav/bG;->f:I

    if-ltz v0, :cond_6a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/googlenav/bG;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_6a
    const-string v0, ""

    goto :goto_61
.end method

.method public m_()V
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/googlenav/bG;->d:Lcom/google/googlenav/bH;

    if-eqz v0, :cond_b

    .line 202
    iget-object v0, p0, Lcom/google/googlenav/bG;->d:Lcom/google/googlenav/bH;

    iget v1, p0, Lcom/google/googlenav/bG;->f:I

    invoke-interface {v0, v1}, Lcom/google/googlenav/bH;->a(I)V

    .line 204
    :cond_b
    return-void
.end method
