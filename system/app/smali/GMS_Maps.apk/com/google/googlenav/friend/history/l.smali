.class public abstract Lcom/google/googlenav/friend/history/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field protected final b:Lcom/google/googlenav/friend/history/b;

.field private c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/friend/history/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/googlenav/friend/history/l;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 60
    iput-object p2, p0, Lcom/google/googlenav/friend/history/l;->b:Lcom/google/googlenav/friend/history/b;

    .line 61
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/google/googlenav/friend/history/l;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 242
    return-void
.end method

.method public b()Lcom/google/googlenav/friend/history/m;
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/googlenav/friend/history/l;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 77
    sget-object v0, Lcom/google/googlenav/friend/history/m;->a:Lcom/google/googlenav/friend/history/m;

    .line 81
    :goto_b
    return-object v0

    .line 78
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/friend/history/l;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 79
    sget-object v0, Lcom/google/googlenav/friend/history/m;->b:Lcom/google/googlenav/friend/history/m;

    goto :goto_b

    .line 81
    :cond_18
    sget-object v0, Lcom/google/googlenav/friend/history/m;->c:Lcom/google/googlenav/friend/history/m;

    goto :goto_b
.end method

.method public c()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 89
    iget-object v0, p0, Lcom/google/googlenav/friend/history/l;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_c

    .line 90
    iget-object v0, p0, Lcom/google/googlenav/friend/history/l;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_b
    return-object v0

    .line 92
    :cond_c
    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/l;->k()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 93
    const/16 v0, 0x1ee

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 96
    :cond_19
    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/l;->l()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 97
    const/16 v0, 0x61c

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 101
    :cond_26
    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/l;->p()[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_39

    .line 102
    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/l;->p()[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 105
    :cond_39
    iget-object v0, p0, Lcom/google/googlenav/friend/history/l;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 106
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public d()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/l;->f()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/l;->e()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bi;->a(IZ)Ljava/lang/String;

    move-result-object v0

    .line 117
    const/16 v1, 0x292

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()J
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/googlenav/friend/history/l;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()J
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/googlenav/friend/history/l;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .registers 5

    .prologue
    .line 140
    const/4 v0, 0x3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/l;->e()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 5

    .prologue
    .line 148
    const/4 v0, 0x3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 149
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/l;->f()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 3

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/l;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/l;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 6

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/googlenav/friend/history/l;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0}, Lcom/google/googlenav/friend/history/K;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 171
    const/4 v0, 0x0

    .line 180
    :goto_d
    return-object v0

    .line 177
    :cond_e
    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/l;->f()J

    move-result-wide v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    .line 180
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/history/K;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/K;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public k()Z
    .registers 4

    .prologue
    const/4 v2, 0x5

    .line 184
    iget-object v0, p0, Lcom/google/googlenav/friend/history/l;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 185
    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public l()Z
    .registers 4

    .prologue
    const/4 v2, 0x6

    .line 189
    iget-object v0, p0, Lcom/google/googlenav/friend/history/l;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 190
    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public m()Z
    .registers 5

    .prologue
    const/4 v3, 0x7

    const/4 v0, 0x1

    .line 194
    iget-object v1, p0, Lcom/google/googlenav/friend/history/l;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_7

    .line 198
    :cond_6
    :goto_6
    return v0

    .line 197
    :cond_7
    iget-object v1, p0, Lcom/google/googlenav/friend/history/l;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 198
    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_1a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public n()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/googlenav/friend/history/l;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 207
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lbq/G;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 208
    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 209
    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/l;->p()[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 210
    array-length v0, v0

    if-lez v0, :cond_2e

    .line 211
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/l;->p()[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 214
    :cond_2e
    return-object v1
.end method

.method public o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/googlenav/friend/history/l;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_7

    .line 224
    iget-object v0, p0, Lcom/google/googlenav/friend/history/l;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 231
    :goto_6
    return-object v0

    .line 227
    :cond_7
    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/l;->p()[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_16

    .line 228
    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/l;->p()[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_6

    .line 231
    :cond_16
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public p()[Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/googlenav/friend/history/l;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/google/googlenav/friend/history/b;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/googlenav/friend/history/l;->b:Lcom/google/googlenav/friend/history/b;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/googlenav/friend/history/l;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Lan/s;
    .registers 10

    .prologue
    const-wide v7, 0x416312d000000000L

    .line 267
    iget-object v0, p0, Lcom/google/googlenav/friend/history/l;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 268
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 270
    new-instance v2, Lan/u;

    invoke-direct {v2}, Lan/u;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v3, v7

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    int-to-double v5, v1

    div-double/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lan/u;->a(DD)Lan/u;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getFloat(I)F

    move-result v0

    invoke-virtual {v1, v0}, Lan/u;->a(F)Lan/u;

    move-result-object v0

    invoke-virtual {v0}, Lan/u;->b()Lan/s;

    move-result-object v0

    return-object v0
.end method
