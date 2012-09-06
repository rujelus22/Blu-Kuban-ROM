.class final Lcom/twitter/android/fp;
.super Lcom/twitter/android/client/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/TweetFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/fp;->a:Lcom/twitter/android/TweetFragment;

    invoke-direct {p0}, Lcom/twitter/android/client/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJ)V
    .registers 11

    iget-object v0, p0, Lcom/twitter/android/fp;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TweetFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_34

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_34

    const/16 v0, 0x8b

    if-eq p5, v0, :cond_34

    iget-object v0, p0, Lcom/twitter/android/fp;->a:Lcom/twitter/android/TweetFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/provider/m;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/twitter/android/provider/m;->l:Z

    iget-object v0, p0, Lcom/twitter/android/fp;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/android/TweetFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/twitter/android/fp;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0044

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_34
    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Lcom/twitter/android/api/a;)V
    .registers 8

    iget-object v0, p0, Lcom/twitter/android/fp;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TweetFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_22

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_22

    iget-object v0, p0, Lcom/twitter/android/fp;->a:Lcom/twitter/android/TweetFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetFragment;->r:Lcom/twitter/android/fm;

    iget-object v1, p0, Lcom/twitter/android/fp;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v1}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Lcom/twitter/android/fm;->a(Landroid/content/Context;Lcom/twitter/android/api/a;)V

    iget-object v0, p0, Lcom/twitter/android/fp;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TweetFragment;->m()V

    iget-object v0, p0, Lcom/twitter/android/fp;->a:Lcom/twitter/android/TweetFragment;

    iput-object p5, v0, Lcom/twitter/android/TweetFragment;->w:Lcom/twitter/android/api/a;

    :cond_22
    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .registers 4

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/o;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/twitter/android/fp;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TweetFragment;->l()V

    :cond_1b
    return-void
.end method

.method public final c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JI)V
    .registers 12

    iget-object v0, p0, Lcom/twitter/android/fp;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TweetFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/twitter/android/fp;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TweetFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/fp;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :cond_15
    return-void
.end method

.method public final e(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V
    .registers 10

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/twitter/android/fp;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TweetFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_2f

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_2f

    iget-object v0, p0, Lcom/twitter/android/fp;->a:Lcom/twitter/android/TweetFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/provider/m;

    iput-boolean v2, v0, Lcom/twitter/android/provider/m;->l:Z

    iget-object v0, p0, Lcom/twitter/android/fp;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/android/TweetFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020072

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/twitter/android/fp;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0045

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2f
    return-void
.end method
