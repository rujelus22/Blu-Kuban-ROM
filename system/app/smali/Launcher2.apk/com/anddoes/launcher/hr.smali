.class final Lcom/anddoes/launcher/hr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/hn;

.field private final synthetic b:Lcom/anddoes/launcher/ha;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/hn;Lcom/anddoes/launcher/ha;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/hr;->a:Lcom/anddoes/launcher/hn;

    iput-object p2, p0, Lcom/anddoes/launcher/hr;->b:Lcom/anddoes/launcher/ha;

    .line 1640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/anddoes/launcher/hr;->a:Lcom/anddoes/launcher/hn;

    iget-object v0, v0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v0}, Lcom/anddoes/launcher/LauncherModel;->d(Lcom/anddoes/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/anddoes/launcher/hr;->a:Lcom/anddoes/launcher/hn;

    iget-object v0, v0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v0}, Lcom/anddoes/launcher/LauncherModel;->d(Lcom/anddoes/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ha;

    .line 1644
    :goto_18
    iget-object v1, p0, Lcom/anddoes/launcher/hr;->b:Lcom/anddoes/launcher/ha;

    if-ne v1, v0, :cond_23

    if-eqz v0, :cond_23

    .line 1645
    iget-object v0, p0, Lcom/anddoes/launcher/hr;->b:Lcom/anddoes/launcher/ha;

    invoke-interface {v0}, Lcom/anddoes/launcher/ha;->O()V

    .line 1647
    :cond_23
    return-void

    .line 1643
    :cond_24
    const/4 v0, 0x0

    goto :goto_18
.end method
