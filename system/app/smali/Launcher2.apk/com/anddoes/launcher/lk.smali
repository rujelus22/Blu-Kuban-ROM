.class final Lcom/anddoes/launcher/lk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Workspace;

.field private final synthetic b:Landroid/view/ViewGroup;

.field private final synthetic c:Ljava/util/HashSet;

.field private final synthetic d:Landroid/appwidget/AppWidgetManager;

.field private final synthetic e:Lcom/anddoes/launcher/CellLayout;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Workspace;Landroid/view/ViewGroup;Ljava/util/HashSet;Landroid/appwidget/AppWidgetManager;Lcom/anddoes/launcher/CellLayout;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/lk;->a:Lcom/anddoes/launcher/Workspace;

    iput-object p2, p0, Lcom/anddoes/launcher/lk;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/anddoes/launcher/lk;->c:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/anddoes/launcher/lk;->d:Landroid/appwidget/AppWidgetManager;

    iput-object p5, p0, Lcom/anddoes/launcher/lk;->e:Lcom/anddoes/launcher/CellLayout;

    .line 4507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 15

    .prologue
    const/4 v3, 0x0

    .line 4509
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4510
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 4512
    iget-object v0, p0, Lcom/anddoes/launcher/lk;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v5, v3

    .line 4513
    :goto_10
    if-lt v5, v7, :cond_26

    .line 4577
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v3

    .line 4578
    :goto_17
    if-lt v1, v2, :cond_122

    .line 4590
    if-lez v2, :cond_25

    .line 4591
    iget-object v0, p0, Lcom/anddoes/launcher/lk;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4592
    iget-object v0, p0, Lcom/anddoes/launcher/lk;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 4594
    :cond_25
    return-void

    .line 4514
    :cond_26
    iget-object v0, p0, Lcom/anddoes/launcher/lk;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4515
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 4517
    instance-of v1, v0, Lcom/anddoes/launcher/kj;

    if-eqz v1, :cond_77

    .line 4518
    check-cast v0, Lcom/anddoes/launcher/kj;

    .line 4519
    iget-object v1, v0, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    .line 4520
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 4522
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 4523
    if-eqz v4, :cond_56

    .line 4524
    iget-object v1, p0, Lcom/anddoes/launcher/lk;->c:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_50
    :goto_50
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 4513
    :cond_56
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_10

    .line 4524
    :cond_5a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4526
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 4525
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 4528
    iget-object v1, p0, Lcom/anddoes/launcher/lk;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v1}, Lcom/anddoes/launcher/Workspace;->c(Lcom/anddoes/launcher/Workspace;)Lcom/anddoes/launcher/Launcher;

    move-result-object v1

    .line 4527
    invoke-static {v1, v0}, Lcom/anddoes/launcher/LauncherModel;->b(Landroid/content/Context;Lcom/anddoes/launcher/ec;)V

    .line 4529
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 4533
    :cond_77
    instance-of v1, v0, Lcom/anddoes/launcher/dd;

    if-eqz v1, :cond_e7

    .line 4534
    check-cast v0, Lcom/anddoes/launcher/dd;

    .line 4535
    iget-object v8, v0, Lcom/anddoes/launcher/dd;->c:Ljava/util/ArrayList;

    .line 4536
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 4537
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    .line 4539
    :goto_89
    if-lt v4, v9, :cond_a8

    .line 4555
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/kj;

    .line 4556
    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/dd;->b(Lcom/anddoes/launcher/ec;)V

    .line 4557
    iget-object v4, p0, Lcom/anddoes/launcher/lk;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v4}, Lcom/anddoes/launcher/Workspace;->c(Lcom/anddoes/launcher/Workspace;)Lcom/anddoes/launcher/Launcher;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/anddoes/launcher/LauncherModel;->b(Landroid/content/Context;Lcom/anddoes/launcher/ec;)V

    goto :goto_8f

    .line 4540
    :cond_a8
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/anddoes/launcher/kj;

    .line 4541
    iget-object v1, v2, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    .line 4543
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 4545
    const-string v12, "android.intent.action.MAIN"

    .line 4546
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 4545
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 4546
    if-eqz v11, :cond_cf

    .line 4547
    iget-object v1, p0, Lcom/anddoes/launcher/lk;->c:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_c9
    :goto_c9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d3

    .line 4539
    :cond_cf
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_89

    .line 4547
    :cond_d3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4549
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 4548
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 4550
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c9

    .line 4560
    :cond_e7
    instance-of v1, v0, Lcom/anddoes/launcher/gn;

    if-eqz v1, :cond_56

    .line 4561
    check-cast v0, Lcom/anddoes/launcher/gn;

    .line 4562
    iget-object v1, p0, Lcom/anddoes/launcher/lk;->d:Landroid/appwidget/AppWidgetManager;

    .line 4563
    iget v4, v0, Lcom/anddoes/launcher/gn;->a:I

    invoke-virtual {v1, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    .line 4564
    if-eqz v4, :cond_56

    .line 4565
    iget-object v1, p0, Lcom/anddoes/launcher/lk;->c:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_fd
    :goto_fd
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4566
    iget-object v9, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 4567
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 4566
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 4569
    iget-object v1, p0, Lcom/anddoes/launcher/lk;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v1}, Lcom/anddoes/launcher/Workspace;->c(Lcom/anddoes/launcher/Workspace;)Lcom/anddoes/launcher/Launcher;

    move-result-object v1

    .line 4568
    invoke-static {v1, v0}, Lcom/anddoes/launcher/LauncherModel;->b(Landroid/content/Context;Lcom/anddoes/launcher/ec;)V

    .line 4570
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_fd

    .line 4579
    :cond_122
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4583
    iget-object v3, p0, Lcom/anddoes/launcher/lk;->e:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v3, v0}, Lcom/anddoes/launcher/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 4584
    instance-of v3, v0, Lcom/anddoes/launcher/cb;

    if-eqz v3, :cond_13c

    .line 4585
    iget-object v3, p0, Lcom/anddoes/launcher/lk;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v3}, Lcom/anddoes/launcher/Workspace;->z(Lcom/anddoes/launcher/Workspace;)Lcom/anddoes/launcher/bm;

    move-result-object v3

    .line 4586
    check-cast v0, Lcom/anddoes/launcher/cb;

    invoke-virtual {v3, v0}, Lcom/anddoes/launcher/bm;->b(Lcom/anddoes/launcher/cb;)V

    .line 4578
    :cond_13c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_17
.end method
