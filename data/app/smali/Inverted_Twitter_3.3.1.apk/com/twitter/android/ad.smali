.class final Lcom/twitter/android/ad;
.super Lcom/twitter/android/client/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/DiscoverFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    invoke-direct {p0}, Lcom/twitter/android/client/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 8

    iget-object v0, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/DiscoverFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_13

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_13

    iget-object v0, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    const-string v1, "last_refresh_trends"

    invoke-virtual {v0, p1, v1}, Lcom/twitter/android/DiscoverFragment;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJJI)V
    .registers 13

    iget-object v0, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/DiscoverFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_16

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_16

    const/4 v0, 0x1

    if-ne p5, v0, :cond_16

    iget-object v0, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    const-string v1, "last_refresh_activity"

    invoke-virtual {v0, p1, v1}, Lcom/twitter/android/DiscoverFragment;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;ILjava/util/BitSet;Z)V
    .registers 16

    iget-object v0, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/DiscoverFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_73

    if-nez p7, :cond_73

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_8f

    iget-object v0, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    const-string v1, "last_refresh"

    invoke-virtual {v0, p1, v1}, Lcom/twitter/android/DiscoverFragment;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    iget-object v0, v0, Lcom/twitter/android/DiscoverFragment;->m:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    iget-object v0, v0, Lcom/twitter/android/DiscoverFragment;->n:Lcom/twitter/android/ae;

    invoke-virtual {v0}, Lcom/twitter/android/ae;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/twitter/android/DiscoverFragment;->t:Z

    iget-object v0, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    invoke-virtual {v0}, Lcom/twitter/android/DiscoverFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :cond_38
    :goto_38
    iget-object v0, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    iget-object v0, v0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/client/b;

    iget-object v7, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/16 v6, 0x14

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/client/b;->b(IJJI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/twitter/android/DiscoverFragment;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/twitter/android/DiscoverFragment;->g(I)V

    iget-object v1, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/DiscoverFragment;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/twitter/android/DiscoverFragment;->g(I)V

    iget-object v1, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/client/b;->a(ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/DiscoverFragment;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/android/DiscoverFragment;->g(I)V

    :cond_73
    return-void

    :cond_74
    const/4 v0, 0x3

    if-lt p5, v0, :cond_38

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_79
    const/4 v2, 0x3

    if-ge v1, v2, :cond_83

    invoke-virtual {p6, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_8c

    const/4 v0, 0x0

    :cond_83
    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/DiscoverFragment;->b(Z)V

    goto :goto_38

    :cond_8c
    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    :cond_8f
    iget-object v0, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/android/DiscoverFragment;->c(I)V

    iget-object v0, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    invoke-virtual {v0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b01a9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_38
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JII)V
    .registers 13

    iget-object v0, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/DiscoverFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_29

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_29

    iget-object v0, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    const-string v1, "last_refresh_wtf"

    invoke-virtual {v0, p1, v1}, Lcom/twitter/android/DiscoverFragment;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)V

    if-lez p8, :cond_29

    iget-object v0, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    iget-object v0, v0, Lcom/twitter/android/DiscoverFragment;->r:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/android/util/FriendshipCache;->c()V

    iget-object v0, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    invoke-virtual {v0}, Lcom/twitter/android/DiscoverFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :cond_29
    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/DiscoverFragment;

    iget-object v0, v0, Lcom/twitter/android/DiscoverFragment;->n:Lcom/twitter/android/ae;

    invoke-virtual {v0}, Lcom/twitter/android/ae;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fd;

    invoke-virtual {v0, p1}, Lcom/twitter/android/fd;->a(Ljava/util/HashMap;)V

    return-void
.end method
