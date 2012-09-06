.class final Lcom/google/googlenav/appwidget/friends/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaM/f;
.implements Lah/p;
.implements Lcom/google/googlenav/aY;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)V
    .registers 2
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/d;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 541
    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/friends/h;-><init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)V

    return-void
.end method

.method private b()V
    .registers 8

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_9

    .line 637
    :cond_8
    :goto_8
    return-void

    .line 622
    :cond_9
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 623
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 624
    const/4 v0, 0x0

    :try_start_16
    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v1, v0

    :goto_21
    if-ge v1, v4, :cond_55

    .line 625
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/aK;

    .line 626
    if-eqz v0, :cond_51

    iget-object v5, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v5}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->d(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Lah/a;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lah/a;->a(Ljava/lang/Long;)Lah/m;

    move-result-object v5

    if-nez v5, :cond_51

    .line 627
    new-instance v5, Lah/n;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lah/n;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 624
    :cond_51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_21

    .line 630
    :cond_55
    monitor-exit v3
    :try_end_56
    .catchall {:try_start_16 .. :try_end_56} :catchall_6c

    .line 633
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_68

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->d(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Lah/a;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Lah/a;->a(Ljava/util/Vector;Lah/p;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 635
    :cond_68
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/friends/h;->P_()V

    goto :goto_8

    .line 630
    :catchall_6c
    move-exception v0

    :try_start_6d
    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v0
.end method

.method private c(Lcom/google/googlenav/aW;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 593
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 594
    if-eqz p1, :cond_2d

    .line 595
    :try_start_a
    new-instance v0, Lcom/google/googlenav/friend/aM;

    invoke-direct {v0, p1}, Lcom/google/googlenav/friend/aM;-><init>(Lcom/google/googlenav/F;)V

    .line 596
    iget-object v2, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/b;->a(Lcom/google/googlenav/friend/aM;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Ljava/util/List;)Ljava/util/List;

    .line 597
    iget-object v2, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aM;->d()Lcom/google/googlenav/friend/aK;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/friend/aK;)Lcom/google/googlenav/friend/aK;

    .line 605
    :goto_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_3a

    .line 606
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)LaM/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, v4, v4}, LaM/a;->a(ILcom/google/googlenav/F;Lcom/google/googlenav/android/Y;LaM/g;)V

    .line 608
    return-void

    .line 602
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Ljava/util/List;)Ljava/util/List;

    .line 603
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/friend/aK;)Lcom/google/googlenav/friend/aK;

    goto :goto_21

    .line 605
    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_3a

    throw v0
.end method


# virtual methods
.method public P_()V
    .registers 3

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    sget-object v1, Lcom/google/googlenav/appwidget/friends/g;->d:Lcom/google/googlenav/appwidget/friends/g;

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/g;)V

    .line 584
    return-void
.end method

.method public a(Lcom/google/googlenav/F;)V
    .registers 3
    .parameter

    .prologue
    .line 644
    check-cast p1, Lcom/google/googlenav/aW;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/appwidget/friends/h;->a(Lcom/google/googlenav/aW;Z)V

    .line 645
    return-void
.end method

.method public a(Lcom/google/googlenav/aW;)V
    .registers 2
    .parameter

    .prologue
    .line 572
    return-void
.end method

.method public a(Lcom/google/googlenav/aW;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 564
    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/friends/h;->c(Lcom/google/googlenav/aW;)V

    .line 565
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/friends/h;->b()V

    .line 566
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/appwidget/friends/a;->a(Landroid/content/Context;J)V

    .line 568
    return-void
.end method

.method public b(Lcom/google/googlenav/aW;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 551
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)LaM/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2, v2}, LaM/a;->a(ILcom/google/googlenav/F;Lcom/google/googlenav/android/Y;LaM/g;)V

    .line 553
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    sget-object v1, Lcom/google/googlenav/appwidget/friends/g;->e:Lcom/google/googlenav/appwidget/friends/g;

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/g;)V

    .line 554
    return-void
.end method
