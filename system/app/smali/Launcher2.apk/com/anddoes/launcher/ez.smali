.class final Lcom/anddoes/launcher/ez;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ez;->a:Lcom/anddoes/launcher/Launcher;

    .line 2353
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter

    .prologue
    .line 2356
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 2357
    const/4 v0, 0x0

    .line 2358
    iget-object v1, p0, Lcom/anddoes/launcher/ez;->a:Lcom/anddoes/launcher/Launcher;

    invoke-static {v1}, Lcom/anddoes/launcher/Launcher;->e(Lcom/anddoes/launcher/Launcher;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_21

    .line 2370
    iget-object v0, p0, Lcom/anddoes/launcher/ez;->a:Lcom/anddoes/launcher/Launcher;

    invoke-static {v0}, Lcom/anddoes/launcher/Launcher;->f(Lcom/anddoes/launcher/Launcher;)V

    .line 2372
    :cond_20
    return-void

    .line 2358
    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2359
    iget-object v1, p0, Lcom/anddoes/launcher/ez;->a:Lcom/anddoes/launcher/Launcher;

    invoke-static {v1}, Lcom/anddoes/launcher/Launcher;->e(Lcom/anddoes/launcher/Launcher;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    iget v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2360
    mul-int/lit16 v1, v2, 0xfa

    .line 2361
    instance-of v4, v0, Landroid/widget/Advanceable;

    if-eqz v4, :cond_48

    .line 2362
    new-instance v4, Lcom/anddoes/launcher/fa;

    invoke-direct {v4, p0, v0}, Lcom/anddoes/launcher/fa;-><init>(Lcom/anddoes/launcher/ez;Landroid/view/View;)V

    .line 2366
    int-to-long v0, v1

    .line 2362
    invoke-virtual {p0, v4, v0, v1}, Lcom/anddoes/launcher/ez;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2368
    :cond_48
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_15
.end method
