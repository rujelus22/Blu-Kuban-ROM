.class LaiL;
.super Lalr;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lalr",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LaiK;


# direct methods
.method constructor <init>(LaiK;LaiA;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, LaiL;->a:LaiK;

    invoke-direct {p0, p2}, Lalr;-><init>(LaiA;)V

    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 538
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, LaiL;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    .prologue
    .line 541
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
