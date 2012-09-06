.class LLa;
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
        "LJq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LKT;


# direct methods
.method constructor <init>(LKT;)V
    .registers 2
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, LLa;->a:LKT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LKR;
    .registers 2

    .prologue
    .line 414
    invoke-static {}, LLd;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LKR;

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
    .line 424
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 411
    invoke-virtual {p0}, LLa;->a()LKR;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 434
    invoke-static {}, LLd;->a()V

    .line 435
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
            "LJq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 429
    invoke-static {p1}, LLd;->a(LanD;)V

    .line 430
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 419
    invoke-static {p1}, LLd;->a(LanG;)V

    .line 420
    return-void
.end method
