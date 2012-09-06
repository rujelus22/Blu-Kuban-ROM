.class LWo;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LWa;


# direct methods
.method constructor <init>(LWa;)V
    .registers 2
    .parameter

    .prologue
    .line 736
    iput-object p1, p0, LWo;->a:LWa;

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
    .line 749
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 736
    invoke-virtual {p0}, LWo;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 739
    invoke-static {}, LWz;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 759
    invoke-static {}, LWz;->a()V

    .line 760
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 754
    invoke-static {p1}, LWz;->a(LanD;)V

    .line 755
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 744
    invoke-static {p1}, LWz;->a(LanG;)V

    .line 745
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 736
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LWo;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 764
    invoke-static {p1}, LWz;->a(Ljava/lang/String;)V

    .line 765
    return-void
.end method
