.class final Lcom/anddoes/launcher/ho;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/hn;

.field private final synthetic b:Lcom/anddoes/launcher/ha;

.field private final synthetic c:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/hn;Lcom/anddoes/launcher/ha;Ljava/util/ArrayList;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ho;->a:Lcom/anddoes/launcher/hn;

    iput-object p2, p0, Lcom/anddoes/launcher/ho;->b:Lcom/anddoes/launcher/ha;

    iput-object p3, p0, Lcom/anddoes/launcher/ho;->c:Ljava/util/ArrayList;

    .line 1607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/anddoes/launcher/ho;->a:Lcom/anddoes/launcher/hn;

    iget-object v0, v0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v0}, Lcom/anddoes/launcher/LauncherModel;->d(Lcom/anddoes/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/anddoes/launcher/ho;->a:Lcom/anddoes/launcher/hn;

    iget-object v0, v0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v0}, Lcom/anddoes/launcher/LauncherModel;->d(Lcom/anddoes/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ha;

    .line 1610
    :goto_18
    iget-object v1, p0, Lcom/anddoes/launcher/ho;->b:Lcom/anddoes/launcher/ha;

    if-ne v1, v0, :cond_25

    if-eqz v0, :cond_25

    .line 1611
    iget-object v0, p0, Lcom/anddoes/launcher/ho;->b:Lcom/anddoes/launcher/ha;

    iget-object v1, p0, Lcom/anddoes/launcher/ho;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/anddoes/launcher/ha;->b(Ljava/util/ArrayList;)V

    .line 1613
    :cond_25
    return-void

    .line 1609
    :cond_26
    const/4 v0, 0x0

    goto :goto_18
.end method
