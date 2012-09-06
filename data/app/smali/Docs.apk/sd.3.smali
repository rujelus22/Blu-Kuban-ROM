.class Lsd;
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
        "LrU;",
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
    .line 595
    iput-object p1, p0, Lsd;->a:LrW;

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
    .line 608
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 595
    invoke-virtual {p0}, Lsd;->a()LrU;

    move-result-object v0

    return-object v0
.end method

.method public a()LrU;
    .registers 2

    .prologue
    .line 598
    invoke-static {}, Lsi;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LrU;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 618
    invoke-static {}, Lsi;->a()V

    .line 619
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
            "LrU;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 613
    invoke-static {p1}, Lsi;->a(LanD;)V

    .line 614
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 603
    invoke-static {p1}, Lsi;->a(LanG;)V

    .line 604
    return-void
.end method
