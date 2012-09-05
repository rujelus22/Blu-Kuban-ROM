.class public Landroid/app/enterprise/ApplicationPolicy;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"


# static fields
.field public static final APPLICATION_INSTALLATION_MODE_ALLOW:I = 0x1

.field public static final APPLICATION_INSTALLATION_MODE_DISALLOW:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IApplicationPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const-string v0, "ApplicationPolicy"

    sput-object v0, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    .line 79
    return-void
.end method


# virtual methods
.method public addAppPackageNameToBlackList(Ljava/lang/String;)Z
    .registers 5
    .parameter "packageName"

    .prologue
    .line 1656
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1658
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->addAppPackageNameToBlackList(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1663
    :goto_a
    return v1

    .line 1659
    :catch_b
    move-exception v0

    .line 1660
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1663
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public addAppPackageNameToWhiteList(Ljava/lang/String;)Z
    .registers 5
    .parameter "packageName"

    .prologue
    .line 1739
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1741
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->addAppPackageNameToWhiteList(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1746
    :goto_a
    return v1

    .line 1742
    :catch_b
    move-exception v0

    .line 1743
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1746
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public addAppPermissionToBlackList(Ljava/lang/String;)Z
    .registers 5
    .parameter "appPermission"

    .prologue
    .line 1298
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1300
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->addAppPermissionToBlackList(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1305
    :goto_a
    return v1

    .line 1301
    :catch_b
    move-exception v0

    .line 1302
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1305
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public addAppSignatureToBlackList(Ljava/lang/String;)Z
    .registers 5
    .parameter "appSignature"

    .prologue
    .line 1402
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1404
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->addAppSignatureToBlackList(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1409
    :goto_a
    return v1

    .line 1405
    :catch_b
    move-exception v0

    .line 1406
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1409
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public changeApplicationIcon(Ljava/lang/String;[B)Z
    .registers 8
    .parameter "packageName"
    .parameter "imageData"

    .prologue
    const/4 v1, 0x0

    .line 1219
    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeApplicationIcon:packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v2, :cond_3d

    .line 1223
    if-eqz p2, :cond_3e

    :try_start_1f
    array-length v2, p2

    const/high16 v3, 0x10

    if-le v2, v3, :cond_3e

    .line 1224
    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeApplicationIcon: Icon size is too big :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_3d
    :goto_3d
    return v1

    .line 1228
    :cond_3e
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v2, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->changeApplicationIcon(Ljava/lang/String;[B)Z
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_43} :catch_45

    move-result v1

    goto :goto_3d

    .line 1229
    :catch_45
    move-exception v0

    .line 1230
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with application policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d
.end method

.method public deleteManagedAppInfo(Ljava/lang/String;)Z
    .registers 5
    .parameter "pkg"

    .prologue
    .line 675
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 677
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->deleteManagedAppInfo(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 682
    :goto_a
    return v1

    .line 678
    :catch_b
    move-exception v0

    .line 679
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 682
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public disableAndroidBrowser()V
    .registers 3

    .prologue
    .line 1101
    const-string v0, "com.android.browser"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1102
    return-void
.end method

.method public disableAndroidMarket()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 949
    const-string v0, "com.android.vending"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 950
    const-string v0, "com.google.android.finsky"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 951
    return-void
.end method

.method public disableVoiceDialer()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1129
    const-string v0, "com.android.voicedialer"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1133
    const-string v0, "com.vlingo.client.samsung"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1134
    const-string v0, "com.vlingo.midas"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1136
    return-void
.end method

.method public disableYouTube()V
    .registers 3

    .prologue
    .line 1073
    const-string v0, "com.google.android.youtube"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1074
    return-void
.end method

.method public enableAndroidBrowser()V
    .registers 3

    .prologue
    .line 1115
    const-string v0, "com.android.browser"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1116
    return-void
.end method

.method public enableAndroidMarket()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 967
    const-string v0, "com.android.vending"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 968
    const-string v0, "com.google.android.finsky"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 969
    return-void
.end method

.method public enableVoiceDialer()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1149
    const-string v0, "com.android.voicedialer"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1153
    const-string v0, "com.vlingo.client.samsung"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1154
    const-string v0, "com.vlingo.midas"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1156
    return-void
.end method

.method public enableYouTube()V
    .registers 3

    .prologue
    .line 1087
    const-string v0, "com.google.android.youtube"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1088
    return-void
.end method

.method public getAllAppLastUsage()[Landroid/app/enterprise/AppInfoLastUsage;
    .registers 4

    .prologue
    .line 1192
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1194
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAllAppLastUsage()[Landroid/app/enterprise/AppInfoLastUsage;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1199
    :goto_a
    return-object v1

    .line 1195
    :catch_b
    move-exception v0

    .line 1196
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1199
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getAppPackageNamesAllBlackLists()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1705
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1707
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppPackageNamesAllBlackLists()Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1712
    :goto_a
    return-object v1

    .line 1708
    :catch_b
    move-exception v0

    .line 1709
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1712
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getAppPackageNamesAllWhiteLists()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1787
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1789
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppPackageNamesAllWhiteLists()Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1794
    :goto_a
    return-object v1

    .line 1790
    :catch_b
    move-exception v0

    .line 1791
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1794
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getAppPermissionsAllBlackLists()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1373
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1375
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppPermissionsAllBlackLists()Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1380
    :goto_a
    return-object v1

    .line 1376
    :catch_b
    move-exception v0

    .line 1377
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1380
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getAppPermissionsBlackList()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 1348
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1350
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppPermissionsBlackList()[Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1355
    :goto_a
    return-object v1

    .line 1351
    :catch_b
    move-exception v0

    .line 1352
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1355
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getAppSignaturesAllBlackLists()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1472
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1474
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppSignaturesAllBlackLists()Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1479
    :goto_a
    return-object v1

    .line 1475
    :catch_b
    move-exception v0

    .line 1476
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1479
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getAppSignaturesBlackList()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 1449
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1451
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppSignatureBlackList()[Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1456
    :goto_a
    return-object v1

    .line 1452
    :catch_b
    move-exception v0

    .line 1453
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1456
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getApplicationCacheSize(Ljava/lang/String;)J
    .registers 5
    .parameter "packageName"

    .prologue
    .line 882
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 884
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationCacheSize(Ljava/lang/String;)J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 889
    :goto_a
    return-wide v1

    .line 885
    :catch_b
    move-exception v0

    .line 886
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 889
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public getApplicationCodeSize(Ljava/lang/String;)J
    .registers 5
    .parameter "packageName"

    .prologue
    .line 846
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 848
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationCodeSize(Ljava/lang/String;)J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 853
    :goto_a
    return-wide v1

    .line 849
    :catch_b
    move-exception v0

    .line 850
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 853
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public getApplicationCpuUsage(Ljava/lang/String;)J
    .registers 5
    .parameter "packageName"

    .prologue
    .line 926
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 928
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationCpuUsage(Ljava/lang/String;)J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 933
    :goto_a
    return-wide v1

    .line 929
    :catch_b
    move-exception v0

    .line 930
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 933
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public getApplicationDataSize(Ljava/lang/String;)J
    .registers 5
    .parameter "packageName"

    .prologue
    .line 864
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 866
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationDataSize(Ljava/lang/String;)J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 871
    :goto_a
    return-wide v1

    .line 867
    :catch_b
    move-exception v0

    .line 868
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 871
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public getApplicationIconFromDb(Ljava/lang/String;)[B
    .registers 6
    .parameter "packageName"

    .prologue
    .line 1238
    const/4 v1, 0x0

    .line 1239
    .local v1, imageData:[B
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v2, :cond_b

    .line 1241
    :try_start_5
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationIconFromDb(Ljava/lang/String;)[B
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_d

    move-result-object v1

    :cond_b
    move-object v2, v1

    .line 1249
    :goto_c
    return-object v2

    .line 1242
    :catch_d
    move-exception v0

    .line 1243
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getCustomApplicationIcon: Failed talking with Application control policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1246
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public getApplicationInstallationEnabled(Ljava/lang/String;)Z
    .registers 5
    .parameter "pkg"

    .prologue
    .line 695
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 697
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationInstallationEnabled(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 702
    :goto_a
    return v1

    .line 698
    :catch_b
    move-exception v0

    .line 699
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 702
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getApplicationInstallationMode()I
    .registers 4

    .prologue
    .line 454
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 456
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppInstallationMode()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 462
    :goto_a
    return v1

    .line 457
    :catch_b
    move-exception v0

    .line 458
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getApplicationMemoryUsage(Ljava/lang/String;)J
    .registers 5
    .parameter "packageName"

    .prologue
    .line 904
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 906
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationMemoryUsage(Ljava/lang/String;)J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 911
    :goto_a
    return-wide v1

    .line 907
    :catch_b
    move-exception v0

    .line 908
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 911
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "packageName"

    .prologue
    .line 788
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 790
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 795
    :goto_a
    return-object v1

    .line 791
    :catch_b
    move-exception v0

    .line 792
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 795
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getApplicationNetworkStats()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1265
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1267
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getNetworkStats()Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1272
    :goto_a
    return-object v1

    .line 1268
    :catch_b
    move-exception v0

    .line 1269
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1272
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;)Z
    .registers 5
    .parameter "packageName"

    .prologue
    .line 643
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 645
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 650
    :goto_a
    return v1

    .line 646
    :catch_b
    move-exception v0

    .line 647
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 650
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getApplicationStateList(Z)[Ljava/lang/String;
    .registers 5
    .parameter "state"

    .prologue
    .line 1575
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1577
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationStateList(Z)[Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1582
    :goto_a
    return-object v1

    .line 1578
    :catch_b
    move-exception v0

    .line 1579
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1582
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getApplicationTotalSize(Ljava/lang/String;)J
    .registers 5
    .parameter "packageName"

    .prologue
    .line 828
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 830
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationTotalSize(Ljava/lang/String;)J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 835
    :goto_a
    return-wide v1

    .line 831
    :catch_b
    move-exception v0

    .line 832
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 835
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    .registers 5
    .parameter "pkg"

    .prologue
    .line 746
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 748
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 753
    :goto_a
    return v1

    .line 749
    :catch_b
    move-exception v0

    .line 750
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 753
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "packageName"

    .prologue
    .line 809
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 811
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 816
    :goto_a
    return-object v1

    .line 812
    :catch_b
    move-exception v0

    .line 813
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 816
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getAvgNoAppUsagePerMonth()[Landroid/app/enterprise/AppInfoLastUsage;
    .registers 4

    .prologue
    .line 1169
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1171
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAvgNoAppUsagePerMonth()[Landroid/app/enterprise/AppInfoLastUsage;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1176
    :goto_a
    return-object v1

    .line 1172
    :catch_b
    move-exception v0

    .line 1173
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1176
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getInstalledApplicationsIDList()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 767
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 769
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getInstalledApplicationsIDList()[Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 774
    :goto_a
    return-object v1

    .line 770
    :catch_b
    move-exception v0

    .line 771
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 774
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getInstalledManagedApplicationsList()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 372
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 374
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getInstalledManagedApplicationsList()[Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 379
    :goto_a
    return-object v1

    .line 375
    :catch_b
    move-exception v0

    .line 376
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getManagedApplicationStatus(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    .registers 5
    .parameter "pkg"

    .prologue
    .line 404
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 406
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationsList(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 411
    :goto_a
    return-object v1

    .line 407
    :catch_b
    move-exception v0

    .line 408
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getMostCpuUsageApps(IZ)Ljava/util/List;
    .registers 6
    .parameter "appCount"
    .parameter "showAllProcess"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 991
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 993
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->getTopNCPUUsageAppFromTopCommand(IZ)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 999
    :goto_a
    return-object v1

    .line 995
    :catch_b
    move-exception v0

    .line 996
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 999
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getMostDataUsageApps(I)Ljava/util/List;
    .registers 5
    .parameter "appCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1052
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1054
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getTopNDataUsageApp(I)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1059
    :goto_a
    return-object v1

    .line 1055
    :catch_b
    move-exception v0

    .line 1056
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1059
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getMostMemoryUsageApps(IZ)Ljava/util/List;
    .registers 6
    .parameter "appCount"
    .parameter "showAllProcess"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1024
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1026
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->getTopNMemoryUsageApp(IZ)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1031
    :goto_a
    return-object v1

    .line 1027
    :catch_b
    move-exception v0

    .line 1028
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1031
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public installApplication(Ljava/lang/String;Z)Z
    .registers 6
    .parameter "apkFilePath"
    .parameter "installOnSDCard"

    .prologue
    .line 205
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 207
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->installApplication(Ljava/lang/String;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 213
    :goto_a
    return v1

    .line 209
    :catch_b
    move-exception v0

    .line 210
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isApplicationInstallationEnabled(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 6
    .parameter "aPacakageName"
    .parameter "aPackageURI"

    .prologue
    .line 724
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 726
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;Landroid/net/Uri;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 732
    :goto_a
    return v1

    .line 728
    :catch_b
    move-exception v0

    .line 729
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isApplicationInstalled(Ljava/lang/String;)Z
    .registers 5
    .parameter "pkgName"

    .prologue
    .line 150
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 152
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 157
    :goto_a
    return v1

    .line 153
    :catch_b
    move-exception v0

    .line 154
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isApplicationRunning(Ljava/lang/String;)Z
    .registers 5
    .parameter "pkgName"

    .prologue
    .line 175
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 177
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationRunning(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 182
    :goto_a
    return v1

    .line 178
    :catch_b
    move-exception v0

    .line 179
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isIntentDisabled(Landroid/content/Intent;)Z
    .registers 5
    .parameter "intent"

    .prologue
    .line 1620
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1622
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isIntentDisabled(Landroid/content/Intent;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1627
    :goto_a
    return v1

    .line 1623
    :catch_b
    move-exception v0

    .line 1624
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1627
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public removeAppPackageNameFromBlackList(Ljava/lang/String;)Z
    .registers 5
    .parameter "packageName"

    .prologue
    .line 1682
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1684
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeAppPackageNameFromBlackList(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1689
    :goto_a
    return v1

    .line 1685
    :catch_b
    move-exception v0

    .line 1686
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1689
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public removeAppPackageNameFromWhiteList(Ljava/lang/String;)Z
    .registers 5
    .parameter "packageName"

    .prologue
    .line 1764
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1766
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeAppPackageNameFromWhiteList(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1771
    :goto_a
    return v1

    .line 1767
    :catch_b
    move-exception v0

    .line 1768
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1771
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public removeAppPermissionFromBlackList(Ljava/lang/String;)Z
    .registers 5
    .parameter "appPermission"

    .prologue
    .line 1326
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1328
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeAppPermissionFromBlackList(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1333
    :goto_a
    return v1

    .line 1329
    :catch_b
    move-exception v0

    .line 1330
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1333
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public removeAppSignatureFromBlackList(Ljava/lang/String;)Z
    .registers 5
    .parameter "appSignature"

    .prologue
    .line 1428
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1430
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeAppSignatureFromBlackList(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1435
    :goto_a
    return v1

    .line 1431
    :catch_b
    move-exception v0

    .line 1432
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1435
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"

    .prologue
    .line 512
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_a

    .line 514
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    .line 519
    :cond_a
    :goto_a
    return-void

    .line 515
    :catch_b
    move-exception v0

    .line 516
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    .registers 6
    .parameter "packageName"
    .parameter "disableAppInstallation"

    .prologue
    .line 482
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_9

    .line 484
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 490
    :cond_9
    :goto_9
    return-void

    .line 486
    :catch_a
    move-exception v0

    .line 487
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setApplicationInstallationEnabled(Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"

    .prologue
    .line 540
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_a

    .line 542
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    .line 547
    :cond_a
    :goto_a
    return-void

    .line 543
    :catch_b
    move-exception v0

    .line 544
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public setApplicationInstallationMode(I)Z
    .registers 5
    .parameter "installationMode"

    .prologue
    .line 435
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 437
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->setAppInstallationMode(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 442
    :goto_a
    return v1

    .line 438
    :catch_b
    move-exception v0

    .line 439
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setApplicationState(Ljava/lang/String;Z)Z
    .registers 6
    .parameter "packageName"
    .parameter "enableApp"

    .prologue
    .line 292
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 294
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 299
    :goto_a
    return v1

    .line 295
    :catch_b
    move-exception v0

    .line 296
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 6
    .parameter "pkgList"
    .parameter "state"

    .prologue
    .line 1603
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1605
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1610
    :goto_a
    return-object v1

    .line 1606
    :catch_b
    move-exception v0

    .line 1607
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1610
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"

    .prologue
    .line 596
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_a

    .line 598
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    .line 603
    :cond_a
    :goto_a
    return-void

    .line 599
    :catch_b
    move-exception v0

    .line 600
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    .registers 6
    .parameter "packageName"
    .parameter "disableAppUninstallation"

    .prologue
    .line 566
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_9

    .line 568
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 574
    :cond_9
    :goto_9
    return-void

    .line 570
    :catch_a
    move-exception v0

    .line 571
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setApplicationUninstallationEnabled(Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"

    .prologue
    .line 624
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_a

    .line 626
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    .line 632
    :cond_a
    :goto_a
    return-void

    .line 628
    :catch_b
    move-exception v0

    .line 629
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public setAsManagedApp(Ljava/lang/String;)Z
    .registers 5
    .parameter "pkgName"

    .prologue
    .line 1502
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1504
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->setAsManagedApp(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1509
    :goto_a
    return v1

    .line 1505
    :catch_b
    move-exception v0

    .line 1506
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1509
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setDisableApplication(Ljava/lang/String;)Z
    .registers 6
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 320
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v2, :cond_c

    .line 322
    :try_start_5
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_d

    move-result v1

    .line 327
    :cond_c
    :goto_c
    return v1

    .line 323
    :catch_d
    move-exception v0

    .line 324
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with application policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public setEnableApplication(Ljava/lang/String;)Z
    .registers 5
    .parameter "packageName"

    .prologue
    .line 346
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_14

    .line 348
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_c

    move-result v1

    .line 353
    :goto_b
    return v1

    .line 349
    :catch_c
    move-exception v0

    .line 350
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "pkgName"
    .parameter "className"

    .prologue
    .line 1549
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1551
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->startApp(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1556
    :goto_a
    return v1

    .line 1552
    :catch_b
    move-exception v0

    .line 1553
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1556
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public stopApp(Ljava/lang/String;)Z
    .registers 5
    .parameter "pkgName"

    .prologue
    .line 1524
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 1526
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->stopApp(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1531
    :goto_a
    return v1

    .line 1527
    :catch_b
    move-exception v0

    .line 1528
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1531
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public uninstallApplication(Ljava/lang/String;Z)Z
    .registers 6
    .parameter "packageName"
    .parameter "keepDataAndCache"

    .prologue
    .line 261
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 263
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->uninstallApplication(Ljava/lang/String;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 269
    :goto_a
    return v1

    .line 265
    :catch_b
    move-exception v0

    .line 266
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
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
    .line 98
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 100
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeManagedApplications(Ljava/util/List;)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 105
    :goto_a
    return-object v1

    .line 101
    :catch_b
    move-exception v0

    .line 102
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public updateApplication(Ljava/lang/String;)Z
    .registers 6
    .parameter "apkFilePath"

    .prologue
    const/4 v1, 0x0

    .line 231
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v2, :cond_c

    .line 233
    :try_start_5
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IApplicationPolicy;->installApplication(Ljava/lang/String;Z)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_d

    move-result v1

    .line 238
    :cond_c
    :goto_c
    return v1

    .line 234
    :catch_d
    move-exception v0

    .line 235
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with application policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public wipeApplicationData(Ljava/lang/String;)Z
    .registers 5
    .parameter "pkgName"

    .prologue
    .line 124
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 126
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->wipeApplicationData(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 131
    :goto_a
    return v1

    .line 127
    :catch_b
    move-exception v0

    .line 128
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method
