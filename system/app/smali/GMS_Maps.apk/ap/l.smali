.class public LaP/l;
.super LaP/h;
.source "SourceFile"


# instance fields
.field private final d:Lad/t;


# direct methods
.method public constructor <init>(Lad/w;Lad/t;Lad/t;ILjava/util/List;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 569
    sget-object v1, LaP/q;->a:LaP/q;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, LaP/h;-><init>(LaP/q;Lad/w;Lad/t;ILjava/util/List;)V

    .line 570
    iput-object p3, p0, LaP/l;->d:Lad/t;

    .line 571
    invoke-virtual {p0}, LaP/l;->A()V

    .line 572
    return-void
.end method


# virtual methods
.method protected A()V
    .registers 3

    .prologue
    .line 625
    iget-object v0, p0, LaP/l;->b:Lad/w;

    iget v1, p0, LaP/l;->c:I

    invoke-static {v0, v1, p0}, LaP/h;->b(Lad/w;ILaP/h;)V

    .line 626
    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 576
    const/16 v0, 0x4cd

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/util/Date;
    .registers 2

    .prologue
    .line 610
    iget-object v0, p0, LaP/l;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->p()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, LaP/h;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/util/Date;
    .registers 8

    .prologue
    .line 615
    invoke-virtual {p0}, LaP/l;->l()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, LaP/l;->n()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 616
    invoke-virtual {p0}, LaP/l;->l()Ljava/util/Date;

    move-result-object v1

    .line 617
    invoke-virtual {p0}, LaP/l;->o()I

    move-result v2

    .line 618
    new-instance v0, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    int-to-long v1, v2

    const-wide/16 v5, 0x3e8

    mul-long/2addr v1, v5

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 620
    :goto_22
    return-object v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public s()Lat/B;
    .registers 2

    .prologue
    .line 594
    iget-object v0, p0, LaP/l;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->o()Lat/B;

    move-result-object v0

    if-nez v0, :cond_f

    .line 595
    iget-object v0, p0, LaP/l;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->g()Lat/B;

    move-result-object v0

    .line 597
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, LaP/l;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->o()Lat/B;

    move-result-object v0

    goto :goto_e
.end method

.method public t()Lat/B;
    .registers 2

    .prologue
    .line 602
    iget-object v0, p0, LaP/l;->d:Lad/t;

    if-nez v0, :cond_b

    .line 603
    iget-object v0, p0, LaP/l;->b:Lad/w;

    invoke-virtual {v0}, Lad/w;->aC()Lat/B;

    move-result-object v0

    .line 605
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, LaP/l;->d:Lad/t;

    invoke-virtual {v0}, Lad/t;->g()Lat/B;

    move-result-object v0

    goto :goto_a
.end method

.method public u()Ljava/lang/String;
    .registers 3

    .prologue
    .line 581
    iget-object v0, p0, LaP/l;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->i()Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 583
    iget-object v0, p0, LaP/l;->d:Lad/t;

    if-eqz v0, :cond_20

    iget-object v0, p0, LaP/l;->d:Lad/t;

    invoke-virtual {v0}, Lad/t;->C()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    .line 584
    iget-object v0, p0, LaP/l;->d:Lad/t;

    invoke-virtual {v0}, Lad/t;->l()Ljava/lang/String;

    move-result-object v0

    .line 589
    :cond_1f
    :goto_1f
    return-object v0

    .line 586
    :cond_20
    iget-object v0, p0, LaP/l;->b:Lad/w;

    invoke-virtual {v0}, Lad/w;->as()Lad/y;

    move-result-object v0

    invoke-static {v0}, LaP/l;->a(Lad/y;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f
.end method
