.class final Lcom/anddoes/launcher/hn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:I

.field b:[Ljava/lang/String;

.field final synthetic c:Lcom/anddoes/launcher/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/anddoes/launcher/LauncherModel;I[Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1547
    iput-object p1, p0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1548
    iput p2, p0, Lcom/anddoes/launcher/hn;->a:I

    .line 1549
    iput-object p3, p0, Lcom/anddoes/launcher/hn;->b:[Ljava/lang/String;

    .line 1550
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1553
    iget-object v0, p0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v0}, Lcom/anddoes/launcher/LauncherModel;->o(Lcom/anddoes/launcher/LauncherModel;)Lcom/anddoes/launcher/LauncherApplication;

    move-result-object v1

    .line 1555
    iget-object v3, p0, Lcom/anddoes/launcher/hn;->b:[Ljava/lang/String;

    .line 1556
    array-length v4, v3

    .line 1557
    iget v0, p0, Lcom/anddoes/launcher/hn;->a:I

    packed-switch v0, :pswitch_data_140

    .line 1583
    :cond_10
    iget-object v0, p0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v0}, Lcom/anddoes/launcher/LauncherModel;->k(Lcom/anddoes/launcher/LauncherModel;)Lcom/anddoes/launcher/h;

    move-result-object v0

    iget-object v0, v0, Lcom/anddoes/launcher/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13c

    .line 1584
    iget-object v0, p0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v0}, Lcom/anddoes/launcher/LauncherModel;->k(Lcom/anddoes/launcher/LauncherModel;)Lcom/anddoes/launcher/h;

    move-result-object v0

    iget-object v0, v0, Lcom/anddoes/launcher/h;->b:Ljava/util/ArrayList;

    .line 1585
    iget-object v1, p0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v1}, Lcom/anddoes/launcher/LauncherModel;->k(Lcom/anddoes/launcher/LauncherModel;)Lcom/anddoes/launcher/h;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/anddoes/launcher/h;->b:Ljava/util/ArrayList;

    move-object v1, v0

    .line 1587
    :goto_34
    iget-object v0, p0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v0}, Lcom/anddoes/launcher/LauncherModel;->k(Lcom/anddoes/launcher/LauncherModel;)Lcom/anddoes/launcher/h;

    move-result-object v0

    iget-object v0, v0, Lcom/anddoes/launcher/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_139

    .line 1588
    iget-object v0, p0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v0}, Lcom/anddoes/launcher/LauncherModel;->k(Lcom/anddoes/launcher/LauncherModel;)Lcom/anddoes/launcher/h;

    move-result-object v0

    iget-object v3, v0, Lcom/anddoes/launcher/h;->c:Ljava/util/ArrayList;

    .line 1589
    iget-object v0, p0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v0}, Lcom/anddoes/launcher/LauncherModel;->k(Lcom/anddoes/launcher/LauncherModel;)Lcom/anddoes/launcher/h;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/anddoes/launcher/h;->c:Ljava/util/ArrayList;

    .line 1590
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d7

    .line 1594
    :goto_61
    iget-object v0, p0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v0}, Lcom/anddoes/launcher/LauncherModel;->k(Lcom/anddoes/launcher/LauncherModel;)Lcom/anddoes/launcher/h;

    move-result-object v0

    iget-object v0, v0, Lcom/anddoes/launcher/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_136

    .line 1595
    iget-object v0, p0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v0}, Lcom/anddoes/launcher/LauncherModel;->k(Lcom/anddoes/launcher/LauncherModel;)Lcom/anddoes/launcher/h;

    move-result-object v0

    iget-object v0, v0, Lcom/anddoes/launcher/h;->d:Ljava/util/ArrayList;

    .line 1596
    iget-object v4, p0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v4}, Lcom/anddoes/launcher/LauncherModel;->k(Lcom/anddoes/launcher/LauncherModel;)Lcom/anddoes/launcher/h;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Lcom/anddoes/launcher/h;->d:Ljava/util/ArrayList;

    move-object v4, v0

    .line 1599
    :goto_85
    iget-object v0, p0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v0}, Lcom/anddoes/launcher/LauncherModel;->d(Lcom/anddoes/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v0}, Lcom/anddoes/launcher/LauncherModel;->d(Lcom/anddoes/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ha;

    move-object v2, v0

    .line 1600
    :cond_9a
    if-nez v2, :cond_ee

    .line 1601
    const-string v0, "Launcher.Model"

    const-string v1, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    :goto_a3
    return-void

    :pswitch_a4
    move v0, v5

    .line 1559
    :goto_a5
    if-ge v0, v4, :cond_10

    .line 1561
    iget-object v6, p0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v6}, Lcom/anddoes/launcher/LauncherModel;->k(Lcom/anddoes/launcher/LauncherModel;)Lcom/anddoes/launcher/h;

    move-result-object v6

    aget-object v7, v3, v0

    invoke-virtual {v6, v1, v7}, Lcom/anddoes/launcher/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1559
    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    :pswitch_b5
    move v0, v5

    .line 1565
    :goto_b6
    if-ge v0, v4, :cond_10

    .line 1567
    iget-object v6, p0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v6}, Lcom/anddoes/launcher/LauncherModel;->k(Lcom/anddoes/launcher/LauncherModel;)Lcom/anddoes/launcher/h;

    move-result-object v6

    aget-object v7, v3, v0

    invoke-virtual {v6, v1, v7}, Lcom/anddoes/launcher/h;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1565
    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    :pswitch_c6
    move v0, v5

    .line 1572
    :goto_c7
    if-ge v0, v4, :cond_10

    .line 1574
    iget-object v1, p0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v1}, Lcom/anddoes/launcher/LauncherModel;->k(Lcom/anddoes/launcher/LauncherModel;)Lcom/anddoes/launcher/h;

    move-result-object v1

    aget-object v6, v3, v0

    invoke-virtual {v1, v6}, Lcom/anddoes/launcher/h;->a(Ljava/lang/String;)V

    .line 1572
    add-int/lit8 v0, v0, 0x1

    goto :goto_c7

    .line 1590
    :cond_d7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 1591
    iget-object v6, p0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v6}, Lcom/anddoes/launcher/LauncherModel;->m(Lcom/anddoes/launcher/LauncherModel;)Lcom/anddoes/launcher/ds;

    move-result-object v6

    iget-object v0, v0, Lcom/anddoes/launcher/y;->c:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/anddoes/launcher/ds;->a(Landroid/content/ComponentName;)V

    goto/16 :goto_5b

    .line 1605
    :cond_ee
    if-eqz v1, :cond_fe

    .line 1607
    iget-object v0, p0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v0}, Lcom/anddoes/launcher/LauncherModel;->c(Lcom/anddoes/launcher/LauncherModel;)Lcom/anddoes/launcher/bg;

    move-result-object v0

    new-instance v6, Lcom/anddoes/launcher/ho;

    invoke-direct {v6, p0, v2, v1}, Lcom/anddoes/launcher/ho;-><init>(Lcom/anddoes/launcher/hn;Lcom/anddoes/launcher/ha;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v6}, Lcom/anddoes/launcher/bg;->a(Ljava/lang/Runnable;)V

    .line 1616
    :cond_fe
    if-eqz v4, :cond_10e

    .line 1618
    iget-object v0, p0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v0}, Lcom/anddoes/launcher/LauncherModel;->c(Lcom/anddoes/launcher/LauncherModel;)Lcom/anddoes/launcher/bg;

    move-result-object v0

    new-instance v1, Lcom/anddoes/launcher/hp;

    invoke-direct {v1, p0, v2, v4}, Lcom/anddoes/launcher/hp;-><init>(Lcom/anddoes/launcher/hn;Lcom/anddoes/launcher/ha;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/bg;->a(Ljava/lang/Runnable;)V

    .line 1627
    :cond_10e
    if-eqz v3, :cond_124

    .line 1628
    iget v0, p0, Lcom/anddoes/launcher/hn;->a:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_134

    const/4 v0, 0x1

    .line 1629
    :goto_116
    iget-object v1, p0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v1}, Lcom/anddoes/launcher/LauncherModel;->c(Lcom/anddoes/launcher/LauncherModel;)Lcom/anddoes/launcher/bg;

    move-result-object v1

    new-instance v4, Lcom/anddoes/launcher/hq;

    invoke-direct {v4, p0, v2, v3, v0}, Lcom/anddoes/launcher/hq;-><init>(Lcom/anddoes/launcher/hn;Lcom/anddoes/launcher/ha;Ljava/util/ArrayList;Z)V

    invoke-virtual {v1, v4}, Lcom/anddoes/launcher/bg;->a(Ljava/lang/Runnable;)V

    .line 1640
    :cond_124
    iget-object v0, p0, Lcom/anddoes/launcher/hn;->c:Lcom/anddoes/launcher/LauncherModel;

    invoke-static {v0}, Lcom/anddoes/launcher/LauncherModel;->c(Lcom/anddoes/launcher/LauncherModel;)Lcom/anddoes/launcher/bg;

    move-result-object v0

    new-instance v1, Lcom/anddoes/launcher/hr;

    invoke-direct {v1, p0, v2}, Lcom/anddoes/launcher/hr;-><init>(Lcom/anddoes/launcher/hn;Lcom/anddoes/launcher/ha;)V

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/bg;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_a3

    :cond_134
    move v0, v5

    .line 1628
    goto :goto_116

    :cond_136
    move-object v4, v2

    goto/16 :goto_85

    :cond_139
    move-object v3, v2

    goto/16 :goto_61

    :cond_13c
    move-object v1, v2

    goto/16 :goto_34

    .line 1557
    nop

    :pswitch_data_140
    .packed-switch 0x1
        :pswitch_a4
        :pswitch_b5
        :pswitch_c6
        :pswitch_c6
    .end packed-switch
.end method
