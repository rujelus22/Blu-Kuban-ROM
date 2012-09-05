.class Lav/f;
.super Lat/a;


# instance fields
.field final synthetic a:Lav/d;


# direct methods
.method private constructor <init>(Lav/d;)V
    .registers 2

    iput-object p1, p0, Lav/f;->a:Lav/d;

    invoke-direct {p0}, Lat/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lav/d;Lav/e;)V
    .registers 3

    invoke-direct {p0, p1}, Lav/f;-><init>(Lav/d;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x48

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6

    new-instance v1, Lam/b;

    sget-object v0, LbD/bu;->a:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    const/4 v0, 0x0

    :goto_8
    iget-object v2, p0, Lav/f;->a:Lav/d;

    invoke-static {v2}, Lav/d;->a(Lav/d;)[Lav/c;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_24

    const/4 v2, 0x1

    iget-object v3, p0, Lav/f;->a:Lav/d;

    invoke-static {v3}, Lav/d;->a(Lav/d;)[Lav/c;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-interface {v3}, Lav/c;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lam/b;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_24
    invoke-static {p1, v1}, Lam/g;->a(Ljava/io/DataOutput;Lam/b;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 9

    const/4 v6, 0x1

    sget-object v0, LbD/bu;->b:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v1

    iget-object v0, p0, Lav/f;->a:Lav/d;

    invoke-static {v0}, Lav/d;->b(Lav/d;)Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_f
    return v6

    :cond_10
    invoke-virtual {v1, v6}, Lam/b;->l(I)I

    move-result v2

    iget-object v0, p0, Lav/f;->a:Lav/d;

    invoke-static {v0}, Lav/d;->c(Lav/d;)Ljava/util/Hashtable;

    move-result-object v3

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v2, :cond_38

    invoke-virtual {v1, v6, v0}, Lam/b;->c(II)I

    move-result v4

    iget-object v5, p0, Lav/f;->a:Lav/d;

    invoke-static {v5, v4}, Lav/d;->a(Lav/d;I)Lav/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Lav/c;->d()Z

    move-result v5

    if-nez v5, :cond_35

    iget-object v5, p0, Lav/f;->a:Lav/d;

    invoke-static {v5, v4}, Lav/d;->a(Lav/d;Lav/c;)V

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_38
    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lav/c;

    iget-object v2, p0, Lav/f;->a:Lav/d;

    invoke-static {v2}, Lav/d;->d(Lav/d;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lav/c;->c()V

    goto :goto_3c

    :cond_55
    iget-object v0, p0, Lav/f;->a:Lav/d;

    invoke-static {v0}, Lav/d;->e(Lav/d;)V

    goto :goto_f
.end method
