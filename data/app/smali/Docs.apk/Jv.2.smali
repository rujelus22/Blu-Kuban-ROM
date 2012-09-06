.class LJv;
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
        "LJP;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LJt;


# direct methods
.method constructor <init>(LJt;)V
    .registers 2
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, LJv;->a:LJt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LJP;
    .registers 2

    .prologue
    .line 292
    invoke-static {}, LJD;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJP;

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
    .line 302
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 289
    invoke-virtual {p0}, LJv;->a()LJP;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 312
    invoke-static {}, LJD;->a()V

    .line 313
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
            "LJP;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    invoke-static {p1}, LJD;->a(LanD;)V

    .line 308
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 297
    invoke-static {p1}, LJD;->a(LanG;)V

    .line 298
    return-void
.end method
