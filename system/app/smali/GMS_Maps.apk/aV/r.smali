.class public LaV/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static a:I


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x14

    sput v0, LaV/r;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LaV/r;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, LaV/r;->a:I

    if-le p2, v0, :cond_9

    sget p2, LaV/r;->a:I

    :cond_9
    iput-object p1, p0, LaV/r;->b:Ljava/lang/String;

    if-nez p2, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_12
    iput-object v0, p0, LaV/r;->c:Ljava/util/ArrayList;

    return-void

    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_12
.end method

.method private a(II)Lam/b;
    .registers 5

    new-instance v0, Lam/b;

    sget-object v1, LbD/gi;->d:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lam/b;->h(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lam/b;->h(II)V

    return-object v0
.end method

.method private a(Lcom/google/common/base/w;)Ljava/util/ArrayList;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LaV/r;->c:Ljava/util/ArrayList;

    invoke-static {v1, p1}, LK/J;->a(Ljava/util/Collection;Lcom/google/common/base/w;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public a(I)LaV/q;
    .registers 3

    iget-object v0, p0, LaV/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaV/q;

    return-object v0
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, LaV/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public a(LaV/q;)V
    .registers 4

    iget-object v0, p0, LaV/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, LaV/r;->a:I

    if-lt v0, v1, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, LaV/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a
.end method

.method public a(LaV/r;)V
    .registers 4

    iget-object v0, p1, LaV/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaV/q;

    invoke-virtual {p0, v0}, LaV/r;->b(LaV/q;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LaV/r;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaV/r;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 3

    new-instance v0, LaV/s;

    invoke-direct {v0, p0, p1}, LaV/s;-><init>(LaV/r;I)V

    invoke-direct {p0, v0}, LaV/r;->a(Lcom/google/common/base/w;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaV/r;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public b(LaV/q;)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_3
    iget-object v0, p0, LaV/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_42

    iget-object v0, p0, LaV/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaV/q;

    if-nez v1, :cond_2c

    invoke-virtual {p1}, LaV/q;->f()I

    move-result v3

    invoke-virtual {v0}, LaV/q;->f()I

    move-result v4

    if-ge v3, v4, :cond_2c

    iget-object v0, p0, LaV/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    move v1, v2

    :goto_29
    move v2, v1

    move v1, v0

    goto :goto_3

    :cond_2c
    invoke-virtual {p1, v0}, LaV/q;->a(LaV/q;)Z

    move-result v0

    if-eqz v0, :cond_3d

    if-nez v1, :cond_35

    :cond_34
    return-void

    :cond_35
    iget-object v0, p0, LaV/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    move v1, v2

    goto :goto_29

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    move v1, v2

    goto :goto_29

    :cond_42
    if-nez v1, :cond_47

    invoke-virtual {p0, p1}, LaV/r;->a(LaV/q;)V

    :cond_47
    :goto_47
    iget-object v0, p0, LaV/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, LaV/r;->a:I

    if-le v0, v1, :cond_34

    iget-object v0, p0, LaV/r;->c:Ljava/util/ArrayList;

    iget-object v1, p0, LaV/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_47
.end method

.method public c()LaV/r;
    .registers 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaV/r;

    iget-object v1, p0, LaV/r;->b:Ljava/lang/String;

    iput-object v1, v0, LaV/r;->b:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, LaV/r;->c:Ljava/util/ArrayList;

    iget-object v1, v0, LaV/r;->c:Ljava/util/ArrayList;

    iget-object v2, p0, LaV/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_18
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Superclass does not support clone"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LaV/r;->c()LaV/r;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    iget-object v0, p0, LaV/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public e()Lam/b;
    .registers 9

    const/4 v7, 0x1

    const/4 v1, 0x0

    new-instance v4, Lam/b;

    sget-object v0, LbD/gi;->c:Lam/e;

    invoke-direct {v4, v0}, Lam/b;-><init>(Lam/e;)V

    const/4 v0, -0x1

    move v2, v0

    move v3, v1

    move v0, v1

    :goto_d
    invoke-virtual {p0}, LaV/r;->d()I

    move-result v5

    if-ge v0, v5, :cond_30

    invoke-virtual {p0, v0}, LaV/r;->a(I)LaV/q;

    move-result-object v5

    invoke-virtual {v5}, LaV/q;->k()I

    move-result v6

    if-eq v6, v2, :cond_2b

    if-lez v3, :cond_27

    invoke-direct {p0, v2, v3}, LaV/r;->a(II)Lam/b;

    move-result-object v2

    invoke-virtual {v4, v7, v2}, Lam/b;->a(ILam/b;)V

    move v3, v1

    :cond_27
    invoke-virtual {v5}, LaV/q;->k()I

    move-result v2

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_30
    if-lez v3, :cond_39

    invoke-direct {p0, v2, v3}, LaV/r;->a(II)Lam/b;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Lam/b;->a(ILam/b;)V

    :cond_39
    return-object v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, LaV/r;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    check-cast p1, LaV/r;

    iget-object v0, p0, LaV/r;->c:Ljava/util/ArrayList;

    iget-object v1, p1, LaV/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, LaV/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LaV/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaV/q;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, LaV/q;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_37
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
