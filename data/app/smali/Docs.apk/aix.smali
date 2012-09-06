.class public abstract Laix;
.super Ljava/lang/Object;
.source "ImmutableCollection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)Laix;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Laix",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 323
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 324
    invoke-virtual {p0, v1}, Laix;->a(Ljava/lang/Object;)Laix;

    goto :goto_4

    .line 326
    :cond_12
    return-object p0
.end method

.method public abstract a(Ljava/lang/Object;)Laix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Laix",
            "<TE;>;"
        }
    .end annotation
.end method

.method public varargs a([Ljava/lang/Object;)Laix;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Laix",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 304
    array-length v1, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_c

    aget-object v2, p1, v0

    .line 305
    invoke-virtual {p0, v2}, Laix;->a(Ljava/lang/Object;)Laix;

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 307
    :cond_c
    return-object p0
.end method
