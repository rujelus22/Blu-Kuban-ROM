.class LJx;
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
        "LJQ;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LJt;


# direct methods
.method constructor <init>(LJt;)V
    .registers 2
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, LJx;->a:LJt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LJQ;
    .registers 2

    .prologue
    .line 346
    invoke-static {}, LJE;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJQ;

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
    .line 356
    const-class v0, LanN;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 343
    invoke-virtual {p0}, LJx;->a()LJQ;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 366
    invoke-static {}, LJE;->a()V

    .line 367
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
            "LJQ;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    invoke-static {p1}, LJE;->a(LanD;)V

    .line 362
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 351
    invoke-static {p1}, LJE;->a(LanG;)V

    .line 352
    return-void
.end method
