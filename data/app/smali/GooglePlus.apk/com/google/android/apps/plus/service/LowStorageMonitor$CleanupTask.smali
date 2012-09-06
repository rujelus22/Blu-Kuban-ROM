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
    .registers 12
    .parameter "contextArray"

    .prologue
    const/4 v9, 0x1

    .line 50
    array-length v8, p1

    if-eq v8, v9, :cond_c

    .line 51
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Must pass a single context"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 55
    :cond_c
    const/4 v8, 0x0

    :try_start_d
    aget-object v3, p1, v8

    .line 56
    .local v3, context:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, myPackage:Ljava/lang/String;
    const-string v8, "activity"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 59
    .local v5, mgr:Landroid/app/ActivityManager;
    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 61
    .local v2, appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 62
    .local v1, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 63
    const/16 v8, 0x64

    iget v9, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-eq v8, v9, :cond_69

    const/16 v8, 0xc8

    iget v9, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-eq v8, v9, :cond_69

    .line 66
    invoke-static {v3}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 68
    .local v0, activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_4f

    .line 69
    const/4 v8, 0x1

    invoke-static {v3, v0, v8}, Lcom/google/android/apps/plus/content/EsProvider;->cleanupData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 87
    .end local v0           #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v1           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #mgr:Landroid/app/ActivityManager;
    .end local v6           #myPackage:Ljava/lang/String;
    :cond_4d
    :goto_4d
    const/4 v8, 0x0

    return-object v8

    .line 71
    .restart local v0       #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    .restart local v1       #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v2       #appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v3       #context:Landroid/content/Context;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #mgr:Landroid/app/ActivityManager;
    .restart local v6       #myPackage:Ljava/lang/String;
    :cond_4f
    const-string v8, "LowStorageMonitor"

    const/4 v9, 0x4

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 72
    const-string v8, "LowStorageMonitor"

    const-string v9, "G+ account not set; skip cleanup"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_5f} :catch_60

    goto :goto_4d

    .line 83
    .end local v0           #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v1           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #mgr:Landroid/app/ActivityManager;
    .end local v6           #myPackage:Ljava/lang/String;
    :catch_60
    move-exception v7

    .line 84
    .local v7, t:Ljava/lang/Throwable;
    const-string v8, "LowStorageMonitor"

    const-string v9, "Could not perform cleanup"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    .line 76
    .end local v7           #t:Ljava/lang/Throwable;
    .restart local v1       #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v2       #appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v3       #context:Landroid/content/Context;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #mgr:Landroid/app/ActivityManager;
    .restart local v6       #myPackage:Ljava/lang/String;
    :cond_69
    :try_start_69
    const-string v8, "LowStorageMonitor"

    const/4 v9, 0x4

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 77
    const-string v8, "LowStorageMonitor"

    const-string v9, "G+ is active; skip cleanup"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_79} :catch_60

    goto :goto_4d
.end method
