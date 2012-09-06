.class public Ll/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/e;


# instance fields
.field private final b:Lcom/google/common/collect/cL;

.field private final c:Ljava/util/Set;


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .registers 16
    .parameter

    .prologue
    const-wide v12, 0x40bb580000000000L

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, Lcom/google/common/collect/bG;->f()Lcom/google/common/collect/bH;

    move-result-object v3

    .line 84
    const/4 v0, 0x0

    .line 85
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v4

    .line 89
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

    check-cast v0, Ll/a;

    .line 90
    invoke-virtual {v0}, Ll/a;->b()Ln/aa;

    move-result-object v1

    invoke-static {v1}, Ln/aL;->a(Ln/aa;)Ln/aL;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Ln/aL;->d()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {v1}, Ln/aL;->f()Ln/Q;

    move-result-object v8

    invoke-virtual {v8}, Ln/Q;->e()D

    move-result-wide v8

    div-double/2addr v6, v8

    .line 92
    invoke-virtual {v1}, Ln/aL;->e()I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v1}, Ln/aL;->f()Ln/Q;

    move-result-object v10

    invoke-virtual {v10}, Ln/Q;->e()D

    move-result-wide v10

    div-double/2addr v8, v10

    .line 93
    cmpl-double v6, v6, v12

    if-gez v6, :cond_4e

    cmpl-double v6, v8, v12

    if-ltz v6, :cond_52

    .line 96
    :cond_4e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 97
    goto :goto_16

    .line 99
    :cond_52
    invoke-virtual {v0, v4}, Ll/a;->a(Ljava/util/Set;)V

    .line 100
    const/16 v6, 0xf

    invoke-static {v1, v6}, Ln/am;->a(Ln/aL;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/am;

    .line 101
    invoke-virtual {v3, v1, v0}, Lcom/google/common/collect/bH;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bH;

    goto :goto_5f

    .line 104
    :cond_6f
    iput-object v4, p0, Ll/j;->c:Ljava/util/Set;

    .line 105
    invoke-virtual {v3}, Lcom/google/common/collect/bH;->a()Lcom/google/common/collect/bG;

    move-result-object v0

    iput-object v0, p0, Ll/j;->b:Lcom/google/common/collect/cL;

    .line 108
    return-void
.end method

.method public static a(Ljava/io/Reader;)Ll/j;
    .registers 2
    .parameter

    .prologue
    .line 58
    invoke-static {p0}, Ll/j;->b(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ll/j;->a(Ljava/util/Collection;)Ll/j;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/Collection;)Ll/j;
    .registers 2
    .parameter

    .prologue
    .line 63
    new-instance v0, Ll/j;

    invoke-direct {v0, p0}, Ll/j;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static b(Ljava/io/Reader;)Ljava/util/List;
    .registers 4
    .parameter

    .prologue
    .line 68
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 69
    invoke-static {}, Lcom/google/common/collect/cx;->b()Ljava/util/LinkedList;

    move-result-object v2

    .line 71
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_d
    if-eqz v0, :cond_1d

    .line 72
    invoke-static {v0}, Ll/a;->a(Ljava/lang/String;)Ll/a;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_18

    .line 75
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_18
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 78
    :cond_1d
    return-object v2
.end method


# virtual methods
.method public a(Ln/am;)Ljava/util/Collection;
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0xf

    .line 112
    invoke-virtual {p1}, Ln/am;->b()I

    move-result v0

    .line 113
    if-ge v0, v1, :cond_d

    .line 114
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->f()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 119
    :goto_c
    return-object v0

    .line 115
    :cond_d
    if-ne v0, v1, :cond_16

    .line 116
    iget-object v0, p0, Ll/j;->b:Lcom/google/common/collect/cL;

    invoke-interface {v0, p1}, Lcom/google/common/collect/cL;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_c

    .line 118
    :cond_16
    invoke-virtual {p1, v1}, Ln/am;->a(I)Ln/am;

    move-result-object v0

    .line 119
    iget-object v1, p0, Ll/j;->b:Lcom/google/common/collect/cL;

    invoke-interface {v1, v0}, Lcom/google/common/collect/cL;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1}, Ln/am;->h()Ln/aa;

    move-result-object v1

    invoke-static {v0, v1}, Ll/a;->a(Ljava/util/Collection;Ln/ab;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_c
.end method

.method public a(Ll/f;)V
    .registers 2
    .parameter

    .prologue
    .line 131
    return-void
.end method

.method public a(Ln/m;)Z
    .registers 3
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Ll/j;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
