.class LSZ;
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
        "LST;",
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
    .line 328
    iput-object p1, p0, LSZ;->a:LSU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LST;
    .registers 2

    .prologue
    .line 331
    invoke-static {}, LTb;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LST;

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
    .line 341
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 328
    invoke-virtual {p0}, LSZ;->a()LST;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 351
    invoke-static {}, LTb;->a()V

    .line 352
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
            "LST;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    invoke-static {p1}, LTb;->a(LanD;)V

    .line 347
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 336
    invoke-static {p1}, LTb;->a(LanG;)V

    .line 337
    return-void
.end method
