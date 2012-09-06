.class LakC;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements LafH;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LafH",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LakB;


# direct methods
.method constructor <init>(LakB;)V
    .registers 2
    .parameter

    .prologue
    .line 2119
    iput-object p1, p0, LakC;->a:LakB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 2119
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, LakC;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map$Entry;)Ljava/lang/Object;
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
    .line 2121
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
