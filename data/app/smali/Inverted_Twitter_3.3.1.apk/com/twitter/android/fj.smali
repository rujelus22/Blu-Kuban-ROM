.class final Lcom/twitter/android/fj;
.super Lcom/twitter/android/client/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/TweetActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/fj;->a:Lcom/twitter/android/TweetActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V
    .registers 11

    iget-object v0, p0, Lcom/twitter/android/fj;->a:Lcom/twitter/android/TweetActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TweetActivity;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_1a

    iget-object v0, p0, Lcom/twitter/android/fj;->a:Lcom/twitter/android/TweetActivity;

    invoke-virtual {v0}, Lcom/twitter/android/TweetActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/fj;->a:Lcom/twitter/android/TweetActivity;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/twitter/android/fj;->a:Lcom/twitter/android/TweetActivity;

    const v1, 0x7f0b0043

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/twitter/android/fj;->a:Lcom/twitter/android/TweetActivity;

    invoke-virtual {v0}, Lcom/twitter/android/TweetActivity;->finish()V

    goto :goto_19
.end method
