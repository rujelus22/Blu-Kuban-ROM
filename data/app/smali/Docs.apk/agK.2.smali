.class final LagK;
.super LagM;
.source "LocalCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lagu",
        "<TK;TV;>.agM;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lagu;


# direct methods
.method constructor <init>(Lagu;)V
    .registers 2
    .parameter

    .prologue
    .line 4456
    iput-object p1, p0, LagK;->a:Lagu;

    invoke-direct {p0, p1}, LagM;-><init>(Lagu;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4460
    invoke-virtual {p0}, LagK;->a()Lahv;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 4456
    invoke-virtual {p0}, LagK;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
