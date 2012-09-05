.class public abstract LK/br;
.super Ljava/lang/Object;

# interfaces
.implements LK/cd;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final transient b:LK/bp;

.field final transient c:I


# direct methods
.method constructor <init>(LK/bp;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK/br;->b:LK/bp;

    iput p2, p0, LK/br;->c:I

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)LK/bi;
.end method

.method a()Z
    .registers 2

    iget-object v0, p0, LK/br;->b:LK/bp;

    invoke-virtual {v0}, LK/bp;->d()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic b(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3

    invoke-virtual {p0, p1}, LK/br;->a(Ljava/lang/Object;)LK/bi;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/util/Map;
    .registers 2

    invoke-virtual {p0}, LK/br;->c()LK/bp;

    move-result-object v0

    return-object v0
.end method

.method public c()LK/bp;
    .registers 2

    iget-object v0, p0, LK/br;->b:LK/bp;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget v0, p0, LK/br;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, LK/cd;

    if-eqz v0, :cond_11

    check-cast p1, LK/cd;

    iget-object v0, p0, LK/br;->b:LK/bp;

    invoke-interface {p1}, LK/cd;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, LK/bp;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, LK/br;->b:LK/bp;

    invoke-virtual {v0}, LK/bp;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LK/br;->b:LK/bp;

    invoke-virtual {v0}, LK/bp;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
