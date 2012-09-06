.class final Laec;
.super Ljava/util/AbstractSet;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LadZ;


# direct methods
.method constructor <init>(LadZ;)V
    .registers 2
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Laec;->a:LadZ;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 359
    new-instance v0, Laeb;

    iget-object v1, p0, Laec;->a:LadZ;

    invoke-direct {v0, v1}, Laeb;-><init>(LadZ;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Laec;->a:LadZ;

    iget v0, v0, LadZ;->a:I

    return v0
.end method
