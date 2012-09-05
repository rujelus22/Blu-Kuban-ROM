.class final Lcom/google/googlenav/appwidget/friends/h;
.super Ljava/lang/Object;

# interfaces
.implements LaY/f;
.implements Lay/q;
.implements Lcom/google/googlenav/aX;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/d;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/friends/h;-><init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)V

    return-void
.end method

.method private b()V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

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

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/aP;

    if-eqz v0, :cond_51

    iget-object v5, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v5}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->d(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Lay/a;

    move-result-object v5

    invoke-virtual {v0}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lay/a;->a(Ljava/lang/Long;)Lay/n;

    move-result-object v5

    if-nez v5, :cond_51

    new-instance v5, Lay/o;

    invoke-virtual {v0}, Lax/aP;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lay/o;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_21

    :cond_55
    monitor-exit v3
    :try_end_56
    .catchall {:try_start_16 .. :try_end_56} :catchall_6c

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_68

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->d(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Lay/a;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Lay/a;->a(Ljava/util/Vector;Lay/q;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_68
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/friends/h;->aa_()V

    goto :goto_8

    :catchall_6c
    move-exception v0

    :try_start_6d
    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v0
.end method

.method private c(Lcom/google/googlenav/aV;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    if-eqz p1, :cond_2d

    :try_start_a
    new-instance v0, Lax/aS;

    invoke-direct {v0, p1}, Lax/aS;-><init>(Lcom/google/googlenav/E;)V

    iget-object v2, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/b;->a(Lax/aS;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Ljava/util/List;)Ljava/util/List;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-virtual {v0}, Lax/aS;->d()Lax/aP;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lax/aP;)Lax/aP;

    :goto_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_3a

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)LaY/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, v4, v4}, LaY/a;->a(ILcom/google/googlenav/E;Lcom/google/googlenav/android/ac;LaY/g;)V

    return-void

    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lax/aP;)Lax/aP;

    goto :goto_21

    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_3a

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/E;)V
    .registers 3

    check-cast p1, Lcom/google/googlenav/aV;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/appwidget/friends/h;->a(Lcom/google/googlenav/aV;Z)V

    return-void
.end method

.method public a(Lcom/google/googlenav/aV;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/google/googlenav/aV;Z)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/friends/h;->c(Lcom/google/googlenav/aV;)V

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/friends/h;->b()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/appwidget/friends/a;->a(Landroid/content/Context;J)V

    return-void
.end method

.method public aa_()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    sget-object v1, Lcom/google/googlenav/appwidget/friends/g;->d:Lcom/google/googlenav/appwidget/friends/g;

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/g;)V

    return-void
.end method

.method public b(Lcom/google/googlenav/aV;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)LaY/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2, v2}, LaY/a;->a(ILcom/google/googlenav/E;Lcom/google/googlenav/android/ac;LaY/g;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    sget-object v1, Lcom/google/googlenav/appwidget/friends/g;->e:Lcom/google/googlenav/appwidget/friends/g;

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/g;)V

    return-void
.end method
