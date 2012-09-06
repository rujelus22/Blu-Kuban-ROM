.class final Laeq;
.super Ljava/util/AbstractSet;
.source "GenericData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lael;

.field final synthetic a:Laeo;


# direct methods
.method constructor <init>(Laeo;)V
    .registers 4
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Laeq;->a:Laeo;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 207
    new-instance v0, Laei;

    iget-object v1, p1, Laeo;->a:Laef;

    invoke-virtual {v1}, Laef;->a()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Laei;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0}, Laei;->a()Lael;

    move-result-object v0

    iput-object v0, p0, Laeq;->a:Lael;

    .line 208
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Laeq;->a:Laeo;

    iget-object v0, v0, Laeo;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 223
    iget-object v0, p0, Laeq;->a:Lael;

    invoke-virtual {v0}, Lael;->clear()V

    .line 224
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Laep;

    iget-object v1, p0, Laeq;->a:Laeo;

    iget-object v2, p0, Laeq;->a:Lael;

    invoke-direct {v0, v1, v2}, Laep;-><init>(Laeo;Lael;)V

    return-object v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 217
    iget-object v0, p0, Laeq;->a:Laeo;

    iget-object v0, v0, Laeo;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Laeq;->a:Lael;

    invoke-virtual {v1}, Lael;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
