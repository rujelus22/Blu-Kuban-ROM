.class public Lr/d;
.super Ljava/lang/Object;

# interfaces
.implements Lr/b;


# instance fields
.field private final b:LK/cd;

.field private final c:Ljava/util/Set;


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .registers 16

    const-wide v12, 0x40bb580000000000L

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bz;->f()LK/bA;

    move-result-object v3

    const/4 v0, 0x0

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :cond_16
    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/a;

    invoke-virtual {v0}, Lr/a;->b()Lt/V;

    move-result-object v1

    invoke-static {v1}, Lt/au;->a(Lt/V;)Lt/au;

    move-result-object v1

    invoke-virtual {v1}, Lt/au;->d()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {v1}, Lt/au;->f()Lt/L;

    move-result-object v8

    invoke-virtual {v8}, Lt/L;->e()D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-virtual {v1}, Lt/au;->e()I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v1}, Lt/au;->f()Lt/L;

    move-result-object v10

    invoke-virtual {v10}, Lt/L;->e()D

    move-result-wide v10

    div-double/2addr v8, v10

    cmpl-double v6, v6, v12

    if-gez v6, :cond_4e

    cmpl-double v6, v8, v12

    if-ltz v6, :cond_52

    :cond_4e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_16

    :cond_52
    invoke-virtual {v0, v4}, Lr/a;->a(Ljava/util/Set;)V

    const/16 v6, 0xf

    invoke-static {v1, v6}, Lt/af;->a(Lt/au;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/af;

    invoke-virtual {v3, v1, v0}, LK/bA;->a(Ljava/lang/Object;Ljava/lang/Object;)LK/bA;

    goto :goto_5f

    :cond_6f
    iput-object v4, p0, Lr/d;->c:Ljava/util/Set;

    invoke-virtual {v3}, LK/bA;->a()LK/bz;

    move-result-object v0

    iput-object v0, p0, Lr/d;->b:LK/cd;

    return-void
.end method

.method public static a(Ljava/io/Reader;)Lr/d;
    .registers 2

    invoke-static {p0}, Lr/d;->b(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lr/d;->a(Ljava/util/Collection;)Lr/d;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/Collection;)Lr/d;
    .registers 2

    new-instance v0, Lr/d;

    invoke-direct {v0, p0}, Lr/d;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static b(Ljava/io/Reader;)Ljava/util/List;
    .registers 4

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {}, LK/bR;->b()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_d
    if-eqz v0, :cond_1d

    invoke-static {v0}, Lr/a;->a(Ljava/lang/String;)Lr/a;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_1d
    return-object v2
.end method


# virtual methods
.method public a(Lt/af;)Ljava/util/Collection;
    .registers 4

    const/16 v1, 0xf

    invoke-virtual {p1}, Lt/af;->b()I

    move-result v0

    if-ge v0, v1, :cond_d

    invoke-static {}, LK/bu;->f()LK/bu;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lr/d;->b:LK/cd;

    invoke-interface {v0, p1}, LK/cd;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_c

    :cond_16
    invoke-virtual {p1, v1}, Lt/af;->a(I)Lt/af;

    move-result-object v0

    iget-object v1, p0, Lr/d;->b:LK/cd;

    invoke-interface {v1, v0}, LK/cd;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1}, Lt/af;->i()Lt/V;

    move-result-object v1

    invoke-static {v0, v1}, Lr/a;->a(Ljava/util/Collection;Lt/W;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_c
.end method

.method public a(Lr/c;)V
    .registers 2

    return-void
.end method

.method public a(Lt/m;)Z
    .registers 3

    iget-object v0, p0, Lr/d;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
