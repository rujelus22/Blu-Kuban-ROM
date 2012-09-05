.class public Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApplicationPolicy"
.end annotation


# instance fields
.field private final mService:Landroid/app/enterprise/IApplicationPolicy;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .registers 3
    .parameter

    .prologue
    .line 1810
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1811
    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    .line 1813
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1806
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public deleteManagedAppInfo(Ljava/lang/String;)Z
    .registers 5
    .parameter "pkg"

    .prologue
    .line 2188
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_15

    .line 2190
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->deleteManagedAppInfo(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2195
    :goto_a
    return v1

    .line 2191
    :catch_b
    move-exception v0

    .line 2192
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2195
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public disableAndroidMarket()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2296
    const-string v0, "com.android.vending"

    invoke-virtual {p0, v0, v1}, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 2297
    const-string v0, "com.google.android.finsky"

    invoke-virtual {p0, v0, v1}, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 2298
    return-void
.end method

.method public enableAndroidMarket()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2304
    const-string v0, "com.android.vending"

    invoke-virtual {p0, v0, v1}, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 2305
    const-string v0, "com.google.android.finsky"

    invoke-virtual {p0, v0, v1}, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 2306
    return-void
.end method

.method public getApplicationInstallationEnabled(Ljava/lang/String;)Z
    .registers 5
    .parameter "pkg"

    .prologue
    .line 2208
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_15

    .line 2210
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationInstallationEnabled(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2215
    :goto_a
    return v1

    .line 2211
    :catch_b
    move-exception v0

    .line 2212
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2215
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "packageName"

    .prologue
    .line 2263
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_15

    .line 2265
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 2270
    :goto_a
    return-object v1

    .line 2266
    :catch_b
    move-exception v0

    .line 2267
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2270
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;)Z
    .registers 5
    .parameter "packageName"

    .prologue
    .line 2169
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_15

    .line 2171
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2176
    :goto_a
    return v1

    .line 2172
    :catch_b
    move-exception v0

    .line 2173
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2176
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    .registers 5
    .parameter "pkg"

    .prologue
    .line 2228
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_15

    .line 2230
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2235
    :goto_a
    return v1

    .line 2231
    :catch_b
    move-exception v0

    .line 2232
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2235
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "packageName"

    .prologue
    .line 2281
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_15

    .line 2283
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 2288
    :goto_a
    return-object v1

    .line 2284
    :catch_b
    move-exception v0

    .line 2285
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2288
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getInstalledApplicationsIDList()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 2245
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_15

    .line 2247
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getInstalledApplicationsIDList()[Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 2252
    :goto_a
    return-object v1

    .line 2248
    :catch_b
    move-exception v0

    .line 2249
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2252
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getInstalledManagedApplicationsList()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 2013
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_15

    .line 2015
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getInstalledManagedApplicationsList()[Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 2020
    :goto_a
    return-object v1

    .line 2016
    :catch_b
    move-exception v0

    .line 2017
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2020
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getManagedApplicationStatus(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    .registers 5
    .parameter "pkg"

    .prologue
    .line 2035
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_15

    .line 2037
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationsList(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 2042
    :goto_a
    return-object v1

    .line 2038
    :catch_b
    move-exception v0

    .line 2039
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2042
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public installApplication(Ljava/lang/String;Z)Z
    .registers 6
    .parameter "apkFilePath"
    .parameter "installOnSDCard"

    .prologue
    .line 1899
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_15

    .line 1901
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->installApplication(Ljava/lang/String;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1906
    :goto_a
    return v1

    .line 1902
    :catch_b
    move-exception v0

    .line 1903
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1906
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isApplicationInstalled(Ljava/lang/String;)Z
    .registers 5
    .parameter "pkgName"

    .prologue
    .line 1859
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_15

    .line 1861
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1866
    :goto_a
    return v1

    .line 1862
    :catch_b
    move-exception v0

    .line 1863
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1866
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isApplicationRunning(Ljava/lang/String;)Z
    .registers 5
    .parameter "pkgName"

    .prologue
    .line 1877
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_15

    .line 1879
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationRunning(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1884
    :goto_a
    return v1

    .line 1880
    :catch_b
    move-exception v0

    .line 1881
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1884
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"

    .prologue
    .line 2075
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_a

    .line 2077
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    .line 2082
    :cond_a
    :goto_a
    return-void

    .line 2078
    :catch_b
    move-exception v0

    .line 2079
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    .registers 6
    .parameter "packageName"
    .parameter "disableAppInstallation"

    .prologue
    .line 2058
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_9

    .line 2060
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 2065
    :cond_9
    :goto_9
    return-void

    .line 2061
    :catch_a
    move-exception v0

    .line 2062
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setApplicationInstallationEnabled(Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"

    .prologue
    .line 2093
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_a

    .line 2095
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    .line 2100
    :cond_a
    :goto_a
    return-void

    .line 2096
    :catch_b
    move-exception v0

    .line 2097
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public setApplicationState(Ljava/lang/String;Z)Z
    .registers 6
    .parameter "packageName"
    .parameter "enableApp"

    .prologue
    .line 1959
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_15

    .line 1961
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1966
    :goto_a
    return v1

    .line 1962
    :catch_b
    move-exception v0

    .line 1963
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1966
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"

    .prologue
    .line 2133
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_a

    .line 2135
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    .line 2140
    :cond_a
    :goto_a
    return-void

    .line 2136
    :catch_b
    move-exception v0

    .line 2137
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    .registers 6
    .parameter "packageName"
    .parameter "disableAppUninstallation"

    .prologue
    .line 2115
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_9

    .line 2117
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 2123
    :cond_9
    :goto_9
    return-void

    .line 2119
    :catch_a
    move-exception v0

    .line 2120
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setApplicationUninstallationEnabled(Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"

    .prologue
    .line 2151
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_a

    .line 2153
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    .line 2158
    :cond_a
    :goto_a
    return-void

    .line 2154
    :catch_b
    move-exception v0

    .line 2155
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public setDisableApplication(Ljava/lang/String;)Z
    .registers 6
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 1977
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v2, :cond_c

    .line 1979
    :try_start_5
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_d

    move-result v1

    .line 1984
    :cond_c
    :goto_c
    return v1

    .line 1980
    :catch_d
    move-exception v0

    .line 1981
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed talking with application policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public setEnableApplication(Ljava/lang/String;)Z
    .registers 5
    .parameter "packageName"

    .prologue
    .line 1995
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_16

    .line 1997
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_c

    move-result v1

    .line 2002
    :goto_b
    return v1

    .line 1998
    :catch_c
    move-exception v0

    .line 1999
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2002
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public uninstallApplication(Ljava/lang/String;Z)Z
    .registers 6
    .parameter "packageName"
    .parameter "keepDataAndCache"

    .prologue
    .line 1938
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_15

    .line 1940
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->uninstallApplication(Ljava/lang/String;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1945
    :goto_a
    return v1

    .line 1941
    :catch_b
    move-exception v0

    .line 1942
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1945
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public uninstallApplications(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1823
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_15

    .line 1825
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeManagedApplications(Ljava/util/List;)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1830
    :goto_a
    return-object v1

    .line 1826
    :catch_b
    move-exception v0

    .line 1827
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1830
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public updateApplication(Ljava/lang/String;)Z
    .registers 6
    .parameter "apkFilePath"

    .prologue
    const/4 v1, 0x0

    .line 1917
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v2, :cond_c

    .line 1919
    :try_start_5
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IApplicationPolicy;->installApplication(Ljava/lang/String;Z)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_d

    move-result v1

    .line 1924
    :cond_c
    :goto_c
    return v1

    .line 1920
    :catch_d
    move-exception v0

    .line 1921
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed talking with application policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public wipeApplicationData(Ljava/lang/String;)Z
    .registers 5
    .parameter "pkgName"

    .prologue
    .line 1841
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_15

    .line 1843
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->wipeApplicationData(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1848
    :goto_a
    return v1

    .line 1844
    :catch_b
    move-exception v0

    .line 1845
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1848
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method
