.class public Lcom/google/googlenav/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/googlenav/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/googlenav/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/googlenav/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/googlenav/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/googlenav/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()J
    .registers 5

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/googlenav/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x12

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Z
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/googlenav/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/googlenav/a;->f()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/a;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/googlenav/a;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/googlenav/a;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/googlenav/a;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/googlenav/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method
