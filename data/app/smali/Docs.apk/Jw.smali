.class LJw;
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
        "LJH;",
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
    .line 316
    iput-object p1, p0, LJw;->a:LJt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LJH;
    .registers 2

    .prologue
    .line 319
    invoke-static {}, LJC;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJH;

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
    .line 329
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 316
    invoke-virtual {p0}, LJw;->a()LJH;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 339
    invoke-static {}, LJC;->a()V

    .line 340
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
            "LJH;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    invoke-static {p1}, LJC;->a(LanD;)V

    .line 335
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 324
    invoke-static {p1}, LJC;->a(LanG;)V

    .line 325
    return-void
.end method
