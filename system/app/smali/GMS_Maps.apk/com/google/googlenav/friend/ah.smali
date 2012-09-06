.class public Lcom/google/googlenav/friend/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Z

.field private e:Lcom/google/googlenav/friend/ag;

.field private f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/google/googlenav/friend/ag;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/friend/ag;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/ah;->e:Lcom/google/googlenav/friend/ag;

    .line 25
    iput-boolean v2, p0, Lcom/google/googlenav/friend/ah;->a:Z

    .line 26
    iput-boolean v2, p0, Lcom/google/googlenav/friend/ah;->b:Z

    .line 27
    iput-boolean v2, p0, Lcom/google/googlenav/friend/ah;->c:Z

    .line 28
    iput-boolean v2, p0, Lcom/google/googlenav/friend/ah;->d:Z

    .line 29
    iput-boolean v2, p0, Lcom/google/googlenav/friend/ah;->g:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter

    .prologue
    .line 32
    new-instance v0, Lcom/google/googlenav/friend/ag;

    invoke-direct {v0, p1}, Lcom/google/googlenav/friend/ag;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/ah;->e:Lcom/google/googlenav/friend/ag;

    .line 33
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/google/googlenav/friend/ah;->a:Z

    .line 103
    return-void
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/googlenav/friend/ah;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/googlenav/friend/ah;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 37
    return-void
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/google/googlenav/friend/ah;->b:Z

    .line 111
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/friend/ah;->e:Lcom/google/googlenav/friend/ag;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/ag;->c()Z

    move-result v0

    return v0
.end method

.method public c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/google/googlenav/friend/ah;->c:Z

    .line 119
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/googlenav/friend/ah;->e:Lcom/google/googlenav/friend/ag;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/ag;->b()Z

    move-result v0

    return v0
.end method

.method public d(Z)V
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/google/googlenav/friend/ah;->d:Z

    .line 127
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/googlenav/friend/ah;->e:Lcom/google/googlenav/friend/ag;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/ag;->d()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/googlenav/friend/ah;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v0, :cond_6

    .line 65
    const/4 v0, 0x0

    .line 69
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/friend/ah;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public f()Ljava/lang/String;
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/googlenav/friend/ah;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v0, :cond_6

    .line 78
    const/4 v0, 0x0

    .line 81
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/friend/ah;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/google/googlenav/friend/ah;->a:Z

    return v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/google/googlenav/friend/ah;->b:Z

    return v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/google/googlenav/friend/ah;->c:Z

    return v0
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/google/googlenav/friend/ah;->d:Z

    return v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/google/googlenav/friend/ah;->g:Z

    return v0
.end method
