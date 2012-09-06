.class Ljs;
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
        "Lkd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljo;


# direct methods
.method constructor <init>(Ljo;)V
    .registers 2
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Ljs;->a:Ljo;

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
    .line 368
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 355
    invoke-virtual {p0}, Ljs;->a()Lkd;

    move-result-object v0

    return-object v0
.end method

.method public a()Lkd;
    .registers 2

    .prologue
    .line 358
    invoke-static {}, LjB;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkd;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 378
    invoke-static {}, LjB;->a()V

    .line 379
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
            "Lkd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 373
    invoke-static {p1}, LjB;->a(LanD;)V

    .line 374
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 363
    invoke-static {p1}, LjB;->a(LanG;)V

    .line 364
    return-void
.end method
