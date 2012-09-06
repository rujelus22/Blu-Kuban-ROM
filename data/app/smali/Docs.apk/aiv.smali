.class public abstract Laiv;
.super Ljava/lang/Object;
.source "ImmutableCollection.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Collection",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final a:Laiv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laiv",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient a:LaiA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiA",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44
    new-instance v0, Laiy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laiy;-><init>(Laiw;)V

    sput-object v0, Laiv;->a:Laiv;

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
.method public a()LaiA;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LaiA",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Laiv;->a:LaiA;

    .line 157
    if-nez v0, :cond_a

    invoke-virtual {p0}, Laiv;->b()LaiA;

    move-result-object v0

    iput-object v0, p0, Laiv;->a:LaiA;

    :cond_a
    return-object v0
.end method

.method public abstract a()Lalu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lalu",
            "<TE;>;"
        }
    .end annotation
.end method

.method abstract a()Z
.end method

.method public final add(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method b()LaiA;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LaiA",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Laiv;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 167
    new-instance v0, Laiu;

    invoke-virtual {p0}, Laiv;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Laiu;-><init>([Ljava/lang/Object;Laiv;)V

    :goto_10
    return-object v0

    .line 163
    :pswitch_11
    invoke-static {}, LaiA;->c()LaiA;

    move-result-object v0

    goto :goto_10

    .line 165
    :pswitch_16
    invoke-virtual {p0}, Laiv;->a()Lalu;

    move-result-object v0

    invoke-virtual {v0}, Lalu;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LaiA;->a(Ljava/lang/Object;)LaiA;

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

    invoke-virtual {p0}, Laiv;->a()Lalu;

    move-result-object v0

    invoke-static {v0, p1}, LaiY;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p0, p1}, LahZ;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 77
    invoke-virtual {p0}, Laiv;->size()I

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
    invoke-virtual {p0}, Laiv;->a()Lalu;

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

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
    invoke-static {p0}, LakF;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p0, p1}, LakF;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    invoke-static {p0}, LahZ;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
