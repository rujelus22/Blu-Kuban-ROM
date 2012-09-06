.class final Lcom/twitter/android/ax;
.super Lcom/twitter/android/client/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/HomeTabActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/HomeTabActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/ax;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;)V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/ax;->a:Lcom/twitter/android/HomeTabActivity;

    iget-object v0, v0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v1

    iget-object v0, p0, Lcom/twitter/android/ax;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-virtual {v0}, Lcom/twitter/android/HomeTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    sget-object v0, Lcom/twitter/android/HomeTabActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/HomeActivity;

    if-eqz v0, :cond_18

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/HomeActivity;->a(J)V

    goto :goto_18

    :cond_30
    iget-object v0, p0, Lcom/twitter/android/ax;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/android/HomeTabActivity;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/ax;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-virtual {v0}, Lcom/twitter/android/HomeTabActivity;->a()V

    iget-object v0, p0, Lcom/twitter/android/ax;->a:Lcom/twitter/android/HomeTabActivity;

    const-string v1, "home"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/HomeTabActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session;I)V
    .registers 6

    const/4 v2, 0x0

    sparse-switch p2, :sswitch_data_1a

    :goto_4
    return-void

    :sswitch_5
    iget-object v0, p0, Lcom/twitter/android/ax;->a:Lcom/twitter/android/HomeTabActivity;

    iput-boolean v2, v0, Lcom/twitter/android/HomeTabActivity;->f:Z

    iget-object v0, p0, Lcom/twitter/android/ax;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-virtual {v0, v2, v2}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    goto :goto_4

    :sswitch_f
    iget-object v0, p0, Lcom/twitter/android/ax;->a:Lcom/twitter/android/HomeTabActivity;

    iput-boolean v2, v0, Lcom/twitter/android/HomeTabActivity;->g:Z

    iget-object v0, p0, Lcom/twitter/android/ax;->a:Lcom/twitter/android/HomeTabActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    goto :goto_4

    :sswitch_data_1a
    .sparse-switch
        0x0 -> :sswitch_5
        0x5 -> :sswitch_f
    .end sparse-switch
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_19

    iget-object v0, p0, Lcom/twitter/android/ax;->a:Lcom/twitter/android/HomeTabActivity;

    iget-object v0, v0, Lcom/twitter/android/HomeTabActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/twitter/android/ax;->a:Lcom/twitter/android/HomeTabActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    :cond_19
    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJJI)V
    .registers 14

    const/4 v2, 0x1

    if-nez p5, :cond_10

    const-wide/16 v0, 0x0

    cmp-long v0, p8, v0

    if-nez v0, :cond_10

    if-lez p10, :cond_10

    iget-object v0, p0, Lcom/twitter/android/ax;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-virtual {v0, v2, v2}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    :cond_10
    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;ILjava/util/BitSet;Z)V
    .registers 11

    const/16 v0, 0xa

    if-lt p5, v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/ax;->a:Lcom/twitter/android/HomeTabActivity;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    :cond_b
    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JJII)V
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-nez v0, :cond_f

    if-lez p9, :cond_f

    iget-object v0, p0, Lcom/twitter/android/ax;->a:Lcom/twitter/android/HomeTabActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    :cond_f
    return-void
.end method

.method public final b(Lcom/twitter/android/client/Session;)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/ax;->a:Lcom/twitter/android/HomeTabActivity;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    return-void
.end method

.method public final b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JJII)V
    .registers 14

    const/4 v2, 0x1

    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-nez v0, :cond_e

    if-lez p9, :cond_e

    iget-object v0, p0, Lcom/twitter/android/ax;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-virtual {v0, v2, v2}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    :cond_e
    return-void
.end method
