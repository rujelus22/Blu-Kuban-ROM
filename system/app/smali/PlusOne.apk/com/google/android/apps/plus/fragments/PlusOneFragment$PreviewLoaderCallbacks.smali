.class Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;
.super Ljava/lang/Object;
.source "PlusOneFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PlusOneFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreviewLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 7
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
    .line 308
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    .line 309
    .local v0, loader:Lcom/google/android/apps/plus/phone/EsCursorLoader;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$200(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsApiProvider;->makePreviewUri(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setUri(Landroid/net/Uri;)V

    .line 310
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$300(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 311
    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 9
    .parameter
    .parameter "cursor"
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
    .line 319
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_2e

    invoke-interface {p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 320
    invoke-interface {p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.google.android.apps.content.EXTRA_ACTIVITY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 322
    .local v0, activities:[Landroid/os/Parcelable;
    const/4 v1, 0x0

    .line 323
    .local v1, activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    if-eqz v0, :cond_1d

    array-length v3, v0

    if-lez v3, :cond_1d

    .line 324
    const/4 v3, 0x0

    aget-object v1, v0, v3

    .end local v1           #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    check-cast v1, Lcom/google/android/apps/plus/network/ApiaryActivity;

    .line 326
    .restart local v1       #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    :cond_1d
    if-nez v1, :cond_29

    .line 328
    :try_start_1f
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$300(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/network/ApiaryActivityFactory;->getApiaryActivity(Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryActivity;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_28} :catch_2f

    move-result-object v1

    .line 333
    :cond_29
    :goto_29
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->setPreview(Lcom/google/android/apps/plus/network/ApiaryActivity;)V
    invoke-static {v3, v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$700(Lcom/google/android/apps/plus/fragments/PlusOneFragment;Lcom/google/android/apps/plus/network/ApiaryActivity;)V

    .line 335
    .end local v0           #activities:[Landroid/os/Parcelable;
    .end local v1           #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    :cond_2e
    return-void

    .line 329
    .restart local v0       #activities:[Landroid/os/Parcelable;
    .restart local v1       #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    :catch_2f
    move-exception v2

    .line 330
    .local v2, ioe:Ljava/io/IOException;
    const-string v3, "PlusOneActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create dummy preview for url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mUrl:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$300(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 302
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 342
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
