.class public Lcom/twitter/android/AccountFragment;
.super Lcom/twitter/android/BaseListFragment;

# interfaces
.implements Lcom/twitter/android/ff;
.implements Lcom/twitter/android/gj;
.implements Lcom/twitter/android/util/w;


# instance fields
.field private l:Lcom/twitter/android/dh;

.field private m:Lcom/twitter/android/bc;

.field private n:Lcom/twitter/android/widget/t;

.field private o:Lcom/twitter/android/gi;

.field private p:Lcom/twitter/android/api/ac;

.field private q:Ljava/lang/String;

.field private r:[Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    return-void
.end method

.method private b(Z)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->r:[Z

    aput-boolean p1, v0, v1

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->m:Lcom/twitter/android/bc;

    invoke-virtual {v0, v1}, Lcom/twitter/android/bc;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "force_refresh"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->m:Lcom/twitter/android/bc;

    invoke-virtual {v0}, Lcom/twitter/android/bc;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 5

    const/4 v0, 0x1

    if-eqz p2, :cond_13

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_14

    :goto_10
    invoke-direct {p0, v0}, Lcom/twitter/android/AccountFragment;->b(Z)V

    :cond_13
    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_b

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountFragment;->startActivity(Landroid/content/Intent;)V

    :cond_b
    return-void
.end method

.method public final a(Lcom/twitter/android/api/ac;)V
    .registers 6

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->p:Lcom/twitter/android/api/ac;

    invoke-virtual {p1, v0}, Lcom/twitter/android/api/ac;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iput-object p1, p0, Lcom/twitter/android/AccountFragment;->p:Lcom/twitter/android/api/ac;

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->l:Lcom/twitter/android/dh;

    invoke-virtual {v0, p1}, Lcom/twitter/android/dh;->a(Lcom/twitter/android/api/ac;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-wide v0, p0, Lcom/twitter/android/AccountFragment;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->c:Lcom/twitter/android/client/b;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/twitter/android/AccountFragment;->h:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;J)Ljava/lang/String;

    goto :goto_11
.end method

.method public final a(Lcom/twitter/android/util/v;Ljava/util/HashMap;)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->l:Lcom/twitter/android/dh;

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    iget v1, p1, Lcom/twitter/android/util/v;->h:I

    if-ne v0, v1, :cond_1c

    iget-wide v0, p0, Lcom/twitter/android/AccountFragment;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/u;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->l:Lcom/twitter/android/dh;

    invoke-virtual {v0}, Lcom/twitter/android/dh;->notifyDataSetChanged()V

    :cond_1c
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 16

    const v7, 0x7f0b0162

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/AccountFragment;->c:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/AccountFragment;->n:Lcom/twitter/android/widget/t;

    if-nez v2, :cond_d9

    new-instance v2, Lcom/twitter/android/dh;

    invoke-direct {v2, v0, v1}, Lcom/twitter/android/dh;-><init>(Landroid/content/Context;Lcom/twitter/android/client/b;)V

    iput-object v2, p0, Lcom/twitter/android/AccountFragment;->l:Lcom/twitter/android/dh;

    new-array v1, v11, [Z

    aput-boolean v10, v1, v10

    iput-object v1, p0, Lcom/twitter/android/AccountFragment;->r:[Z

    new-instance v1, Lcom/twitter/android/bc;

    new-array v2, v11, [I

    const v3, 0x7f0b0026

    aput v3, v2, v10

    iget-object v3, p0, Lcom/twitter/android/AccountFragment;->r:[Z

    new-array v4, v11, [Landroid/content/Intent;

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/twitter/android/MessagesActivity;

    invoke-direct {v5, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-object v5, v4, v10

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/twitter/android/bc;-><init>(Landroid/content/Context;[I[Z[Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/twitter/android/AccountFragment;->m:Lcom/twitter/android/bc;

    new-instance v1, Lcom/twitter/android/ew;

    invoke-virtual {p0, v7}, Lcom/twitter/android/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/AccountsActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "title"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v1, v2, v10, v3}, Lcom/twitter/android/ew;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    new-instance v2, Lcom/twitter/android/ew;

    const v3, 0x7f0b0092

    invoke-virtual {p0, v3}, Lcom/twitter/android/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/twitter/android/SettingsActivity;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v2, v3, v10, v4}, Lcom/twitter/android/ew;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    new-instance v3, Lcom/twitter/android/ev;

    new-array v4, v12, [Lcom/twitter/android/ew;

    aput-object v1, v4, v10

    aput-object v2, v4, v11

    invoke-direct {v3, v4}, Lcom/twitter/android/ev;-><init>([Lcom/twitter/android/ew;)V

    new-instance v1, Lcom/twitter/android/widget/t;

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/widget/BaseAdapter;

    iget-object v4, p0, Lcom/twitter/android/AccountFragment;->l:Lcom/twitter/android/dh;

    aput-object v4, v2, v10

    iget-object v4, p0, Lcom/twitter/android/AccountFragment;->m:Lcom/twitter/android/bc;

    aput-object v4, v2, v11

    new-instance v4, Lcom/twitter/android/ev;

    new-array v5, v13, [Lcom/twitter/android/ew;

    new-instance v6, Lcom/twitter/android/ew;

    const v7, 0x7f0b00fa

    invoke-virtual {p0, v7}, Lcom/twitter/android/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/twitter/android/DraftsActivity;

    invoke-direct {v8, v0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "return_to_drafts"

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v8

    invoke-direct {v6, v7, v10, v8}, Lcom/twitter/android/ew;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    aput-object v6, v5, v10

    new-instance v6, Lcom/twitter/android/ew;

    const v7, 0x7f0b002b

    invoke-virtual {p0, v7}, Lcom/twitter/android/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/twitter/android/ListsActivity;

    invoke-direct {v8, v0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v6, v7, v10, v8}, Lcom/twitter/android/ew;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    aput-object v6, v5, v11

    new-instance v6, Lcom/twitter/android/ew;

    const v7, 0x7f0b019c

    invoke-virtual {p0, v7}, Lcom/twitter/android/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/twitter/android/SearchQueriesActivity;

    invoke-direct {v8, v0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "q_type"

    const/4 v9, 0x6

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v6, v7, v10, v0}, Lcom/twitter/android/ew;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    aput-object v6, v5, v12

    invoke-direct {v4, v5}, Lcom/twitter/android/ev;-><init>([Lcom/twitter/android/ew;)V

    aput-object v4, v2, v12

    aput-object v3, v2, v13

    invoke-direct {v1, v2}, Lcom/twitter/android/widget/t;-><init>([Landroid/widget/BaseAdapter;)V

    iput-object v1, p0, Lcom/twitter/android/AccountFragment;->n:Lcom/twitter/android/widget/t;

    :cond_d9
    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/AccountFragment;->n:Lcom/twitter/android/widget/t;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/AccountFragment;->h:J

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/AccountFragment;->a(ILcom/twitter/android/util/w;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10

    const/4 v4, 0x0

    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/twitter/android/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/provider/e;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/twitter/android/AccountFragment;->q:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/provider/b;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onDestroy()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/AccountFragment;->b(ILcom/twitter/android/util/w;)V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/AccountFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2

    return-void
.end method

.method public onResume()V
    .registers 10

    const/4 v8, 0x2

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onResume()V

    iget-object v6, p0, Lcom/twitter/android/AccountFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v6}, Lcom/twitter/android/client/b;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v1, p0, Lcom/twitter/android/AccountFragment;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-virtual {v6}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/twitter/android/AccountFragment;->h:J

    iput-object v0, p0, Lcom/twitter/android/AccountFragment;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->l:Lcom/twitter/android/dh;

    invoke-virtual {v6}, Lcom/twitter/android/client/b;->d()Lcom/twitter/android/api/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dh;->a(Lcom/twitter/android/api/ac;)V

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->o:Lcom/twitter/android/gi;

    if-nez v0, :cond_4e

    invoke-virtual {p0}, Lcom/twitter/android/AccountFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v7

    new-instance v0, Lcom/twitter/android/gi;

    invoke-virtual {p0}, Lcom/twitter/android/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v7, p0, v2}, Lcom/twitter/android/gi;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/twitter/android/gj;I)V

    iput-object v0, p0, Lcom/twitter/android/AccountFragment;->o:Lcom/twitter/android/gi;

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->o:Lcom/twitter/android/gi;

    iget-wide v1, p0, Lcom/twitter/android/AccountFragment;->h:J

    iget-wide v4, p0, Lcom/twitter/android/AccountFragment;->h:J

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/gi;->a(JLjava/lang/String;J)V

    invoke-virtual {v7, v8, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :cond_46
    :goto_46
    iget-wide v0, p0, Lcom/twitter/android/AccountFragment;->h:J

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->ae:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    return-void

    :cond_4e
    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->o:Lcom/twitter/android/gi;

    iget-wide v1, p0, Lcom/twitter/android/AccountFragment;->h:J

    iget-wide v4, p0, Lcom/twitter/android/AccountFragment;->h:J

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/gi;->b(JLjava/lang/String;J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/AccountFragment;->b(Z)V

    invoke-virtual {p0}, Lcom/twitter/android/AccountFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v8, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_46
.end method
