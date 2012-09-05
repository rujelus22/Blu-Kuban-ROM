.class public LaY/I;
.super LaY/h;


# direct methods
.method public constructor <init>(LaY/i;)V
    .registers 2

    invoke-direct {p0, p1}, LaY/h;-><init>(LaY/i;)V

    return-void
.end method

.method private a(Lax/aP;Z)Ljava/util/Vector;
    .registers 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Lax/aP;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lax/aP;->D()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, LaY/I;->c:LaY/i;

    check-cast v0, LaY/K;

    invoke-virtual {v0}, LaY/K;->bM()J

    move-result-wide v6

    invoke-static {p1, v6, v7, v2, p2}, Lax/S;->a(Lax/aP;JZZ)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_91

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2e
    sget-object v5, Lcom/google/googlenav/ui/bg;->o:Lcom/google/googlenav/ui/bg;

    if-nez v6, :cond_8f

    move v1, v2

    :goto_33
    invoke-static {v0, v5, v1}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;Z)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_58

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->d:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_58
    invoke-virtual {p1, v3, v3}, Lax/aP;->a(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8e

    invoke-virtual {p1}, Lax/aP;->F()Z

    move-result v1

    if-eqz v1, :cond_85

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bw;->bh:C

    invoke-static {v1}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_85
    sget-object v1, Lcom/google/googlenav/ui/bg;->p:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_8e
    return-object v4

    :cond_8f
    move v1, v3

    goto :goto_33

    :cond_91
    move-object v0, v1

    goto :goto_2e
.end method

.method private b()Lcom/google/googlenav/ui/bl;
    .registers 3

    iget-object v0, p0, LaY/I;->c:LaY/i;

    check-cast v0, LaY/K;

    invoke-virtual {v0}, LaY/K;->bH()Lax/aP;

    move-result-object v1

    invoke-virtual {v0}, LaY/K;->bS()LaY/aj;

    move-result-object v0

    invoke-virtual {v0}, LaY/aj;->b()Z

    move-result v0

    invoke-direct {p0, v1, v0}, LaY/I;->a(Lax/aP;Z)Ljava/util/Vector;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lbb/d;
    .registers 5

    invoke-direct {p0}, LaY/I;->b()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v1

    iget-object v2, p0, LaY/I;->c:LaY/i;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lbb/e;->a(Lcom/google/googlenav/ui/bl;Lbb/c;Z)Lbb/d;

    move-result-object v0

    return-object v0
.end method
