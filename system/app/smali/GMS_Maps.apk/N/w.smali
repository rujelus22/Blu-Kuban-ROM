.class public Ln/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ln/p;

.field private final b:Ljava/util/List;

.field private final c:I

.field private final d:Ln/Q;

.field private final e:J

.field private f:Z


# direct methods
.method protected constructor <init>(Ln/p;Ljava/util/List;IZLn/Q;J)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Ln/w;->a:Ln/p;

    .line 68
    iput-object p2, p0, Ln/w;->b:Ljava/util/List;

    .line 69
    iput p3, p0, Ln/w;->c:I

    .line 70
    iput-boolean p4, p0, Ln/w;->f:Z

    .line 71
    iput-object p5, p0, Ln/w;->d:Ln/Q;

    .line 72
    iput-wide p6, p0, Ln/w;->e:J

    .line 73
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)Ln/w;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v0, 0x0

    .line 83
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ln/p;->b(Ljava/lang/String;)Ln/p;

    move-result-object v1

    .line 85
    if-nez v1, :cond_10

    .line 118
    :goto_f
    return-object v5

    .line 90
    :cond_10
    invoke-virtual {p0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v6

    .line 91
    invoke-static {v6}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    move v3, v0

    .line 92
    :goto_19
    if-ge v3, v6, :cond_2b

    .line 93
    invoke-virtual {p0, v7, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 94
    invoke-static {v4}, Ln/x;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/x;

    move-result-object v4

    .line 95
    if-eqz v4, :cond_28

    .line 96
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 100
    :cond_2b
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v4

    .line 102
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    .line 103
    if-ltz v3, :cond_39

    if-lt v3, v6, :cond_3a

    :cond_39
    move v3, v0

    .line 108
    :cond_3a
    if-nez v4, :cond_3e

    if-nez v6, :cond_3f

    .line 110
    :cond_3e
    const/4 v3, -0x1

    .line 114
    :cond_3f
    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 115
    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Ln/Q;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/Q;

    move-result-object v5

    .line 118
    :cond_4d
    new-instance v0, Ln/w;

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Ln/w;-><init>(Ln/p;Ljava/util/List;IZLn/Q;J)V

    move-object v5, v0

    goto :goto_f
.end method


# virtual methods
.method public a(Ln/x;)I
    .registers 4
    .parameter

    .prologue
    .line 189
    if-nez p1, :cond_4

    .line 190
    const/4 v0, -0x1

    .line 193
    :goto_3
    return v0

    .line 192
    :cond_4
    invoke-virtual {p1}, Ln/x;->b()Ln/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Ln/w;->a(Ln/p;)Ln/x;

    move-result-object v0

    .line 193
    iget-object v1, p0, Ln/w;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_3
.end method

.method public a()Ln/p;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Ln/w;->a:Ln/p;

    return-object v0
.end method

.method public a(I)Ln/x;
    .registers 3
    .parameter

    .prologue
    .line 217
    if-ltz p1, :cond_a

    iget-object v0, p0, Ln/w;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    .line 218
    :cond_a
    const/4 v0, 0x0

    .line 220
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Ln/w;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/x;

    goto :goto_b
.end method

.method public a(Ln/B;)Ln/x;
    .registers 3
    .parameter

    .prologue
    .line 181
    invoke-virtual {p1}, Ln/B;->a()Ln/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Ln/w;->a(Ln/p;)Ln/x;

    move-result-object v0

    return-object v0
.end method

.method public a(Ln/p;)Ln/x;
    .registers 5
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Ln/w;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/x;

    .line 167
    invoke-virtual {v0}, Ln/x;->b()Ln/p;

    move-result-object v2

    invoke-virtual {p1, v2}, Ln/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 171
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public a(Lcom/google/googlenav/common/a;)Z
    .registers 6
    .parameter

    .prologue
    .line 258
    iget-wide v0, p0, Ln/w;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_14

    invoke-interface {p1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iget-wide v2, p0, Ln/w;->e:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public b(Ln/B;)I
    .registers 3
    .parameter

    .prologue
    .line 200
    invoke-virtual {p1}, Ln/B;->a()Ln/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Ln/w;->a(Ln/p;)Ln/x;

    move-result-object v0

    .line 201
    invoke-virtual {p0, v0}, Ln/w;->a(Ln/x;)I

    move-result v0

    return v0
.end method

.method public b()Ljava/util/List;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Ln/w;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Ln/x;
    .registers 2

    .prologue
    .line 227
    iget v0, p0, Ln/w;->c:I

    invoke-virtual {p0, v0}, Ln/w;->a(I)Ln/x;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 241
    iget-boolean v0, p0, Ln/w;->f:Z

    return v0
.end method

.method public e()Ln/Q;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Ln/w;->d:Ln/Q;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Building: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln/w;->a:Ln/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
