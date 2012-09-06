.class LaiM;
.super Lalu;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lalu",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LaiK;

.field final synthetic a:Lalu;


# direct methods
.method constructor <init>(LaiK;Lalu;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, LaiM;->a:LaiK;

    iput-object p2, p0, LaiM;->a:Lalu;

    invoke-direct {p0}, Lalu;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 562
    iget-object v0, p0, LaiM;->a:Lalu;

    invoke-virtual {v0}, Lalu;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 566
    iget-object v0, p0, LaiM;->a:Lalu;

    invoke-virtual {v0}, Lalu;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
