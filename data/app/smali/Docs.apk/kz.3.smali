.class Lkz;
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
        "Lkk;",
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
    .line 333
    iput-object p1, p0, Lkz;->a:Lku;

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
    .line 346
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 333
    invoke-virtual {p0}, Lkz;->a()Lkk;

    move-result-object v0

    return-object v0
.end method

.method public a()Lkk;
    .registers 2

    .prologue
    .line 336
    invoke-static {}, LkB;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkk;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 356
    invoke-static {}, LkB;->a()V

    .line 357
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
            "Lkk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    invoke-static {p1}, LkB;->a(LanD;)V

    .line 352
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 341
    invoke-static {p1}, LkB;->a(LanG;)V

    .line 342
    return-void
.end method
