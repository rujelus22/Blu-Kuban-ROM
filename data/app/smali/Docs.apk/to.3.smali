.class Lto;
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
        "LtI;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ltf;


# direct methods
.method constructor <init>(Ltf;)V
    .registers 2
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lto;->a:Ltf;

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
    .line 467
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 454
    invoke-virtual {p0}, Lto;->a()LtI;

    move-result-object v0

    return-object v0
.end method

.method public a()LtI;
    .registers 2

    .prologue
    .line 457
    invoke-static {}, LtA;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LtI;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 477
    invoke-static {}, LtA;->a()V

    .line 478
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
            "LtI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 472
    invoke-static {p1}, LtA;->a(LanD;)V

    .line 473
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 462
    invoke-static {p1}, LtA;->a(LanG;)V

    .line 463
    return-void
.end method
