.class public abstract LK/bn;
.super LK/bi;

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, LK/bi;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Iterable;)LK/bn;
    .registers 2

    invoke-static {p0}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_10

    invoke-static {p0}, LK/J;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, LK/bn;->a(Ljava/util/Collection;)LK/bn;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, LK/bn;->a(Ljava/util/Iterator;)LK/bn;

    move-result-object v0

    goto :goto_f
.end method

.method public static a(Ljava/lang/Object;)LK/bn;
    .registers 2

    new-instance v0, LK/cx;

    invoke-direct {v0, p0}, LK/cx;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)LK/bn;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, LK/bn;->c([Ljava/lang/Object;)LK/bn;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LK/bn;
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, LK/bn;->c([Ljava/lang/Object;)LK/bn;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Collection;)LK/bn;
    .registers 3

    instance-of v0, p0, LK/bi;

    if-eqz v0, :cond_15

    check-cast p0, LK/bi;

    invoke-virtual {p0}, LK/bi;->d()LK/bn;

    move-result-object v0

    invoke-virtual {v0}, LK/bn;->a()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v0}, LK/bn;->b(Ljava/util/Collection;)LK/bn;

    move-result-object v0

    :cond_14
    :goto_14
    return-object v0

    :cond_15
    invoke-static {p0}, LK/bn;->b(Ljava/util/Collection;)LK/bn;

    move-result-object v0

    goto :goto_14
.end method

.method public static a(Ljava/util/Iterator;)LK/bn;
    .registers 2

    invoke-static {p0}, LK/bR;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, LK/bn;->b(Ljava/util/Collection;)LK/bn;

    move-result-object v0

    return-object v0
.end method

.method public static a([Ljava/lang/Object;)LK/bn;
    .registers 2

    invoke-static {p0}, LK/bn;->b([Ljava/lang/Object;)LK/bn;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5

    if-nez p0, :cond_1b

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    return-object p0
.end method

.method private static b(Ljava/util/Collection;)LK/bn;
    .registers 4

    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    array-length v0, v1

    packed-switch v0, :pswitch_data_1c

    invoke-static {v1}, LK/bn;->c([Ljava/lang/Object;)LK/bn;

    move-result-object v0

    :goto_c
    return-object v0

    :pswitch_d
    invoke-static {}, LK/bn;->f()LK/bn;

    move-result-object v0

    goto :goto_c

    :pswitch_12
    new-instance v0, LK/cx;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, LK/cx;-><init>(Ljava/lang/Object;)V

    goto :goto_c

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method

.method public static b([Ljava/lang/Object;)LK/bn;
    .registers 3

    array-length v0, p0

    packed-switch v0, :pswitch_data_1e

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, LK/bn;->c([Ljava/lang/Object;)LK/bn;

    move-result-object v0

    :goto_e
    return-object v0

    :pswitch_f
    invoke-static {}, LK/bn;->f()LK/bn;

    move-result-object v0

    goto :goto_e

    :pswitch_14
    new-instance v0, LK/cx;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, LK/cx;-><init>(Ljava/lang/Object;)V

    goto :goto_e

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_f
        :pswitch_14
    .end packed-switch
.end method

.method private static varargs c([Ljava/lang/Object;)LK/bn;
    .registers 3

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_c

    aget-object v1, p0, v0

    invoke-static {v1, v0}, LK/bn;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    new-instance v0, LK/cj;

    invoke-direct {v0, p0}, LK/cj;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static f()LK/bn;
    .registers 1

    sget-object v0, LK/aS;->a:LK/aS;

    return-object v0
.end method


# virtual methods
.method public abstract a(II)LK/bn;
.end method

.method public abstract a(I)LK/cD;
.end method

.method public final add(ILjava/lang/Object;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b()LK/cC;
    .registers 2

    invoke-virtual {p0}, LK/bn;->c()LK/cD;

    move-result-object v0

    return-object v0
.end method

.method public c()LK/cD;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LK/bn;->a(I)LK/cD;

    move-result-object v0

    return-object v0
.end method

.method public d()LK/bn;
    .registers 1

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, LK/bR;->a(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, LK/bR;->b(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, LK/bn;->b()LK/cC;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    invoke-virtual {p0}, LK/bn;->c()LK/cD;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3

    invoke-virtual {p0, p1}, LK/bn;->a(I)LK/cD;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .registers 4

    invoke-virtual {p0, p1, p2}, LK/bn;->a(II)LK/bn;

    move-result-object v0

    return-object v0
.end method
