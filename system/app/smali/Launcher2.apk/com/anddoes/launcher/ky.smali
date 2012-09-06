.class final Lcom/anddoes/launcher/ky;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/util/PoolableManager;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final synthetic newInstance()Landroid/util/Poolable;
    .registers 3

    .prologue
    .line 1
    new-instance v0, Lcom/anddoes/launcher/kx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/anddoes/launcher/kx;-><init>(B)V

    return-object v0
.end method

.method public final bridge synthetic onAcquired(Landroid/util/Poolable;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    return-void
.end method

.method public final synthetic onReleased(Landroid/util/Poolable;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/anddoes/launcher/kx;

    invoke-virtual {p1}, Lcom/anddoes/launcher/kx;->c()V

    return-void
.end method
