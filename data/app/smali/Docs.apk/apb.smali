.class final Lapb;
.super Ljava/lang/Object;
.source "InternalContext.java"


# instance fields
.field private a:Laqk;

.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Laql;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Laoo",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lakz;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lapb;->a:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lapb;->a:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Laoo;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Laoo",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lapb;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoo;

    .line 47
    if-nez v0, :cond_14

    .line 48
    new-instance v0, Laoo;

    invoke-direct {v0}, Laoo;-><init>()V

    .line 49
    iget-object v1, p0, Lapb;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_14
    return-object v0
.end method

.method public a()Laqk;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lapb;->a:Laqk;

    return-object v0
.end method

.method public a(Laqk;Ljava/lang/Object;)Laqk;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lapb;->a:Laqk;

    .line 61
    iput-object p1, p0, Lapb;->a:Laqk;

    .line 62
    iget-object v1, p0, Lapb;->a:Ljava/util/LinkedList;

    new-instance v2, Laql;

    invoke-direct {v2, p1, p2}, Laql;-><init>(Laqk;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 63
    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lapb;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public a(Lant;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lant",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v1, p0, Lapb;->a:Ljava/util/LinkedList;

    new-instance v2, Laql;

    if-nez p1, :cond_e

    const/4 v0, 0x0

    :goto_7
    invoke-direct {v2, v0, p2}, Laql;-><init>(Laqk;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 75
    return-void

    .line 74
    :cond_e
    invoke-static {p1}, Laqk;->a(Lant;)Laqk;

    move-result-object v0

    goto :goto_7
.end method

.method public a(Laqk;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    invoke-virtual {p0}, Lapb;->a()V

    .line 69
    iput-object p1, p0, Lapb;->a:Laqk;

    .line 70
    return-void
.end method
