.class LMV;
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
        "LMD;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LME;


# direct methods
.method constructor <init>(LME;)V
    .registers 2
    .parameter

    .prologue
    .line 672
    iput-object p1, p0, LMV;->a:LME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LMD;
    .registers 2

    .prologue
    .line 675
    invoke-static {}, LNc;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMD;

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
    .line 685
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 672
    invoke-virtual {p0}, LMV;->a()LMD;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 695
    invoke-static {}, LNc;->a()V

    .line 696
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
            "LMD;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 690
    invoke-static {p1}, LNc;->a(LanD;)V

    .line 691
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 680
    invoke-static {p1}, LNc;->a(LanG;)V

    .line 681
    return-void
.end method
