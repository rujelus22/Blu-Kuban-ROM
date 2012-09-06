.class public Lcom/twitter/android/DraftsFragment;
.super Lcom/twitter/android/BaseListFragment;


# static fields
.field private static final l:[Ljava/lang/String;


# instance fields
.field private m:Lcom/twitter/android/client/Session;

.field private n:Lcom/twitter/android/ai;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "g_status_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "in_r_status_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "entities"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/DraftsFragment;->l:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/DraftsFragment;->n:Lcom/twitter/android/ai;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ai;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v1, p0, Lcom/twitter/android/DraftsFragment;->q:Landroid/widget/Button;

    iget-object v0, p0, Lcom/twitter/android/DraftsFragment;->n:Lcom/twitter/android/ai;

    invoke-virtual {v0}, Lcom/twitter/android/ai;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/DraftsFragment;->c(I)V

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 12

    const/4 v5, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "draft_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "entities"

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/android/api/TweetEntities;->a([B)Lcom/twitter/android/api/TweetEntities;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.UID"

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/DraftsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/twitter/android/DraftsFragment;->p:Z

    if-eqz v2, :cond_5a

    const-class v2, Lcom/twitter/android/PostActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account_name"

    iget-object v3, p0, Lcom/twitter/android/DraftsFragment;->o:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "return_to_drafts"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/DraftsFragment;->startActivity(Landroid/content/Intent;)V

    :goto_59
    return-void

    :cond_5a
    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_59
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/DraftsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f07004d

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/android/DraftsFragment;->q:Landroid/widget/Button;

    iget-object v0, p0, Lcom/twitter/android/DraftsFragment;->n:Lcom/twitter/android/ai;

    if-nez v0, :cond_21

    new-instance v0, Lcom/twitter/android/ai;

    invoke-virtual {p0}, Lcom/twitter/android/DraftsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/ai;-><init>(Lcom/twitter/android/DraftsFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/DraftsFragment;->n:Lcom/twitter/android/ai;

    :cond_21
    iget-object v0, p0, Lcom/twitter/android/DraftsFragment;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/DraftsFragment;->n:Lcom/twitter/android/ai;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/twitter/android/DraftsFragment;->n:Lcom/twitter/android/ai;

    invoke-virtual {v0}, Lcom/twitter/android/ai;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Lcom/twitter/android/DraftsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/DraftsFragment;->b(I)V

    :cond_3d
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/DraftsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "return_to_drafts"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/DraftsFragment;->p:Z

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/twitter/android/DraftsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/DraftsFragment;->m:Lcom/twitter/android/client/Session;

    iget-object v0, p0, Lcom/twitter/android/DraftsFragment;->m:Lcom/twitter/android/client/Session;

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/DraftsFragment;->o:Ljava/lang/String;

    :goto_2c
    return-void

    :cond_2d
    iget-object v0, p0, Lcom/twitter/android/DraftsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->b(Ljava/lang/String;)Lcom/twitter/android/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/DraftsFragment;->m:Lcom/twitter/android/client/Session;

    iput-object v1, p0, Lcom/twitter/android/DraftsFragment;->o:Ljava/lang/String;

    goto :goto_2c
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twitter/android/DraftsFragment;->m:Lcom/twitter/android/client/Session;

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/twitter/android/DraftsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/twitter/android/provider/z;->l:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "ownerId"

    invoke-virtual {v3, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/DraftsFragment;->l:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/DraftsFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/DraftsFragment;->n:Lcom/twitter/android/ai;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/ai;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method
