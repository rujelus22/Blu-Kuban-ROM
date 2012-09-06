.class LIW;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements LWX;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LWX",
        "<",
        "LIF;",
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
    .line 624
    iput-object p1, p0, LIW;->a:LIN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LIF;
    .registers 2

    .prologue
    .line 627
    invoke-static {}, LIZ;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIF;

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
    .line 637
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 624
    invoke-virtual {p0}, LIW;->a()LIF;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 647
    invoke-static {}, LIZ;->a()V

    .line 648
    return-void
.end method

.method public a(LIF;)V
    .registers 2
    .parameter

    .prologue
    .line 652
    invoke-static {p1}, LIZ;->a(LIF;)V

    .line 653
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
            "LIF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 642
    invoke-static {p1}, LIZ;->a(LanD;)V

    .line 643
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 632
    invoke-static {p1}, LIZ;->a(LanG;)V

    .line 633
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 624
    check-cast p1, LIF;

    invoke-virtual {p0, p1}, LIW;->a(LIF;)V

    return-void
.end method
