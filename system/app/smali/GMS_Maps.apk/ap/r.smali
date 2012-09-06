.class public LaP/r;
.super LaP/s;
.source "SourceFile"


# instance fields
.field private final e:Lad/u;

.field private final f:Lad/u;


# direct methods
.method public constructor <init>(Lad/t;Lad/u;Lad/u;ILjava/util/List;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 706
    sget-object v1, LaP/q;->c:LaP/q;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, LaP/s;-><init>(LaP/q;Lad/w;Lad/t;ILjava/util/List;)V

    .line 707
    iput-object p2, p0, LaP/r;->e:Lad/u;

    .line 708
    iput-object p3, p0, LaP/r;->f:Lad/u;

    .line 709
    invoke-virtual {p2}, Lad/u;->e()Lad/v;

    move-result-object v0

    iput-object v0, p0, LaP/r;->d:Lad/v;

    .line 710
    invoke-virtual {p0}, LaP/r;->A()V

    .line 711
    return-void
.end method


# virtual methods
.method protected A()V
    .registers 2

    .prologue
    .line 788
    invoke-virtual {p0}, LaP/r;->q()V

    .line 789
    invoke-virtual {p0}, LaP/r;->r()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 790
    invoke-virtual {p0}, LaP/r;->w()F

    move-result v0

    invoke-virtual {p0, v0}, LaP/r;->a(F)V

    .line 792
    :cond_10
    return-void
.end method

.method public C()Z
    .registers 2

    .prologue
    .line 795
    iget-object v0, p0, LaP/r;->d:Lad/v;

    iget-boolean v0, v0, Lad/v;->a:Z

    return v0
.end method

.method public D()Z
    .registers 2

    .prologue
    .line 805
    iget-object v0, p0, LaP/r;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->P()Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 800
    iget-object v0, p0, LaP/r;->d:Lad/v;

    iget-object v0, v0, Lad/v;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 715
    iget-object v0, p0, LaP/r;->e:Lad/u;

    invoke-virtual {v0}, Lad/u;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .registers 4

    .prologue
    const/16 v0, 0xf

    .line 752
    iget-object v1, p0, LaP/r;->e:Lad/u;

    invoke-virtual {v1}, Lad/u;->b()Ljava/util/Date;

    move-result-object v1

    .line 753
    iget-object v2, p0, LaP/r;->e:Lad/u;

    invoke-virtual {v2}, Lad/u;->c()Ljava/util/Date;

    move-result-object v2

    .line 754
    if-eqz v1, :cond_17

    if-eqz v2, :cond_17

    .line 755
    invoke-static {v1, v2}, LaP/h;->a(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    .line 761
    :cond_16
    :goto_16
    return v0

    .line 757
    :cond_17
    invoke-virtual {p0}, LaP/r;->o()I

    move-result v1

    .line 758
    if-gt v1, v0, :cond_16

    .line 761
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public l()Ljava/util/Date;
    .registers 3

    .prologue
    .line 768
    iget-object v0, p0, LaP/r;->e:Lad/u;

    invoke-virtual {v0}, Lad/u;->b()Ljava/util/Date;

    move-result-object v0

    .line 769
    iget-object v1, p0, LaP/r;->e:Lad/u;

    invoke-virtual {v1}, Lad/u;->c()Ljava/util/Date;

    move-result-object v1

    .line 770
    if-eqz v0, :cond_f

    .line 773
    :goto_e
    return-object v0

    :cond_f
    move-object v0, v1

    goto :goto_e
.end method

.method public m()Ljava/util/Date;
    .registers 2

    .prologue
    .line 779
    iget-object v0, p0, LaP/r;->f:Lad/u;

    if-eqz v0, :cond_b

    .line 780
    iget-object v0, p0, LaP/r;->f:Lad/u;

    invoke-virtual {v0}, Lad/u;->b()Ljava/util/Date;

    move-result-object v0

    .line 782
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, LaP/r;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->j()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, LaP/h;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Date;

    move-result-object v0

    goto :goto_a
.end method

.method public s()Lat/B;
    .registers 2

    .prologue
    .line 734
    iget-object v0, p0, LaP/r;->e:Lad/u;

    invoke-virtual {v0}, Lad/u;->d()Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public t()Lat/B;
    .registers 2

    .prologue
    .line 739
    iget-object v0, p0, LaP/r;->f:Lad/u;

    if-eqz v0, :cond_b

    .line 740
    iget-object v0, p0, LaP/r;->f:Lad/u;

    invoke-virtual {v0}, Lad/u;->d()Lat/B;

    move-result-object v0

    .line 742
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, LaP/r;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->k()Lat/B;

    move-result-object v0

    goto :goto_a
.end method

.method public u()Ljava/lang/String;
    .registers 2

    .prologue
    .line 720
    iget-object v0, p0, LaP/r;->f:Lad/u;

    if-eqz v0, :cond_b

    .line 721
    iget-object v0, p0, LaP/r;->f:Lad/u;

    invoke-virtual {v0}, Lad/u;->a()Ljava/lang/String;

    move-result-object v0

    .line 723
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, LaP/r;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
