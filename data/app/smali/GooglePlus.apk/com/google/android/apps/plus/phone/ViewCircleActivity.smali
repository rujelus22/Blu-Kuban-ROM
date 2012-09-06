.class public Lcom/google/android/apps/plus/phone/ViewCircleActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ViewCircleActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/FragmentActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ViewCircleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 36
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 37
    .local v2, uri:Landroid/net/Uri;
    if-nez v2, :cond_10

    .line 38
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ViewCircleActivity;->finish()V

    .line 41
    :cond_10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "group_uri"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ViewCircleActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 44
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 51
    const-string v0, "group_uri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 52
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "sourceid"

    aput-object v5, v3, v1

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 9
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const v5, 0x7f080302

    const/4 v4, 0x0

    .line 61
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 62
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v0, :cond_e

    .line 64
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ViewCircleActivity;->finish()V

    .line 85
    :goto_d
    return-void

    .line 68
    :cond_e
    if-eqz p2, :cond_16

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_21

    .line 69
    :cond_16
    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ViewCircleActivity;->finish()V

    goto :goto_d

    .line 74
    :cond_21
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, circleId:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 76
    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ViewCircleActivity;->finish()V

    goto :goto_d

    .line 81
    :cond_36
    invoke-static {p0, v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getCirclePostsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 82
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x200

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/ViewCircleActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ViewCircleActivity;->finish()V

    goto :goto_d
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/phone/ViewCircleActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
