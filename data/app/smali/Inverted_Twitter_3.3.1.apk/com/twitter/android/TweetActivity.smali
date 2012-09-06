.class public Lcom/twitter/android/TweetActivity;
.super Lcom/twitter/android/BaseFragmentActivity;

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# instance fields
.field e:Lcom/twitter/android/client/Session;

.field f:Lcom/twitter/android/provider/m;

.field g:Lcom/twitter/android/TweetFragment;

.field private h:Landroid/net/Uri;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method private a()V
    .registers 3

    const v0, 0x7f0b0043

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x0

    const v0, 0x7f030056

    invoke-super {p0, p1, v0, v6}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    new-instance v0, Lcom/twitter/android/fj;

    invoke-direct {v0, p0}, Lcom/twitter/android/fj;-><init>(Lcom/twitter/android/TweetActivity;)V

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/android/client/g;

    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/TweetFragment;

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->g:Lcom/twitter/android/TweetFragment;

    const v0, 0x7f0b01ca

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->b_(I)V

    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "account_name"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->a:Lcom/twitter/android/client/b;

    const-string v2, "account_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/android/client/b;->b(Ljava/lang/String;)Lcom/twitter/android/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->e:Lcom/twitter/android/client/Session;

    :goto_3e
    if-eqz p1, :cond_61

    const-string v0, "t"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/m;

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->f:Lcom/twitter/android/provider/m;

    :goto_4a
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->f:Lcom/twitter/android/provider/m;

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->g:Lcom/twitter/android/TweetFragment;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->f:Lcom/twitter/android/provider/m;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->e:Lcom/twitter/android/client/Session;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/android/provider/m;Lcom/twitter/android/client/Session;)V

    :goto_57
    return-void

    :cond_58
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->e:Lcom/twitter/android/client/Session;

    goto :goto_3e

    :cond_61
    const-string v0, "ref_event"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->a:Lcom/twitter/android/client/b;

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->e:Lcom/twitter/android/client/Session;

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v3

    sget-object v5, Lcom/twitter/android/service/ScribeEvent;->E:Lcom/twitter/android/service/ScribeEvent;

    const-string v0, "ref_event"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    :goto_7e
    const-string v0, "tw"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/m;

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->f:Lcom/twitter/android/provider/m;

    goto :goto_4a

    :cond_89
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->a:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->e:Lcom/twitter/android/client/Session;

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->E:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v2, v3, v4}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_7e

    :cond_97
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_103

    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "twitter"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    :try_start_b1
    const-string v1, "status_id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sget-object v2, Lcom/twitter/android/provider/z;->b:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ownerId"

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->e:Lcom/twitter/android/client/Session;

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->h:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
    :try_end_e8
    .catch Ljava/lang/NumberFormatException; {:try_start_b1 .. :try_end_e8} :catch_ea

    goto/16 :goto_57

    :catch_ea
    move-exception v0

    :cond_eb
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->a()V

    goto/16 :goto_57

    :cond_f0
    const-string v2, "vnd.android.cursor.item/vnd.twitter.android.statuses"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->h:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v7, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto/16 :goto_57

    :cond_103
    invoke-direct {p0}, Lcom/twitter/android/TweetActivity;->a()V

    goto/16 :goto_57
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10

    const/4 v4, 0x0

    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->h:Landroid/net/Uri;

    sget-object v3, Lcom/twitter/android/provider/m;->b:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 7

    const/4 v3, 0x1

    check-cast p2, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->f:Lcom/twitter/android/provider/m;

    if-nez v0, :cond_30

    if-eqz p2, :cond_30

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v0, Lcom/twitter/android/provider/m;

    invoke-direct {v0, p2}, Lcom/twitter/android/provider/m;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->f:Lcom/twitter/android/provider/m;

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->g:Lcom/twitter/android/TweetFragment;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->f:Lcom/twitter/android/provider/m;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->e:Lcom/twitter/android/client/Session;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/android/provider/m;Lcom/twitter/android/client/Session;)V

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->e:Lcom/twitter/android/client/Session;

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->d()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->f:Lcom/twitter/android/provider/m;

    iget-wide v1, v1, Lcom/twitter/android/provider/m;->n:J

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/b;->b(J)Ljava/lang/String;

    :cond_30
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->f:Lcom/twitter/android/provider/m;

    if-nez v0, :cond_4b

    iget-boolean v0, p0, Lcom/twitter/android/TweetActivity;->i:Z

    if-nez v0, :cond_4c

    iput-boolean v3, p0, Lcom/twitter/android/TweetActivity;->i:Z

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->e:Lcom/twitter/android/client/Session;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->h:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->c(Ljava/lang/String;)V

    :cond_4b
    :goto_4b
    return-void

    :cond_4c
    const v0, 0x7f0b0043

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->finish()V

    goto :goto_4b
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "t"

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->f:Lcom/twitter/android/provider/m;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
