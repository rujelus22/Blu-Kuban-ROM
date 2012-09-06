.class abstract Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;
.super Lcom/google/android/play/IUserContentService$Stub;
.source "AppsUsageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/AppsUsageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "StatsBinder"
.end annotation


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mHasPermission:Z

.field private mTriedGettingMethod:Z

.field private mUsageMethod:Ljava/lang/reflect/Method;

.field final synthetic this$0:Lcom/google/android/finsky/services/AppsUsageService;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/services/AppsUsageService;)V
    .registers 3
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->this$0:Lcom/google/android/finsky/services/AppsUsageService;

    invoke-direct {p0}, Lcom/google/android/play/IUserContentService$Stub;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mTriedGettingMethod:Z

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mHasPermission:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/services/AppsUsageService;Lcom/google/android/finsky/services/AppsUsageService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;-><init>(Lcom/google/android/finsky/services/AppsUsageService;)V

    return-void
.end method

.method private getMethod()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 160
    iget-object v3, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->this$0:Lcom/google/android/finsky/services/AppsUsageService;

    const-string v5, "activity"

    invoke-virtual {v3, v5}, Lcom/google/android/finsky/services/AppsUsageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mActivityManager:Landroid/app/ActivityManager;

    .line 161
    const/4 v1, 0x0

    .line 163
    .local v1, m:Ljava/lang/reflect/Method;
    :try_start_e
    iget-object v3, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getAllPackageUsageStats"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_1c} :catch_37

    move-result-object v1

    .line 167
    :goto_1d
    iput-object v1, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mUsageMethod:Ljava/lang/reflect/Method;

    .line 169
    iget-object v3, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->this$0:Lcom/google/android/finsky/services/AppsUsageService;

    invoke-virtual {v3}, Lcom/google/android/finsky/services/AppsUsageService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v5, "android.permission.PACKAGE_USAGE_STATS"

    iget-object v6, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->this$0:Lcom/google/android/finsky/services/AppsUsageService;

    invoke-virtual {v6}, Lcom/google/android/finsky/services/AppsUsageService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 172
    .local v2, permissionStatus:I
    if-nez v2, :cond_40

    const/4 v3, 0x1

    :goto_34
    iput-boolean v3, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mHasPermission:Z

    .line 173
    return-void

    .line 164
    .end local v2           #permissionStatus:I
    :catch_37
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const-string v3, "Unable to get package usage stats method"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1d

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    .restart local v2       #permissionStatus:I
    :cond_40
    move v3, v4

    .line 172
    goto :goto_34
.end method


# virtual methods
.method protected getData()[Lcom/android/internal/os/PkgUsageStats;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 176
    iget-object v1, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mUsageMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_18

    .line 177
    iget-boolean v1, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mTriedGettingMethod:Z

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mHasPermission:Z

    if-nez v1, :cond_10

    .line 178
    :cond_d
    new-array v1, v4, [Lcom/android/internal/os/PkgUsageStats;

    .line 191
    :goto_f
    return-object v1

    .line 180
    :cond_10
    invoke-direct {p0}, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->getMethod()V

    .line 181
    invoke-virtual {p0}, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->getData()[Lcom/android/internal/os/PkgUsageStats;

    move-result-object v1

    goto :goto_f

    .line 185
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mUsageMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/os/PkgUsageStats;

    check-cast v1, [Lcom/android/internal/os/PkgUsageStats;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_27} :catch_28

    goto :goto_f

    .line 186
    :catch_28
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Unable to invoke method: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iput-boolean v4, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mHasPermission:Z

    .line 191
    new-array v1, v4, [Lcom/android/internal/os/PkgUsageStats;

    goto :goto_f
.end method
