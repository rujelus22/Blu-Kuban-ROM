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
    .line 312
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
    .line 318
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    .line 319
    .local v0, loader:Lcom/google/android/apps/plus/phone/EsCursorLoader;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$200(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsApiProvider;->makePreviewUri(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setUri(Landroid/net/Uri;)V

    .line 320
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$300(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 321
    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 12
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
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 329
    if-eqz p2, :cond_85

    invoke-interface {p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_85

    .line 330
    invoke-interface {p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "com.google.android.apps.content.EXTRA_ACTIVITY"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 332
    .local v1, activities:[Landroid/os/Parcelable;
    const/4 v2, 0x0

    .line 333
    .local v2, activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    if-eqz v1, :cond_1e

    array-length v6, v1

    if-lez v6, :cond_1e

    .line 334
    aget-object v2, v1, v4

    .end local v2           #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    check-cast v2, Lcom/google/android/apps/plus/network/ApiaryActivity;

    .line 336
    .restart local v2       #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    :cond_1e
    if-eqz v2, :cond_21

    move v4, v5

    .line 337
    .local v4, hasPreview:Z
    :cond_21
    if-nez v4, :cond_4a

    .line 338
    const-string v6, "PlusOneActivity"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 339
    const-string v6, "PlusOneActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to url retrieve preview for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mUrl:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$300(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_4a
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mLoggedPreview:Z
    invoke-static {v6}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$700(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Z

    move-result v6

    if-nez v6, :cond_80

    .line 344
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mLoggedPreview:Z
    invoke-static {v6, v5}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$702(Lcom/google/android/apps/plus/fragments/PlusOneFragment;Z)Z

    .line 345
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    invoke-static {v6}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$200(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCallingPackageAnalytics(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getAnalyticsInfo(Ljava/util/Map;)Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v3

    .line 348
    .local v3, analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    if-eqz v4, :cond_86

    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_PLUSONE_PREVIEW_SHOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    .line 350
    .local v0, action:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;
    :goto_71
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v6

    invoke-static {v5, v6, v3, v0}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)J

    .line 352
    .end local v0           #action:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;
    .end local v3           #analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    :cond_80
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->setPreview(Lcom/google/android/apps/plus/network/ApiaryActivity;)V
    invoke-static {v5, v2}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$800(Lcom/google/android/apps/plus/fragments/PlusOneFragment;Lcom/google/android/apps/plus/network/ApiaryActivity;)V

    .line 354
    .end local v1           #activities:[Landroid/os/Parcelable;
    .end local v2           #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    .end local v4           #hasPreview:Z
    :cond_85
    return-void

    .line 348
    .restart local v1       #activities:[Landroid/os/Parcelable;
    .restart local v2       #activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    .restart local v3       #analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    .restart local v4       #hasPreview:Z
    :cond_86
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_SHARE_PREVIEW_ERROR:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_71
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
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
    .line 361
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
