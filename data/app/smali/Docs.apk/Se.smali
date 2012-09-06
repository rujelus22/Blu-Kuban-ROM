.class LSe;
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
        "LRS;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LRZ;


# direct methods
.method constructor <init>(LRZ;)V
    .registers 2
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, LSe;->a:LRZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LRS;
    .registers 2

    .prologue
    .line 420
    invoke-static {}, LSk;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRS;

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
    .line 430
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 417
    invoke-virtual {p0}, LSe;->a()LRS;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 440
    invoke-static {}, LSk;->a()V

    .line 441
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
            "LRS;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 435
    invoke-static {p1}, LSk;->a(LanD;)V

    .line 436
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 425
    invoke-static {p1}, LSk;->a(LanG;)V

    .line 426
    return-void
.end method
