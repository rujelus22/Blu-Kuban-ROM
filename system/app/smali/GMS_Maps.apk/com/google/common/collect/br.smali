.class public abstract Lcom/google/common/collect/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Collection;


# static fields
.field static final c:Lcom/google/common/collect/br;


# instance fields
.field private transient a:Lcom/google/common/collect/ImmutableList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44
    new-instance v0, Lcom/google/common/collect/bu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/collect/bu;-><init>(Lcom/google/common/collect/bs;)V

    sput-object v0, Lcom/google/common/collect/br;->c:Lcom/google/common/collect/br;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Z
.end method

.method public final add(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 111
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract b()Lcom/google/common/collect/dE;
.end method

.method public final clear()V
    .registers 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 67
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/google/common/collect/br;->b()Lcom/google/common/collect/dE;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/bZ;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

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
    .parameter

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/google/common/collect/R;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public d()Lcom/google/common/collect/ImmutableList;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/common/collect/br;->a:Lcom/google/common/collect/ImmutableList;

    .line 157
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/common/collect/br;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/br;->a:Lcom/google/common/collect/ImmutableList;

    :cond_a
    return-object v0
.end method

.method e()Lcom/google/common/collect/ImmutableList;
    .registers 3

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/common/collect/br;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 167
    new-instance v0, Lcom/google/common/collect/bo;

    invoke-virtual {p0}, Lcom/google/common/collect/br;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/bo;-><init>([Ljava/lang/Object;Lcom/google/common/collect/br;)V

    :goto_10
    return-object v0

    .line 163
    :pswitch_11
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_10

    .line 165
    :pswitch_16
    invoke-virtual {p0}, Lcom/google/common/collect/br;->b()Lcom/google/common/collect/dE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/dE;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_10

    .line 161
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_11
        :pswitch_16
    .end packed-switch
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/common/collect/br;->size()I

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

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/common/collect/br;->b()Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 57
    invoke-static {p0}, Lcom/google/common/collect/cU;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/google/common/collect/cU;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    invoke-static {p0}, Lcom/google/common/collect/R;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
