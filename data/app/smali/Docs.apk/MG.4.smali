.class LMG;
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
        "LNp;",
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
    .line 699
    iput-object p1, p0, LMG;->a:LME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LNp;
    .registers 2

    .prologue
    .line 702
    invoke-static {}, LNe;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LNp;

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
    .line 712
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 699
    invoke-virtual {p0}, LMG;->a()LNp;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 722
    invoke-static {}, LNe;->a()V

    .line 723
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
            "LNp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 717
    invoke-static {p1}, LNe;->a(LanD;)V

    .line 718
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 707
    invoke-static {p1}, LNe;->a(LanG;)V

    .line 708
    return-void
.end method
