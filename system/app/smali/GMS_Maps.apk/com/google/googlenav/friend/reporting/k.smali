.class public Lcom/google/googlenav/friend/reporting/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/friend/reporting/m;)V
    .registers 3
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/google/googlenav/friend/reporting/m;->a(Lcom/google/googlenav/friend/reporting/m;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/friend/reporting/m;Lcom/google/googlenav/friend/reporting/l;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/reporting/k;-><init>(Lcom/google/googlenav/friend/reporting/m;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public b()I
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 36
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    return v0
.end method

.method public c()I
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    return v0
.end method

.method public d()I
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    return v0
.end method

.method public e()J
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Z
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v0

    return v0
.end method

.method public g()F
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public h()Z
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v0

    return v0
.end method

.method public i()F
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public j()Z
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v0

    return v0
.end method

.method public k()D
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public l()Z
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v0

    return v0
.end method

.method public m()F
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public n()Z
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v0

    return v0
.end method

.method public o()I
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    return v0
.end method

.method public p()Z
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v0

    return v0
.end method

.method public q()I
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    return v0
.end method

.method public r()Z
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v0

    return v0
.end method

.method public s()Z
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    return v0
.end method

.method public t()Z
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    const-string v1, "%s: %d\n"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "lat"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/k;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, "%s: %d\n"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "lng"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/k;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, "%s: %f\n"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "accuracy"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/k;->m()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, "%s: %d\n"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "timestamp"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/k;->e()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    return v0
.end method

.method public v()Z
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v0

    return v0
.end method

.method public w()Ljava/lang/String;
    .registers 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Z
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v0

    return v0
.end method

.method public y()I
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/k;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    return v0
.end method
