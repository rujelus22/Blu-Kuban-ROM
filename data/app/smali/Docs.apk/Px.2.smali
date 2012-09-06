.class LPx;
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
        "LNq;",
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
    .line 685
    iput-object p1, p0, LPx;->a:LPr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LOR;
    .registers 2

    .prologue
    .line 688
    invoke-static {}, LPV;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOR;

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
    .line 698
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 685
    invoke-virtual {p0}, LPx;->a()LOR;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 708
    invoke-static {}, LPV;->a()V

    .line 709
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
            "LNq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 703
    invoke-static {p1}, LPV;->a(LanD;)V

    .line 704
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 693
    invoke-static {p1}, LPV;->a(LanG;)V

    .line 694
    return-void
.end method
