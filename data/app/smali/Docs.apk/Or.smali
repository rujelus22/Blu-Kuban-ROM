.class LOr;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements LWZ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LWZ",
        "<",
        "LOk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LOm;


# direct methods
.method constructor <init>(LOm;)V
    .registers 2
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, LOr;->a:LOm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LOk;
    .registers 2

    .prologue
    .line 321
    invoke-static {}, LOs;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOk;

    return-object v0
.end method

.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 318
    invoke-virtual {p0}, LOr;->a()LOk;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 341
    invoke-static {}, LOs;->a()V

    .line 342
    return-void
.end method

.method public a(LanD;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "LOk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    invoke-static {p1}, LOs;->a(LanD;)V

    .line 337
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 326
    invoke-static {p1}, LOs;->a(LanG;)V

    .line 327
    return-void
.end method
