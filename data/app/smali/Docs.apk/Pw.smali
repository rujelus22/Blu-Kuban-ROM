.class LPw;
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
        "LPj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LPr;


# direct methods
.method constructor <init>(LPr;)V
    .registers 2
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, LPw;->a:LPr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LPj;
    .registers 2

    .prologue
    .line 661
    invoke-static {}, LPX;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LPj;

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
    .line 671
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 658
    invoke-virtual {p0}, LPw;->a()LPj;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 681
    invoke-static {}, LPX;->a()V

    .line 682
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
            "LPj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 676
    invoke-static {p1}, LPX;->a(LanD;)V

    .line 677
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 666
    invoke-static {p1}, LPX;->a(LanG;)V

    .line 667
    return-void
.end method
