.class final Lcom/anddoes/launcher/ee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field a:Z

.field final synthetic b:Lcom/anddoes/launcher/Launcher;

.field private final synthetic c:Lcom/anddoes/launcher/Workspace;

.field private final synthetic d:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/Workspace;Landroid/view/ViewTreeObserver;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ee;->b:Lcom/anddoes/launcher/Launcher;

    iput-object p2, p0, Lcom/anddoes/launcher/ee;->c:Lcom/anddoes/launcher/Workspace;

    iput-object p3, p0, Lcom/anddoes/launcher/ee;->d:Landroid/view/ViewTreeObserver;

    .line 1721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/ee;->a:Z

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .registers 5

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/anddoes/launcher/ee;->b:Lcom/anddoes/launcher/Launcher;

    invoke-static {}, Lcom/anddoes/launcher/Launcher;->a()V

    .line 1725
    iget-boolean v0, p0, Lcom/anddoes/launcher/ee;->a:Z

    if-eqz v0, :cond_13

    .line 1726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/ee;->a:Z

    .line 1736
    :goto_c
    iget-object v0, p0, Lcom/anddoes/launcher/ee;->b:Lcom/anddoes/launcher/Launcher;

    invoke-static {}, Lcom/anddoes/launcher/Launcher;->a()V

    .line 1737
    const/4 v0, 0x1

    return v0

    .line 1733
    :cond_13
    iget-object v0, p0, Lcom/anddoes/launcher/ee;->c:Lcom/anddoes/launcher/Workspace;

    iget-object v1, p0, Lcom/anddoes/launcher/ee;->b:Lcom/anddoes/launcher/Launcher;

    invoke-static {v1}, Lcom/anddoes/launcher/Launcher;->q(Lcom/anddoes/launcher/Launcher;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/anddoes/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1734
    iget-object v0, p0, Lcom/anddoes/launcher/ee;->d:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_c
.end method
