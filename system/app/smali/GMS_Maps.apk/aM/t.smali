.class LaM/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/D;


# instance fields
.field final synthetic a:LaM/m;


# direct methods
.method constructor <init>(LaM/m;)V
    .registers 2
    .parameter

    .prologue
    .line 1816
    iput-object p1, p0, LaM/t;->a:LaM/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ai;)Ljava/lang/Iterable;
    .registers 7
    .parameter

    .prologue
    .line 1819
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 1820
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bU()Ljava/util/Set;

    move-result-object v0

    .line 1821
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1822
    new-instance v3, Lcom/google/googlenav/ui/bx;

    sget v4, Lcom/google/googlenav/ui/bn;->bE:I

    invoke-direct {v3, v0, v4}, Lcom/google/googlenav/ui/bx;-><init>(Ljava/lang/String;I)V

    .line 1824
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1826
    :cond_23
    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1816
    check-cast p1, Lcom/google/googlenav/ai;

    invoke-virtual {p0, p1}, LaM/t;->a(Lcom/google/googlenav/ai;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
