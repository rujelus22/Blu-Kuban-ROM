.class public LaV/l;
.super LaV/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, LaV/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/String;)LaV/r;
    .registers 16

    new-instance v9, LaV/r;

    invoke-direct {v9, p1}, LaV/r;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, v9

    :goto_c
    return-object v0

    :cond_d
    invoke-static {}, LaV/n;->a()LaV/n;

    move-result-object v0

    invoke-virtual {v0}, LaV/n;->e()LaM/f;

    move-result-object v0

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v1

    invoke-interface {v1}, LaM/i;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v12

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_40
    :goto_40
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v12, v0}, LaM/i;->a(Ljava/lang/String;)LaM/m;

    move-result-object v3

    if-eqz v3, :cond_40

    invoke-virtual {v3}, LaM/m;->h()Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3}, LaM/m;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_95

    const-string v0, ""

    :goto_62
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9e

    const/4 v0, 0x1

    invoke-virtual {p0}, LaV/l;->g()I

    move-result v6

    :goto_6d
    if-eqz v0, :cond_40

    invoke-static {v12, v3}, LaV/h;->a(LaM/i;LaM/m;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, LaM/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    :cond_7d
    new-instance v0, LaV/q;

    invoke-virtual {v3}, LaM/m;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x6

    invoke-virtual {v3}, LaM/m;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, LaM/m;->d()LaJ/B;

    move-result-object v8

    move-object v3, v1

    invoke-direct/range {v0 .. v8}, LaV/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;LaJ/B;)V

    invoke-virtual {v9, v0}, LaV/r;->b(LaV/q;)V

    goto :goto_40

    :cond_95
    invoke-virtual {v3}, LaM/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    :cond_9e
    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_b0

    const/4 v0, 0x1

    invoke-virtual {p0}, LaV/l;->g()I

    move-result v1

    add-int/lit8 v6, v1, 0x32

    goto :goto_6d

    :cond_ad
    move-object v0, v9

    goto/16 :goto_c

    :cond_b0
    move v0, v1

    goto :goto_6d
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "v"

    return-object v0
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method
