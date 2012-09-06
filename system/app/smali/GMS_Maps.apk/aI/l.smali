.class public LaI/l;
.super LaI/c;
.source "SourceFile"


# instance fields
.field private b:Lax/m;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, LaI/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3
    .parameter

    .prologue
    .line 116
    const/4 v0, 0x5

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    const-string v0, "v"

    return-object v0
.end method

.method public b(LaI/s;)Z
    .registers 3
    .parameter

    .prologue
    .line 90
    invoke-virtual {p1}, LaI/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p1}, LaI/l;->e(LaI/s;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public c()I
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x4

    return v0
.end method

.method public c(LaI/s;)Z
    .registers 3
    .parameter

    .prologue
    .line 95
    invoke-virtual {p1}, LaI/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected d(LaI/s;)LaI/z;
    .registers 15
    .parameter

    .prologue
    const/4 v12, 0x5

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v1, LaI/z;

    invoke-direct {v1, p1}, LaI/z;-><init>(LaI/s;)V

    .line 34
    invoke-virtual {p1}, LaI/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, v1

    .line 85
    :goto_13
    return-object v0

    .line 38
    :cond_14
    invoke-static {}, LaI/o;->a()LaI/o;

    .line 40
    iget-object v0, p0, LaI/l;->b:Lax/m;

    if-eqz v0, :cond_d0

    iget-object v0, p0, LaI/l;->b:Lax/m;

    .line 43
    :goto_1d
    invoke-interface {v0}, Lax/m;->g()Lax/r;

    move-result-object v3

    invoke-interface {v3}, Lax/r;->b()Ljava/util/List;

    move-result-object v3

    .line 45
    invoke-virtual {p1}, LaI/s;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 48
    invoke-interface {v0}, Lax/m;->g()Lax/r;

    move-result-object v7

    .line 50
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4c
    :goto_4c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    invoke-interface {v7, v0}, Lax/r;->a(Ljava/lang/String;)Lax/A;

    move-result-object v9

    .line 52
    if-eqz v9, :cond_4c

    invoke-virtual {v9}, Lax/A;->n()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 58
    invoke-virtual {v9}, Lax/A;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_da

    const-string v0, ""

    .line 59
    :goto_6c
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 61
    invoke-virtual {p0}, LaI/l;->i()I

    move-result v0

    move v3, v4

    .line 66
    :goto_77
    if-eqz v3, :cond_4c

    .line 67
    invoke-static {v7, v9}, LaI/h;->a(Lax/r;Lax/A;)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-virtual {v9}, Lax/A;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_87

    .line 72
    :cond_87
    new-instance v10, LaI/y;

    invoke-direct {v10}, LaI/y;-><init>()V

    invoke-virtual {v10, v3}, LaI/y;->a(Ljava/lang/String;)LaI/y;

    move-result-object v10

    invoke-virtual {v9}, Lax/A;->h()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, LaI/y;->b(Ljava/lang/String;)LaI/y;

    move-result-object v10

    invoke-virtual {v10, v3}, LaI/y;->c(Ljava/lang/String;)LaI/y;

    move-result-object v3

    invoke-virtual {v3, v12}, LaI/y;->a(I)LaI/y;

    move-result-object v3

    const/4 v10, 0x4

    invoke-virtual {v3, v10}, LaI/y;->b(I)LaI/y;

    move-result-object v3

    invoke-virtual {v3, v0}, LaI/y;->c(I)LaI/y;

    move-result-object v0

    invoke-virtual {v9}, Lax/A;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, LaI/y;->d(Ljava/lang/String;)LaI/y;

    move-result-object v0

    invoke-virtual {v9}, Lax/A;->j()Lat/B;

    move-result-object v3

    invoke-virtual {v0, v3}, LaI/y;->a(Lat/B;)LaI/y;

    move-result-object v0

    invoke-virtual {p0, v12}, LaI/l;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, LaI/y;->d(I)LaI/y;

    move-result-object v0

    const-string v3, "google.star:"

    invoke-virtual {v0, v3}, LaI/y;->e(Ljava/lang/String;)LaI/y;

    move-result-object v0

    invoke-virtual {v0}, LaI/y;->a()LaI/w;

    move-result-object v0

    invoke-virtual {v1, v0}, LaI/z;->b(LaI/w;)V

    goto/16 :goto_4c

    .line 40
    :cond_d0
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->f()Lax/m;

    move-result-object v0

    goto/16 :goto_1d

    .line 58
    :cond_da
    invoke-virtual {v9}, Lax/A;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_6c

    .line 62
    :cond_e3
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 64
    invoke-virtual {p0}, LaI/l;->i()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    move v3, v4

    goto :goto_77

    :cond_f1
    move-object v0, v1

    .line 85
    goto/16 :goto_13

    :cond_f4
    move v0, v2

    move v3, v2

    goto :goto_77
.end method

.method public d()[I
    .registers 4

    .prologue
    .line 121
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput v2, v0, v1

    return-object v0
.end method
