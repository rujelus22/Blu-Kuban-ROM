.class LajS;
.super LahG;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LahG",
        "<",
        "Laka",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LajQ;


# direct methods
.method constructor <init>(LajQ;Laka;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3263
    iput-object p1, p0, LajS;->a:LajQ;

    invoke-direct {p0, p2}, LahG;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Laka;)Laka;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3266
    invoke-interface {p1}, Laka;->d()Laka;

    move-result-object v0

    .line 3267
    iget-object v1, p0, LajS;->a:LajQ;

    iget-object v1, v1, LajQ;->a:Laka;

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 3263
    check-cast p1, Laka;

    invoke-virtual {p0, p1}, LajS;->a(Laka;)Laka;

    move-result-object v0

    return-object v0
.end method
