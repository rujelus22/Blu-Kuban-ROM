.class public LaP/j;
.super LaP/s;
.source "SourceFile"


# instance fields
.field private final e:Lad/t;


# direct methods
.method public constructor <init>(Lad/w;Lad/t;Lad/t;ILjava/util/List;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 644
    sget-object v1, LaP/q;->b:LaP/q;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, LaP/s;-><init>(LaP/q;Lad/w;Lad/t;ILjava/util/List;)V

    .line 645
    iput-object p2, p0, LaP/j;->e:Lad/t;

    .line 646
    invoke-virtual {p3}, Lad/t;->a()Lad/v;

    move-result-object v0

    iput-object v0, p0, LaP/j;->d:Lad/v;

    .line 647
    invoke-virtual {p0}, LaP/j;->A()V

    .line 648
    return-void
.end method


# virtual methods
.method protected A()V
    .registers 2

    .prologue
    .line 687
    invoke-virtual {p0}, LaP/j;->q()V

    .line 688
    invoke-virtual {p0}, LaP/j;->r()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 689
    invoke-virtual {p0}, LaP/j;->w()F

    move-result v0

    invoke-virtual {p0, v0}, LaP/j;->a(F)V

    .line 691
    :cond_10
    return-void
.end method

.method public B()Ljava/lang/String;
    .registers 2

    .prologue
    .line 695
    invoke-virtual {p0}, LaP/j;->L()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/util/Date;
    .registers 2

    .prologue
    .line 672
    iget-object v0, p0, LaP/j;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->p()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, LaP/h;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/util/Date;
    .registers 3

    .prologue
    .line 677
    iget-object v0, p0, LaP/j;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->O()[Lad/u;

    move-result-object v0

    .line 678
    array-length v1, v0

    if-lez v1, :cond_11

    .line 679
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lad/u;->b()Ljava/util/Date;

    move-result-object v0

    .line 681
    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, LaP/j;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->j()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, LaP/h;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Date;

    move-result-object v0

    goto :goto_10
.end method

.method public s()Lat/B;
    .registers 2

    .prologue
    .line 657
    iget-object v0, p0, LaP/j;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->o()Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public t()Lat/B;
    .registers 3

    .prologue
    .line 662
    iget-object v0, p0, LaP/j;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->O()[Lad/u;

    move-result-object v0

    .line 663
    array-length v1, v0

    if-lez v1, :cond_11

    .line 664
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lad/u;->d()Lat/B;

    move-result-object v0

    .line 666
    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, LaP/j;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->k()Lat/B;

    move-result-object v0

    goto :goto_10
.end method
