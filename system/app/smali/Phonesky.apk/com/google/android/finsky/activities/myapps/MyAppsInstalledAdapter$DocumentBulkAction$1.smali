.class final enum Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction$1;
.super Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;
.source "MyAppsInstalledAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;-><init>(Ljava/lang/String;ILcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$1;)V

    return-void
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter "context"

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLabelId()I
    .registers 2

    .prologue
    .line 226
    const v0, 0x7f07018e

    return v0
.end method

.method public isVisible(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Z
    .registers 6
    .parameter "downloadsAdapter"

    .prologue
    const/4 v2, 0x1

    .line 239
    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mDownloadingSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    invoke-static {p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$900(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->getCount()I

    move-result v0

    .line 240
    .local v0, runningDownloads:I
    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    invoke-static {p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$600(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 241
    .local v1, updatesCount:I
    if-nez v0, :cond_18

    if-le v1, v2, :cond_18

    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public isWaiting(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Z
    .registers 3
    .parameter "downloadsAdapter"

    .prologue
    .line 246
    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstaller:Lcom/google/android/finsky/receivers/Installer;
    invoke-static {p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$800(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/receivers/Installer;->isBusy()Z

    move-result v0

    return v0
.end method

.method public run(Landroid/content/Context;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)V
    .registers 14
    .parameter "ctx"
    .parameter "downloadsAdapter"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 198
    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    invoke-static {p2}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$600(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    move-result-object v6

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;
    invoke-static {v6}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->access$700(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/finsky/utils/Lists;->newArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    .line 201
    .local v1, documents:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstaller:Lcom/google/android/finsky/receivers/Installer;
    invoke-static {p2}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$800(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Lcom/google/android/finsky/receivers/Installer;

    move-result-object v6

    const-string v7, "bulk_update"

    invoke-interface {v6, v1, v7}, Lcom/google/android/finsky/receivers/Installer;->updateInstalledApps(Ljava/util/List;Ljava/lang/String;)V

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "updateAll"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .local v4, sb:Ljava/lang/StringBuilder;
    const/16 v5, 0x3f

    .line 206
    .local v5, separator:C
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    .line 207
    .local v0, document:Lcom/google/android/finsky/api/model/Document;
    if-nez v0, :cond_3a

    .line 208
    const-string v6, "Unexpected null document"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_24

    .line 211
    :cond_3a
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, packageName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 213
    const-string v6, "Empty package name for doc %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_24

    .line 216
    :cond_57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    const/16 v5, 0x26

    .line 218
    const-string v6, "doc[]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 221
    .end local v0           #document:Lcom/google/android/finsky/api/model/Document;
    .end local v3           #packageName:Ljava/lang/String;
    :cond_65
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v10, v10, v7}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method
