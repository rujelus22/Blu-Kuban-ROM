.class public Lcom/google/googlenav/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final b:Lan/f;

.field private final c:Lcom/google/googlenav/i;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ai;)V
    .registers 3
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/ai;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/h;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/h;->b:Lan/f;

    .line 35
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bD()I

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/google/googlenav/i;->b:Lcom/google/googlenav/i;

    :goto_14
    iput-object v0, p0, Lcom/google/googlenav/h;->c:Lcom/google/googlenav/i;

    .line 36
    return-void

    .line 35
    :cond_17
    sget-object v0, Lcom/google/googlenav/i;->a:Lcom/google/googlenav/i;

    goto :goto_14
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/h;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lan/f;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lan/f;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/googlenav/h;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 44
    iput-object p2, p0, Lcom/google/googlenav/h;->b:Lan/f;

    .line 45
    sget-object v0, Lcom/google/googlenav/i;->c:Lcom/google/googlenav/i;

    iput-object v0, p0, Lcom/google/googlenav/h;->c:Lcom/google/googlenav/i;

    .line 46
    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 140
    return-void
.end method

.method public a(ZZ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 134
    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 136
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lat/B;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    .line 87
    return v0
.end method

.method public j()Z
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    .line 93
    return v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/googlenav/h;->f()Lat/B;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/google/googlenav/h;->l()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/h;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public l()Z
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public m()Z
    .registers 4

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/googlenav/h;->l()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlenav/h;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public n()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 124
    invoke-virtual {p0}, Lcom/google/googlenav/h;->l()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/googlenav/h;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public o()Lcom/google/googlenav/i;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/googlenav/h;->c:Lcom/google/googlenav/i;

    return-object v0
.end method
