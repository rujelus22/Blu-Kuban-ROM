.class public abstract Lac/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac/g;


# instance fields
.field private volatile a:Z

.field private b:I

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/Long;

.field private e:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lac/a;->a:Z

    .line 19
    iput v0, p0, Lac/a;->b:I

    .line 28
    const-wide/high16 v0, -0x8000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lac/a;->e:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public A_()Z
    .registers 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lac/a;->a:Z

    return v0
.end method

.method public Z()V
    .registers 4

    .prologue
    .line 77
    invoke-virtual {p0}, Lac/a;->i_()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lac/a;->a:Z

    .line 82
    return-void

    .line 80
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lac/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not cancellable!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public aP()V
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Lac/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lac/a;->b:I

    .line 132
    return-void
.end method

.method protected aQ()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lac/a;->b:I

    return v0
.end method

.method public b(J)V
    .registers 4
    .parameter

    .prologue
    .line 99
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lac/a;->c:Ljava/lang/Long;

    .line 100
    return-void
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public h_()Z
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public i_()Z
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public j_()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 106
    iget v1, p0, Lac/a;->b:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_7

    .line 120
    :goto_6
    return v0

    .line 110
    :cond_7
    iget-object v1, p0, Lac/a;->c:Ljava/lang/Long;

    if-eqz v1, :cond_21

    .line 112
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    .line 113
    iget-object v3, p0, Lac/a;->d:Ljava/lang/Long;

    if-nez v3, :cond_23

    .line 114
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lac/a;->d:Ljava/lang/Long;

    .line 120
    :cond_21
    const/4 v0, 0x1

    goto :goto_6

    .line 115
    :cond_23
    iget-object v3, p0, Lac/a;->d:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lac/a;->c:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_21

    goto :goto_6
.end method

.method public k_()Z
    .registers 2

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public l_()V
    .registers 1

    .prologue
    .line 141
    return-void
.end method

.method public m_()V
    .registers 1

    .prologue
    .line 146
    return-void
.end method

.method public q()Z
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public z_()Z
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method
