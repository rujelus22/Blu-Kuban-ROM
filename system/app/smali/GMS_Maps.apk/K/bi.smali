.class public abstract LK/bi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Collection;


# static fields
.field static final c:LK/bi;


# instance fields
.field private transient a:LK/bn;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, LK/bl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LK/bl;-><init>(LK/bj;)V

    sput-object v0, LK/bi;->c:LK/bi;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Z
.end method

.method public final add(Ljava/lang/Object;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract b()LK/cC;
.end method

.method public final clear()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    if-eqz p1, :cond_e

    invoke-virtual {p0}, LK/bi;->b()LK/cC;

    move-result-object v0

    invoke-static {v0, p1}, LK/bI;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3

    invoke-static {p0, p1}, LK/J;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public d()LK/bn;
    .registers 2

    iget-object v0, p0, LK/bi;->a:LK/bn;

    if-nez v0, :cond_a

    invoke-virtual {p0}, LK/bi;->e()LK/bn;

    move-result-object v0

    iput-object v0, p0, LK/bi;->a:LK/bn;

    :cond_a
    return-object v0
.end method

.method e()LK/bn;
    .registers 3

    invoke-virtual {p0}, LK/bi;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    new-instance v0, LK/bh;

    invoke-virtual {p0}, LK/bi;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p0}, LK/bh;-><init>([Ljava/lang/Object;LK/bi;)V

    :goto_10
    return-object v0

    :pswitch_11
    invoke-static {}, LK/bn;->f()LK/bn;

    move-result-object v0

    goto :goto_10

    :pswitch_16
    invoke-virtual {p0}, LK/bi;->b()LK/cC;

    move-result-object v0

    invoke-virtual {v0}, LK/cC;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LK/bn;->a(Ljava/lang/Object;)LK/bn;

    move-result-object v0

    goto :goto_10

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_11
        :pswitch_16
    .end packed-switch
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, LK/bi;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, LK/bi;->b()LK/cC;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, LK/cf;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1}, LK/cf;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, LK/J;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
