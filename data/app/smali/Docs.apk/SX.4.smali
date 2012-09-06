.class LSX;
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
        "LTr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LSU;


# direct methods
.method constructor <init>(LSU;)V
    .registers 2
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, LSX;->a:LSU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LTr;
    .registers 2

    .prologue
    .line 277
    invoke-static {}, LTc;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTr;

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
    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 274
    invoke-virtual {p0}, LSX;->a()LTr;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 297
    invoke-static {}, LTc;->a()V

    .line 298
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
            "LTr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    invoke-static {p1}, LTc;->a(LanD;)V

    .line 293
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 282
    invoke-static {p1}, LTc;->a(LanG;)V

    .line 283
    return-void
.end method
