.class Lcom/google/googlenav/ui/wizard/hj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/bn;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ay;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/hg;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hg;Lcom/google/googlenav/ay;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hj;->b:Lcom/google/googlenav/ui/wizard/hg;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hj;->a:Lcom/google/googlenav/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 11
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hj;->a:Lcom/google/googlenav/ay;

    invoke-virtual {v0}, Lcom/google/googlenav/ay;->c()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 300
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hj;->a:Lcom/google/googlenav/ay;

    invoke-virtual {v0}, Lcom/google/googlenav/ay;->c()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    .line 302
    new-instance v2, Lcom/google/googlenav/C;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hj;->b:Lcom/google/googlenav/ui/wizard/hg;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/hg;->a(Lcom/google/googlenav/ui/wizard/hg;)Lcom/google/googlenav/ai;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Long;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v5}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/hr;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/hj;->b:Lcom/google/googlenav/ui/wizard/hg;

    invoke-static {v5}, Lcom/google/googlenav/ui/wizard/hg;->a(Lcom/google/googlenav/ui/wizard/hg;)Lcom/google/googlenav/ai;

    move-result-object v5

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/hj;->b:Lcom/google/googlenav/ui/wizard/hg;

    invoke-static {v6}, Lcom/google/googlenav/ui/wizard/hg;->b(Lcom/google/googlenav/ui/wizard/hg;)LaF/c;

    move-result-object v6

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/hj;->b:Lcom/google/googlenav/ui/wizard/hg;

    invoke-static {v7}, Lcom/google/googlenav/ui/wizard/hg;->c(Lcom/google/googlenav/ui/wizard/hg;)Lcom/google/googlenav/J;

    move-result-object v7

    iget-object v8, p0, Lcom/google/googlenav/ui/wizard/hj;->a:Lcom/google/googlenav/ay;

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/google/googlenav/ui/wizard/hr;-><init>(Lcom/google/googlenav/ai;LaF/c;Lcom/google/googlenav/J;Lcom/google/googlenav/ay;)V

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/google/googlenav/C;-><init>(JLjava/util/List;Lcom/google/googlenav/D;)V

    .line 307
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lac/h;->c(Lac/g;)V

    .line 313
    :goto_50
    return-void

    .line 310
    :cond_51
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hj;->b:Lcom/google/googlenav/ui/wizard/hg;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/hg;->a(Lcom/google/googlenav/ui/wizard/hg;)Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ap()Lcom/google/googlenav/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hj;->a:Lcom/google/googlenav/ay;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ax;->b(Lcom/google/googlenav/ay;)Z

    .line 311
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hj;->b:Lcom/google/googlenav/ui/wizard/hg;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/hg;->b(Lcom/google/googlenav/ui/wizard/hg;)LaF/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hj;->a:Lcom/google/googlenav/ay;

    invoke-virtual {v0, v1}, LaF/c;->a(Lcom/google/googlenav/ay;)V

    goto :goto_50
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 290
    return-void
.end method

.method public c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 294
    return-void
.end method
