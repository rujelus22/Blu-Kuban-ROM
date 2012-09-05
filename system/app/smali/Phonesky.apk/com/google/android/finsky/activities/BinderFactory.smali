.class public Lcom/google/android/finsky/activities/BinderFactory;
.super Ljava/lang/Object;
.source "BinderFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSummaryViewBinder(Lcom/google/android/finsky/api/model/DfeToc;I)Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;
    .registers 6
    .parameter "dfeToc"
    .parameter "backendId"

    .prologue
    .line 15
    packed-switch p1, :pswitch_data_3c

    .line 28
    new-instance v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;-><init>(Lcom/google/android/finsky/api/model/DfeToc;)V

    :goto_8
    return-object v0

    .line 17
    :pswitch_9
    new-instance v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getPackageMonitorReceiver()Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;-><init>(Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Lcom/google/android/finsky/local/AssetStore;Lcom/google/android/finsky/utils/PackageInfoCache;Lcom/google/android/finsky/api/model/DfeToc;)V

    goto :goto_8

    .line 23
    :pswitch_27
    new-instance v0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;-><init>(Lcom/google/android/finsky/utils/PackageInfoCache;Lcom/google/android/finsky/api/model/DfeToc;)V

    goto :goto_8

    .line 26
    :pswitch_35
    new-instance v0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;-><init>(Lcom/google/android/finsky/api/model/DfeToc;)V

    goto :goto_8

    .line 15
    nop

    :pswitch_data_3c
    .packed-switch 0x2
        :pswitch_35
        :pswitch_9
        :pswitch_27
    .end packed-switch
.end method
