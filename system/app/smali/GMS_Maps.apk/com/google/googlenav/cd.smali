.class public Lcom/google/googlenav/cd;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:LK/bn;

.field private final c:Ljava/util/Map;


# direct methods
.method private constructor <init>(ILjava/util/List;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/googlenav/cd;->a:I

    invoke-static {p2}, LK/bn;->a(Ljava/util/Collection;)LK/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/cd;->b:LK/bn;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/cd;->c:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ce;

    iget-object v2, p0, Lcom/google/googlenav/cd;->c:Ljava/util/Map;

    iget-object v3, v0, Lcom/google/googlenav/ce;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_2a
    return-void
.end method

.method public static a(Lam/b;)Lcom/google/googlenav/cd;
    .registers 7

    const/4 v5, 0x2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/b;->d(I)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v5}, Lam/b;->l(I)I

    move-result v3

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v3, :cond_20

    invoke-virtual {p0, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-static {v4}, Lcom/google/googlenav/ce;->a(Lam/b;)Lcom/google/googlenav/ce;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_20
    new-instance v0, Lcom/google/googlenav/cd;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/cd;-><init>(ILjava/util/List;)V

    return-object v0
.end method
