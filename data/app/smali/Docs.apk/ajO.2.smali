.class final LajO;
.super LajW;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lajx",
        "<TK;TV;>.ajW;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lajx;


# direct methods
.method constructor <init>(Lajx;)V
    .registers 2
    .parameter

    .prologue
    .line 3816
    iput-object p1, p0, LajO;->a:Lajx;

    invoke-direct {p0, p1}, LajW;-><init>(Lajx;)V

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
    .line 3820
    invoke-virtual {p0}, LajO;->a()Laky;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3816
    invoke-virtual {p0}, LajO;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
