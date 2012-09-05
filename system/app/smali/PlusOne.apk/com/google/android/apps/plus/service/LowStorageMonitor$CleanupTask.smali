.class Lcom/google/android/apps/plus/service/LowStorageMonitor$CleanupTask;
.super Landroid/os/AsyncTask;
.source "LowStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/LowStorageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CleanupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/service/LowStorageMonitor$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/LowStorageMonitor$CleanupTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 47
    check-cast p1, [Landroid/content/Context;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/service/LowStorageMonitor$CleanupTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .registers 13
    .parameter "contextArray"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    .line 50
    array-length v7, p1

    if-eq v7, v9, :cond_d

    .line 51
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Must pass a single context"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 54
    :cond_d
    const/4 v7, 0x0

    aget-object v3, p1, v7

    .line 55
    .local v3, context:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, myPackage:Ljava/lang/String;
    const-string v7, "activity"

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 58
    .local v5, mgr:Landroid/app/ActivityManager;
    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 60
    .local v2, appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 61
    .local v1, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 62
    const/16 v7, 0x64

    iget v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-eq v7, v8, :cond_5f

    const/16 v7, 0xc8

    iget v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-eq v7, v8, :cond_5f

    .line 65
    invoke-static {v3}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 67
    .local v0, activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_4f

    .line 68
    invoke-static {v3, v0, v9}, Lcom/google/android/apps/plus/content/EsProvider;->cleanupData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 82
    .end local v0           #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v1           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4d
    :goto_4d
    const/4 v7, 0x0

    return-object v7

    .line 70
    .restart local v0       #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    .restart local v1       #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4f
    const-string v7, "LowStorageMonitor"

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 71
    const-string v7, "LowStorageMonitor"

    const-string v8, "G+ account not set; skip cleanup"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 75
    .end local v0           #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_5f
    const-string v7, "LowStorageMonitor"

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 76
    const-string v7, "LowStorageMonitor"

    const-string v8, "G+ is active; skip cleanup"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d
.end method
