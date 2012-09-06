.class public abstract Laip;
.super Lain;
.source "ForwardingSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lain",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Lain;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Laip;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Laip;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 57
    if-eq p1, p0, :cond_c

    invoke-virtual {p0}, Laip;->a()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 61
    invoke-virtual {p0}, Laip;->a()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
