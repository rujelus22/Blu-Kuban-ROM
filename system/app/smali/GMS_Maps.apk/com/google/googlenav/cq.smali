.class public Lcom/google/googlenav/cq;
.super Lcom/google/googlenav/ai;
.source "SourceFile"


# instance fields
.field private final c:Lcom/google/googlenav/ca;

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ca;)V
    .registers 5
    .parameter

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/google/googlenav/ca;->j()Lat/B;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ca;->i()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlenav/ai;-><init>(Lat/g;Ljava/lang/String;B)V

    .line 32
    iput-object p1, p0, Lcom/google/googlenav/cq;->c:Lcom/google/googlenav/ca;

    .line 33
    return-void
.end method


# virtual methods
.method public a()Lat/B;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlenav/cq;->c:Lcom/google/googlenav/ca;

    invoke-virtual {v0}, Lcom/google/googlenav/ca;->j()Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput p1, p0, Lcom/google/googlenav/cq;->h:I

    .line 110
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/googlenav/cq;->f:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/google/googlenav/cq;->e:Z

    .line 86
    return-void
.end method

.method public au()Lcom/google/googlenav/ca;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/googlenav/cq;->c:Lcom/google/googlenav/ca;

    return-object v0
.end method

.method public av()Z
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/googlenav/cq;->c:Lcom/google/googlenav/ca;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b()Ljava/util/List;
    .registers 2

    .prologue
    .line 42
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/googlenav/cq;->c:Lcom/google/googlenav/ca;

    invoke-virtual {v0}, Lcom/google/googlenav/ca;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x5

    return v0
.end method

.method public f()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 52
    return-object p0
.end method

.method public g()Lcom/google/googlenav/common/util/l;
    .registers 4

    .prologue
    .line 58
    new-instance v0, Lcom/google/googlenav/common/util/l;

    const-string v1, "TransitStation"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public i()V
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/cq;->d:Z

    .line 78
    return-void
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/googlenav/cq;->d:Z

    return v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/googlenav/cq;->e:Z

    return v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/googlenav/cq;->f:Ljava/lang/String;

    return-object v0
.end method

.method public m()Z
    .registers 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/google/googlenav/cq;->g:Z

    return v0
.end method

.method public n()I
    .registers 2

    .prologue
    .line 113
    iget v0, p0, Lcom/google/googlenav/cq;->h:I

    return v0
.end method
