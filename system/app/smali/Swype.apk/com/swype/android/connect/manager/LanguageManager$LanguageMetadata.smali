.class Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;
.super Ljava/lang/Object;
.source "LanguageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/connect/manager/LanguageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LanguageMetadata"
.end annotation


# static fields
.field public static final LANGUAGE_INSTALLER_PREF:Ljava/lang/String; = "LANGUAGE_INSTALLER_DATA"

.field public static final MAP_KEY_CHECKSUM:Ljava/lang/String; = "CHECKSUM"

.field public static final MAP_KEY_FILE_LOCATION:Ljava/lang/String; = "FILE_LOCATION"

.field public static final MAP_KEY_STARTED:Ljava/lang/String; = "STARTED"

.field public static final MAP_KEY_STEP:Ljava/lang/String; = "STEP"

.field public static final MAP_KEY_TRANSACTION_ID:Ljava/lang/String; = "TRANSACTION_ID"

.field public static final MAP_KEY_URL:Ljava/lang/String; = "URL"


# instance fields
.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/swype/android/connect/ConnectClient;",
            ">;"
        }
    .end annotation
.end field

.field private languageInstallMetadata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private rwLock:[I


# direct methods
.method public constructor <init>(Lcom/swype/android/connect/ConnectClient;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 1067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1049
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->rwLock:[I

    .line 1060
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->languageInstallMetadata:Ljava/util/HashMap;

    .line 1068
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->context:Ljava/lang/ref/WeakReference;

    .line 1069
    invoke-direct {p0}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->loadMetadata()V

    .line 1070
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1035
    invoke-static {p0}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->loadMetadataPref(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private getLanguageList(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1347
    const-string v1, ""

    .line 1348
    if-nez p2, :cond_2d

    .line 1349
    const-string v2, ","

    .line 1351
    :goto_b
    invoke-virtual {p0, p1}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1352
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v2

    .line 1354
    goto :goto_13

    .line 1356
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2d
    move-object v2, p2

    goto :goto_b
.end method

.method private loadMetadata()V
    .registers 3

    .prologue
    .line 1111
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->rwLock:[I

    monitor-enter v1

    .line 1112
    :try_start_3
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/connect/ConnectClient;

    .line 1113
    if-eqz v0, :cond_13

    .line 1114
    invoke-static {v0}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->loadMetadataPref(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->languageInstallMetadata:Ljava/util/HashMap;

    .line 1116
    :cond_13
    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private static loadMetadataPref(Landroid/content/Context;)Ljava/util/HashMap;
    .registers 6
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1121
    const-string v3, "LANGUAGE_INSTALLER_DATA"

    const-string v4, ""

    invoke-static {p0, v3, v4}, Lcom/swype/android/connect/util/FilePreference;->readStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/swype/android/connect/util/Data;->unserializeObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1122
    .local v2, temp:Ljava/lang/Object;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1123
    .local v1, meta:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v2, :cond_17

    .line 1124
    move-object v0, v2

    check-cast v0, Ljava/util/HashMap;

    move-object v1, v0

    .line 1126
    :cond_17
    return-object v1
.end method

.method private testLanguageInstallsInRange(II)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1301
    const/4 v0, 0x0

    .line 1302
    if-le p1, p2, :cond_34

    move v1, p1

    move v2, p2

    .line 1307
    :goto_5
    iget-object v3, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->languageInstallMetadata:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 1308
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    const-string v4, "STEP"

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1309
    if-lt v4, v2, :cond_f

    if-gt v4, v1, :cond_f

    .line 1310
    const/4 v0, 0x1

    goto :goto_f

    .line 1313
    :cond_33
    return v0

    :cond_34
    move v1, p2

    move v2, p1

    goto :goto_5
.end method


# virtual methods
.method public addLanguage(Ljava/lang/String;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1147
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->languageInstallMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Language is already being installed! ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    move v0, v5

    .line 1158
    :goto_2c
    return v0

    .line 1152
    :cond_2d
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->rwLock:[I

    monitor-enter v1

    .line 1153
    :try_start_30
    const-string v2, "STARTED"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    const-string v2, "STEP"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    iget-object v2, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->languageInstallMetadata:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_30 .. :try_end_55} :catchall_5a

    .line 1157
    invoke-virtual {p0, v5, v6}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->saveMetadata(ZZ)V

    move v0, v6

    .line 1158
    goto :goto_2c

    .line 1156
    :catchall_5a
    move-exception v0

    :try_start_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v0
.end method

.method public clear()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1443
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->rwLock:[I

    monitor-enter v0

    .line 1444
    :try_start_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->languageInstallMetadata:Ljava/util/HashMap;

    .line 1445
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 1446
    invoke-virtual {p0, v2, v2}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->saveMetadata(ZZ)V

    .line 1447
    return-void

    .line 1445
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public getAllLanguages()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->languageInstallMetadata:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getAllMetadata()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->languageInstallMetadata:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method public getDownloadingLanguagesList()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1329
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "||"

    invoke-direct {p0, v0, v1}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->getLanguageList(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledLanguageList()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1321
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, ","

    invoke-direct {p0, v0, v1}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->getLanguageList(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguagesStatusList()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1388
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1389
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->getAllMetadata()Ljava/util/HashMap;

    move-result-object v0

    .line 1390
    iget-object v2, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->rwLock:[I

    monitor-enter v2

    .line 1391
    :try_start_c
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 1392
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v4, "STEP"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1393
    if-eqz v0, :cond_37

    const/4 v4, 0x1

    if-ne v0, v4, :cond_53

    .line 1394
    :cond_37
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1395
    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1396
    const-string v0, "LANGUAGE_STATUS_QUEUED"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1397
    const-string v0, "||"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14

    .line 1420
    :catchall_50
    move-exception v0

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_c .. :try_end_52} :catchall_50

    throw v0

    .line 1398
    :cond_53
    const/4 v4, 0x2

    if-ne v0, v4, :cond_6f

    .line 1399
    :try_start_56
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1400
    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1401
    const-string v0, "LANGUAGE_STATUS_DOWNLOADING"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1402
    const-string v0, "||"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14

    .line 1403
    :cond_6f
    const/4 v4, 0x3

    if-lt v0, v4, :cond_8e

    const/4 v4, 0x5

    if-gt v0, v4, :cond_8e

    .line 1404
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1405
    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1406
    const-string v0, "LANGUAGE_STATUS_INSTALLING"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1407
    const-string v0, "||"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14

    .line 1408
    :cond_8e
    const/4 v4, 0x6

    if-ne v0, v4, :cond_ab

    .line 1409
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1410
    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1411
    const-string v0, "LANGUAGE_STATUS_INSTALLED"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1412
    const-string v0, "||"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_14

    .line 1413
    :cond_ab
    const/16 v4, 0x9

    if-ne v0, v4, :cond_14

    .line 1414
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1415
    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1416
    const-string v0, "LANGUAGE_STATUS_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1417
    const-string v0, "||"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_14

    .line 1420
    :cond_c9
    monitor-exit v2
    :try_end_ca
    .catchall {:try_start_56 .. :try_end_ca} :catchall_50

    .line 1421
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "lang"
    .parameter "property"

    .prologue
    .line 1189
    const/4 v0, 0x0

    .line 1190
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->languageInstallMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1191
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->languageInstallMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #value:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1193
    .restart local v0       #value:Ljava/lang/String;
    :cond_17
    return-object v0
.end method

.method public getProps(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 4
    .parameter "lang"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1204
    .local v0, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->languageInstallMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1205
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->languageInstallMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v0, Ljava/util/HashMap;

    .line 1207
    .restart local v0       #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_15
    return-object v0
.end method

.method public hasLanguage(Ljava/lang/String;)Z
    .registers 3
    .parameter "lang"

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->languageInstallMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasMoreInstalls()Z
    .registers 4

    .prologue
    .line 1275
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->testLanguageInstallsInRange(II)Z

    move-result v0

    .line 1276
    .local v0, moreInstalls:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasMoreInstalls() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1277
    return v0
.end method

.method public hasMoreRemoves()Z
    .registers 4

    .prologue
    const/16 v1, 0x9

    .line 1281
    invoke-direct {p0, v1, v1}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->testLanguageInstallsInRange(II)Z

    move-result v0

    .line 1282
    .local v0, moreRemoves:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasMoreRemoves() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1283
    return v0
.end method

.method public isInstalling()Z
    .registers 4

    .prologue
    .line 1262
    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->testLanguageInstallsInRange(II)Z

    move-result v0

    .line 1263
    .local v0, installing:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInstalling() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1264
    return v0
.end method

.method public isLanguagePackInstalled(Ljava/lang/String;)Z
    .registers 5
    .parameter "lang"

    .prologue
    .line 1432
    const/4 v0, 0x0

    .line 1433
    .local v0, installed:Z
    const-string v1, "STEP"

    invoke-virtual {p0, p1, v1}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_f

    .line 1434
    const/4 v0, 0x1

    .line 1436
    :cond_f
    return v0
.end method

.method public listFromSteps(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1368
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1369
    iget-object v2, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->rwLock:[I

    monitor-enter v2

    .line 1370
    :try_start_8
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->languageInstallMetadata:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 1371
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v4, "STEP"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1372
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1373
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1376
    :catchall_42
    move-exception v0

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_42

    throw v0

    :cond_45
    :try_start_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_42

    .line 1377
    return-object v1
.end method

.method public removeLanguage(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1167
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->rwLock:[I

    monitor-enter v0

    .line 1168
    :try_start_4
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->languageInstallMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1170
    invoke-virtual {p0, v2, v2}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->saveMetadata(ZZ)V

    .line 1171
    return-void

    .line 1169
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public saveMetadata(ZZ)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/connect/ConnectClient;

    .line 1087
    if-eqz v0, :cond_19

    .line 1088
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->rwLock:[I

    monitor-enter v1

    .line 1089
    :try_start_d
    const-string v2, "LANGUAGE_INSTALLER_DATA"

    iget-object v3, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->languageInstallMetadata:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/swype/android/connect/util/Data;->serializeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/swype/android/connect/util/FilePreference;->saveStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1090
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_52

    .line 1092
    :cond_19
    if-eqz p1, :cond_24

    .line 1093
    const-string v1, "LANGUAGES_DL"

    invoke-virtual {p0}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->getInstalledLanguageList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/connect/ConnectClient;->saveEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    :cond_24
    if-eqz p2, :cond_51

    .line 1096
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->getLanguagesStatusList()Ljava/lang/String;

    move-result-object v1

    .line 1098
    const-string v2, "LANGUAGES_COUNT"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/swype/android/connect/util/FilePreference;->saveIntPreference(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 1099
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_55

    .line 1100
    const-string v2, "LANGUAGE_DOWNLOAD_STATUS_LIST_PREF"

    invoke-static {v0, v2, v1}, Lcom/swype/android/connect/util/FilePreference;->saveStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1105
    :cond_51
    :goto_51
    return-void

    .line 1090
    :catchall_52
    move-exception v0

    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v0

    .line 1102
    :cond_55
    const-string v1, "LANGUAGE_DOWNLOAD_STATUS_LIST_PREF"

    invoke-static {v0, v1}, Lcom/swype/android/connect/util/FilePreference;->deletePreference(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_51
.end method

.method public setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1218
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->rwLock:[I

    monitor-enter v0

    .line 1219
    :try_start_5
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->languageInstallMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1221
    invoke-virtual {p0, p1}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 1222
    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    iget-object v2, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->languageInstallMetadata:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_46

    .line 1226
    const-string v0, "STEP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    :cond_38
    move v0, v4

    .line 1227
    :goto_39
    const-string v1, "STEP"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    move v1, v4

    .line 1228
    :goto_42
    invoke-virtual {p0, v0, v1}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->saveMetadata(ZZ)V

    .line 1229
    return-void

    .line 1225
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1

    :cond_49
    move v0, v3

    .line 1226
    goto :goto_39

    :cond_4b
    move v1, v3

    .line 1227
    goto :goto_42
.end method

.method public setProps(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1238
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->rwLock:[I

    monitor-enter v0

    .line 1239
    :try_start_4
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->languageInstallMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1241
    iget-object v1, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->languageInstallMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_3d

    .line 1244
    const-string v0, "STEP"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "STEP"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_38
    move v0, v2

    .line 1245
    :goto_39
    invoke-virtual {p0, v0, v2}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->saveMetadata(ZZ)V

    .line 1247
    return-void

    .line 1243
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1

    .line 1244
    :cond_40
    const/4 v0, 0x0

    goto :goto_39
.end method

.method public updateLanguagesPendingLicense()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 1454
    iget-object v2, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->rwLock:[I

    monitor-enter v2

    .line 1455
    :try_start_4
    iget-object v0, p0, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->languageInstallMetadata:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1456
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "STEP"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1457
    const/4 v4, 0x5

    if-ne v1, v4, :cond_e

    .line 1458
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1459
    const-string v4, "STEP"

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 1463
    :catchall_43
    move-exception v0

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_43

    throw v0

    :cond_46
    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_43

    .line 1464
    invoke-virtual {p0, v6, v6}, Lcom/swype/android/connect/manager/LanguageManager$LanguageMetadata;->saveMetadata(ZZ)V

    .line 1465
    return-void
.end method
