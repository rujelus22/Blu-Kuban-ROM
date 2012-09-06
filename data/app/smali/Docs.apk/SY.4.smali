.class LSY;
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
        "LTs;",
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
    .line 301
    iput-object p1, p0, LSY;->a:LSU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LTs;
    .registers 2

    .prologue
    .line 304
    invoke-static {}, LTd;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTs;

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
    .line 314
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 301
    invoke-virtual {p0}, LSY;->a()LTs;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 324
    invoke-static {}, LTd;->a()V

    .line 325
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
            "LTs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    invoke-static {p1}, LTd;->a(LanD;)V

    .line 320
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 309
    invoke-static {p1}, LTd;->a(LanG;)V

    .line 310
    return-void
.end method
