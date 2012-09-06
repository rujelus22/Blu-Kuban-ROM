.class Lsb;
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
        "LrR;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LrW;


# direct methods
.method constructor <init>(LrW;)V
    .registers 2
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lsb;->a:LrW;

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
    .line 554
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 541
    invoke-virtual {p0}, Lsb;->a()LrR;

    move-result-object v0

    return-object v0
.end method

.method public a()LrR;
    .registers 2

    .prologue
    .line 544
    invoke-static {}, Lsj;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LrR;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 564
    invoke-static {}, Lsj;->a()V

    .line 565
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
            "LrR;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 559
    invoke-static {p1}, Lsj;->a(LanD;)V

    .line 560
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 549
    invoke-static {p1}, Lsj;->a(LanG;)V

    .line 550
    return-void
.end method
