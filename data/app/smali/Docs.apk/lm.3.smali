.class Llm;
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
        "LkP;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Llg;


# direct methods
.method constructor <init>(Llg;)V
    .registers 2
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Llm;->a:Llg;

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
    .line 447
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 434
    invoke-virtual {p0}, Llm;->a()LkP;

    move-result-object v0

    return-object v0
.end method

.method public a()LkP;
    .registers 2

    .prologue
    .line 437
    invoke-static {}, Llo;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LkP;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 457
    invoke-static {}, Llo;->a()V

    .line 458
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
            "LkP;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 452
    invoke-static {p1}, Llo;->a(LanD;)V

    .line 453
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 442
    invoke-static {p1}, Llo;->a(LanG;)V

    .line 443
    return-void
.end method
