.class LIV;
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
        "LII;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LIN;


# direct methods
.method constructor <init>(LIN;)V
    .registers 2
    .parameter

    .prologue
    .line 597
    iput-object p1, p0, LIV;->a:LIN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LII;
    .registers 2

    .prologue
    .line 600
    invoke-static {}, LJb;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LII;

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
    .line 610
    const-class v0, LanN;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 597
    invoke-virtual {p0}, LIV;->a()LII;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 620
    invoke-static {}, LJb;->a()V

    .line 621
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
            "LII;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 615
    invoke-static {p1}, LJb;->a(LanD;)V

    .line 616
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 605
    invoke-static {p1}, LJb;->a(LanG;)V

    .line 606
    return-void
.end method
