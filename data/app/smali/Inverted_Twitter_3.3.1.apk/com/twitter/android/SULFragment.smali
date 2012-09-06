.class public Lcom/twitter/android/SULFragment;
.super Lcom/twitter/android/BaseListFragment;


# static fields
.field public static final l:[Ljava/lang/String;


# instance fields
.field private m:Landroid/content/SharedPreferences;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "query"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "query_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "image_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/SULFragment;->l:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/SULFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/twitter/android/SULFragment;->n:Z

    return v0
.end method

.method private g(I)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/SULFragment;->c:Lcom/twitter/android/client/b;

    iget-wide v1, p0, Lcom/twitter/android/SULFragment;->h:J

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/b;->e(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/SULFragment;->a(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 5

    const/4 v1, 0x3

    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/twitter/android/SULFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, v1}, Lcom/twitter/android/SULFragment;->g(I)V

    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0, v1}, Lcom/twitter/android/SULFragment;->c(I)V

    goto :goto_f
.end method

.method protected final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/SULFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected final a(Z)V
    .registers 6

    const/4 v3, 0x3

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->a(Z)V

    iget-object v0, p0, Lcom/twitter/android/SULFragment;->m:Landroid/content/SharedPreferences;

    const-string v1, "loc"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_17

    invoke-virtual {p0, v3}, Lcom/twitter/android/SULFragment;->b(I)V

    invoke-virtual {p0}, Lcom/twitter/android/SULFragment;->h()Z

    :cond_16
    :goto_16
    return-void

    :cond_17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_38

    invoke-virtual {p0}, Lcom/twitter/android/SULFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {p0, v3}, Lcom/twitter/android/SULFragment;->b(I)V

    invoke-direct {p0, v3}, Lcom/twitter/android/SULFragment;->g(I)V

    goto :goto_16

    :cond_38
    iget-object v0, p0, Lcom/twitter/android/SULFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_16

    invoke-virtual {p0, v3}, Lcom/twitter/android/SULFragment;->b(I)V

    invoke-virtual {p0}, Lcom/twitter/android/SULFragment;->g()V

    goto :goto_16
.end method

.method protected final a_()V
    .registers 2

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->a_()V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/twitter/android/SULFragment;->g(I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/SULFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    if-nez v0, :cond_13

    new-instance v0, Lcom/twitter/android/ee;

    invoke-virtual {p0}, Lcom/twitter/android/SULFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/twitter/android/ee;-><init>(Lcom/twitter/android/SULFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/twitter/android/SULFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    :cond_13
    iget-object v0, p0, Lcom/twitter/android/SULFragment;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/SULFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/SULFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/SULFragment;->m:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/twitter/android/SULFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2, v0, p0}, Lcom/twitter/android/client/b;->a(ILcom/twitter/android/util/w;)V

    new-instance v2, Lcom/twitter/android/ef;

    invoke-direct {v2, p0}, Lcom/twitter/android/ef;-><init>(Lcom/twitter/android/SULFragment;)V

    iput-object v2, p0, Lcom/twitter/android/SULFragment;->d:Lcom/twitter/android/client/g;

    invoke-virtual {p0}, Lcom/twitter/android/SULFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3b

    const-string v3, "onboarding"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3b

    :goto_29
    iput-boolean v0, p0, Lcom/twitter/android/SULFragment;->n:Z

    if-nez p1, :cond_3a

    iget-object v0, p0, Lcom/twitter/android/SULFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/SULFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->i:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    :cond_3a
    return-void

    :cond_3b
    move v0, v1

    goto :goto_29
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10

    const/4 v4, 0x0

    new-instance v0, Lcom/twitter/android/u;

    invoke-virtual {p0}, Lcom/twitter/android/SULFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/provider/x;->a:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/twitter/android/SULFragment;->h:J

    invoke-static {v2, v5, v6}, Lcom/twitter/android/provider/o;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/SULFragment;->l:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/u;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/SULFragment;->c:Lcom/twitter/android/client/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/twitter/android/client/b;->b(ILcom/twitter/android/util/w;)V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/SULFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPause()V
    .registers 4

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onPause()V

    iget-object v0, p0, Lcom/twitter/android/SULFragment;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "loc"

    invoke-virtual {p0}, Lcom/twitter/android/SULFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SULFragment;->a(Z)V

    return-void
.end method
