.class public LaM/R;
.super LaM/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(LaM/i;)V
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, LaM/h;-><init>(LaM/i;)V

    .line 25
    return-void
.end method

.method private a(Lcom/google/googlenav/friend/aK;Z)Ljava/util/Vector;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 55
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 58
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->f()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->A()Ljava/lang/String;

    move-result-object v5

    .line 60
    iget-object v0, p0, LaM/R;->c:LaM/i;

    check-cast v0, LaM/X;

    .line 61
    invoke-virtual {v0}, LaM/X;->bH()J

    move-result-wide v6

    invoke-static {p1, v6, v7, v2, p2}, Lcom/google/googlenav/friend/M;->a(Lcom/google/googlenav/friend/aK;JZZ)Ljava/lang/String;

    move-result-object v6

    .line 63
    if-eqz v5, :cond_91

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_2e
    sget-object v5, Lcom/google/googlenav/ui/aV;->m:Lcom/google/googlenav/ui/aV;

    if-nez v6, :cond_8f

    move v1, v2

    :goto_33
    invoke-static {v0, v5, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;Z)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 67
    if-eqz v6, :cond_58

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->b:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_58
    invoke-virtual {p1, v3, v3}, Lcom/google/googlenav/friend/aK;->a(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8e

    .line 76
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->C()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bn;->be:C

    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_85
    sget-object v1, Lcom/google/googlenav/ui/aV;->n:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_8e
    return-object v4

    :cond_8f
    move v1, v3

    .line 66
    goto :goto_33

    :cond_91
    move-object v0, v1

    goto :goto_2e
.end method

.method private b()Lcom/google/googlenav/ui/bd;
    .registers 3

    .prologue
    .line 34
    iget-object v0, p0, LaM/R;->c:LaM/i;

    check-cast v0, LaM/X;

    .line 35
    invoke-virtual {v0}, LaM/X;->bE()Lcom/google/googlenav/friend/aK;

    move-result-object v1

    .line 36
    invoke-virtual {v0}, LaM/X;->bM()LaM/aF;

    move-result-object v0

    invoke-virtual {v0}, LaM/aF;->b()Z

    move-result v0

    invoke-direct {p0, v1, v0}, LaM/R;->a(Lcom/google/googlenav/friend/aK;Z)Ljava/util/Vector;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/google/googlenav/ui/be;

    invoke-direct {v1}, Lcom/google/googlenav/ui/be;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/be;->a(Ljava/util/List;)Lcom/google/googlenav/ui/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/be;->a()Lcom/google/googlenav/ui/bd;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/view/d;
    .registers 5

    .prologue
    .line 29
    invoke-direct {p0}, LaM/R;->b()Lcom/google/googlenav/ui/bd;

    move-result-object v0

    .line 30
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v1

    iget-object v2, p0, LaM/R;->c:LaM/i;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/googlenav/ui/view/e;->a(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/view/c;Z)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    return-object v0
.end method
