.class public abstract LaP/s;
.super LaP/h;
.source "SourceFile"


# instance fields
.field protected d:Lad/v;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method protected constructor <init>(LaP/q;Lad/w;Lad/t;ILjava/util/List;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 443
    invoke-direct/range {p0 .. p5}, LaP/h;-><init>(LaP/q;Lad/w;Lad/t;ILjava/util/List;)V

    .line 445
    if-eqz p3, :cond_b

    .line 446
    invoke-direct {p0}, LaP/s;->A()V

    .line 447
    invoke-direct {p0}, LaP/s;->C()V

    .line 449
    :cond_b
    return-void
.end method

.method private A()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 511
    iget-object v0, p0, LaP/s;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->j()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bi;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaP/s;->g:Ljava/lang/String;

    .line 513
    iget-object v0, p0, LaP/s;->g:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 514
    const/16 v0, 0x58e

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    iget-object v2, p0, LaP/s;->g:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaP/s;->g:Ljava/lang/String;

    .line 516
    iput-boolean v3, p0, LaP/s;->f:Z

    .line 522
    :cond_2a
    :goto_2a
    return-void

    .line 517
    :cond_2b
    iget-object v0, p0, LaP/s;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->u()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 518
    const/16 v0, 0x58d

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    iget-object v2, p0, LaP/s;->a:Lad/t;

    invoke-virtual {v2}, Lad/t;->v()I

    move-result v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bi;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaP/s;->g:Ljava/lang/String;

    goto :goto_2a
.end method

.method private C()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 525
    iget-object v0, p0, LaP/s;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->p()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bi;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaP/s;->h:Ljava/lang/String;

    .line 526
    iget-object v0, p0, LaP/s;->h:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 527
    const/16 v0, 0x58f

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    iget-object v2, p0, LaP/s;->h:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaP/s;->h:Ljava/lang/String;

    .line 529
    iput-boolean v3, p0, LaP/s;->e:Z

    .line 534
    :cond_2a
    :goto_2a
    return-void

    .line 530
    :cond_2b
    iget-object v0, p0, LaP/s;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->q()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 531
    const/16 v0, 0x590

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    iget-object v2, p0, LaP/s;->a:Lad/t;

    invoke-virtual {v2}, Lad/t;->r()I

    move-result v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bi;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaP/s;->h:Ljava/lang/String;

    goto :goto_2a
.end method


# virtual methods
.method public B()Ljava/lang/String;
    .registers 2

    .prologue
    .line 484
    invoke-virtual {p0}, LaP/s;->L()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public D()Z
    .registers 2

    .prologue
    .line 452
    iget-object v0, p0, LaP/s;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->P()Z

    move-result v0

    return v0
.end method

.method public E()Ljava/lang/String;
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, LaP/s;->a:Lad/t;

    invoke-static {v0}, LaP/h;->a(Lad/t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .registers 3

    .prologue
    .line 470
    iget-object v0, p0, LaP/s;->a:Lad/t;

    iget-object v1, p0, LaP/s;->b:Lad/w;

    invoke-virtual {v0, v1}, Lad/t;->a(Lad/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public G()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 474
    iget-object v1, p0, LaP/s;->d:Lad/v;

    iget v1, v1, Lad/v;->b:I

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, LaP/s;->d:Lad/v;

    iget v0, v0, Lad/v;->b:I

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/rideabout/r;->c(I)I

    move-result v0

    goto :goto_7
.end method

.method public H()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 479
    iget-object v1, p0, LaP/s;->d:Lad/v;

    iget v1, v1, Lad/v;->c:I

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, LaP/s;->d:Lad/v;

    iget v0, v0, Lad/v;->c:I

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/rideabout/r;->c(I)I

    move-result v0

    goto :goto_7
.end method

.method public I()Ljava/lang/String;
    .registers 2

    .prologue
    .line 488
    iget-object v0, p0, LaP/s;->d:Lad/v;

    iget-object v0, v0, Lad/v;->f:Ljava/lang/String;

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, LaP/s;->d:Lad/v;

    iget-object v0, v0, Lad/v;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected K()Ljava/lang/String;
    .registers 2

    .prologue
    .line 537
    iget-object v0, p0, LaP/s;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected L()Ljava/lang/String;
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, LaP/s;->h:Ljava/lang/String;

    return-object v0
.end method

.method public M()Z
    .registers 2

    .prologue
    .line 549
    iget-boolean v0, p0, LaP/s;->e:Z

    return v0
.end method

.method public N()Z
    .registers 2

    .prologue
    .line 557
    iget-boolean v0, p0, LaP/s;->f:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, LaP/s;->d:Lad/v;

    iget-object v0, v0, Lad/v;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .registers 3

    .prologue
    .line 498
    iget-object v0, p0, LaP/s;->d:Lad/v;

    iget-wide v0, v0, Lad/v;->h:J

    return-wide v0
.end method

.method public u()Ljava/lang/String;
    .registers 3

    .prologue
    .line 461
    iget-object v0, p0, LaP/s;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->O()[Lad/u;

    move-result-object v0

    .line 462
    array-length v1, v0

    if-lez v1, :cond_11

    .line 463
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lad/u;->a()Ljava/lang/String;

    move-result-object v0

    .line 465
    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, LaP/s;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method
