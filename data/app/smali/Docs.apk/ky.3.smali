.class Lky;
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
        "Lkn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lku;


# direct methods
.method constructor <init>(Lku;)V
    .registers 2
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lky;->a:Lku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 306
    invoke-virtual {p0}, Lky;->a()Lkn;

    move-result-object v0

    return-object v0
.end method

.method public a()Lkn;
    .registers 2

    .prologue
    .line 309
    invoke-static {}, LkD;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkn;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 329
    invoke-static {}, LkD;->a()V

    .line 330
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
            "Lkn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    invoke-static {p1}, LkD;->a(LanD;)V

    .line 325
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 314
    invoke-static {p1}, LkD;->a(LanG;)V

    .line 315
    return-void
.end method
