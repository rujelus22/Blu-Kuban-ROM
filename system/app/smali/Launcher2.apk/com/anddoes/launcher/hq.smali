.class final Lcom/anddoes/launcher/hq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/hn;

.field private final synthetic b:Lcom/anddoes/launcher/ha;

.field private final synthetic c:Ljava/util/ArrayList;

.field private final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/hn;Lcom/anddoes/launcher/ha;Ljava/util/ArrayList;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/hq;->a:Lcom/anddoes/launcher/hn;

    iput-object p2, p0, Lcom/anddoes/launcher/hq;->b:Lcom/anddoes/launcher/ha;

    iput-object p3, p0, Lcom/anddoes/launcher/hq;->c:Ljava/util/ArrayList;

    iput-boolean p4, p0, Lcom/anddoes/launcher/hq;->d:Z

    .line 1630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/anddoes/launcher/hq;->a:Lcom/anddoes/launcher/hn;

    iget-object v0, v0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v0}, Lcom/anddoes/launcher/LauncherModel;->d(Lcom/anddoes/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/anddoes/launcher/hq;->a:Lcom/anddoes/launcher/hn;

    iget-object v0, v0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v0}, Lcom/anddoes/launcher/LauncherModel;->d(Lcom/anddoes/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ha;

    .line 1633
    :goto_18
    iget-object v1, p0, Lcom/anddoes/launcher/hq;->b:Lcom/anddoes/launcher/ha;

    if-ne v1, v0, :cond_27

    if-eqz v0, :cond_27

    .line 1634
    iget-object v0, p0, Lcom/anddoes/launcher/hq;->b:Lcom/anddoes/launcher/ha;

    iget-object v1, p0, Lcom/anddoes/launcher/hq;->c:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/anddoes/launcher/hq;->d:Z

    invoke-interface {v0, v1, v2}, Lcom/anddoes/launcher/ha;->a(Ljava/util/ArrayList;Z)V

    .line 1636
    :cond_27
    return-void

    .line 1632
    :cond_28
    const/4 v0, 0x0

    goto :goto_18
.end method
